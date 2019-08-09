<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f6154b4-93e5-4a51-94de-d145e58184e7(de.q60.mps.lazywebmps.runtime.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="vyue" ref="r:a009b15b-6386-4045-b94f-fa21b9788c19(de.q60.mps.lazywebmps.runtime.svg)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mi4d" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.java_websocket.server(de.q60.mps.lazywebmps.runtime/)" />
    <import index="ffp0" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.java_websocket(de.q60.mps.lazywebmps.runtime/)" />
    <import index="bge5" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.java_websocket.handshake(de.q60.mps.lazywebmps.runtime/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="kvq8" ref="r:2e938759-cfd0-47cd-9046-896d85204f59(de.slisson.mps.hacks.editor)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mxf6" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.json(de.q60.mps.lazywebmps.runtime/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="vuw5" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.keymap(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhfn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.annotations(MPS.IDEA/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="pcow" ref="r:ad9b9e36-6a2e-49cf-96d6-a1b4ef7befcd(de.q60.mps.lazywebmps.runtime.environment)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qr12" ref="r:24ed310f-f0ab-4270-aa2f-e2180b5d4c31(de.q60.mps.lazywebmps.runtime.repository)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="xlqe" ref="r:d82392d4-c42d-4f5e-9b9c-292583ed6ce9(de.q60.mps.lazywebmps.runtime.ot.mps)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ns" ref="r:b1d968e4-0e15-46c9-9cce-63a8489d5bdd(de.q60.mps.lazywebmps.runtime.tree.mps)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
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
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1224500790866" name="jetbrains.mps.baseLanguage.structure.BitwiseOrExpression" flags="nn" index="pVOtf" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
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
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
    </language>
  </registry>
  <node concept="2DaZZR" id="6xm2RBl6fwx" />
  <node concept="sE7Ow" id="6xm2RBl6fwy">
    <property role="TrG5h" value="EditorToSvg" />
    <property role="2uzpH1" value="Editor To SVG" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="6xm2RBl6fwz" role="tncku">
      <node concept="3clFbS" id="6xm2RBl6fw$" role="2VODD2">
        <node concept="3clFbF" id="6xm2RBl6gCP" role="3cqZAp">
          <node concept="2YIFZM" id="6xm2RBl6gDL" role="3clFbG">
            <ref role="37wK5l" to="vyue:6xm2RBl62kx" resolve="toSvg" />
            <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToSvg" />
            <node concept="2OqwBi" id="6xm2RBl6gEp" role="37wK5m">
              <node concept="2WthIp" id="6xm2RBl6gEs" role="2Oq$k0" />
              <node concept="1DTwFV" id="6xm2RBl6gEu" role="2OqNvi">
                <ref role="2WH_rO" node="6xm2RBl6g9P" resolve="editor" />
              </node>
            </node>
            <node concept="10Nm6u" id="35hm5eHPoYb" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6xm2RBl6g9P" role="1NuT2Z">
      <property role="TrG5h" value="editor" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="6xm2RBl6g9Q" role="1oa70y" />
    </node>
  </node>
  <node concept="2uRRBC" id="6xm2RBlaf24">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="6xm2RBlaZge" role="2uRRBG">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="6xm2RBlaZgf" role="1B3o_S" />
      <node concept="3uibUv" id="6xm2RBlaZmg" role="1tU5fm">
        <ref role="3uigEE" node="6xm2RBlaf2L" resolve="RenderServer" />
      </node>
    </node>
    <node concept="2BZ0e9" id="6xm2RBlbPvn" role="2uRRBG">
      <property role="TrG5h" value="selectionListener" />
      <node concept="3Tm6S6" id="6xm2RBlbPvo" role="1B3o_S" />
      <node concept="3uibUv" id="6xm2RBlbPDZ" role="1tU5fm">
        <ref role="3uigEE" to="kvq8:5tr7YH$THZn" resolve="GlobalSelectionListener" />
      </node>
    </node>
    <node concept="2BZ0e9" id="2AThsNtEuLV" role="2uRRBG">
      <property role="TrG5h" value="e2o" />
      <node concept="3Tm6S6" id="2AThsNtEuLW" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtHG1I" role="1tU5fm">
        <ref role="3uigEE" to="xlqe:2AThsNtHDxJ" resolve="SynchronizingEventsToOperations" />
      </node>
    </node>
    <node concept="2uRRBj" id="6xm2RBlaf25" role="2uRRBE">
      <node concept="3clFbS" id="6xm2RBlaf26" role="2VODD2">
        <node concept="3clFbF" id="2$gEJgL8ThG" role="3cqZAp">
          <node concept="2OqwBi" id="2$gEJgL8ThD" role="3clFbG">
            <node concept="10M0yZ" id="2$gEJgL8ThE" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2$gEJgL8ThF" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="2$gEJgL8Tmw" role="37wK5m">
                <property role="Xl_RC" value="lazywebmps plugin in.." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlaZpr" role="3cqZAp">
          <node concept="37vLTI" id="6xm2RBlaZNS" role="3clFbG">
            <node concept="2ShNRf" id="6xm2RBlaZT8" role="37vLTx">
              <node concept="1pGfFk" id="6xm2RBlb0uz" role="2ShVmc">
                <ref role="37wK5l" node="6xm2RBlaUMt" resolve="RenderServer" />
              </node>
            </node>
            <node concept="2OqwBi" id="6xm2RBlaZpl" role="37vLTJ">
              <node concept="2WthIp" id="6xm2RBlaZpo" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6xm2RBlaZpq" role="2OqNvi">
                <ref role="2WH_rO" node="6xm2RBlaZge" resolve="server" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlb21G" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlb2Jv" role="3clFbG">
            <node concept="2OqwBi" id="6xm2RBlb28Q" role="2Oq$k0">
              <node concept="2WthIp" id="6xm2RBlb21E" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6xm2RBlb2lY" role="2OqNvi">
                <ref role="2WH_rO" node="6xm2RBlaZge" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="6xm2RBlb36z" role="2OqNvi">
              <ref role="37wK5l" to="mi4d:~WebSocketServer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AThsNtFm09" role="3cqZAp" />
        <node concept="1X3_iC" id="1LwnBM31dHV" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2AThsNtFmew" role="8Wnug">
            <node concept="3cpWsn" id="2AThsNtFmex" role="3cpWs9">
              <property role="TrG5h" value="sourceModel" />
              <node concept="3uibUv" id="2AThsNtFmHv" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="BaHAS" id="2AThsNtFmey" role="33vP2m">
                <property role="BaHAW" value="de.q60.mps.lazywebmps.sandbox" />
                <property role="BaGAP" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1LwnBM31dHW" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2AThsNtHIsA" role="8Wnug">
            <node concept="3cpWsn" id="2AThsNtHIsB" role="3cpWs9">
              <property role="TrG5h" value="targetModel" />
              <node concept="3uibUv" id="2AThsNtHIsC" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="BaHAS" id="2AThsNtHIsD" role="33vP2m">
                <property role="BaHAW" value="de.q60.mps.lazywebmps.sandbox2" />
                <property role="BaGAP" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1LwnBM31dHX" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2AThsNtHH2y" role="8Wnug">
            <node concept="37vLTI" id="2AThsNtHHmI" role="3clFbG">
              <node concept="2OqwBi" id="2AThsNtHH2s" role="37vLTJ">
                <node concept="2WthIp" id="2AThsNtHH2v" role="2Oq$k0" />
                <node concept="2BZ7hE" id="2AThsNtHH2x" role="2OqNvi">
                  <ref role="2WH_rO" node="2AThsNtEuLV" resolve="e2o" />
                </node>
              </node>
              <node concept="2ShNRf" id="2AThsNtEIsg" role="37vLTx">
                <node concept="1pGfFk" id="2AThsNtHGRm" role="2ShVmc">
                  <ref role="37wK5l" to="xlqe:2AThsNtHEgG" resolve="SynchronizingEventsToOperations" />
                  <node concept="2ShNRf" id="2AThsNtHHpX" role="37wK5m">
                    <node concept="1pGfFk" id="2AThsNtHIgo" role="2ShVmc">
                      <ref role="37wK5l" to="ns:2AThsNtDygZ" resolve="ModelAdapter" />
                      <node concept="37vLTw" id="2AThsNtHIy4" role="37wK5m">
                        <ref role="3cqZAo" node="2AThsNtHIsB" resolve="targetModel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1LwnBM31dHY" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2AThsNtFm7y" role="8Wnug">
            <node concept="2OqwBi" id="2AThsNtFmmv" role="3clFbG">
              <node concept="37vLTw" id="2AThsNtFmez" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtFmex" resolve="sourceModel" />
              </node>
              <node concept="liA8E" id="2AThsNtFmOq" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                <node concept="2OqwBi" id="2AThsNtFmPi" role="37wK5m">
                  <node concept="2WthIp" id="2AThsNtFmPl" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2AThsNtFmPn" role="2OqNvi">
                    <ref role="2WH_rO" node="2AThsNtEuLV" resolve="e2o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="6xm2RBlaf2r" role="2uRRBF">
      <node concept="3clFbS" id="6xm2RBlaf2s" role="2VODD2">
        <node concept="3clFbF" id="6xm2RBlb0y9" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlb1fK" role="3clFbG">
            <node concept="2OqwBi" id="6xm2RBlb0CU" role="2Oq$k0">
              <node concept="2WthIp" id="6xm2RBlb0y8" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6xm2RBlb0Qg" role="2OqNvi">
                <ref role="2WH_rO" node="6xm2RBlaZge" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="6xm2RBlb1Xb" role="2OqNvi">
              <ref role="37wK5l" node="6xm2RBlafbJ" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AThsNtFmT1" role="3cqZAp" />
        <node concept="1X3_iC" id="1LwnBM31dLd" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2AThsNtFmTT" role="8Wnug">
            <node concept="3cpWsn" id="2AThsNtFmTU" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="3uibUv" id="2AThsNtFmTV" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="BaHAS" id="2AThsNtFmTW" role="33vP2m">
                <property role="BaHAW" value="de.q60.mps.lazywebmps.sandbox" />
                <property role="BaGAP" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1LwnBM31dLe" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2AThsNtFmTX" role="8Wnug">
            <node concept="2OqwBi" id="2AThsNtFmTY" role="3clFbG">
              <node concept="37vLTw" id="2AThsNtFmTZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtFmTU" resolve="model" />
              </node>
              <node concept="liA8E" id="2AThsNtFmU0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                <node concept="2OqwBi" id="2AThsNtFmU1" role="37wK5m">
                  <node concept="2WthIp" id="2AThsNtFmU2" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2AThsNtFmU3" role="2OqNvi">
                    <ref role="2WH_rO" node="2AThsNtEuLV" resolve="e2o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AThsNtFmTc" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6xm2RBlaf2L">
    <property role="TrG5h" value="RenderServer" />
    <node concept="Wx3nA" id="6xm2RBlaj7v" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6xm2RBlaiLk" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="6xm2RBlai1o" role="1B3o_S" />
      <node concept="2YIFZM" id="6xm2RBlaj0l" role="33vP2m">
        <ref role="1Pybhc" to="q7tw:~Logger" resolve="Logger" />
        <ref role="37wK5l" to="q7tw:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <node concept="3VsKOn" id="6xm2RBlaj1I" role="37wK5m">
          <ref role="3VsUkX" node="6xm2RBlaf2L" resolve="RenderServer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="35hm5eHMXRf" role="jymVt" />
    <node concept="Wx3nA" id="6xm2RBlbATo" role="jymVt">
      <property role="TrG5h" value="ourInstance" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="6xm2RBlbAEY" role="1tU5fm">
        <ref role="3uigEE" node="6xm2RBlaf2L" resolve="RenderServer" />
      </node>
      <node concept="3Tm6S6" id="6xm2RBlbAh1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6xm2RBlbC2M" role="jymVt" />
    <node concept="2YIFZL" id="6xm2RBlbE4O" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6xm2RBlbDt3" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbEwF" role="3cqZAp">
          <node concept="37vLTw" id="6xm2RBlbEwE" role="3clFbG">
            <ref role="3cqZAo" node="6xm2RBlbATo" resolve="ourInstance" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6xm2RBlbELP" role="3clF45">
        <ref role="3uigEE" node="6xm2RBlaf2L" resolve="RenderServer" />
      </node>
      <node concept="3Tm1VV" id="6xm2RBlbDt2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="EbHc1t2Rfh" role="jymVt" />
    <node concept="2tJIrI" id="6tRuDLGiDYY" role="jymVt" />
    <node concept="312cEg" id="6xm2RBlmAOL" role="jymVt">
      <property role="TrG5h" value="serverEditorComponent" />
      <node concept="3Tm6S6" id="6xm2RBlmAOM" role="1B3o_S" />
      <node concept="3uibUv" id="6xm2RBlmC_E" role="1tU5fm">
        <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="35hm5eHLv7k" role="jymVt">
      <property role="TrG5h" value="fullTimer" />
      <node concept="3Tm6S6" id="35hm5eHLv7l" role="1B3o_S" />
      <node concept="3uibUv" id="35hm5eHLxHn" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
    </node>
    <node concept="312cEg" id="EbHc1t2nrF" role="jymVt">
      <property role="TrG5h" value="viewTimer" />
      <node concept="3Tm6S6" id="EbHc1t2nrG" role="1B3o_S" />
      <node concept="3uibUv" id="EbHc1t2r8a" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
    </node>
    <node concept="312cEg" id="35hm5eHKut6" role="jymVt">
      <property role="TrG5h" value="lastFullSvg" />
      <node concept="3Tm6S6" id="35hm5eHKut7" role="1B3o_S" />
      <node concept="17QB3L" id="35hm5eHKwFg" role="1tU5fm" />
      <node concept="10Nm6u" id="35hm5eHKxy_" role="33vP2m" />
    </node>
    <node concept="312cEg" id="EbHc1sQqmp" role="jymVt">
      <property role="TrG5h" value="lastViewSvg" />
      <node concept="3Tm6S6" id="EbHc1sQqmq" role="1B3o_S" />
      <node concept="17QB3L" id="EbHc1sQqmr" role="1tU5fm" />
      <node concept="10Nm6u" id="EbHc1sQqms" role="33vP2m" />
    </node>
    <node concept="312cEg" id="35hm5eHV3On" role="jymVt">
      <property role="TrG5h" value="fullUpdateNext" />
      <node concept="3Tm6S6" id="35hm5eHV3Oo" role="1B3o_S" />
      <node concept="10P_77" id="35hm5eHV6wu" role="1tU5fm" />
      <node concept="3clFbT" id="35hm5eHV7b9" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="35hm5eHVBZ_" role="jymVt">
      <property role="TrG5h" value="deltaUpdateCount" />
      <node concept="3Tm6S6" id="35hm5eHVBZA" role="1B3o_S" />
      <node concept="10Oyi0" id="35hm5eHVEH$" role="1tU5fm" />
      <node concept="3cmrfG" id="35hm5eHVFFi" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="312cEg" id="EbHc1sK3O7" role="jymVt">
      <property role="TrG5h" value="viewRange" />
      <node concept="3Tm6S6" id="EbHc1sK3O8" role="1B3o_S" />
      <node concept="1LlUBW" id="EbHc1sK6QJ" role="1tU5fm">
        <node concept="10Oyi0" id="EbHc1sK7a0" role="1Lm7xW" />
        <node concept="10Oyi0" id="EbHc1sK7tp" role="1Lm7xW" />
      </node>
      <node concept="10Nm6u" id="EbHc1sK8ft" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="EbHc1sNaWs" role="jymVt" />
    <node concept="3clFbW" id="6xm2RBlaUMt" role="jymVt">
      <node concept="3cqZAl" id="6xm2RBlaUMu" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlaUMv" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlaUMx" role="3clF47">
        <node concept="XkiVB" id="6xm2RBlaUMz" role="3cqZAp">
          <ref role="37wK5l" to="mi4d:~WebSocketServer.&lt;init&gt;(java.net.InetSocketAddress)" resolve="WebSocketServer" />
          <node concept="2ShNRf" id="6xm2RBlaVlU" role="37wK5m">
            <node concept="1pGfFk" id="6xm2RBlaVkP" role="2ShVmc">
              <ref role="37wK5l" to="zf81:~InetSocketAddress.&lt;init&gt;(int)" resolve="InetSocketAddress" />
              <node concept="3cmrfG" id="6xm2RBlaVmJ" role="37wK5m">
                <property role="3cmrfH" value="8391" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlbBxw" role="3cqZAp">
          <node concept="37vLTI" id="6xm2RBlbBVs" role="3clFbG">
            <node concept="Xjq3P" id="6xm2RBlbBW5" role="37vLTx" />
            <node concept="37vLTw" id="6xm2RBlbBxu" role="37vLTJ">
              <ref role="3cqZAo" node="6xm2RBlbATo" resolve="ourInstance" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBloAqP" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBloAqQ" role="3cpWs9">
            <property role="TrG5h" value="openedProjects" />
            <node concept="_YKpA" id="6xm2RBloB8L" role="1tU5fm">
              <node concept="3uibUv" id="6xm2RBloCxy" role="_ZDj9">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
            </node>
            <node concept="2OqwBi" id="6xm2RBloAqR" role="33vP2m">
              <node concept="2YIFZM" id="6xm2RBloAqS" role="2Oq$k0">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
              </node>
              <node concept="liA8E" id="6xm2RBloAqT" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBloTVL" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBloTVM" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="6xm2RBlq1xS" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="6xm2RBloTVO" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBloTVP" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBloAqQ" resolve="openedProjects" />
              </node>
              <node concept="1uHKPH" id="6xm2RBloTVQ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBlnROS" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBlnROT" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="6xm2RBlpYG8" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6xm2RBlq0hm" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBlpZA8" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBloTVM" resolve="project" />
              </node>
              <node concept="liA8E" id="6xm2RBlq22J" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XpeNv83yum" role="3cqZAp" />
        <node concept="3clFbF" id="35hm5eHLzcQ" role="3cqZAp">
          <node concept="37vLTI" id="35hm5eHL_eP" role="3clFbG">
            <node concept="2ShNRf" id="35hm5eHLA3m" role="37vLTx">
              <node concept="1pGfFk" id="35hm5eHL_Gx" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
                <node concept="3cmrfG" id="35hm5eHLAf8" role="37wK5m">
                  <property role="3cmrfH" value="1000" />
                </node>
                <node concept="2ShNRf" id="35hm5eHLAzo" role="37wK5m">
                  <node concept="YeOm9" id="35hm5eHLXC_" role="2ShVmc">
                    <node concept="1Y3b0j" id="35hm5eHLXCC" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="35hm5eHLXCD" role="1B3o_S" />
                      <node concept="3clFb_" id="35hm5eHLXCE" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="35hm5eHLXCF" role="1B3o_S" />
                        <node concept="3cqZAl" id="35hm5eHLXCH" role="3clF45" />
                        <node concept="37vLTG" id="35hm5eHLXCI" role="3clF46">
                          <property role="TrG5h" value="p0" />
                          <node concept="3uibUv" id="35hm5eHLXCJ" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="35hm5eHLXCK" role="3clF47">
                          <node concept="3clFbJ" id="35hm5eHVl1S" role="3cqZAp">
                            <node concept="3clFbS" id="35hm5eHVl1U" role="3clFbx">
                              <node concept="3clFbF" id="35hm5eHLYsB" role="3cqZAp">
                                <node concept="1rXfSq" id="35hm5eHLYsA" role="3clFbG">
                                  <ref role="37wK5l" node="35hm5eHROtF" resolve="renderAll" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="35hm5eHVpO0" role="3cqZAp">
                                <node concept="37vLTI" id="35hm5eHVqxI" role="3clFbG">
                                  <node concept="3clFbT" id="35hm5eHVqRJ" role="37vLTx">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="37vLTw" id="35hm5eHVpNY" role="37vLTJ">
                                    <ref role="3cqZAo" node="35hm5eHV3On" resolve="fullUpdateNext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="22lmx$" id="35hm5eHVPUD" role="3clFbw">
                              <node concept="3eOSWO" id="35hm5eHVS01" role="3uHU7w">
                                <node concept="3cmrfG" id="35hm5eHVSl1" role="3uHU7w">
                                  <property role="3cmrfH" value="50" />
                                </node>
                                <node concept="37vLTw" id="35hm5eHVQH6" role="3uHU7B">
                                  <ref role="3cqZAo" node="35hm5eHVBZ_" resolve="deltaUpdateCount" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="35hm5eHVlGr" role="3uHU7B">
                                <ref role="3cqZAo" node="35hm5eHV3On" resolve="fullUpdateNext" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="35hm5eHVmzm" role="9aQIa">
                              <node concept="3clFbS" id="35hm5eHVmzn" role="9aQI4">
                                <node concept="3clFbF" id="35hm5eHVnym" role="3cqZAp">
                                  <node concept="37vLTI" id="35hm5eHVofQ" role="3clFbG">
                                    <node concept="3clFbT" id="35hm5eHVoJU" role="37vLTx">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="37vLTw" id="35hm5eHVnyl" role="37vLTJ">
                                      <ref role="3cqZAo" node="35hm5eHV3On" resolve="fullUpdateNext" />
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
            <node concept="37vLTw" id="35hm5eHLzcO" role="37vLTJ">
              <ref role="3cqZAo" node="35hm5eHLv7k" resolve="fullTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHM6un" role="3cqZAp">
          <node concept="2OqwBi" id="35hm5eHM7m3" role="3clFbG">
            <node concept="37vLTw" id="35hm5eHM6ul" role="2Oq$k0">
              <ref role="3cqZAo" node="35hm5eHLv7k" resolve="fullTimer" />
            </node>
            <node concept="liA8E" id="35hm5eHM88w" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sQMyG" role="3cqZAp">
          <node concept="37vLTI" id="EbHc1sQMyH" role="3clFbG">
            <node concept="2ShNRf" id="EbHc1sQMyI" role="37vLTx">
              <node concept="1pGfFk" id="EbHc1sQMyJ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
                <node concept="3cmrfG" id="EbHc1sQMyK" role="37wK5m">
                  <property role="3cmrfH" value="500" />
                </node>
                <node concept="2ShNRf" id="EbHc1sQMyL" role="37wK5m">
                  <node concept="YeOm9" id="EbHc1sQMyM" role="2ShVmc">
                    <node concept="1Y3b0j" id="EbHc1sQMyN" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="EbHc1sQMyO" role="1B3o_S" />
                      <node concept="3clFb_" id="EbHc1sQMyP" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="EbHc1sQMyQ" role="1B3o_S" />
                        <node concept="3cqZAl" id="EbHc1sQMyR" role="3clF45" />
                        <node concept="37vLTG" id="EbHc1sQMyS" role="3clF46">
                          <property role="TrG5h" value="p0" />
                          <node concept="3uibUv" id="EbHc1sQMyT" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="EbHc1sQMyU" role="3clF47">
                          <node concept="3clFbF" id="EbHc1sQMyX" role="3cqZAp">
                            <node concept="1rXfSq" id="EbHc1sQMyY" role="3clFbG">
                              <ref role="37wK5l" node="EbHc1sM0TA" resolve="renderView" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="EbHc1sQNEZ" role="37vLTJ">
              <ref role="3cqZAo" node="EbHc1t2nrF" resolve="viewTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sQMyC" role="3cqZAp">
          <node concept="2OqwBi" id="EbHc1sQMyD" role="3clFbG">
            <node concept="37vLTw" id="EbHc1sQOqT" role="2Oq$k0">
              <ref role="3cqZAo" node="EbHc1t2nrF" resolve="viewTimer" />
            </node>
            <node concept="liA8E" id="EbHc1sQMyF" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlodCw" role="3cqZAp">
          <node concept="1rXfSq" id="6xm2RBlodCu" role="3clFbG">
            <ref role="37wK5l" node="35hm5eHROtF" resolve="renderAll" />
          </node>
        </node>
        <node concept="3clFbF" id="2$gEJgL6Hwe" role="3cqZAp">
          <node concept="2OqwBi" id="2$gEJgL6Hwb" role="3clFbG">
            <node concept="10M0yZ" id="2$gEJgL6Hwc" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2$gEJgL6Hwd" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="2$gEJgL6Im$" role="37wK5m">
                <property role="Xl_RC" value="Render Server started" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tRuDLGk2HK" role="jymVt" />
    <node concept="3clFb_" id="6tRuDLGiWEn" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <node concept="3Tm6S6" id="6tRuDLGiWEo" role="1B3o_S" />
      <node concept="3uibUv" id="6tRuDLGku42" role="3clF45">
        <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
      </node>
      <node concept="3clFbS" id="6tRuDLGiWD3" role="3clF47">
        <node concept="3clFbJ" id="6tRuDLGk$Hr" role="3cqZAp">
          <node concept="3clFbS" id="6tRuDLGk$Ht" role="3clFbx">
            <node concept="3cpWs8" id="6tRuDLGkdND" role="3cqZAp">
              <node concept="3cpWsn" id="6tRuDLGkdNE" role="3cpWs9">
                <property role="TrG5h" value="openedProjects" />
                <node concept="_YKpA" id="6tRuDLGkdNF" role="1tU5fm">
                  <node concept="3uibUv" id="6tRuDLGkdNG" role="_ZDj9">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6tRuDLGkdNH" role="33vP2m">
                  <node concept="2YIFZM" id="6tRuDLGkdNI" role="2Oq$k0">
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                  </node>
                  <node concept="liA8E" id="6tRuDLGkdNJ" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6tRuDLGkdNK" role="3cqZAp">
              <node concept="3cpWsn" id="6tRuDLGkdNL" role="3cpWs9">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="6tRuDLGkdNM" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="6tRuDLGkdNN" role="33vP2m">
                  <node concept="37vLTw" id="6tRuDLGkdNO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tRuDLGkdNE" resolve="openedProjects" />
                  </node>
                  <node concept="1uHKPH" id="6tRuDLGkdNP" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6tRuDLGkdNQ" role="3cqZAp">
              <node concept="3cpWsn" id="6tRuDLGkdNR" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="6tRuDLGkdNS" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="6tRuDLGkdNT" role="33vP2m">
                  <node concept="37vLTw" id="6tRuDLGkdNU" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tRuDLGkdNL" resolve="project" />
                  </node>
                  <node concept="liA8E" id="6tRuDLGkdNV" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6tRuDLGkdqu" role="3cqZAp" />
            <node concept="1QHqEK" id="6tRuDLGiWD4" role="3cqZAp">
              <node concept="1QHqEC" id="6tRuDLGiWD5" role="1QHqEI">
                <node concept="3clFbS" id="6tRuDLGiWD6" role="1bW5cS">
                  <node concept="3cpWs8" id="6tRuDLGlB$v" role="3cqZAp">
                    <node concept="3cpWsn" id="6tRuDLGlB$w" role="3cpWs9">
                      <property role="TrG5h" value="modules" />
                      <node concept="A3Dl8" id="6tRuDLGlCDE" role="1tU5fm">
                        <node concept="3uibUv" id="6tRuDLGlCDG" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6tRuDLGlB$x" role="33vP2m">
                        <node concept="37vLTw" id="6tRuDLGlB$y" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tRuDLGkdNR" resolve="repo" />
                        </node>
                        <node concept="liA8E" id="6tRuDLGlB$z" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6tRuDLGomr5" role="3cqZAp">
                    <node concept="3cpWsn" id="6tRuDLGomr6" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3uibUv" id="6tRuDLGuF$z" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="6tRuDLGuIDQ" role="33vP2m">
                        <node concept="2OqwBi" id="6tRuDLGsJd$" role="2Oq$k0">
                          <node concept="2OqwBi" id="6tRuDLGrgxc" role="2Oq$k0">
                            <node concept="2OqwBi" id="6tRuDLGomr7" role="2Oq$k0">
                              <node concept="37vLTw" id="6tRuDLGomr8" role="2Oq$k0">
                                <ref role="3cqZAo" node="6tRuDLGlB$w" resolve="modules" />
                              </node>
                              <node concept="3zZkjj" id="6tRuDLGrc$4" role="2OqNvi">
                                <node concept="1bVj0M" id="6tRuDLGrc$6" role="23t8la">
                                  <node concept="3clFbS" id="6tRuDLGrc$7" role="1bW5cS">
                                    <node concept="3clFbF" id="6tRuDLGrc$8" role="3cqZAp">
                                      <node concept="17R0WA" id="6tRuDLGrc$9" role="3clFbG">
                                        <node concept="Xl_RD" id="6tRuDLGrc$a" role="3uHU7w">
                                          <property role="Xl_RC" value="WebModule" />
                                        </node>
                                        <node concept="2OqwBi" id="6tRuDLGrc$b" role="3uHU7B">
                                          <node concept="2OqwBi" id="6tRuDLGrc$c" role="2Oq$k0">
                                            <node concept="37vLTw" id="6tRuDLGrc$d" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6tRuDLGrc$g" resolve="it" />
                                            </node>
                                            <node concept="liA8E" id="6tRuDLGrc$e" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6tRuDLGrc$f" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="6tRuDLGrc$g" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="6tRuDLGrc$h" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3goQfb" id="6tRuDLGs86P" role="2OqNvi">
                              <node concept="1bVj0M" id="6tRuDLGs86R" role="23t8la">
                                <node concept="3clFbS" id="6tRuDLGs86S" role="1bW5cS">
                                  <node concept="3clFbF" id="6tRuDLGs925" role="3cqZAp">
                                    <node concept="2OqwBi" id="6tRuDLGs9Hf" role="3clFbG">
                                      <node concept="37vLTw" id="6tRuDLGs924" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tRuDLGs86T" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="6tRuDLGsIgu" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="6tRuDLGs86T" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="6tRuDLGs86U" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3goQfb" id="6tRuDLGtRDk" role="2OqNvi">
                            <node concept="1bVj0M" id="6tRuDLGtRDm" role="23t8la">
                              <node concept="3clFbS" id="6tRuDLGtRDn" role="1bW5cS">
                                <node concept="3clFbF" id="6tRuDLGtSDC" role="3cqZAp">
                                  <node concept="2OqwBi" id="6tRuDLGtToy" role="3clFbG">
                                    <node concept="37vLTw" id="6tRuDLGtSDB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6tRuDLGtRDo" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="6tRuDLGuDE9" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6tRuDLGtRDo" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6tRuDLGtRDp" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1uHKPH" id="6tRuDLGw3ND" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6tRuDLGiWD7" role="3cqZAp">
                    <node concept="37vLTI" id="6tRuDLGiWD8" role="3clFbG">
                      <node concept="2ShNRf" id="6tRuDLGiWD9" role="37vLTx">
                        <node concept="1pGfFk" id="6tRuDLGiWDa" role="2ShVmc">
                          <ref role="37wK5l" node="6xm2RBlmxP4" resolve="ServerEditorComponent" />
                          <node concept="37vLTw" id="6tRuDLGw7NG" role="37wK5m">
                            <ref role="3cqZAo" node="6tRuDLGomr6" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="6tRuDLGw8F7" role="37wK5m">
                            <ref role="3cqZAo" node="6tRuDLGkdNL" resolve="project" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6tRuDLGiWDh" role="37vLTJ">
                        <ref role="3cqZAo" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6tRuDLGiWDi" role="3cqZAp">
                    <node concept="2OqwBi" id="6tRuDLGiWDj" role="3clFbG">
                      <node concept="2OqwBi" id="6tRuDLGiWDk" role="2Oq$k0">
                        <node concept="37vLTw" id="6tRuDLGiWDl" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="6tRuDLGiWDm" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6tRuDLGiWDn" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.addSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="addSelectionListener" />
                        <node concept="2ShNRf" id="6tRuDLGiWDo" role="37wK5m">
                          <node concept="YeOm9" id="6tRuDLGiWDp" role="2ShVmc">
                            <node concept="1Y3b0j" id="6tRuDLGiWDq" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <ref role="1Y3XeK" to="lwvz:~SelectionListener" resolve="SelectionListener" />
                              <node concept="3Tm1VV" id="6tRuDLGiWDr" role="1B3o_S" />
                              <node concept="3clFb_" id="6tRuDLGiWDs" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="selectionChanged" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tm1VV" id="6tRuDLGiWDt" role="1B3o_S" />
                                <node concept="3cqZAl" id="6tRuDLGiWDu" role="3clF45" />
                                <node concept="37vLTG" id="6tRuDLGiWDv" role="3clF46">
                                  <property role="TrG5h" value="p0" />
                                  <node concept="3uibUv" id="6tRuDLGiWDw" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="6tRuDLGiWDx" role="3clF46">
                                  <property role="TrG5h" value="oldSelection" />
                                  <node concept="3uibUv" id="6tRuDLGiWDy" role="1tU5fm">
                                    <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="6tRuDLGiWDz" role="3clF46">
                                  <property role="TrG5h" value="newSelection" />
                                  <node concept="3uibUv" id="6tRuDLGiWD$" role="1tU5fm">
                                    <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="6tRuDLGiWD_" role="3clF47">
                                  <node concept="3clFbF" id="6tRuDLGiWDA" role="3cqZAp">
                                    <node concept="2YIFZM" id="6tRuDLGiWDB" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="6tRuDLGiWDC" role="37wK5m">
                                        <node concept="3clFbS" id="6tRuDLGiWDD" role="1bW5cS">
                                          <node concept="3clFbF" id="6tRuDLGiWDE" role="3cqZAp">
                                            <node concept="1rXfSq" id="6tRuDLGiWDF" role="3clFbG">
                                              <ref role="37wK5l" node="35hm5eHNTvQ" resolve="renderSelections" />
                                              <node concept="37vLTw" id="6tRuDLGiWDG" role="37wK5m">
                                                <ref role="3cqZAo" node="6tRuDLGiWDx" resolve="oldSelection" />
                                              </node>
                                              <node concept="37vLTw" id="6tRuDLGiWDH" role="37wK5m">
                                                <ref role="3cqZAo" node="6tRuDLGiWDz" resolve="newSelection" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="6tRuDLGiWDI" role="3cqZAp">
                                            <node concept="1rXfSq" id="6tRuDLGiWDJ" role="3clFbG">
                                              <ref role="37wK5l" node="EbHc1sM0TA" resolve="renderView" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="6tRuDLGiWDK" role="3cqZAp">
                                    <node concept="2YIFZM" id="6tRuDLGiWDL" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="6tRuDLGiWDM" role="37wK5m">
                                        <node concept="3clFbS" id="6tRuDLGiWDN" role="1bW5cS">
                                          <node concept="3clFbF" id="6tRuDLGiWDO" role="3cqZAp">
                                            <node concept="1rXfSq" id="6tRuDLGiWDP" role="3clFbG">
                                              <ref role="37wK5l" node="35hm5eHROtF" resolve="renderAll" />
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
                  <node concept="3clFbF" id="6tRuDLGiWDQ" role="3cqZAp">
                    <node concept="2OqwBi" id="6tRuDLGiWDR" role="3clFbG">
                      <node concept="2OqwBi" id="6tRuDLGiWDS" role="2Oq$k0">
                        <node concept="37vLTw" id="6tRuDLGiWDT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="6tRuDLGiWDU" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getUpdater()" resolve="getUpdater" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6tRuDLGiWDV" role="2OqNvi">
                        <ref role="37wK5l" to="22ra:~Updater.addListener(jetbrains.mps.openapi.editor.update.UpdaterListener)" resolve="addListener" />
                        <node concept="2ShNRf" id="6tRuDLGiWDW" role="37wK5m">
                          <node concept="YeOm9" id="6tRuDLGiWDX" role="2ShVmc">
                            <node concept="1Y3b0j" id="6tRuDLGiWDY" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="22ra:~UpdaterListenerAdapter.&lt;init&gt;()" resolve="UpdaterListenerAdapter" />
                              <ref role="1Y3XeK" to="22ra:~UpdaterListenerAdapter" resolve="UpdaterListenerAdapter" />
                              <node concept="3Tm1VV" id="6tRuDLGiWDZ" role="1B3o_S" />
                              <node concept="3clFb_" id="6tRuDLGiWE0" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="editorUpdated" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tm1VV" id="6tRuDLGiWE1" role="1B3o_S" />
                                <node concept="3cqZAl" id="6tRuDLGiWE2" role="3clF45" />
                                <node concept="37vLTG" id="6tRuDLGiWE3" role="3clF46">
                                  <property role="TrG5h" value="p0" />
                                  <node concept="3uibUv" id="6tRuDLGiWE4" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="6tRuDLGiWE5" role="3clF47">
                                  <node concept="3clFbF" id="6tRuDLGiWE6" role="3cqZAp">
                                    <node concept="2YIFZM" id="6tRuDLGiWE7" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="6tRuDLGiWE8" role="37wK5m">
                                        <node concept="3clFbS" id="6tRuDLGiWE9" role="1bW5cS">
                                          <node concept="3clFbF" id="6tRuDLGiWEa" role="3cqZAp">
                                            <node concept="1rXfSq" id="6tRuDLGiWEb" role="3clFbG">
                                              <ref role="37wK5l" node="35hm5eHROtF" resolve="renderAll" />
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
              <node concept="37vLTw" id="6tRuDLGkrsp" role="ukAjM">
                <ref role="3cqZAo" node="6tRuDLGkdNR" resolve="repo" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6tRuDLGkBai" role="3clFbw">
            <node concept="10Nm6u" id="6tRuDLGkBkL" role="3uHU7w" />
            <node concept="37vLTw" id="6tRuDLGk_xS" role="3uHU7B">
              <ref role="3cqZAo" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6tRuDLGkrT8" role="3cqZAp" />
        <node concept="3clFbF" id="6tRuDLGksQv" role="3cqZAp">
          <node concept="37vLTw" id="6tRuDLGksQt" role="3clFbG">
            <ref role="3cqZAo" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tRuDLGk3qK" role="jymVt" />
    <node concept="2tJIrI" id="35hm5eHLsUW" role="jymVt" />
    <node concept="3clFb_" id="35hm5eHROtF" role="jymVt">
      <property role="TrG5h" value="renderAll" />
      <node concept="3cqZAl" id="35hm5eHROtH" role="3clF45" />
      <node concept="3Tm1VV" id="35hm5eHROtI" role="1B3o_S" />
      <node concept="3clFbS" id="35hm5eHROtJ" role="3clF47">
        <node concept="3clFbF" id="35hm5eHRYhA" role="3cqZAp">
          <node concept="1rXfSq" id="35hm5eHRYh_" role="3clFbG">
            <ref role="37wK5l" node="6xm2RBlbG4g" resolve="renderAll" />
            <node concept="3clFbT" id="35hm5eHRY$c" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="35hm5eHV18o" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlbG4g" role="jymVt">
      <property role="TrG5h" value="renderAll" />
      <node concept="37vLTG" id="35hm5eHRIHM" role="3clF46">
        <property role="TrG5h" value="force" />
        <node concept="10P_77" id="35hm5eHRL7T" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBlbG4i" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlbG4j" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlbG4k" role="3clF47">
        <node concept="3clFbJ" id="q4IqgjMbLD" role="3cqZAp">
          <node concept="3clFbS" id="q4IqgjMbLF" role="3clFbx">
            <node concept="3cpWs6" id="q4IqgjMf_F" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="q4IqgjMdPp" role="3clFbw">
            <node concept="1rXfSq" id="q4IqgjMcNG" role="2Oq$k0">
              <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
            </node>
            <node concept="liA8E" id="q4IqgjMfio" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlnxI3" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlnzaZ" role="3clFbG">
            <node concept="1rXfSq" id="6tRuDLGkL2p" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
            <node concept="liA8E" id="6xm2RBlnAbt" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="6xm2RBlnCfN" role="37wK5m">
                <node concept="liA8E" id="6xm2RBlnFCx" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="6tRuDLGkLAB" role="2Oq$k0">
                  <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlnH4H" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlnIz7" role="3clFbG">
            <node concept="liA8E" id="6xm2RBlnL$W" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="6tRuDLGkM5u" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBlnwGx" role="3cqZAp" />
        <node concept="3cpWs8" id="6xm2RBlc7u3" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBlc7u4" role="3cpWs9">
            <property role="TrG5h" value="svg" />
            <node concept="17QB3L" id="6xm2RBlc7u1" role="1tU5fm" />
            <node concept="2YIFZM" id="6xm2RBlc7u5" role="33vP2m">
              <ref role="37wK5l" to="vyue:6xm2RBl62kx" resolve="toSvg" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToSvg" />
              <node concept="1rXfSq" id="6tRuDLGkMuN" role="37wK5m">
                <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
              </node>
              <node concept="10Nm6u" id="EbHc1sMVUm" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35hm5eHKyu1" role="3cqZAp">
          <node concept="3clFbS" id="35hm5eHKyu3" role="3clFbx">
            <node concept="3clFbF" id="35hm5eHKKcP" role="3cqZAp">
              <node concept="37vLTI" id="35hm5eHKL3G" role="3clFbG">
                <node concept="37vLTw" id="35hm5eHKLfq" role="37vLTx">
                  <ref role="3cqZAo" node="6xm2RBlc7u4" resolve="svg" />
                </node>
                <node concept="37vLTw" id="35hm5eHKKcN" role="37vLTJ">
                  <ref role="3cqZAo" node="35hm5eHKut6" resolve="lastFullSvg" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="35hm5eHPwU2" role="3cqZAp">
              <node concept="3cpWsn" id="35hm5eHPwU3" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="3uibUv" id="35hm5eHPwU4" role="1tU5fm">
                  <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                </node>
                <node concept="2ShNRf" id="35hm5eHPx$U" role="33vP2m">
                  <node concept="1pGfFk" id="35hm5eHPxqc" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="35hm5eHPy7Q" role="3cqZAp">
              <node concept="2OqwBi" id="35hm5eHPysP" role="3clFbG">
                <node concept="37vLTw" id="35hm5eHPy7O" role="2Oq$k0">
                  <ref role="3cqZAo" node="35hm5eHPwU3" resolve="message" />
                </node>
                <node concept="liA8E" id="35hm5eHPyFA" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                  <node concept="Xl_RD" id="35hm5eHPyRH" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                  </node>
                  <node concept="Xl_RD" id="35hm5eHPz6P" role="37wK5m">
                    <property role="Xl_RC" value="image.full" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="35hm5eHQGnB" role="3cqZAp">
              <node concept="3cpWsn" id="35hm5eHQGnC" role="3cpWs9">
                <property role="TrG5h" value="messageStr" />
                <node concept="17QB3L" id="35hm5eHQHso" role="1tU5fm" />
                <node concept="2OqwBi" id="35hm5eHQGnD" role="33vP2m">
                  <node concept="37vLTw" id="35hm5eHQGnE" role="2Oq$k0">
                    <ref role="3cqZAo" node="35hm5eHPwU3" resolve="message" />
                  </node>
                  <node concept="liA8E" id="35hm5eHQGnF" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="35hm5eHQExI" role="3cqZAp" />
            <node concept="2Gpval" id="6xm2RBlc7UZ" role="3cqZAp">
              <node concept="2GrKxI" id="6xm2RBlc7V1" role="2Gsz3X">
                <property role="TrG5h" value="connection" />
              </node>
              <node concept="2OqwBi" id="6xm2RBlc8oB" role="2GsD0m">
                <node concept="Xjq3P" id="6xm2RBlc80M" role="2Oq$k0" />
                <node concept="liA8E" id="6xm2RBlc8Kh" role="2OqNvi">
                  <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
                </node>
              </node>
              <node concept="3clFbS" id="6xm2RBlc7V5" role="2LFqv$">
                <node concept="3clFbJ" id="6xm2RBlc99w" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBlc9hD" role="3clFbw">
                    <node concept="2GrUjf" id="6xm2RBlc9a$" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6xm2RBlc7V1" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="6xm2RBlc9zr" role="2OqNvi">
                      <ref role="37wK5l" to="ffp0:~WebSocket.isOpen()" resolve="isOpen" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6xm2RBlc99y" role="3clFbx">
                    <node concept="3clFbF" id="6xm2RBlpleu" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBlpler" role="3clFbG">
                        <node concept="10M0yZ" id="6xm2RBlples" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="6xm2RBlplet" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="6xm2RBlplCq" role="37wK5m">
                            <node concept="2YIFZM" id="6xm2RBlplSd" role="3uHU7B">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="Xl_RD" id="6xm2RBlplvZ" role="3uHU7w">
                              <property role="Xl_RC" value=" sending" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="35hm5eHPvf0" role="3cqZAp" />
                    <node concept="3clFbF" id="35hm5eHPAap" role="3cqZAp">
                      <node concept="2OqwBi" id="35hm5eHPAHM" role="3clFbG">
                        <node concept="2GrUjf" id="35hm5eHPAan" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6xm2RBlc7V1" resolve="connection" />
                        </node>
                        <node concept="liA8E" id="35hm5eHPBhR" role="2OqNvi">
                          <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                          <node concept="37vLTw" id="35hm5eHQHZ2" role="37wK5m">
                            <ref role="3cqZAo" node="35hm5eHQGnC" resolve="messageStr" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="35hm5eHPMvA" role="3cqZAp" />
                    <node concept="3clFbF" id="6xm2RBlc9Oa" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBlc9U5" role="3clFbG">
                        <node concept="2GrUjf" id="6xm2RBlc9O9" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6xm2RBlc7V1" resolve="connection" />
                        </node>
                        <node concept="liA8E" id="6xm2RBlca5G" role="2OqNvi">
                          <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                          <node concept="37vLTw" id="6xm2RBlcahS" role="37wK5m">
                            <ref role="3cqZAo" node="6xm2RBlc7u4" resolve="svg" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6xm2RBlpmqS" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBlpmqT" role="3clFbG">
                        <node concept="10M0yZ" id="6xm2RBlpmqU" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="6xm2RBlpmqV" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="6xm2RBlpmqW" role="37wK5m">
                            <node concept="2YIFZM" id="6xm2RBlpmqX" role="3uHU7B">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="Xl_RD" id="6xm2RBlpmqY" role="3uHU7w">
                              <property role="Xl_RC" value=" sent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="35hm5eHVKNf" role="3cqZAp">
              <node concept="37vLTI" id="35hm5eHVMyl" role="3clFbG">
                <node concept="3cmrfG" id="35hm5eHVNeI" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="35hm5eHVKNd" role="37vLTJ">
                  <ref role="3cqZAo" node="35hm5eHVBZ_" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="35hm5eHRFy1" role="3clFbw">
            <node concept="37vLTw" id="35hm5eHRLtg" role="3uHU7B">
              <ref role="3cqZAo" node="35hm5eHRIHM" resolve="force" />
            </node>
            <node concept="17QLQc" id="35hm5eHKzGw" role="3uHU7w">
              <node concept="37vLTw" id="35hm5eHK$2a" role="3uHU7w">
                <ref role="3cqZAo" node="35hm5eHKut6" resolve="lastFullSvg" />
              </node>
              <node concept="37vLTw" id="35hm5eHKzcP" role="3uHU7B">
                <ref role="3cqZAo" node="6xm2RBlc7u4" resolve="svg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="EbHc1sMhs1" role="jymVt" />
    <node concept="3clFb_" id="EbHc1sM0TA" role="jymVt">
      <property role="TrG5h" value="renderView" />
      <node concept="3cqZAl" id="EbHc1sM0TD" role="3clF45" />
      <node concept="3Tm1VV" id="EbHc1sM0TE" role="1B3o_S" />
      <node concept="3clFbS" id="EbHc1sM0TF" role="3clF47">
        <node concept="3clFbJ" id="q4IqgjMf_S" role="3cqZAp">
          <node concept="3clFbS" id="q4IqgjMf_T" role="3clFbx">
            <node concept="3cpWs6" id="q4IqgjMf_U" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="q4IqgjMf_V" role="3clFbw">
            <node concept="1rXfSq" id="q4IqgjMf_W" role="2Oq$k0">
              <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
            </node>
            <node concept="liA8E" id="q4IqgjMf_X" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sM0TH" role="3cqZAp">
          <node concept="2OqwBi" id="EbHc1sM0TI" role="3clFbG">
            <node concept="liA8E" id="EbHc1sM0TK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="EbHc1sM0TL" role="37wK5m">
                <node concept="liA8E" id="EbHc1sM0TN" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="6tRuDLGkNyg" role="2Oq$k0">
                  <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="6tRuDLGkMZ8" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sM0TO" role="3cqZAp">
          <node concept="2OqwBi" id="EbHc1sM0TP" role="3clFbG">
            <node concept="liA8E" id="EbHc1sM0TR" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="6tRuDLGkO02" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="EbHc1sM0TS" role="3cqZAp" />
        <node concept="3cpWs8" id="EbHc1sM0TT" role="3cqZAp">
          <node concept="3cpWsn" id="EbHc1sM0TU" role="3cpWs9">
            <property role="TrG5h" value="clip" />
            <node concept="3uibUv" id="EbHc1sM0TV" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="10Nm6u" id="EbHc1sM0TW" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="EbHc1sM0TX" role="3cqZAp">
          <node concept="3clFbS" id="EbHc1sM0TY" role="3clFbx">
            <node concept="3clFbF" id="EbHc1sM0TZ" role="3cqZAp">
              <node concept="37vLTI" id="EbHc1sM0U0" role="3clFbG">
                <node concept="2ShNRf" id="EbHc1sM0U1" role="37vLTx">
                  <node concept="1pGfFk" id="EbHc1sM0U2" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="3cmrfG" id="EbHc1sM0U3" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1LFfDK" id="EbHc1sM0U4" role="37wK5m">
                      <node concept="3cmrfG" id="EbHc1sM0U5" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="EbHc1sM0U6" role="1LFl5Q">
                        <ref role="3cqZAo" node="EbHc1sK3O7" resolve="viewRange" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="EbHc1sM0U7" role="37wK5m">
                      <node concept="liA8E" id="EbHc1sM0U9" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                      </node>
                      <node concept="1rXfSq" id="6tRuDLGkOpB" role="2Oq$k0">
                        <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="EbHc1sM0Ua" role="37wK5m">
                      <node concept="1LFfDK" id="EbHc1sM0Ub" role="3uHU7w">
                        <node concept="3cmrfG" id="EbHc1sM0Uc" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="EbHc1sM0Ud" role="1LFl5Q">
                          <ref role="3cqZAo" node="EbHc1sK3O7" resolve="viewRange" />
                        </node>
                      </node>
                      <node concept="1LFfDK" id="EbHc1sM0Ue" role="3uHU7B">
                        <node concept="3cmrfG" id="EbHc1sM0Uf" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="EbHc1sM0Ug" role="1LFl5Q">
                          <ref role="3cqZAo" node="EbHc1sK3O7" resolve="viewRange" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="EbHc1sM0Uh" role="37vLTJ">
                  <ref role="3cqZAo" node="EbHc1sM0TU" resolve="clip" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="EbHc1sM0Ui" role="3clFbw">
            <node concept="10Nm6u" id="EbHc1sM0Uj" role="3uHU7w" />
            <node concept="37vLTw" id="EbHc1sM0Uk" role="3uHU7B">
              <ref role="3cqZAo" node="EbHc1sK3O7" resolve="viewRange" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EbHc1sM0Ul" role="3cqZAp">
          <node concept="3cpWsn" id="EbHc1sM0Um" role="3cpWs9">
            <property role="TrG5h" value="svg" />
            <node concept="17QB3L" id="EbHc1sM0Un" role="1tU5fm" />
            <node concept="2YIFZM" id="EbHc1sM0Uo" role="33vP2m">
              <ref role="37wK5l" to="vyue:6xm2RBl62kx" resolve="toSvg" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToSvg" />
              <node concept="1rXfSq" id="6tRuDLGkOY_" role="37wK5m">
                <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
              </node>
              <node concept="37vLTw" id="EbHc1sM0Uq" role="37wK5m">
                <ref role="3cqZAo" node="EbHc1sM0TU" resolve="clip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EbHc1sQv3E" role="3cqZAp">
          <node concept="3clFbS" id="EbHc1sQv3G" role="3clFbx">
            <node concept="3clFbF" id="EbHc1sQzdc" role="3cqZAp">
              <node concept="37vLTI" id="EbHc1sQzO8" role="3clFbG">
                <node concept="37vLTw" id="EbHc1sQzZW" role="37vLTx">
                  <ref role="3cqZAo" node="EbHc1sM0Um" resolve="svg" />
                </node>
                <node concept="37vLTw" id="EbHc1sQzda" role="37vLTJ">
                  <ref role="3cqZAo" node="EbHc1sQqmp" resolve="lastViewSvg" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="EbHc1sM0Ux" role="3cqZAp">
              <node concept="3cpWsn" id="EbHc1sM0Uy" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="3uibUv" id="EbHc1sM0Uz" role="1tU5fm">
                  <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                </node>
                <node concept="2ShNRf" id="EbHc1sM0U$" role="33vP2m">
                  <node concept="1pGfFk" id="EbHc1sM0U_" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="EbHc1sM0UA" role="3cqZAp">
              <node concept="2OqwBi" id="EbHc1sM0UB" role="3clFbG">
                <node concept="37vLTw" id="EbHc1sM0UC" role="2Oq$k0">
                  <ref role="3cqZAo" node="EbHc1sM0Uy" resolve="message" />
                </node>
                <node concept="liA8E" id="EbHc1sM0UD" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                  <node concept="Xl_RD" id="EbHc1sM0UE" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                  </node>
                  <node concept="Xl_RD" id="EbHc1sM0UF" role="37wK5m">
                    <property role="Xl_RC" value="image.fragment" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="EbHc1sM0UG" role="3cqZAp">
              <node concept="3cpWsn" id="EbHc1sM0UH" role="3cpWs9">
                <property role="TrG5h" value="messageStr" />
                <node concept="17QB3L" id="EbHc1sM0UI" role="1tU5fm" />
                <node concept="2OqwBi" id="EbHc1sM0UJ" role="33vP2m">
                  <node concept="37vLTw" id="EbHc1sM0UK" role="2Oq$k0">
                    <ref role="3cqZAo" node="EbHc1sM0Uy" resolve="message" />
                  </node>
                  <node concept="liA8E" id="EbHc1sM0UL" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="EbHc1sM0UM" role="3cqZAp" />
            <node concept="2Gpval" id="EbHc1sM0UN" role="3cqZAp">
              <node concept="2GrKxI" id="EbHc1sM0UO" role="2Gsz3X">
                <property role="TrG5h" value="connection" />
              </node>
              <node concept="2OqwBi" id="EbHc1sM0UP" role="2GsD0m">
                <node concept="Xjq3P" id="EbHc1sM0UQ" role="2Oq$k0" />
                <node concept="liA8E" id="EbHc1sM0UR" role="2OqNvi">
                  <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
                </node>
              </node>
              <node concept="3clFbS" id="EbHc1sM0US" role="2LFqv$">
                <node concept="3clFbJ" id="EbHc1sM0UT" role="3cqZAp">
                  <node concept="2OqwBi" id="EbHc1sM0UU" role="3clFbw">
                    <node concept="2GrUjf" id="EbHc1sM0UV" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="EbHc1sM0UO" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="EbHc1sM0UW" role="2OqNvi">
                      <ref role="37wK5l" to="ffp0:~WebSocket.isOpen()" resolve="isOpen" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="EbHc1sM0UX" role="3clFbx">
                    <node concept="3clFbF" id="EbHc1sM0UY" role="3cqZAp">
                      <node concept="2OqwBi" id="EbHc1sM0UZ" role="3clFbG">
                        <node concept="10M0yZ" id="EbHc1sM0V0" role="2Oq$k0">
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="liA8E" id="EbHc1sM0V1" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="EbHc1sM0V2" role="37wK5m">
                            <node concept="2YIFZM" id="EbHc1sM0V3" role="3uHU7B">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="Xl_RD" id="EbHc1sM0V4" role="3uHU7w">
                              <property role="Xl_RC" value=" sending" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="EbHc1sM0V5" role="3cqZAp" />
                    <node concept="3clFbF" id="EbHc1sM0V6" role="3cqZAp">
                      <node concept="2OqwBi" id="EbHc1sM0V7" role="3clFbG">
                        <node concept="2GrUjf" id="EbHc1sM0V8" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="EbHc1sM0UO" resolve="connection" />
                        </node>
                        <node concept="liA8E" id="EbHc1sM0V9" role="2OqNvi">
                          <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                          <node concept="37vLTw" id="EbHc1sM0Va" role="37wK5m">
                            <ref role="3cqZAo" node="EbHc1sM0UH" resolve="messageStr" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="EbHc1sM0Vb" role="3cqZAp" />
                    <node concept="3clFbF" id="EbHc1sM0Vc" role="3cqZAp">
                      <node concept="2OqwBi" id="EbHc1sM0Vd" role="3clFbG">
                        <node concept="2GrUjf" id="EbHc1sM0Ve" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="EbHc1sM0UO" resolve="connection" />
                        </node>
                        <node concept="liA8E" id="EbHc1sM0Vf" role="2OqNvi">
                          <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                          <node concept="37vLTw" id="EbHc1sM0Vg" role="37wK5m">
                            <ref role="3cqZAo" node="EbHc1sM0Um" resolve="svg" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="EbHc1sM0Vh" role="3cqZAp">
                      <node concept="2OqwBi" id="EbHc1sM0Vi" role="3clFbG">
                        <node concept="10M0yZ" id="EbHc1sM0Vj" role="2Oq$k0">
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="liA8E" id="EbHc1sM0Vk" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="EbHc1sM0Vl" role="37wK5m">
                            <node concept="2YIFZM" id="EbHc1sM0Vm" role="3uHU7B">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="Xl_RD" id="EbHc1sM0Vn" role="3uHU7w">
                              <property role="Xl_RC" value=" sent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="EbHc1sM0Vo" role="3cqZAp">
              <node concept="3uNrnE" id="EbHc1sM$GM" role="3clFbG">
                <node concept="37vLTw" id="EbHc1sM$GO" role="2$L3a6">
                  <ref role="3cqZAo" node="35hm5eHVBZ_" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="EbHc1sQxFl" role="3clFbw">
            <node concept="37vLTw" id="EbHc1sQyDK" role="3uHU7w">
              <ref role="3cqZAo" node="EbHc1sM0Um" resolve="svg" />
            </node>
            <node concept="37vLTw" id="EbHc1sQwoh" role="3uHU7B">
              <ref role="3cqZAo" node="EbHc1sQqmp" resolve="lastViewSvg" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="35hm5eHQvjC" role="jymVt" />
    <node concept="3clFb_" id="35hm5eHNTvQ" role="jymVt">
      <property role="TrG5h" value="renderSelections" />
      <node concept="37vLTG" id="35hm5eHOg$k" role="3clF46">
        <property role="TrG5h" value="selections" />
        <node concept="8X2XB" id="35hm5eHOV06" role="1tU5fm">
          <node concept="3uibUv" id="35hm5eHOiDT" role="8Xvag">
            <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="35hm5eHNTvR" role="3clF45" />
      <node concept="3Tm1VV" id="35hm5eHNTvS" role="1B3o_S" />
      <node concept="3clFbS" id="35hm5eHNTvT" role="3clF47">
        <node concept="3clFbJ" id="q4IqgjMgC0" role="3cqZAp">
          <node concept="3clFbS" id="q4IqgjMgC1" role="3clFbx">
            <node concept="3cpWs6" id="q4IqgjMgC2" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="q4IqgjMgC3" role="3clFbw">
            <node concept="1rXfSq" id="q4IqgjMgC4" role="2Oq$k0">
              <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
            </node>
            <node concept="liA8E" id="q4IqgjMgC5" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35hm5eHONPU" role="3cqZAp">
          <node concept="3clFbS" id="35hm5eHONPW" role="3clFbx">
            <node concept="3cpWs6" id="35hm5eHOQFG" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="35hm5eHPh7n" role="3clFbw">
            <node concept="3cmrfG" id="35hm5eHPi1v" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="35hm5eHPeZb" role="3uHU7B">
              <node concept="37vLTw" id="35hm5eHOOL$" role="2Oq$k0">
                <ref role="3cqZAo" node="35hm5eHOg$k" resolve="selections" />
              </node>
              <node concept="1Rwk04" id="35hm5eHPg2x" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHNTvU" role="3cqZAp">
          <node concept="2OqwBi" id="35hm5eHNTvV" role="3clFbG">
            <node concept="liA8E" id="35hm5eHNTvX" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="35hm5eHNTvY" role="37wK5m">
                <node concept="liA8E" id="35hm5eHNTw0" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="6tRuDLGkQ3N" role="2Oq$k0">
                  <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="6tRuDLGkPv2" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHNTw1" role="3cqZAp">
          <node concept="2OqwBi" id="35hm5eHNTw2" role="3clFbG">
            <node concept="liA8E" id="35hm5eHNTw4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="6tRuDLGkQxT" role="2Oq$k0">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="35hm5eHNTw5" role="3cqZAp" />
        <node concept="3cpWs8" id="35hm5eHOGQR" role="3cqZAp">
          <node concept="3cpWsn" id="35hm5eHOGQS" role="3cpWs9">
            <property role="TrG5h" value="cells" />
            <node concept="_YKpA" id="35hm5eHP1gX" role="1tU5fm">
              <node concept="3uibUv" id="35hm5eHP2nd" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
              </node>
            </node>
            <node concept="2OqwBi" id="35hm5eHOZZD" role="33vP2m">
              <node concept="2OqwBi" id="35hm5eHOYdq" role="2Oq$k0">
                <node concept="2OqwBi" id="35hm5eHOWIv" role="2Oq$k0">
                  <node concept="37vLTw" id="35hm5eHOWdO" role="2Oq$k0">
                    <ref role="3cqZAo" node="35hm5eHOg$k" resolve="selections" />
                  </node>
                  <node concept="39bAoz" id="35hm5eHOXig" role="2OqNvi" />
                </node>
                <node concept="3goQfb" id="35hm5eHOYSR" role="2OqNvi">
                  <node concept="1bVj0M" id="35hm5eHOYST" role="23t8la">
                    <node concept="3clFbS" id="35hm5eHOYSU" role="1bW5cS">
                      <node concept="3clFbF" id="35hm5eHOZhx" role="3cqZAp">
                        <node concept="2OqwBi" id="35hm5eHOGQT" role="3clFbG">
                          <node concept="37vLTw" id="35hm5eHPdpx" role="2Oq$k0">
                            <ref role="3cqZAo" node="35hm5eHOYSV" resolve="it" />
                          </node>
                          <node concept="liA8E" id="35hm5eHOGQV" role="2OqNvi">
                            <ref role="37wK5l" to="lwvz:~Selection.getSelectedCells()" resolve="getSelectedCells" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="35hm5eHOYSV" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="35hm5eHOYSW" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="35hm5eHP0Nx" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35hm5eHOIBN" role="3cqZAp">
          <node concept="3clFbS" id="35hm5eHOIBP" role="3clFbx">
            <node concept="3cpWs6" id="35hm5eHOMX6" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="35hm5eHOKKe" role="3clFbw">
            <node concept="37vLTw" id="35hm5eHOJpC" role="2Oq$k0">
              <ref role="3cqZAo" node="35hm5eHOGQS" resolve="cells" />
            </node>
            <node concept="1v1jN8" id="35hm5eHP4j4" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="35hm5eHOzGy" role="3cqZAp">
          <node concept="3cpWsn" id="35hm5eHOzGz" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="35hm5eHOzGs" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2YIFZM" id="35hm5eHOzG$" role="33vP2m">
              <ref role="37wK5l" to="g51k:~GeometryUtil.getBounds(jetbrains.mps.openapi.editor.cells.EditorCell...)" resolve="getBounds" />
              <ref role="1Pybhc" to="g51k:~GeometryUtil" resolve="GeometryUtil" />
              <node concept="2OqwBi" id="35hm5eHP5Ip" role="37wK5m">
                <node concept="37vLTw" id="35hm5eHP4ud" role="2Oq$k0">
                  <ref role="3cqZAo" node="35hm5eHOGQS" resolve="cells" />
                </node>
                <node concept="3_kTaI" id="35hm5eHP7sQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHTN1Z" role="3cqZAp">
          <node concept="37vLTI" id="35hm5eHTPPI" role="3clFbG">
            <node concept="3cmrfG" id="35hm5eHTQlL" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="35hm5eHTO4o" role="37vLTJ">
              <node concept="37vLTw" id="35hm5eHTN1X" role="2Oq$k0">
                <ref role="3cqZAo" node="35hm5eHOzGz" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="35hm5eHTOLX" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHTRe9" role="3cqZAp">
          <node concept="37vLTI" id="35hm5eHTUlO" role="3clFbG">
            <node concept="2OqwBi" id="35hm5eHTWxs" role="37vLTx">
              <node concept="liA8E" id="35hm5eHTZ$U" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
              </node>
              <node concept="1rXfSq" id="6tRuDLGkQX7" role="2Oq$k0">
                <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="35hm5eHTSa0" role="37vLTJ">
              <node concept="37vLTw" id="35hm5eHTRe7" role="2Oq$k0">
                <ref role="3cqZAo" node="35hm5eHOzGz" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="35hm5eHTThZ" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="35hm5eHNTw6" role="3cqZAp">
          <node concept="3cpWsn" id="35hm5eHNTw7" role="3cpWs9">
            <property role="TrG5h" value="svg" />
            <node concept="17QB3L" id="35hm5eHNTw8" role="1tU5fm" />
            <node concept="2YIFZM" id="35hm5eHNTw9" role="33vP2m">
              <ref role="37wK5l" to="vyue:6xm2RBl62kx" resolve="toSvg" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToSvg" />
              <node concept="1rXfSq" id="6tRuDLGkRqH" role="37wK5m">
                <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
              </node>
              <node concept="37vLTw" id="35hm5eHO_96" role="37wK5m">
                <ref role="3cqZAo" node="35hm5eHOzGz" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="35hm5eHNTwi" role="3cqZAp">
          <node concept="2GrKxI" id="35hm5eHNTwj" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="35hm5eHNTwk" role="2GsD0m">
            <node concept="Xjq3P" id="35hm5eHNTwl" role="2Oq$k0" />
            <node concept="liA8E" id="35hm5eHNTwm" role="2OqNvi">
              <ref role="37wK5l" to="mi4d:~WebSocketServer.connections()" resolve="connections" />
            </node>
          </node>
          <node concept="3clFbS" id="35hm5eHNTwn" role="2LFqv$">
            <node concept="3clFbJ" id="35hm5eHNTwo" role="3cqZAp">
              <node concept="2OqwBi" id="35hm5eHNTwp" role="3clFbw">
                <node concept="2GrUjf" id="35hm5eHNTwq" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="35hm5eHNTwj" resolve="connection" />
                </node>
                <node concept="liA8E" id="35hm5eHNTwr" role="2OqNvi">
                  <ref role="37wK5l" to="ffp0:~WebSocket.isOpen()" resolve="isOpen" />
                </node>
              </node>
              <node concept="3clFbS" id="35hm5eHNTws" role="3clFbx">
                <node concept="3cpWs8" id="35hm5eHPMNr" role="3cqZAp">
                  <node concept="3cpWsn" id="35hm5eHPMNs" role="3cpWs9">
                    <property role="TrG5h" value="message" />
                    <node concept="3uibUv" id="35hm5eHPMNt" role="1tU5fm">
                      <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                    </node>
                    <node concept="2ShNRf" id="35hm5eHPMNu" role="33vP2m">
                      <node concept="1pGfFk" id="35hm5eHPMNv" role="2ShVmc">
                        <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPMNw" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPMNx" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPMNy" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPMNs" resolve="message" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPMNz" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPMN$" role="37wK5m">
                        <property role="Xl_RC" value="type" />
                      </node>
                      <node concept="Xl_RD" id="35hm5eHPMN_" role="37wK5m">
                        <property role="Xl_RC" value="image.fragment" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="35hm5eHPNZG" role="3cqZAp">
                  <node concept="3cpWsn" id="35hm5eHPNZH" role="3cpWs9">
                    <property role="TrG5h" value="data" />
                    <node concept="3uibUv" id="35hm5eHPNZI" role="1tU5fm">
                      <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                    </node>
                    <node concept="2ShNRf" id="35hm5eHPNZJ" role="33vP2m">
                      <node concept="1pGfFk" id="35hm5eHPNZK" role="2ShVmc">
                        <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPOx6" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPONh" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPOx4" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPNZH" resolve="data" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPP2f" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPPeo" role="37wK5m">
                        <property role="Xl_RC" value="x" />
                      </node>
                      <node concept="3cmrfG" id="35hm5eHSf1z" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPVKi" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPVKj" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPVKk" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPNZH" resolve="data" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPVKl" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPVKm" role="37wK5m">
                        <property role="Xl_RC" value="y" />
                      </node>
                      <node concept="3cmrfG" id="35hm5eHSfhu" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPVTj" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPVTk" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPVTl" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPNZH" resolve="data" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPVTm" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPVTn" role="37wK5m">
                        <property role="Xl_RC" value="width" />
                      </node>
                      <node concept="2OqwBi" id="35hm5eHPVTo" role="37wK5m">
                        <node concept="37vLTw" id="35hm5eHPVTp" role="2Oq$k0">
                          <ref role="3cqZAo" node="35hm5eHOzGz" resolve="bounds" />
                        </node>
                        <node concept="2OwXpG" id="35hm5eHPXOY" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPVUg" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPVUh" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPVUi" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPNZH" resolve="data" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPVUj" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPVUk" role="37wK5m">
                        <property role="Xl_RC" value="height" />
                      </node>
                      <node concept="2OqwBi" id="35hm5eHPVUl" role="37wK5m">
                        <node concept="37vLTw" id="35hm5eHPVUm" role="2Oq$k0">
                          <ref role="3cqZAo" node="35hm5eHOzGz" resolve="bounds" />
                        </node>
                        <node concept="2OwXpG" id="35hm5eHPYhd" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPZ3N" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPZu6" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHPZ3L" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHPMNs" resolve="message" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPZF9" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                      <node concept="Xl_RD" id="35hm5eHPZRi" role="37wK5m">
                        <property role="Xl_RC" value="data" />
                      </node>
                      <node concept="37vLTw" id="35hm5eHQ07N" role="37wK5m">
                        <ref role="3cqZAo" node="35hm5eHPNZH" resolve="data" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35hm5eHPMNA" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHPMNB" role="3clFbG">
                    <node concept="2GrUjf" id="35hm5eHPMNC" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="35hm5eHNTwj" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="35hm5eHPMND" role="2OqNvi">
                      <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                      <node concept="2OqwBi" id="35hm5eHPMNE" role="37wK5m">
                        <node concept="37vLTw" id="35hm5eHPMNF" role="2Oq$k0">
                          <ref role="3cqZAo" node="35hm5eHPMNs" resolve="message" />
                        </node>
                        <node concept="liA8E" id="35hm5eHPMNG" role="2OqNvi">
                          <ref role="37wK5l" to="mxf6:~JSONObject.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="35hm5eHPMNc" role="3cqZAp" />
                <node concept="3clFbF" id="35hm5eHNTw$" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHNTw_" role="3clFbG">
                    <node concept="2GrUjf" id="35hm5eHNTwA" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="35hm5eHNTwj" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="35hm5eHNTwB" role="2OqNvi">
                      <ref role="37wK5l" to="ffp0:~WebSocket.send(java.lang.String)" resolve="send" />
                      <node concept="37vLTw" id="35hm5eHNTwC" role="37wK5m">
                        <ref role="3cqZAo" node="35hm5eHNTw7" resolve="svg" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHVrDB" role="3cqZAp">
          <node concept="37vLTI" id="35hm5eHVrDC" role="3clFbG">
            <node concept="3clFbT" id="35hm5eHVrDD" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="35hm5eHVrDE" role="37vLTJ">
              <ref role="3cqZAo" node="35hm5eHV3On" resolve="fullUpdateNext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35hm5eHVGQI" role="3cqZAp">
          <node concept="3uNrnE" id="35hm5eHVIkz" role="3clFbG">
            <node concept="37vLTw" id="35hm5eHVIk_" role="2$L3a6">
              <ref role="3cqZAo" node="35hm5eHVBZ_" resolve="deltaUpdateCount" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sRlwl" role="3cqZAp">
          <node concept="2OqwBi" id="EbHc1sRmsT" role="3clFbG">
            <node concept="37vLTw" id="EbHc1sRlwj" role="2Oq$k0">
              <ref role="3cqZAo" node="EbHc1t2nrF" resolve="viewTimer" />
            </node>
            <node concept="liA8E" id="EbHc1sRnif" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.restart()" resolve="restart" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBljAPn" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlafbJ" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3cqZAl" id="6xm2RBlafbL" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlafbM" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlafbN" role="3clF47">
        <node concept="SfApY" id="6xm2RBlaVMu" role="3cqZAp">
          <node concept="3clFbS" id="6xm2RBlaVMv" role="SfCbr">
            <node concept="3clFbF" id="6xm2RBlaV$y" role="3cqZAp">
              <node concept="3nyPlj" id="6xm2RBlaV$x" role="3clFbG">
                <ref role="37wK5l" to="mi4d:~WebSocketServer.stop()" resolve="stop" />
              </node>
            </node>
            <node concept="3clFbJ" id="35hm5eHM0Xs" role="3cqZAp">
              <node concept="3clFbS" id="35hm5eHM0Xu" role="3clFbx">
                <node concept="3clFbF" id="35hm5eHM4E0" role="3cqZAp">
                  <node concept="2OqwBi" id="35hm5eHM55s" role="3clFbG">
                    <node concept="37vLTw" id="35hm5eHM4DY" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHLv7k" resolve="fullTimer" />
                    </node>
                    <node concept="liA8E" id="35hm5eHM5gj" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="35hm5eHM3Mf" role="3clFbw">
                <node concept="10Nm6u" id="35hm5eHM45H" role="3uHU7w" />
                <node concept="37vLTw" id="35hm5eHM2zh" role="3uHU7B">
                  <ref role="3cqZAo" node="35hm5eHLv7k" resolve="fullTimer" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="EbHc1sQO_7" role="3cqZAp">
              <node concept="3clFbS" id="EbHc1sQO_8" role="3clFbx">
                <node concept="3clFbF" id="EbHc1sQO_9" role="3cqZAp">
                  <node concept="2OqwBi" id="EbHc1sQO_a" role="3clFbG">
                    <node concept="37vLTw" id="EbHc1sQPLT" role="2Oq$k0">
                      <ref role="3cqZAo" node="EbHc1t2nrF" resolve="viewTimer" />
                    </node>
                    <node concept="liA8E" id="EbHc1sQO_c" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="EbHc1sQO_d" role="3clFbw">
                <node concept="10Nm6u" id="EbHc1sQO_e" role="3uHU7w" />
                <node concept="37vLTw" id="EbHc1sQPhb" role="3uHU7B">
                  <ref role="3cqZAo" node="EbHc1t2nrF" resolve="viewTimer" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6xm2RBlmDbm" role="3cqZAp">
              <node concept="3clFbS" id="6xm2RBlmDbo" role="3clFbx">
                <node concept="3clFbF" id="6xm2RBlmJR6" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBlmMmH" role="3clFbG">
                    <node concept="2OqwBi" id="6xm2RBlmKkg" role="2Oq$k0">
                      <node concept="Xjq3P" id="6xm2RBlmJR4" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6xm2RBlmL4N" role="2OqNvi">
                        <ref role="2Oxat5" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6xm2RBlmPeh" role="2OqNvi">
                      <ref role="37wK5l" node="1oBrsEKQjag" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6xm2RBlmJ3k" role="3clFbw">
                <node concept="10Nm6u" id="6xm2RBlmJtf" role="3uHU7w" />
                <node concept="2OqwBi" id="6xm2RBlmDSr" role="3uHU7B">
                  <node concept="Xjq3P" id="6xm2RBlmDmK" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6xm2RBlmEBC" role="2OqNvi">
                    <ref role="2Oxat5" node="6xm2RBlmAOL" resolve="serverEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBlaVMm" role="TEbGg">
            <node concept="3clFbS" id="6xm2RBlaVMn" role="TDEfX">
              <node concept="3clFbF" id="6xm2RBlaVY5" role="3cqZAp">
                <node concept="2OqwBi" id="6xm2RBlaW96" role="3clFbG">
                  <node concept="37vLTw" id="6xm2RBlaVY4" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlaj7v" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlaWp9" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object,java.lang.Throwable)" resolve="error" />
                    <node concept="Xl_RD" id="6xm2RBlaWyF" role="37wK5m">
                      <property role="Xl_RC" value="Failed to stop server" />
                    </node>
                    <node concept="37vLTw" id="6xm2RBlaX9K" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBlaVMo" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6xm2RBlaVMo" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6xm2RBlaVMp" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBlaVMq" role="TEbGg">
            <node concept="3clFbS" id="6xm2RBlaVMr" role="TDEfX">
              <node concept="3clFbF" id="6xm2RBlaWKq" role="3cqZAp">
                <node concept="2OqwBi" id="6xm2RBlaWKr" role="3clFbG">
                  <node concept="37vLTw" id="6xm2RBlaWKv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlaj7v" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlaWKs" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object,java.lang.Throwable)" resolve="error" />
                    <node concept="Xl_RD" id="6xm2RBlaWKt" role="37wK5m">
                      <property role="Xl_RC" value="Failed to stop server" />
                    </node>
                    <node concept="37vLTw" id="6xm2RBlaXFX" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBlaVMs" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6xm2RBlaVMs" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6xm2RBlaVMt" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6xm2RBlaf2M" role="1B3o_S" />
    <node concept="3uibUv" id="6xm2RBlaTrL" role="1zkMxy">
      <ref role="3uigEE" to="mi4d:~WebSocketServer" resolve="WebSocketServer" />
    </node>
    <node concept="3clFb_" id="6xm2RBlaYQd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onOpen" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlaYQe" role="1B3o_S" />
      <node concept="3cqZAl" id="6xm2RBlaYQg" role="3clF45" />
      <node concept="37vLTG" id="6xm2RBlaYQh" role="3clF46">
        <property role="TrG5h" value="conn" />
        <node concept="3uibUv" id="6xm2RBlaYQi" role="1tU5fm">
          <ref role="3uigEE" to="ffp0:~WebSocket" resolve="WebSocket" />
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQj" role="3clF46">
        <property role="TrG5h" value="handshake" />
        <node concept="3uibUv" id="6xm2RBlaYQk" role="1tU5fm">
          <ref role="3uigEE" to="bge5:~ClientHandshake" resolve="ClientHandshake" />
        </node>
      </node>
      <node concept="3clFbS" id="6xm2RBlaYQl" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbx23" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbx20" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlbx21" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlbx22" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6xm2RBlbu9i" role="37wK5m">
                <node concept="37vLTw" id="6xm2RBlbuL1" role="3uHU7w">
                  <ref role="3cqZAo" node="6xm2RBlaYQj" resolve="handshake" />
                </node>
                <node concept="3cpWs3" id="6xm2RBlbtcf" role="3uHU7B">
                  <node concept="3cpWs3" id="6xm2RBlbsgI" role="3uHU7B">
                    <node concept="Xl_RD" id="6xm2RBlbrqs" role="3uHU7B">
                      <property role="Xl_RC" value="open " />
                    </node>
                    <node concept="37vLTw" id="6xm2RBlbshd" role="3uHU7w">
                      <ref role="3cqZAo" node="6xm2RBlaYQh" resolve="conn" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6xm2RBlbtcE" role="3uHU7w">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBleJON" role="3cqZAp" />
        <node concept="3cpWs8" id="6xm2RBleKj5" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBleKj6" role="3cpWs9">
            <property role="TrG5h" value="itr" />
            <node concept="3uibUv" id="6xm2RBleKj1" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3uibUv" id="6xm2RBleKj4" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6xm2RBleKj7" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBleKj8" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBlaYQj" resolve="handshake" />
              </node>
              <node concept="liA8E" id="6xm2RBleKj9" role="2OqNvi">
                <ref role="37wK5l" to="bge5:~Handshakedata.iterateHttpFields()" resolve="iterateHttpFields" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6xm2RBleLUr" role="3cqZAp">
          <node concept="3clFbS" id="6xm2RBleLUt" role="2LFqv$">
            <node concept="3cpWs8" id="6xm2RBlePOj" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBlePOk" role="3cpWs9">
                <property role="TrG5h" value="field" />
                <node concept="3uibUv" id="6xm2RBlePO8" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="6xm2RBlePOl" role="33vP2m">
                  <node concept="37vLTw" id="6xm2RBlePOm" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBleKj6" resolve="itr" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlePOn" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6xm2RBleOCL" role="3cqZAp">
              <node concept="2OqwBi" id="6xm2RBleOCI" role="3clFbG">
                <node concept="10M0yZ" id="6xm2RBleOCJ" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="6xm2RBleOCK" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="6xm2RBleQOo" role="37wK5m">
                    <node concept="2OqwBi" id="6xm2RBleSf5" role="3uHU7w">
                      <node concept="37vLTw" id="6xm2RBleRH_" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBlaYQj" resolve="handshake" />
                      </node>
                      <node concept="liA8E" id="6xm2RBleSDj" role="2OqNvi">
                        <ref role="37wK5l" to="bge5:~Handshakedata.getFieldValue(java.lang.String)" resolve="getFieldValue" />
                        <node concept="37vLTw" id="6xm2RBleSWx" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBlePOk" resolve="field" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs3" id="6xm2RBleQ4J" role="3uHU7B">
                      <node concept="37vLTw" id="6xm2RBleQh2" role="3uHU7B">
                        <ref role="3cqZAo" node="6xm2RBlePOk" resolve="field" />
                      </node>
                      <node concept="Xl_RD" id="6xm2RBleOSF" role="3uHU7w">
                        <property role="Xl_RC" value=" = " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6xm2RBleN0q" role="2$JKZa">
            <node concept="37vLTw" id="6xm2RBleMyP" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBleKj6" resolve="itr" />
            </node>
            <node concept="liA8E" id="6xm2RBleNqJ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBlezRs" role="3cqZAp" />
        <node concept="3clFbF" id="35hm5eHQdnf" role="3cqZAp">
          <node concept="2YIFZM" id="35hm5eHQd_O" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="1bVj0M" id="35hm5eHQdW1" role="37wK5m">
              <node concept="3clFbS" id="35hm5eHQdW2" role="1bW5cS">
                <node concept="3clFbF" id="35hm5eHQewn" role="3cqZAp">
                  <node concept="1rXfSq" id="35hm5eHQewm" role="3clFbG">
                    <ref role="37wK5l" node="6xm2RBlbG4g" resolve="renderAll" />
                    <node concept="3clFbT" id="35hm5eHRYUw" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlaYQm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="35hm5eHQkq7" role="jymVt" />
    <node concept="2tJIrI" id="35hm5eHQpe2" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlaYQn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onClose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlaYQo" role="1B3o_S" />
      <node concept="3cqZAl" id="6xm2RBlaYQq" role="3clF45" />
      <node concept="37vLTG" id="6xm2RBlaYQr" role="3clF46">
        <property role="TrG5h" value="conn" />
        <node concept="3uibUv" id="6xm2RBlaYQs" role="1tU5fm">
          <ref role="3uigEE" to="ffp0:~WebSocket" resolve="WebSocket" />
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQt" role="3clF46">
        <property role="TrG5h" value="code" />
        <node concept="10Oyi0" id="6xm2RBlaYQu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQv" role="3clF46">
        <property role="TrG5h" value="reason" />
        <node concept="3uibUv" id="6xm2RBlaYQw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQx" role="3clF46">
        <property role="TrG5h" value="remote" />
        <node concept="10P_77" id="6xm2RBlaYQy" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6xm2RBlaYQz" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbxQ9" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbxQ6" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlbxQ7" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlbxQ8" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6xm2RBlbpXO" role="37wK5m">
                <node concept="37vLTw" id="6xm2RBlbpYG" role="3uHU7w">
                  <ref role="3cqZAo" node="6xm2RBlaYQx" resolve="remote" />
                </node>
                <node concept="3cpWs3" id="6xm2RBlboZd" role="3uHU7B">
                  <node concept="3cpWs3" id="6xm2RBlbo09" role="3uHU7B">
                    <node concept="3cpWs3" id="6xm2RBlbn2g" role="3uHU7B">
                      <node concept="3cpWs3" id="6xm2RBlblKS" role="3uHU7B">
                        <node concept="3cpWs3" id="6xm2RBlbkNH" role="3uHU7B">
                          <node concept="3cpWs3" id="6xm2RBlbkec" role="3uHU7B">
                            <node concept="Xl_RD" id="6xm2RBlbjM9" role="3uHU7B">
                              <property role="Xl_RC" value="Close " />
                            </node>
                            <node concept="37vLTw" id="6xm2RBlbkxR" role="3uHU7w">
                              <ref role="3cqZAo" node="6xm2RBlaYQr" resolve="conn" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6xm2RBlbkO8" role="3uHU7w">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6xm2RBlblLw" role="3uHU7w">
                          <ref role="3cqZAo" node="6xm2RBlaYQt" resolve="code" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6xm2RBlbn2F" role="3uHU7w">
                        <property role="Xl_RC" value=", " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6xm2RBlbovV" role="3uHU7w">
                      <ref role="3cqZAo" node="6xm2RBlaYQv" resolve="reason" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6xm2RBlboZC" role="3uHU7w">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlaYQ$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6xm2RBlaYQ_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onMessage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlaYQA" role="1B3o_S" />
      <node concept="3cqZAl" id="6xm2RBlaYQC" role="3clF45" />
      <node concept="37vLTG" id="6xm2RBlaYQD" role="3clF46">
        <property role="TrG5h" value="conn" />
        <node concept="3uibUv" id="6xm2RBlaYQE" role="1tU5fm">
          <ref role="3uigEE" to="ffp0:~WebSocket" resolve="WebSocket" />
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQF" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="6xm2RBlaYQG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6xm2RBlaYQH" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbyCq" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbyCn" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlbyCo" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlbyCp" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6xm2RBlbi1B" role="37wK5m">
                <node concept="37vLTw" id="6xm2RBlbiBg" role="3uHU7w">
                  <ref role="3cqZAo" node="6xm2RBlaYQF" resolve="message" />
                </node>
                <node concept="3cpWs3" id="6xm2RBlbhg4" role="3uHU7B">
                  <node concept="3cpWs3" id="6xm2RBlbrA4" role="3uHU7B">
                    <node concept="3cpWs3" id="6xm2RBlpgNX" role="3uHU7B">
                      <node concept="2YIFZM" id="6xm2RBlpiNK" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                      <node concept="Xl_RD" id="6xm2RBlbrHJ" role="3uHU7w">
                        <property role="Xl_RC" value=" Message " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6xm2RBlbh_2" role="3uHU7w">
                      <ref role="3cqZAo" node="6xm2RBlaYQD" resolve="conn" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6xm2RBlbh11" role="3uHU7w">
                    <property role="Xl_RC" value=": " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="6xm2RBld2Bc" role="3cqZAp">
          <node concept="3clFbS" id="6xm2RBld2Be" role="SfCbr">
            <node concept="3clFbF" id="6xm2RBlfABq" role="3cqZAp">
              <node concept="1rXfSq" id="6xm2RBlfABp" role="3clFbG">
                <ref role="37wK5l" node="6xm2RBlfnUV" resolve="processMessage" />
                <node concept="2ShNRf" id="6xm2RBlfAVT" role="37wK5m">
                  <node concept="1pGfFk" id="6xm2RBlfBWX" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;(java.lang.String)" resolve="JSONObject" />
                    <node concept="37vLTw" id="6xm2RBlfCcc" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBlaYQF" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBld2Bf" role="TEbGg">
            <node concept="3cpWsn" id="6xm2RBld2Bh" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6xm2RBld2Q8" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="6xm2RBld2Bl" role="TDEfX">
              <node concept="3clFbF" id="6xm2RBld3kD" role="3cqZAp">
                <node concept="2OqwBi" id="6xm2RBld3kA" role="3clFbG">
                  <node concept="10M0yZ" id="6xm2RBld3kB" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="6xm2RBld3kC" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="3cpWs3" id="6xm2RBld3Gz" role="37wK5m">
                      <node concept="2OqwBi" id="6xm2RBld46c" role="3uHU7w">
                        <node concept="37vLTw" id="6xm2RBld3H2" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xm2RBld2Bh" resolve="ex" />
                        </node>
                        <node concept="liA8E" id="6xm2RBld4ya" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6xm2RBld3mh" role="3uHU7B">
                        <property role="Xl_RC" value="Failed: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6xm2RBld4Jx" role="3cqZAp">
                <node concept="2OqwBi" id="6xm2RBld4Zn" role="3clFbG">
                  <node concept="37vLTw" id="6xm2RBld4Jv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBld2Bh" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="6xm2RBld5pH" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlaYQI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBlfmP0" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlfnUV" role="jymVt">
      <property role="TrG5h" value="processMessage" />
      <node concept="37vLTG" id="6xm2RBlfrVm" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="6xm2RBlfsXP" role="1tU5fm">
          <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
        </node>
      </node>
      <node concept="3cqZAl" id="6xm2RBlfnUX" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlfnUY" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlfnUZ" role="3clF47">
        <node concept="3cpWs8" id="6xm2RBlfvZz" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBlfvZ$" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="6xm2RBlfvZy" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2OqwBi" id="6xm2RBlfvZ_" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBlfvZA" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBlfrVm" resolve="message" />
              </node>
              <node concept="liA8E" id="6xm2RBlfvZB" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.optJSONObject(java.lang.String)" resolve="optJSONObject" />
                <node concept="Xl_RD" id="6xm2RBlfvZC" role="37wK5m">
                  <property role="Xl_RC" value="data" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBlgOrt" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBlgOru" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="17QB3L" id="6xm2RBlgPd3" role="1tU5fm" />
            <node concept="2OqwBi" id="6xm2RBlgOrv" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBlgOrw" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBlfrVm" resolve="message" />
              </node>
              <node concept="liA8E" id="6xm2RBlgOrx" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.getString(java.lang.String)" resolve="getString" />
                <node concept="Xl_RD" id="6xm2RBlgOry" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="35hm5eHMeyS" role="3cqZAp">
          <node concept="3cpWsn" id="35hm5eHMeyT" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="17QB3L" id="35hm5eHMfwd" role="1tU5fm" />
            <node concept="2EnYce" id="EbHc1sKZ1Y" role="33vP2m">
              <node concept="37vLTw" id="35hm5eHMeyV" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
              </node>
              <node concept="liA8E" id="35hm5eHMeyW" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.optString(java.lang.String)" resolve="optString" />
                <node concept="Xl_RD" id="35hm5eHMeyX" role="37wK5m">
                  <property role="Xl_RC" value="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="35hm5eHMg4d" role="3cqZAp">
          <node concept="3cpWsn" id="35hm5eHMg4g" role="3cpWs9">
            <property role="TrG5h" value="keyChar" />
            <node concept="10Pfzv" id="35hm5eHMg4b" role="1tU5fm" />
            <node concept="3K4zz7" id="35hm5eHMlOJ" role="33vP2m">
              <node concept="2OqwBi" id="35hm5eHMmQV" role="3K4E3e">
                <node concept="37vLTw" id="35hm5eHMmy1" role="2Oq$k0">
                  <ref role="3cqZAo" node="35hm5eHMeyT" resolve="key" />
                </node>
                <node concept="liA8E" id="35hm5eHMnRm" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                  <node concept="3cmrfG" id="35hm5eHMocb" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="1Xhbcc" id="35hm5eHMpab" role="3K4GZi">
                <property role="1XhdNS" value="\0" />
              </node>
              <node concept="1Wc70l" id="35hm5eHMhys" role="3K4Cdx">
                <node concept="3clFbC" id="35hm5eHMk3f" role="3uHU7w">
                  <node concept="3cmrfG" id="35hm5eHMke8" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="35hm5eHMigl" role="3uHU7B">
                    <node concept="37vLTw" id="35hm5eHMhOz" role="2Oq$k0">
                      <ref role="3cqZAo" node="35hm5eHMeyT" resolve="key" />
                    </node>
                    <node concept="liA8E" id="35hm5eHMj2Y" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="35hm5eHMgYY" role="3uHU7B">
                  <node concept="37vLTw" id="35hm5eHMgAL" role="3uHU7B">
                    <ref role="3cqZAo" node="35hm5eHMeyT" resolve="key" />
                  </node>
                  <node concept="10Nm6u" id="35hm5eHMhgG" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xm2RBlftjo" role="3cqZAp">
          <node concept="17R0WA" id="6xm2RBlfuA$" role="3clFbw">
            <node concept="Xl_RD" id="6xm2RBlfuMu" role="3uHU7w">
              <property role="Xl_RC" value="click" />
            </node>
            <node concept="37vLTw" id="6xm2RBlgOr$" role="3uHU7B">
              <ref role="3cqZAo" node="6xm2RBlgOru" resolve="type" />
            </node>
          </node>
          <node concept="3clFbS" id="6xm2RBlftjq" role="3clFbx">
            <node concept="3cpWs8" id="6xm2RBlfwiF" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBlfwiG" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="6xm2RBlfwiH" role="1tU5fm" />
                <node concept="2OqwBi" id="6xm2RBlfwiI" role="33vP2m">
                  <node concept="37vLTw" id="6xm2RBlfwIE" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlfwiK" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                    <node concept="Xl_RD" id="6xm2RBlfwiL" role="37wK5m">
                      <property role="Xl_RC" value="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6xm2RBlfwiM" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBlfwiN" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="6xm2RBlfwiO" role="1tU5fm" />
                <node concept="2OqwBi" id="6xm2RBlfwiP" role="33vP2m">
                  <node concept="37vLTw" id="6xm2RBlfwYD" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlfwiR" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                    <node concept="Xl_RD" id="6xm2RBlfwiS" role="37wK5m">
                      <property role="Xl_RC" value="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6xm2RBlfwiT" role="3cqZAp">
              <node concept="1rXfSq" id="6xm2RBlfwiU" role="3clFbG">
                <ref role="37wK5l" node="6xm2RBleXQD" resolve="simulateClick" />
                <node concept="37vLTw" id="6xm2RBlfwiV" role="37wK5m">
                  <ref role="3cqZAo" node="6xm2RBlfwiG" resolve="x" />
                </node>
                <node concept="37vLTw" id="6xm2RBlfwiW" role="37wK5m">
                  <ref role="3cqZAo" node="6xm2RBlfwiN" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6xm2RBlf_8I" role="3eNLev">
            <node concept="3clFbS" id="6xm2RBlf_8K" role="3eOfB_">
              <node concept="3clFbF" id="6xm2RBlg5KI" role="3cqZAp">
                <node concept="1rXfSq" id="6xm2RBlg5KH" role="3clFbG">
                  <ref role="37wK5l" node="6xm2RBlfDuP" resolve="simulateKeypress" />
                  <node concept="2OqwBi" id="6xm2RBls19O" role="37wK5m">
                    <node concept="37vLTw" id="6xm2RBls19P" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                    </node>
                    <node concept="liA8E" id="6xm2RBls19Q" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="6xm2RBls19R" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="35hm5eHMpYs" role="37wK5m">
                    <ref role="3cqZAo" node="35hm5eHMg4g" resolve="keyChar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="6xm2RBlf_su" role="3eO9$A">
              <node concept="Xl_RD" id="6xm2RBlf_sv" role="3uHU7w">
                <property role="Xl_RC" value="keypress" />
              </node>
              <node concept="37vLTw" id="6xm2RBlgOrz" role="3uHU7B">
                <ref role="3cqZAo" node="6xm2RBlgOru" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6xm2RBlgJsG" role="3eNLev">
            <node concept="3clFbS" id="6xm2RBlgJsH" role="3eOfB_">
              <node concept="3cpWs8" id="1LwnBM2Xurf" role="3cqZAp">
                <node concept="3cpWsn" id="1LwnBM2Xuri" role="3cpWs9">
                  <property role="TrG5h" value="modifier" />
                  <node concept="10Oyi0" id="1LwnBM2Xurd" role="1tU5fm" />
                  <node concept="3cmrfG" id="1LwnBM2XuVK" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1LwnBM2Xvl0" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1LwnBM2Xvl2" role="3clFbx">
                  <node concept="3clFbF" id="1LwnBM2XxgT" role="3cqZAp">
                    <node concept="37vLTI" id="1LwnBM2Xyhc" role="3clFbG">
                      <node concept="pVOtf" id="1LwnBM2XzV0" role="37vLTx">
                        <node concept="10M0yZ" id="1LwnBM2X$Yh" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.CTRL_DOWN_MASK" resolve="CTRL_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1LwnBM2XyMf" role="3uHU7B">
                          <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LwnBM2XxgR" role="37vLTJ">
                        <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1LwnBM2Xw3a" role="3clFbw">
                  <node concept="37vLTw" id="1LwnBM2Xv$$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1LwnBM2Xwjz" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1LwnBM2XwyM" role="37wK5m">
                      <property role="Xl_RC" value="ctrl" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1LwnBM2X_ix" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1LwnBM2X_iy" role="3clFbx">
                  <node concept="3clFbF" id="1LwnBM2X_iz" role="3cqZAp">
                    <node concept="37vLTI" id="1LwnBM2X_i$" role="3clFbG">
                      <node concept="pVOtf" id="1LwnBM2X_i_" role="37vLTx">
                        <node concept="10M0yZ" id="1LwnBM2X_Fs" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.ALT_DOWN_MASK" resolve="ALT_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1LwnBM2X_iB" role="3uHU7B">
                          <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LwnBM2X_iC" role="37vLTJ">
                        <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1LwnBM2X_iD" role="3clFbw">
                  <node concept="37vLTw" id="1LwnBM2X_iE" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1LwnBM2X_iF" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1LwnBM2X_iG" role="37wK5m">
                      <property role="Xl_RC" value="alt" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1LwnBM2X_VW" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1LwnBM2X_VX" role="3clFbx">
                  <node concept="3clFbF" id="1LwnBM2X_VY" role="3cqZAp">
                    <node concept="37vLTI" id="1LwnBM2X_VZ" role="3clFbG">
                      <node concept="pVOtf" id="1LwnBM2X_W0" role="37vLTx">
                        <node concept="10M0yZ" id="1LwnBM2XAlp" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.SHIFT_DOWN_MASK" resolve="SHIFT_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1LwnBM2X_W2" role="3uHU7B">
                          <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LwnBM2X_W3" role="37vLTJ">
                        <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1LwnBM2X_W4" role="3clFbw">
                  <node concept="37vLTw" id="1LwnBM2X_W5" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1LwnBM2X_W6" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1LwnBM2X_W7" role="37wK5m">
                      <property role="Xl_RC" value="shift" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1LwnBM2XA_T" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1LwnBM2XA_U" role="3clFbx">
                  <node concept="3clFbF" id="1LwnBM2XA_V" role="3cqZAp">
                    <node concept="37vLTI" id="1LwnBM2XA_W" role="3clFbG">
                      <node concept="pVOtf" id="1LwnBM2XA_X" role="37vLTx">
                        <node concept="10M0yZ" id="1LwnBM2XAZS" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.META_DOWN_MASK" resolve="META_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1LwnBM2XA_Z" role="3uHU7B">
                          <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LwnBM2XAA0" role="37vLTJ">
                        <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1LwnBM2XAA1" role="3clFbw">
                  <node concept="37vLTw" id="1LwnBM2XAA2" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1LwnBM2XAA3" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1LwnBM2XAA4" role="37wK5m">
                      <property role="Xl_RC" value="meta" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6xm2RBlgJsI" role="3cqZAp">
                <node concept="1rXfSq" id="6xm2RBlgJsJ" role="3clFbG">
                  <ref role="37wK5l" node="6xm2RBlgpCF" resolve="simulateKeyDown" />
                  <node concept="2OqwBi" id="6xm2RBlgJsL" role="37wK5m">
                    <node concept="37vLTw" id="6xm2RBlgJsM" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                    </node>
                    <node concept="liA8E" id="6xm2RBlgJsN" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="6xm2RBlgJsO" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="35hm5eHMq3m" role="37wK5m">
                    <ref role="3cqZAo" node="35hm5eHMg4g" resolve="keyChar" />
                  </node>
                  <node concept="37vLTw" id="1LwnBM2XBFG" role="37wK5m">
                    <ref role="3cqZAo" node="1LwnBM2Xuri" resolve="modifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="6xm2RBlgJsR" role="3eO9$A">
              <node concept="Xl_RD" id="6xm2RBlgJsS" role="3uHU7w">
                <property role="Xl_RC" value="keydown" />
              </node>
              <node concept="37vLTw" id="6xm2RBlgOr_" role="3uHU7B">
                <ref role="3cqZAo" node="6xm2RBlgOru" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6xm2RBlgJNx" role="3eNLev">
            <node concept="3clFbS" id="6xm2RBlgJNy" role="3eOfB_">
              <node concept="3clFbF" id="6xm2RBlgJNz" role="3cqZAp">
                <node concept="1rXfSq" id="6xm2RBlgJN$" role="3clFbG">
                  <ref role="37wK5l" node="6xm2RBlgsdd" resolve="simulateKeyUp" />
                  <node concept="2OqwBi" id="6xm2RBlgJNA" role="37wK5m">
                    <node concept="37vLTw" id="6xm2RBlgJNB" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBlfvZ$" resolve="data" />
                    </node>
                    <node concept="liA8E" id="6xm2RBlgJNC" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="6xm2RBlgJND" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="35hm5eHMq8g" role="37wK5m">
                    <ref role="3cqZAo" node="35hm5eHMg4g" resolve="keyChar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="6xm2RBlgJNG" role="3eO9$A">
              <node concept="Xl_RD" id="6xm2RBlgJNH" role="3uHU7w">
                <property role="Xl_RC" value="keyup" />
              </node>
              <node concept="37vLTw" id="6xm2RBlgOrA" role="3uHU7B">
                <ref role="3cqZAo" node="6xm2RBlgOru" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="EbHc1sJYTy" role="3eNLev">
            <node concept="17R0WA" id="EbHc1sK0y0" role="3eO9$A">
              <node concept="Xl_RD" id="EbHc1sK0Ks" role="3uHU7w">
                <property role="Xl_RC" value="viewrange" />
              </node>
              <node concept="37vLTw" id="EbHc1sJZYX" role="3uHU7B">
                <ref role="3cqZAo" node="6xm2RBlgOru" resolve="type" />
              </node>
            </node>
            <node concept="3clFbS" id="EbHc1sJYT$" role="3eOfB_">
              <node concept="3clFbF" id="EbHc1sK8Sk" role="3cqZAp">
                <node concept="37vLTI" id="EbHc1sK9El" role="3clFbG">
                  <node concept="1Ls8ON" id="EbHc1sKaim" role="37vLTx">
                    <node concept="2OqwBi" id="EbHc1sKblb" role="1Lso8e">
                      <node concept="37vLTw" id="EbHc1sKaVJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBlfrVm" resolve="message" />
                      </node>
                      <node concept="liA8E" id="EbHc1sKbIg" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="EbHc1sKc2e" role="37wK5m">
                          <property role="Xl_RC" value="top" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="EbHc1sKck_" role="1Lso8e">
                      <node concept="37vLTw" id="EbHc1sKckA" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBlfrVm" resolve="message" />
                      </node>
                      <node concept="liA8E" id="EbHc1sKckB" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="EbHc1sKckC" role="37wK5m">
                          <property role="Xl_RC" value="bottom" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="EbHc1sK8Sj" role="37vLTJ">
                    <ref role="3cqZAo" node="EbHc1sK3O7" resolve="viewRange" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6xm2RBlfz08" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
      <node concept="3uibUv" id="6xm2RBlfzWW" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBleVTF" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBleXQD" role="jymVt">
      <property role="TrG5h" value="simulateClick" />
      <node concept="37vLTG" id="6xm2RBlf165" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6xm2RBlf1YG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlf1ZP" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6xm2RBlf2Su" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBleXQF" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBleXQG" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBleXQH" role="3clF47">
        <node concept="3cpWs8" id="6tRuDLGl44j" role="3cqZAp">
          <node concept="3cpWsn" id="6tRuDLGl44k" role="3cpWs9">
            <property role="TrG5h" value="serverEditorComponent" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6tRuDLGl44i" role="1tU5fm">
              <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
            </node>
            <node concept="1rXfSq" id="6tRuDLGl5o5" role="33vP2m">
              <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBldZrk" role="3cqZAp">
          <node concept="2YIFZM" id="6xm2RBldZF$" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <node concept="1bVj0M" id="6xm2RBle05i" role="37wK5m">
              <node concept="3clFbS" id="6xm2RBle05j" role="1bW5cS">
                <node concept="3cpWs8" id="6xm2RBleh03" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBleh04" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3uibUv" id="6xm2RBlegZN" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2YIFZM" id="6xm2RBleh05" role="33vP2m">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.getDeepestComponentAt(java.awt.Component,int,int)" resolve="getDeepestComponentAt" />
                      <node concept="37vLTw" id="6tRuDLGl44o" role="37wK5m">
                        <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                      </node>
                      <node concept="37vLTw" id="6xm2RBleh09" role="37wK5m">
                        <ref role="3cqZAo" node="6xm2RBlf165" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="6xm2RBleh0a" role="37wK5m">
                        <ref role="3cqZAo" node="6xm2RBlf1ZP" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6xm2RBld_mL" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBldC8s" role="3clFbG">
                    <node concept="37vLTw" id="6tRuDLGl44p" role="2Oq$k0">
                      <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="6xm2RBldESr" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="6xm2RBlejoO" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="6tRuDLGl995" role="37wK5m">
                          <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="6xm2RBldFrH" role="37wK5m">
                          <node concept="1pGfFk" id="6xm2RBldHcg" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6tRuDLGl44q" role="37wK5m">
                              <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBldWrh" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="6xm2RBldMat" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBldNij" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBldNX$" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf165" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBldOAE" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf1ZP" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="6xm2RBldPg5" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="6xm2RBldPUV" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBldRft" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="6xm2RBlelTF" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBleh04" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6xm2RBlemeK" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBlemeL" role="3clFbG">
                    <node concept="37vLTw" id="6tRuDLGl44r" role="2Oq$k0">
                      <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="6xm2RBlemeP" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="6xm2RBlemeQ" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="6tRuDLGl9Bk" role="37wK5m">
                          <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="6xm2RBlemeS" role="37wK5m">
                          <node concept="1pGfFk" id="6xm2RBlemeT" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6tRuDLGl44s" role="37wK5m">
                              <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBlemTO" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="6xm2RBlemeY" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBlemeZ" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBlemf0" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf165" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBlemf1" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf1ZP" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="6xm2RBlemf2" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="6xm2RBlemf3" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBlemf4" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="6xm2RBlemf5" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBleh04" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6xm2RBleqeE" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBleqeF" role="3clFbG">
                    <node concept="37vLTw" id="6tRuDLGl44t" role="2Oq$k0">
                      <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="6xm2RBleqeJ" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="6xm2RBleqeK" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <node concept="37vLTw" id="6tRuDLGla5A" role="37wK5m">
                          <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="6xm2RBleqeM" role="37wK5m">
                          <node concept="1pGfFk" id="6xm2RBleqeN" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6tRuDLGl44u" role="37wK5m">
                              <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBleqU8" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
                            </node>
                            <node concept="2YIFZM" id="6xm2RBleqeS" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBleqeT" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBleqeU" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf165" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBleqeV" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlf1ZP" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="6xm2RBleqeW" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="6xm2RBleqeX" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="6xm2RBleqeY" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="6xm2RBleqeZ" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBleh04" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sQgYm" role="3cqZAp">
          <node concept="2YIFZM" id="EbHc1sQgYn" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <node concept="1bVj0M" id="EbHc1sQgYo" role="37wK5m">
              <node concept="3clFbS" id="EbHc1sQgYp" role="1bW5cS">
                <node concept="3clFbF" id="EbHc1sQgYq" role="3cqZAp">
                  <node concept="1rXfSq" id="EbHc1sQgYr" role="3clFbG">
                    <ref role="37wK5l" node="35hm5eHNTvQ" resolve="renderSelections" />
                    <node concept="2OqwBi" id="EbHc1sQgYs" role="37wK5m">
                      <node concept="2OqwBi" id="EbHc1sQgYt" role="2Oq$k0">
                        <node concept="37vLTw" id="6tRuDLGlbQx" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tRuDLGl44k" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="EbHc1sQgYv" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="EbHc1sQgYw" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1LwnBM2XXYZ" role="3cqZAp">
                  <node concept="1rXfSq" id="1LwnBM2XXYX" role="3clFbG">
                    <ref role="37wK5l" node="EbHc1sM0TA" resolve="renderView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="EbHc1sQgCD" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="6xm2RBlf7y2" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="6xm2RBlf8kg" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBlfFcq" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlfDuP" role="jymVt">
      <property role="TrG5h" value="simulateKeypress" />
      <node concept="37vLTG" id="6xm2RBlrWRR" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="6xm2RBlrYNK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlfKa0" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="6xm2RBlg$Ux" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBlfDuU" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlfDuV" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlfDuW" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlfDuX" role="3cqZAp">
          <node concept="2YIFZM" id="6xm2RBlu6MH" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="6xm2RBlu6MI" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="6xm2RBlu6MJ" role="1bW5cS">
                <node concept="3clFbF" id="6xm2RBlu6MK" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBlu6ML" role="3clFbG">
                    <node concept="1rXfSq" id="6tRuDLGld1h" role="2Oq$k0">
                      <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                    </node>
                    <node concept="liA8E" id="6xm2RBlu6MN" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.processKeyTyped(java.awt.event.KeyEvent)" resolve="processKeyTyped" />
                      <node concept="2ShNRf" id="6xm2RBlu6MO" role="37wK5m">
                        <node concept="1pGfFk" id="6xm2RBlu6MP" role="2ShVmc">
                          <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                          <node concept="1rXfSq" id="6tRuDLGldGp" role="37wK5m">
                            <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                          </node>
                          <node concept="10M0yZ" id="6xm2RBlu6MR" role="37wK5m">
                            <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_TYPED" resolve="KEY_TYPED" />
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          </node>
                          <node concept="2YIFZM" id="6xm2RBlu6MS" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          </node>
                          <node concept="3cmrfG" id="6xm2RBlu6MT" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="10M0yZ" id="6xm2RBlu6MU" role="37wK5m">
                            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_UNDEFINED" resolve="VK_UNDEFINED" />
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          </node>
                          <node concept="37vLTw" id="6xm2RBlu6MV" role="37wK5m">
                            <ref role="3cqZAo" node="6xm2RBlfKa0" resolve="key" />
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
      <node concept="3uibUv" id="6xm2RBlfDwc" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="6xm2RBlfDwd" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="3clFb_" id="6xm2RBlgpCF" role="jymVt">
      <property role="TrG5h" value="simulateKeyDown" />
      <node concept="37vLTG" id="6xm2RBlgpCG" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="6xm2RBlgBWk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlrUg7" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="6xm2RBlrWHa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1LwnBM2XqMT" role="3clF46">
        <property role="TrG5h" value="modifiers" />
        <node concept="10Oyi0" id="1LwnBM2XtUs" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBlgpCI" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlgpCJ" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlgpCK" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlgSvD" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlgSvA" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlgSvB" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlgSvC" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6xm2RBlgTvC" role="37wK5m">
                <node concept="37vLTw" id="6xm2RBlgTHU" role="3uHU7w">
                  <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                </node>
                <node concept="Xl_RD" id="6xm2RBlgSWw" role="3uHU7B">
                  <property role="Xl_RC" value="down: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlgpCL" role="3cqZAp">
          <node concept="2YIFZM" id="6xm2RBltXDK" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="6xm2RBltXDL" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="6xm2RBltXDM" role="1bW5cS">
                <node concept="3cpWs8" id="EbHc1sR$kl" role="3cqZAp">
                  <node concept="3cpWsn" id="EbHc1sR$km" role="3cpWs9">
                    <property role="TrG5h" value="oldSelection" />
                    <node concept="3uibUv" id="EbHc1sR$kk" role="1tU5fm">
                      <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                    </node>
                    <node concept="2OqwBi" id="EbHc1sR$kn" role="33vP2m">
                      <node concept="2OqwBi" id="EbHc1sR$ko" role="2Oq$k0">
                        <node concept="liA8E" id="EbHc1sR$kq" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                        <node concept="1rXfSq" id="6tRuDLGlef3" role="2Oq$k0">
                          <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="EbHc1sR$kr" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="EbHc1sRvcj" role="3cqZAp" />
                <node concept="3cpWs8" id="6xm2RBltXDN" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBltXDO" role="3cpWs9">
                    <property role="TrG5h" value="dataContext" />
                    <node concept="3uibUv" id="6xm2RBltXDP" role="1tU5fm">
                      <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
                    </node>
                    <node concept="2OqwBi" id="4XpeNv83bs9" role="33vP2m">
                      <node concept="liA8E" id="4XpeNv83f7_" role="2OqNvi">
                        <ref role="37wK5l" node="4XpeNv81V3j" resolve="getDataContext" />
                      </node>
                      <node concept="1rXfSq" id="6tRuDLGlfYW" role="2Oq$k0">
                        <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6xm2RBltXDU" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBltXDV" role="3cpWs9">
                    <property role="TrG5h" value="keyEvent" />
                    <node concept="3uibUv" id="6xm2RBltXDW" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                    <node concept="2ShNRf" id="6xm2RBltXDX" role="33vP2m">
                      <node concept="1pGfFk" id="6xm2RBltXDY" role="2ShVmc">
                        <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                        <node concept="1rXfSq" id="6tRuDLGlhEJ" role="37wK5m">
                          <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                        </node>
                        <node concept="10M0yZ" id="6xm2RBltXE0" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_PRESSED" resolve="KEY_PRESSED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="2YIFZM" id="6xm2RBltXE1" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="37vLTw" id="1LwnBM2XC7f" role="37wK5m">
                          <ref role="3cqZAo" node="1LwnBM2XqMT" resolve="modifiers" />
                        </node>
                        <node concept="37vLTw" id="6xm2RBltXE3" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                        </node>
                        <node concept="10M0yZ" id="6xm2RBltXE4" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.CHAR_UNDEFINED" resolve="CHAR_UNDEFINED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6xm2RBltXE5" role="3cqZAp" />
                <node concept="3SKdUt" id="6xm2RBltXE6" role="3cqZAp">
                  <node concept="3SKdUq" id="6xm2RBltXE7" role="3SKWNk">
                    <property role="3SKdUp" value="TODO find component local keystroke (see IdeKeyEventDispatcher)" />
                  </node>
                </node>
                <node concept="3cpWs8" id="6xm2RBltXE8" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBltXE9" role="3cpWs9">
                    <property role="TrG5h" value="keymap" />
                    <node concept="3uibUv" id="6xm2RBltXEa" role="1tU5fm">
                      <ref role="3uigEE" to="vuw5:~Keymap" resolve="Keymap" />
                    </node>
                    <node concept="2OqwBi" id="6xm2RBltXEb" role="33vP2m">
                      <node concept="2YIFZM" id="6xm2RBltXEc" role="2Oq$k0">
                        <ref role="37wK5l" to="vuw5:~KeymapManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="vuw5:~KeymapManager" resolve="KeymapManager" />
                      </node>
                      <node concept="liA8E" id="6xm2RBltXEd" role="2OqNvi">
                        <ref role="37wK5l" to="vuw5:~KeymapManager.getActiveKeymap()" resolve="getActiveKeymap" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6xm2RBltXEe" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBltXEf" role="3cpWs9">
                    <property role="TrG5h" value="actionIds" />
                    <node concept="10Q1$e" id="6xm2RBltXEg" role="1tU5fm">
                      <node concept="17QB3L" id="6xm2RBltXEh" role="10Q1$1" />
                    </node>
                    <node concept="2OqwBi" id="6xm2RBltXEi" role="33vP2m">
                      <node concept="37vLTw" id="6xm2RBltXEj" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBltXE9" resolve="keymap" />
                      </node>
                      <node concept="liA8E" id="6xm2RBltXEk" role="2OqNvi">
                        <ref role="37wK5l" to="vuw5:~Keymap.getActionIds(javax.swing.KeyStroke)" resolve="getActionIds" />
                        <node concept="2YIFZM" id="6xm2RBltXEl" role="37wK5m">
                          <ref role="1Pybhc" to="dxuu:~KeyStroke" resolve="KeyStroke" />
                          <ref role="37wK5l" to="dxuu:~KeyStroke.getKeyStroke(int,int,boolean)" resolve="getKeyStroke" />
                          <node concept="37vLTw" id="6xm2RBltXEm" role="37wK5m">
                            <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                          </node>
                          <node concept="37vLTw" id="1LwnBM2XN7f" role="37wK5m">
                            <ref role="3cqZAo" node="1LwnBM2XqMT" resolve="modifiers" />
                          </node>
                          <node concept="3clFbT" id="6xm2RBltXEo" role="37wK5m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xm2RBltXEp" role="3cqZAp">
                  <node concept="3clFbS" id="6xm2RBltXEq" role="3clFbx">
                    <node concept="3cpWs8" id="6xm2RBltXEr" role="3cqZAp">
                      <node concept="3cpWsn" id="6xm2RBltXEs" role="3cpWs9">
                        <property role="TrG5h" value="actionManager" />
                        <node concept="3uibUv" id="6xm2RBltXEt" role="1tU5fm">
                          <ref role="3uigEE" to="8rsk:~ActionManagerEx" resolve="ActionManagerEx" />
                        </node>
                        <node concept="2YIFZM" id="6xm2RBltXEu" role="33vP2m">
                          <ref role="37wK5l" to="8rsk:~ActionManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                          <ref role="1Pybhc" to="8rsk:~ActionManagerEx" resolve="ActionManagerEx" />
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="6xm2RBltXEv" role="3cqZAp">
                      <node concept="2GrKxI" id="6xm2RBltXEw" role="2Gsz3X">
                        <property role="TrG5h" value="actionId" />
                      </node>
                      <node concept="37vLTw" id="6xm2RBltXEx" role="2GsD0m">
                        <ref role="3cqZAo" node="6xm2RBltXEf" resolve="actionIds" />
                      </node>
                      <node concept="3clFbS" id="6xm2RBltXEy" role="2LFqv$">
                        <node concept="3cpWs8" id="6xm2RBltXEz" role="3cqZAp">
                          <node concept="3cpWsn" id="6xm2RBltXE$" role="3cpWs9">
                            <property role="TrG5h" value="action" />
                            <node concept="3uibUv" id="6xm2RBltXE_" role="1tU5fm">
                              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                            </node>
                            <node concept="2OqwBi" id="6xm2RBltXEA" role="33vP2m">
                              <node concept="37vLTw" id="6xm2RBltXEB" role="2Oq$k0">
                                <ref role="3cqZAo" node="6xm2RBltXEs" resolve="actionManager" />
                              </node>
                              <node concept="liA8E" id="6xm2RBltXEC" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                                <node concept="2GrUjf" id="6xm2RBltXED" role="37wK5m">
                                  <ref role="2Gs0qQ" node="6xm2RBltXEw" resolve="actionId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6xm2RBltXEE" role="3cqZAp">
                          <node concept="3clFbS" id="6xm2RBltXEF" role="3clFbx">
                            <node concept="3N13vt" id="6xm2RBltXEG" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="6xm2RBltXEH" role="3clFbw">
                            <node concept="10Nm6u" id="6xm2RBltXEI" role="3uHU7w" />
                            <node concept="37vLTw" id="6xm2RBltXEJ" role="3uHU7B">
                              <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6xm2RBltXEK" role="3cqZAp">
                          <node concept="3cpWsn" id="6xm2RBltXEL" role="3cpWs9">
                            <property role="TrG5h" value="actionEvent" />
                            <node concept="3uibUv" id="6xm2RBltXEM" role="1tU5fm">
                              <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                            </node>
                            <node concept="2YIFZM" id="6xm2RBltXEN" role="33vP2m">
                              <ref role="37wK5l" to="qkt:~AnActionEvent.createFromAnAction(com.intellij.openapi.actionSystem.AnAction,java.awt.event.InputEvent,java.lang.String,com.intellij.openapi.actionSystem.DataContext)" resolve="createFromAnAction" />
                              <ref role="1Pybhc" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                              <node concept="37vLTw" id="6xm2RBltXEO" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXEP" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXDV" resolve="keyEvent" />
                              </node>
                              <node concept="10M0yZ" id="6xm2RBltXEQ" role="37wK5m">
                                <ref role="3cqZAo" to="qkt:~ActionPlaces.MAIN_MENU" resolve="MAIN_MENU" />
                                <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXER" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXDO" resolve="dataContext" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6xm2RBltXES" role="3cqZAp">
                          <node concept="3cpWsn" id="6xm2RBltXET" role="3cpWs9">
                            <property role="TrG5h" value="token" />
                            <node concept="3uibUv" id="6xm2RBltXEU" role="1tU5fm">
                              <ref role="3uigEE" to="bd8o:~AccessToken" resolve="AccessToken" />
                            </node>
                            <node concept="2YIFZM" id="6xm2RBltXEV" role="33vP2m">
                              <ref role="37wK5l" to="ddhc:~ProhibitAWTEvents.start(java.lang.String)" resolve="start" />
                              <ref role="1Pybhc" to="ddhc:~ProhibitAWTEvents" resolve="ProhibitAWTEvents" />
                              <node concept="Xl_RD" id="6xm2RBltXEW" role="37wK5m">
                                <property role="Xl_RC" value="update" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2GUZhq" id="6xm2RBltXEX" role="3cqZAp">
                          <node concept="3clFbS" id="6xm2RBltXEY" role="2GV8ay">
                            <node concept="3clFbF" id="6xm2RBltXEZ" role="3cqZAp">
                              <node concept="2OqwBi" id="6xm2RBltXF0" role="3clFbG">
                                <node concept="1eOMI4" id="6xm2RBltXF1" role="2Oq$k0">
                                  <node concept="10QFUN" id="6xm2RBltXF2" role="1eOMHV">
                                    <node concept="2YIFZM" id="6xm2RBltXF3" role="10QFUP">
                                      <ref role="37wK5l" to="bd8o:~TransactionGuard.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="bd8o:~TransactionGuard" resolve="TransactionGuard" />
                                    </node>
                                    <node concept="3uibUv" id="6xm2RBltXF4" role="10QFUM">
                                      <ref role="3uigEE" to="bd8o:~TransactionGuardImpl" resolve="TransactionGuardImpl" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="6xm2RBltXF5" role="2OqNvi">
                                  <ref role="37wK5l" to="bd8o:~TransactionGuardImpl.performUserActivity(java.lang.Runnable)" resolve="performUserActivity" />
                                  <node concept="1bVj0M" id="6xm2RBltXF6" role="37wK5m">
                                    <property role="3yWfEV" value="true" />
                                    <node concept="3clFbS" id="6xm2RBltXF7" role="1bW5cS">
                                      <node concept="3clFbF" id="6xm2RBltXF8" role="3cqZAp">
                                        <node concept="2YIFZM" id="6xm2RBltXF9" role="3clFbG">
                                          <ref role="1Pybhc" to="8rsk:~ActionUtil" resolve="ActionUtil" />
                                          <ref role="37wK5l" to="8rsk:~ActionUtil.performDumbAwareUpdate(boolean,com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.AnActionEvent,boolean)" resolve="performDumbAwareUpdate" />
                                          <node concept="3clFbT" id="6xm2RBltXFa" role="37wK5m">
                                            <property role="3clFbU" value="false" />
                                          </node>
                                          <node concept="37vLTw" id="6xm2RBltXFb" role="37wK5m">
                                            <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                                          </node>
                                          <node concept="37vLTw" id="6xm2RBltXFc" role="37wK5m">
                                            <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                                          </node>
                                          <node concept="3clFbT" id="6xm2RBltXFd" role="37wK5m">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="6xm2RBltXFe" role="3cqZAp" />
                          </node>
                          <node concept="3clFbS" id="6xm2RBltXFf" role="2GVbov">
                            <node concept="3clFbF" id="6xm2RBltXFg" role="3cqZAp">
                              <node concept="2OqwBi" id="6xm2RBltXFh" role="3clFbG">
                                <node concept="37vLTw" id="6xm2RBltXFi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6xm2RBltXET" resolve="token" />
                                </node>
                                <node concept="liA8E" id="6xm2RBltXFj" role="2OqNvi">
                                  <ref role="37wK5l" to="bd8o:~AccessToken.close()" resolve="close" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6xm2RBltXFk" role="3cqZAp">
                          <node concept="3clFbS" id="6xm2RBltXFl" role="3clFbx">
                            <node concept="3clFbF" id="6xm2RBltXFm" role="3cqZAp">
                              <node concept="2OqwBi" id="6xm2RBltXFn" role="3clFbG">
                                <node concept="10M0yZ" id="6xm2RBltXFo" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                </node>
                                <node concept="liA8E" id="6xm2RBltXFp" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                  <node concept="3cpWs3" id="6xm2RBltXFq" role="37wK5m">
                                    <node concept="2GrUjf" id="6xm2RBltXFr" role="3uHU7w">
                                      <ref role="2Gs0qQ" node="6xm2RBltXEw" resolve="actionId" />
                                    </node>
                                    <node concept="Xl_RD" id="6xm2RBltXFs" role="3uHU7B">
                                      <property role="Xl_RC" value="not applicable: " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3N13vt" id="6xm2RBltXFt" role="3cqZAp" />
                          </node>
                          <node concept="3fqX7Q" id="6xm2RBltXFu" role="3clFbw">
                            <node concept="2OqwBi" id="6xm2RBltXFv" role="3fr31v">
                              <node concept="2OqwBi" id="6xm2RBltXFw" role="2Oq$k0">
                                <node concept="37vLTw" id="6xm2RBltXFx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                                </node>
                                <node concept="liA8E" id="6xm2RBltXFy" role="2OqNvi">
                                  <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6xm2RBltXFz" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~Presentation.isEnabled()" resolve="isEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6xm2RBltXF$" role="3cqZAp" />
                        <node concept="3clFbF" id="6xm2RBltXF_" role="3cqZAp">
                          <node concept="2OqwBi" id="6xm2RBltXFA" role="3clFbG">
                            <node concept="37vLTw" id="6xm2RBltXFB" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xm2RBltXEs" resolve="actionManager" />
                            </node>
                            <node concept="liA8E" id="6xm2RBltXFC" role="2OqNvi">
                              <ref role="37wK5l" to="8rsk:~ActionManagerEx.fireBeforeActionPerformed(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.DataContext,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="fireBeforeActionPerformed" />
                              <node concept="37vLTw" id="6xm2RBltXFD" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXFE" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXDO" resolve="dataContext" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXFF" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6xm2RBltXFG" role="3cqZAp">
                          <node concept="2OqwBi" id="6xm2RBltXFH" role="3clFbG">
                            <node concept="1eOMI4" id="6xm2RBltXFI" role="2Oq$k0">
                              <node concept="10QFUN" id="6xm2RBltXFJ" role="1eOMHV">
                                <node concept="2YIFZM" id="6xm2RBltXFK" role="10QFUP">
                                  <ref role="37wK5l" to="bd8o:~TransactionGuard.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="bd8o:~TransactionGuard" resolve="TransactionGuard" />
                                </node>
                                <node concept="3uibUv" id="6xm2RBltXFL" role="10QFUM">
                                  <ref role="3uigEE" to="bd8o:~TransactionGuardImpl" resolve="TransactionGuardImpl" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6xm2RBltXFM" role="2OqNvi">
                              <ref role="37wK5l" to="bd8o:~TransactionGuardImpl.performUserActivity(java.lang.Runnable)" resolve="performUserActivity" />
                              <node concept="1bVj0M" id="6xm2RBltXFN" role="37wK5m">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="6xm2RBltXFO" role="1bW5cS">
                                  <node concept="3clFbF" id="6xm2RBltXFP" role="3cqZAp">
                                    <node concept="2OqwBi" id="6xm2RBltXFQ" role="3clFbG">
                                      <node concept="37vLTw" id="6xm2RBltXFR" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                                      </node>
                                      <node concept="liA8E" id="6xm2RBltXFS" role="2OqNvi">
                                        <ref role="37wK5l" to="qkt:~AnAction.actionPerformed(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="actionPerformed" />
                                        <node concept="37vLTw" id="6xm2RBltXFT" role="37wK5m">
                                          <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6xm2RBltXFU" role="3cqZAp">
                          <node concept="2OqwBi" id="6xm2RBltXFV" role="3clFbG">
                            <node concept="37vLTw" id="6xm2RBltXFW" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xm2RBltXEs" resolve="actionManager" />
                            </node>
                            <node concept="liA8E" id="6xm2RBltXFX" role="2OqNvi">
                              <ref role="37wK5l" to="8rsk:~ActionManagerEx.fireAfterActionPerformed(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.DataContext,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="fireAfterActionPerformed" />
                              <node concept="37vLTw" id="6xm2RBltXFY" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXE$" resolve="action" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXFZ" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXDO" resolve="dataContext" />
                              </node>
                              <node concept="37vLTw" id="6xm2RBltXG0" role="37wK5m">
                                <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6xm2RBltXG1" role="3cqZAp">
                          <node concept="2OqwBi" id="6xm2RBltXG2" role="3clFbG">
                            <node concept="37vLTw" id="6xm2RBltXG3" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xm2RBltXDV" resolve="keyEvent" />
                            </node>
                            <node concept="liA8E" id="6xm2RBltXG4" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6xm2RBltXG5" role="3cqZAp">
                          <node concept="2OqwBi" id="6xm2RBltXG6" role="3clFbG">
                            <node concept="10M0yZ" id="6xm2RBltXG7" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                            </node>
                            <node concept="liA8E" id="6xm2RBltXG8" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                              <node concept="3cpWs3" id="6xm2RBltXG9" role="37wK5m">
                                <node concept="2OqwBi" id="6xm2RBltXGa" role="3uHU7w">
                                  <node concept="2OqwBi" id="6xm2RBltXGb" role="2Oq$k0">
                                    <node concept="37vLTw" id="6xm2RBltXGc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6xm2RBltXEL" resolve="actionEvent" />
                                    </node>
                                    <node concept="liA8E" id="6xm2RBltXGd" role="2OqNvi">
                                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6xm2RBltXGe" role="2OqNvi">
                                    <ref role="37wK5l" to="qkt:~Presentation.getText()" resolve="getText" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6xm2RBltXGf" role="3uHU7B">
                                  <property role="Xl_RC" value="processed by " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zACq4" id="6xm2RBltXGg" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="6xm2RBltXGh" role="3clFbw">
                    <node concept="3eOSWO" id="6xm2RBltXGi" role="3uHU7w">
                      <node concept="3cmrfG" id="6xm2RBltXGj" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2OqwBi" id="6xm2RBltXGk" role="3uHU7B">
                        <node concept="37vLTw" id="6xm2RBltXGl" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xm2RBltXEf" resolve="actionIds" />
                        </node>
                        <node concept="1Rwk04" id="6xm2RBltXGm" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="6xm2RBltXGn" role="3uHU7B">
                      <node concept="37vLTw" id="6xm2RBltXGo" role="3uHU7B">
                        <ref role="3cqZAo" node="6xm2RBltXEf" resolve="actionIds" />
                      </node>
                      <node concept="10Nm6u" id="6xm2RBltXGp" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6xm2RBltXGq" role="3cqZAp" />
                <node concept="3clFbJ" id="6xm2RBltXGr" role="3cqZAp">
                  <node concept="3clFbS" id="6xm2RBltXGs" role="3clFbx">
                    <node concept="3clFbF" id="6xm2RBltXGt" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBltXGu" role="3clFbG">
                        <node concept="liA8E" id="6xm2RBltXGw" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.processKeyPressed(java.awt.event.KeyEvent)" resolve="processKeyPressed" />
                          <node concept="37vLTw" id="6xm2RBltXGx" role="37wK5m">
                            <ref role="3cqZAo" node="6xm2RBltXDV" resolve="keyEvent" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="6tRuDLGljmN" role="2Oq$k0">
                          <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6xm2RBltXGy" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBltXGz" role="3clFbG">
                        <node concept="10M0yZ" id="6xm2RBltXG$" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="6xm2RBltXG_" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="Xl_RD" id="6xm2RBltXGA" role="37wK5m">
                            <property role="Xl_RC" value="processed by editor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xm2RBltXGB" role="3clFbw">
                    <node concept="2OqwBi" id="6xm2RBltXGC" role="3fr31v">
                      <node concept="37vLTw" id="6xm2RBltXGD" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBltXDV" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="6xm2RBltXGE" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xm2RBltXGF" role="3cqZAp">
                  <node concept="3clFbS" id="6xm2RBltXGG" role="3clFbx">
                    <node concept="3clFbF" id="6xm2RBltXGH" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBltXGI" role="3clFbG">
                        <node concept="10M0yZ" id="6xm2RBltXGJ" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="6xm2RBltXGK" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="6xm2RBltXGL" role="37wK5m">
                            <node concept="37vLTw" id="6xm2RBltXGM" role="3uHU7w">
                              <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                            </node>
                            <node concept="Xl_RD" id="6xm2RBltXGN" role="3uHU7B">
                              <property role="Xl_RC" value="unprocessed keydown: " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6xm2RBlumFS" role="3cqZAp">
                      <node concept="3clFbS" id="6xm2RBlumFU" role="3clFbx">
                        <node concept="3clFbH" id="6xm2RBlumFT" role="3cqZAp" />
                      </node>
                      <node concept="3y3z36" id="6xm2RBlupkt" role="3clFbw">
                        <node concept="3cmrfG" id="6xm2RBlurpM" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="6xm2RBlunDS" role="3uHU7B">
                          <ref role="3cqZAo" node="6xm2RBlrUg7" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="SfApY" id="6xm2RBltXGO" role="3cqZAp">
                      <node concept="3clFbS" id="6xm2RBltXGP" role="SfCbr">
                        <node concept="3clFbF" id="6xm2RBltXGQ" role="3cqZAp">
                          <node concept="1rXfSq" id="6xm2RBltXGR" role="3clFbG">
                            <ref role="37wK5l" node="6xm2RBlfDuP" resolve="simulateKeypress" />
                            <node concept="37vLTw" id="6xm2RBltXGS" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                            </node>
                            <node concept="37vLTw" id="6xm2RBltXGT" role="37wK5m">
                              <ref role="3cqZAo" node="6xm2RBlrUg7" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="6xm2RBltXGU" role="TEbGg">
                        <node concept="3cpWsn" id="6xm2RBltXGV" role="TDEfY">
                          <property role="TrG5h" value="ex" />
                          <node concept="3uibUv" id="6xm2RBltXGW" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6xm2RBltXGX" role="TDEfX">
                          <node concept="YS8fn" id="6xm2RBltXGY" role="3cqZAp">
                            <node concept="2ShNRf" id="6xm2RBltXGZ" role="YScLw">
                              <node concept="1pGfFk" id="6xm2RBltXH0" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                                <node concept="37vLTw" id="6xm2RBltXH1" role="37wK5m">
                                  <ref role="3cqZAo" node="6xm2RBltXGV" resolve="ex" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="35hm5eHMqvv" role="3clFbw">
                    <node concept="3y3z36" id="35hm5eHMye_" role="3uHU7w">
                      <node concept="1Xhbcc" id="35hm5eHMz9m" role="3uHU7w">
                        <property role="1XhdNS" value="\0" />
                      </node>
                      <node concept="37vLTw" id="35hm5eHMwxL" role="3uHU7B">
                        <ref role="3cqZAo" node="6xm2RBlgpCG" resolve="keyCode" />
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="6xm2RBltXH2" role="3uHU7B">
                      <node concept="2OqwBi" id="6xm2RBltXH3" role="3fr31v">
                        <node concept="37vLTw" id="6xm2RBltXH4" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xm2RBltXDV" resolve="keyEvent" />
                        </node>
                        <node concept="liA8E" id="6xm2RBltXH5" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="EbHc1sPr9I" role="3cqZAp" />
                <node concept="3clFbF" id="EbHc1sP9yl" role="3cqZAp">
                  <node concept="2YIFZM" id="EbHc1sP9ym" role="3clFbG">
                    <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                    <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                    <node concept="1bVj0M" id="EbHc1sP9yn" role="37wK5m">
                      <node concept="3clFbS" id="EbHc1sP9yo" role="1bW5cS">
                        <node concept="3clFbF" id="EbHc1sP9yp" role="3cqZAp">
                          <node concept="1rXfSq" id="EbHc1sP9yq" role="3clFbG">
                            <ref role="37wK5l" node="35hm5eHNTvQ" resolve="renderSelections" />
                            <node concept="2OqwBi" id="EbHc1sP9yr" role="37wK5m">
                              <node concept="2OqwBi" id="EbHc1sP9ys" role="2Oq$k0">
                                <node concept="liA8E" id="EbHc1sP9yu" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                                </node>
                                <node concept="1rXfSq" id="6tRuDLGll2I" role="2Oq$k0">
                                  <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                                </node>
                              </node>
                              <node concept="liA8E" id="EbHc1sP9yv" role="2OqNvi">
                                <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="EbHc1sRHXF" role="37wK5m">
                              <ref role="3cqZAo" node="EbHc1sR$km" resolve="oldSelection" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2w64df5QMXj" role="3cqZAp">
                          <node concept="1rXfSq" id="2w64df5QMXh" role="3clFbG">
                            <ref role="37wK5l" node="EbHc1sM0TA" resolve="renderView" />
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
      <node concept="3uibUv" id="6xm2RBlgpD4" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="6xm2RBlgpD5" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="3clFb_" id="6xm2RBlgsdd" role="jymVt">
      <property role="TrG5h" value="simulateKeyUp" />
      <node concept="37vLTG" id="6xm2RBlgsde" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="6xm2RBlgCpA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlrZ5P" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="6xm2RBls0DO" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBlgsdg" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlgsdh" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlgsdi" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlgsdj" role="3cqZAp">
          <node concept="2YIFZM" id="6xm2RBlu7S9" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="6xm2RBlu7Sa" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="6xm2RBlu7Sb" role="1bW5cS">
                <node concept="3cpWs8" id="6xm2RBlu7Sc" role="3cqZAp">
                  <node concept="3cpWsn" id="6xm2RBlu7Sd" role="3cpWs9">
                    <property role="TrG5h" value="keyEvent" />
                    <node concept="3uibUv" id="6xm2RBlu7Se" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                    <node concept="2ShNRf" id="6xm2RBlu7Sf" role="33vP2m">
                      <node concept="1pGfFk" id="6xm2RBlu7Sg" role="2ShVmc">
                        <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                        <node concept="1rXfSq" id="6tRuDLGlmCF" role="37wK5m">
                          <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                        </node>
                        <node concept="10M0yZ" id="6xm2RBlu7Si" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_RELEASED" resolve="KEY_RELEASED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="2YIFZM" id="6xm2RBlu7Sj" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="3cmrfG" id="6xm2RBlu7Sk" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="6xm2RBlu7Sl" role="37wK5m">
                          <ref role="3cqZAo" node="6xm2RBlgsde" resolve="keyCode" />
                        </node>
                        <node concept="10M0yZ" id="6xm2RBlu7Sm" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.CHAR_UNDEFINED" resolve="CHAR_UNDEFINED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6xm2RBlu7Sn" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBlu7So" role="3clFbG">
                    <node concept="liA8E" id="6xm2RBlu7Sq" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.processKeyReleased(java.awt.event.KeyEvent)" resolve="processKeyReleased" />
                      <node concept="37vLTw" id="6xm2RBlu7Sr" role="37wK5m">
                        <ref role="3cqZAo" node="6xm2RBlu7Sd" resolve="keyEvent" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="6tRuDLGlnwa" role="2Oq$k0">
                      <ref role="37wK5l" node="6tRuDLGiWEn" resolve="getEditorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xm2RBlu7Ss" role="3cqZAp">
                  <node concept="3clFbS" id="6xm2RBlu7St" role="3clFbx">
                    <node concept="3clFbF" id="6xm2RBlu7Su" role="3cqZAp">
                      <node concept="2OqwBi" id="6xm2RBlu7Sv" role="3clFbG">
                        <node concept="10M0yZ" id="6xm2RBlu7Sw" role="2Oq$k0">
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                        </node>
                        <node concept="liA8E" id="6xm2RBlu7Sx" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="6xm2RBlu7Sy" role="37wK5m">
                            <node concept="37vLTw" id="6xm2RBlu7Sz" role="3uHU7w">
                              <ref role="3cqZAo" node="6xm2RBlgsde" resolve="keyCode" />
                            </node>
                            <node concept="Xl_RD" id="6xm2RBlu7S$" role="3uHU7B">
                              <property role="Xl_RC" value="unprocessed keyup: " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xm2RBlu7S_" role="3clFbw">
                    <node concept="2OqwBi" id="6xm2RBlu7SA" role="3fr31v">
                      <node concept="37vLTw" id="6xm2RBlu7SB" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xm2RBlu7Sd" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="6xm2RBlu7SC" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6xm2RBlu7SD" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6xm2RBlgsdA" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="6xm2RBlgsdB" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBleVZC" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlaYQJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onError" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlaYQK" role="1B3o_S" />
      <node concept="3cqZAl" id="6xm2RBlaYQM" role="3clF45" />
      <node concept="37vLTG" id="6xm2RBlaYQN" role="3clF46">
        <property role="TrG5h" value="conn" />
        <node concept="3uibUv" id="6xm2RBlaYQO" role="1tU5fm">
          <ref role="3uigEE" to="ffp0:~WebSocket" resolve="WebSocket" />
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlaYQP" role="3clF46">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="6xm2RBlaYQQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
      <node concept="3clFbS" id="6xm2RBlaYQR" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbzLL" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbzLI" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlbzLJ" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlbzLK" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6xm2RBlbdYJ" role="37wK5m">
                <node concept="37vLTw" id="6xm2RBlbein" role="3uHU7w">
                  <ref role="3cqZAo" node="6xm2RBlaYQN" resolve="conn" />
                </node>
                <node concept="Xl_RD" id="6xm2RBlbdl1" role="3uHU7B">
                  <property role="Xl_RC" value="conn: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlb$iV" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlb$De" role="3clFbG">
            <node concept="37vLTw" id="6xm2RBlb$iT" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBlaYQP" resolve="exception" />
            </node>
            <node concept="liA8E" id="6xm2RBlb_dP" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlaYQS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6xm2RBlaYQT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onStart" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlaYQU" role="1B3o_S" />
      <node concept="3cqZAl" id="6xm2RBlaYQW" role="3clF45" />
      <node concept="3clFbS" id="6xm2RBlaYQX" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlbf2T" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbfkG" role="3clFbG">
            <node concept="37vLTw" id="6xm2RBlbf2S" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBlaj7v" resolve="LOG" />
            </node>
            <node concept="liA8E" id="6xm2RBlbfRa" role="2OqNvi">
              <ref role="37wK5l" to="q7tw:~Category.info(java.lang.Object)" resolve="info" />
              <node concept="Xl_RD" id="6xm2RBlbg0G" role="37wK5m">
                <property role="Xl_RC" value="Start" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlbvMY" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlbvMV" role="3clFbG">
            <node concept="10M0yZ" id="6xm2RBlbvMW" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6xm2RBlbvMX" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="6xm2RBlbvPc" role="37wK5m">
                <property role="Xl_RC" value="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlaYQY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6xm2RBlmxIu">
    <property role="TrG5h" value="ServerEditorComponent" />
    <node concept="2tJIrI" id="6xm2RBlmxQo" role="jymVt" />
    <node concept="312cEg" id="6xm2RBlpH41" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6xm2RBlpH42" role="1B3o_S" />
      <node concept="3uibUv" id="6xm2RBlpHUO" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="4XpeNv82zq3" role="jymVt">
      <property role="TrG5h" value="dataContext" />
      <node concept="3Tm6S6" id="4XpeNv82zq4" role="1B3o_S" />
      <node concept="3uibUv" id="4XpeNv82$n7" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
      </node>
      <node concept="2ShNRf" id="4XpeNv82Ax1" role="33vP2m">
        <node concept="YeOm9" id="4XpeNv82CJq" role="2ShVmc">
          <node concept="1Y3b0j" id="4XpeNv82CJt" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="qkt:~DataContext" resolve="DataContext" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="4XpeNv82CJu" role="1B3o_S" />
            <node concept="3clFb_" id="4XpeNv82CJv" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="getData" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="4XpeNv82CJw" role="1B3o_S" />
              <node concept="2AHcQZ" id="4XpeNv82CJy" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="4XpeNv82CJz" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="37vLTG" id="4XpeNv82CJ$" role="3clF46">
                <property role="TrG5h" value="key" />
                <node concept="17QB3L" id="4XpeNv82Sk5" role="1tU5fm" />
                <node concept="2AHcQZ" id="4XpeNv82CJA" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
                </node>
              </node>
              <node concept="3clFbS" id="4XpeNv82CJB" role="3clF47">
                <node concept="3clFbF" id="4XpeNv82L5x" role="3cqZAp">
                  <node concept="2OqwBi" id="4XpeNv82N4f" role="3clFbG">
                    <node concept="Xjq3P" id="4XpeNv82M9A" role="2Oq$k0">
                      <ref role="1HBi2w" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
                    </node>
                    <node concept="liA8E" id="4XpeNv82QBt" role="2OqNvi">
                      <ref role="37wK5l" node="6xm2RBlopSc" resolve="getData" />
                      <node concept="37vLTw" id="4XpeNv82RIN" role="37wK5m">
                        <ref role="3cqZAo" node="4XpeNv82CJ$" resolve="key" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="4XpeNv82CJD" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="getData" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="4XpeNv82CJE" role="1B3o_S" />
              <node concept="2AHcQZ" id="4XpeNv82CJG" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="16euLQ" id="4XpeNv82CJH" role="16eVyc">
                <property role="TrG5h" value="T" />
              </node>
              <node concept="16syzq" id="4XpeNv82CJI" role="3clF45">
                <ref role="16sUi3" node="4XpeNv82CJH" resolve="T" />
              </node>
              <node concept="37vLTG" id="4XpeNv82CJJ" role="3clF46">
                <property role="TrG5h" value="key" />
                <node concept="3uibUv" id="4XpeNv82CJK" role="1tU5fm">
                  <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
                  <node concept="16syzq" id="4XpeNv82CJL" role="11_B2D">
                    <ref role="16sUi3" node="4XpeNv82CJH" resolve="T" />
                  </node>
                </node>
                <node concept="2AHcQZ" id="4XpeNv82CJM" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="4XpeNv82CJN" role="3clF47">
                <node concept="3clFbF" id="4XpeNv82V2q" role="3cqZAp">
                  <node concept="10QFUN" id="4XpeNv82Yxg" role="3clFbG">
                    <node concept="1rXfSq" id="4XpeNv82Yxc" role="10QFUP">
                      <ref role="37wK5l" node="4XpeNv82CJv" resolve="getData" />
                      <node concept="2OqwBi" id="4XpeNv82Yxd" role="37wK5m">
                        <node concept="37vLTw" id="4XpeNv82Yxe" role="2Oq$k0">
                          <ref role="3cqZAo" node="4XpeNv82CJJ" resolve="key" />
                        </node>
                        <node concept="liA8E" id="4XpeNv82Yxf" role="2OqNvi">
                          <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="16syzq" id="4XpeNv82Z19" role="10QFUM">
                      <ref role="16sUi3" node="4XpeNv82CJH" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1LwnBM2YYW6" role="jymVt">
      <property role="TrG5h" value="window" />
      <node concept="3Tm6S6" id="1LwnBM2YYW7" role="1B3o_S" />
      <node concept="3uibUv" id="1LwnBM2Z3h3" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JWindow" resolve="JWindow" />
      </node>
      <node concept="2ShNRf" id="1LwnBM2Z2Ok" role="33vP2m">
        <node concept="YeOm9" id="1LwnBM2ZB9l" role="2ShVmc">
          <node concept="1Y3b0j" id="1LwnBM2ZB9o" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="dxuu:~JWindow" resolve="JWindow" />
            <ref role="37wK5l" to="dxuu:~JWindow.&lt;init&gt;()" resolve="JWindow" />
            <node concept="3Tm1VV" id="1LwnBM2ZB9p" role="1B3o_S" />
            <node concept="3clFb_" id="1LwnBM2ZByd" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="isShowing" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="1LwnBM2ZBye" role="1B3o_S" />
              <node concept="10P_77" id="1LwnBM2ZByg" role="3clF45" />
              <node concept="3clFbS" id="1LwnBM2ZBym" role="3clF47">
                <node concept="3clFbF" id="1LwnBM2ZDPA" role="3cqZAp">
                  <node concept="3clFbT" id="1LwnBM2ZDP_" role="3clFbG">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1LwnBM2ZByn" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1oBrsEKQfrF" role="jymVt">
      <property role="TrG5h" value="highlighter" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1oBrsEKQfrG" role="1B3o_S" />
      <node concept="3uibUv" id="1oBrsEKQfrI" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBlpGw3" role="jymVt" />
    <node concept="2tJIrI" id="1oBrsEKQeJp" role="jymVt" />
    <node concept="3Tm1VV" id="6xm2RBlmxIv" role="1B3o_S" />
    <node concept="3uibUv" id="6xm2RBlqNJp" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
    </node>
    <node concept="3clFbW" id="6xm2RBlmxP4" role="jymVt">
      <node concept="3cqZAl" id="6xm2RBlmxP5" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlmxP6" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlmxP8" role="3clF47">
        <node concept="XkiVB" id="6xm2RBlmxPa" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~EditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="EditorComponent" />
          <node concept="2OqwBi" id="6xm2RBlpFVl" role="37wK5m">
            <node concept="37vLTw" id="6xm2RBlpEOp" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBlpBW9" resolve="project" />
            </node>
            <node concept="liA8E" id="6xm2RBlpGu9" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlpJsW" role="3cqZAp">
          <node concept="37vLTI" id="6xm2RBlpPtS" role="3clFbG">
            <node concept="37vLTw" id="6xm2RBlpRuC" role="37vLTx">
              <ref role="3cqZAo" node="6xm2RBlpBW9" resolve="project" />
            </node>
            <node concept="2OqwBi" id="6xm2RBlpK8B" role="37vLTJ">
              <node concept="Xjq3P" id="6xm2RBlpJsU" role="2Oq$k0" />
              <node concept="2OwXpG" id="6xm2RBlpNrm" role="2OqNvi">
                <ref role="2Oxat5" node="6xm2RBlpH41" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlqTkK" role="3cqZAp">
          <node concept="1rXfSq" id="6xm2RBlqTkI" role="3clFbG">
            <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
            <node concept="37vLTw" id="6xm2RBlqUr1" role="37wK5m">
              <ref role="3cqZAo" node="6xm2RBlmxPb" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EbHc1sJLUG" role="3cqZAp">
          <node concept="1rXfSq" id="EbHc1sJLUE" role="3clFbG">
            <ref role="37wK5l" to="exr9:~EditorComponent.update()" resolve="update" />
          </node>
        </node>
        <node concept="3clFbF" id="1LwnBM2Zfgj" role="3cqZAp">
          <node concept="2OqwBi" id="1LwnBM2Zj_p" role="3clFbG">
            <node concept="2OqwBi" id="1LwnBM2ZgQG" role="2Oq$k0">
              <node concept="37vLTw" id="1LwnBM2Zfgh" role="2Oq$k0">
                <ref role="3cqZAo" node="1LwnBM2YYW6" resolve="window" />
              </node>
              <node concept="liA8E" id="1LwnBM2Zj8o" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JWindow.getContentPane()" resolve="getContentPane" />
              </node>
            </node>
            <node concept="liA8E" id="1LwnBM2Zlto" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="Xjq3P" id="1LwnBM2ZmH5" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oBrsEKQgjg" role="3cqZAp">
          <node concept="37vLTI" id="1oBrsEKQgji" role="3clFbG">
            <node concept="2OqwBi" id="1oBrsEKQaSO" role="37vLTx">
              <node concept="37vLTw" id="1oBrsEKQaSP" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBlpBW9" resolve="project" />
              </node>
              <node concept="liA8E" id="1oBrsEKQaSQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="1oBrsEKQaSR" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~Highlighter" resolve="Highlighter" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1oBrsEKQhtu" role="37vLTJ">
              <ref role="3cqZAo" node="1oBrsEKQfrF" resolve="highlighter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oBrsEKQ6ke" role="3cqZAp">
          <node concept="2EnYce" id="1oBrsEKQcR7" role="3clFbG">
            <node concept="37vLTw" id="1oBrsEKQaSS" role="2Oq$k0">
              <ref role="3cqZAo" node="1oBrsEKQfrF" resolve="highlighter" />
            </node>
            <node concept="liA8E" id="1oBrsEKQdFL" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.addAdditionalEditorComponent(jetbrains.mps.nodeEditor.EditorComponent)" resolve="addAdditionalEditorComponent" />
              <node concept="Xjq3P" id="1oBrsEKQeAy" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6xm2RBlmxPb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6xm2RBlmxPd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6xm2RBlpBW9" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6xm2RBlpD0O" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBlmzvJ" role="jymVt" />
    <node concept="3clFb_" id="1oBrsEKQjag" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1oBrsEKQjah" role="1B3o_S" />
      <node concept="3cqZAl" id="1oBrsEKQjaj" role="3clF45" />
      <node concept="3clFbS" id="1oBrsEKQjak" role="3clF47">
        <node concept="3clFbF" id="1oBrsEKQn1V" role="3cqZAp">
          <node concept="2EnYce" id="1oBrsEKQoT$" role="3clFbG">
            <node concept="37vLTw" id="1oBrsEKQn1T" role="2Oq$k0">
              <ref role="3cqZAo" node="1oBrsEKQfrF" resolve="highlighter" />
            </node>
            <node concept="liA8E" id="1oBrsEKQpGz" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.removeAdditionalEditorComponent(jetbrains.mps.nodeEditor.EditorComponent)" resolve="removeAdditionalEditorComponent" />
              <node concept="Xjq3P" id="1oBrsEKQqBX" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oBrsEKQjan" role="3cqZAp">
          <node concept="3nyPlj" id="1oBrsEKQjam" role="3clFbG">
            <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1oBrsEKQjal" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1oBrsEKQjV4" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlmxTn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hasFocus" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlmxTo" role="1B3o_S" />
      <node concept="10P_77" id="6xm2RBlmxTq" role="3clF45" />
      <node concept="3clFbS" id="6xm2RBlmxTA" role="3clF47">
        <node concept="3clFbF" id="6xm2RBlmzib" role="3cqZAp">
          <node concept="3clFbT" id="6xm2RBlmzia" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlmxTB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBlopHr" role="jymVt" />
    <node concept="3clFb_" id="6xm2RBlopSc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getData" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6xm2RBlopSd" role="1B3o_S" />
      <node concept="2AHcQZ" id="6xm2RBlopSf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6xm2RBlopSg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="6xm2RBlopSh" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="17QB3L" id="6xm2RBloqBU" role="1tU5fm" />
        <node concept="2AHcQZ" id="6xm2RBlopSj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="3clFbS" id="6xm2RBlopSl" role="3clF47">
        <node concept="3clFbJ" id="6xm2RBlorZq" role="3cqZAp">
          <node concept="3clFbS" id="6xm2RBlorZs" role="3clFbx">
            <node concept="3cpWs6" id="6xm2RBlowFM" role="3cqZAp">
              <node concept="2YIFZM" id="6xm2RBlqa4y" role="3cqZAk">
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="6xm2RBlqc78" role="37wK5m">
                  <ref role="3cqZAo" node="6xm2RBlpH41" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6xm2RBlp81h" role="3clFbw">
            <node concept="10M0yZ" id="6xm2RBlotMh" role="2Oq$k0">
              <ref role="3cqZAo" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
              <ref role="1PxDUh" to="qkt:~CommonDataKeys" resolve="CommonDataKeys" />
            </node>
            <node concept="liA8E" id="6xm2RBlp8qg" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String)" resolve="is" />
              <node concept="37vLTw" id="6xm2RBlp9Ec" role="37wK5m">
                <ref role="3cqZAo" node="6xm2RBlopSh" resolve="dataId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlopSp" role="3cqZAp">
          <node concept="3nyPlj" id="6xm2RBlopSo" role="3clFbG">
            <ref role="37wK5l" to="exr9:~EditorComponent.getData(java.lang.String)" resolve="getData" />
            <node concept="37vLTw" id="6xm2RBlopSn" role="37wK5m">
              <ref role="3cqZAo" node="6xm2RBlopSh" resolve="dataId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6xm2RBlopSm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4XpeNv81U7f" role="jymVt" />
    <node concept="3clFb_" id="4XpeNv81V3j" role="jymVt">
      <property role="TrG5h" value="getDataContext" />
      <node concept="3uibUv" id="4XpeNv81WK8" role="3clF45">
        <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
      </node>
      <node concept="3Tm1VV" id="4XpeNv81V3m" role="1B3o_S" />
      <node concept="3clFbS" id="4XpeNv81V3n" role="3clF47">
        <node concept="3clFbF" id="4XpeNv82FMx" role="3cqZAp">
          <node concept="37vLTw" id="4XpeNv82FMw" role="3clFbG">
            <ref role="3cqZAo" node="4XpeNv82zq3" resolve="dataContext" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5BgWpoK$7Ln">
    <property role="TrG5h" value="BuildEnvironment" />
    <property role="2uzpH1" value="BuildEnvironment" />
    <node concept="tnohg" id="5BgWpoK$7Lo" role="tncku">
      <node concept="3clFbS" id="5BgWpoK$7Lp" role="2VODD2">
        <node concept="3cpWs8" id="5BgWpoKyedx" role="3cqZAp">
          <node concept="3cpWsn" id="5BgWpoKyedy" role="3cpWs9">
            <property role="TrG5h" value="fileRepo" />
            <node concept="3uibUv" id="5BgWpoKyedz" role="1tU5fm">
              <ref role="3uigEE" to="qr12:48Vb4Zfxn$2" resolve="LocalFileRepository" />
            </node>
            <node concept="2ShNRf" id="5BgWpoKyed$" role="33vP2m">
              <node concept="1pGfFk" id="5BgWpoKyed_" role="2ShVmc">
                <ref role="37wK5l" to="qr12:48Vb4Zfxo$G" resolve="LocalFileRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5BgWpoKyedA" role="3cqZAp">
          <node concept="3cpWsn" id="5BgWpoKyedB" role="3cpWs9">
            <property role="TrG5h" value="langRepo" />
            <node concept="3uibUv" id="5BgWpoKyedC" role="1tU5fm">
              <ref role="3uigEE" to="qr12:48Vb4ZfB$NX" resolve="LocalLanguageRepository" />
            </node>
            <node concept="2ShNRf" id="5BgWpoKyedD" role="33vP2m">
              <node concept="1pGfFk" id="5BgWpoKyedE" role="2ShVmc">
                <ref role="37wK5l" to="qr12:48Vb4ZfB$PQ" resolve="LocalLanguageRepository" />
                <node concept="37vLTw" id="5BgWpoKyedF" role="37wK5m">
                  <ref role="3cqZAo" node="5BgWpoKyedy" resolve="fileRepo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5BgWpoK_ntl" role="3cqZAp">
          <node concept="3cpWsn" id="5BgWpoK_ntm" role="3cpWs9">
            <property role="TrG5h" value="env" />
            <node concept="3uibUv" id="5BgWpoK_ntd" role="1tU5fm">
              <ref role="3uigEE" to="pcow:48Vb4Zfw6hS" resolve="EnvironmentConfig" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4SLY67oaPRc" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4SLY67oaOHu" role="8Wnug">
            <node concept="37vLTI" id="4SLY67oaOHw" role="3clFbG">
              <node concept="2OqwBi" id="5BgWpoK_ntn" role="37vLTx">
                <node concept="2ShNRf" id="5BgWpoK_nto" role="2Oq$k0">
                  <node concept="1pGfFk" id="5BgWpoK_ZuI" role="2ShVmc">
                    <ref role="37wK5l" to="pcow:5BgWpoK_Y1l" resolve="EnvironmentBuilder" />
                    <node concept="37vLTw" id="5BgWpoK_ZxR" role="37wK5m">
                      <ref role="3cqZAo" node="5BgWpoKyedB" resolve="langRepo" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5BgWpoK_ntq" role="2OqNvi">
                  <ref role="37wK5l" to="pcow:5BgWpoK$6x0" resolve="build" />
                  <node concept="2OqwBi" id="5BgWpoK_ntr" role="37wK5m">
                    <node concept="2OqwBi" id="5BgWpoK_nts" role="2Oq$k0">
                      <node concept="2WthIp" id="5BgWpoK_ntt" role="2Oq$k0" />
                      <node concept="1DTwFV" id="5BgWpoK_ntu" role="2OqNvi">
                        <ref role="2WH_rO" node="5BgWpoK_e38" resolve="project" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5BgWpoK_ntv" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4SLY67oaOH$" role="37vLTJ">
                <ref role="3cqZAo" node="5BgWpoK_ntm" resolve="env" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SLY67oaOXO" role="3cqZAp">
          <node concept="37vLTI" id="4SLY67oaP6F" role="3clFbG">
            <node concept="37vLTw" id="4SLY67oaOXM" role="37vLTJ">
              <ref role="3cqZAo" node="5BgWpoK_ntm" resolve="env" />
            </node>
            <node concept="2YIFZM" id="4SLY67oaPNB" role="37vLTx">
              <ref role="37wK5l" to="pcow:6kOYU1q1j9z" resolve="fromJSON" />
              <ref role="1Pybhc" to="pcow:48Vb4Zfw6hS" resolve="EnvironmentConfig" />
              <node concept="2OqwBi" id="4SLY67oaPjB" role="37wK5m">
                <node concept="37vLTw" id="4SLY67oaPb5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5BgWpoKyedy" resolve="fileRepo" />
                </node>
                <node concept="liA8E" id="4SLY67oaPvL" role="2OqNvi">
                  <ref role="37wK5l" to="qr12:4SLY67o9GAH" resolve="loadString" />
                  <node concept="Xl_RD" id="4SLY67oaP_4" role="37wK5m">
                    <property role="Xl_RC" value="ac13b61002628f4002fb17d4467edcccd04c1c01de597a2038aace33549675f6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4SLY67oah7Z" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5BgWpoK_nAI" role="8Wnug">
            <node concept="2OqwBi" id="5BgWpoK_nAF" role="3clFbG">
              <node concept="10M0yZ" id="5BgWpoK_nAG" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="5BgWpoK_nAH" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                <node concept="2OqwBi" id="5BgWpoK_nJt" role="37wK5m">
                  <node concept="37vLTw" id="5BgWpoK_nCQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BgWpoK_ntm" resolve="env" />
                  </node>
                  <node concept="liA8E" id="5BgWpoK_o0f" role="2OqNvi">
                    <ref role="37wK5l" to="pcow:6kOYU1q1b44" resolve="toJSON" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BgWpoK_ve9" role="3cqZAp" />
        <node concept="3cpWs8" id="4SLY67oaWTy" role="3cqZAp">
          <node concept="3cpWsn" id="4SLY67oaWTz" role="3cpWs9">
            <property role="TrG5h" value="dir" />
            <node concept="3uibUv" id="4SLY67oaWTv" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="4SLY67oaWT$" role="33vP2m">
              <node concept="1pGfFk" id="4SLY67oaWT_" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="Xl_RD" id="4SLY67oaWTA" role="37wK5m">
                  <property role="Xl_RC" value="/Users/slisson/mpsenv" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SLY67oaWJq" role="3cqZAp">
          <node concept="2YIFZM" id="4SLY67oaXjX" role="3clFbG">
            <ref role="37wK5l" to="8oaq:~FileUtils.deleteQuietly(java.io.File)" resolve="deleteQuietly" />
            <ref role="1Pybhc" to="8oaq:~FileUtils" resolve="FileUtils" />
            <node concept="37vLTw" id="4SLY67oaXjY" role="37wK5m">
              <ref role="3cqZAo" node="4SLY67oaWTz" resolve="dir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BgWpoK_up1" role="3cqZAp">
          <node concept="2OqwBi" id="5BgWpoK_ZXE" role="3clFbG">
            <node concept="2ShNRf" id="5BgWpoK_uoX" role="2Oq$k0">
              <node concept="1pGfFk" id="5BgWpoK_vcX" role="2ShVmc">
                <ref role="37wK5l" to="pcow:48Vb4ZfwiZR" resolve="EnvironmentLoader" />
                <node concept="37vLTw" id="5BgWpoK_ZQL" role="37wK5m">
                  <ref role="3cqZAo" node="5BgWpoKyedB" resolve="langRepo" />
                </node>
                <node concept="37vLTw" id="4SLY67oaWTB" role="37wK5m">
                  <ref role="3cqZAo" node="4SLY67oaWTz" resolve="dir" />
                </node>
                <node concept="37vLTw" id="5BgWpoK_wg9" role="37wK5m">
                  <ref role="3cqZAo" node="5BgWpoK_ntm" resolve="env" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5BgWpoKA08f" role="2OqNvi">
              <ref role="37wK5l" to="pcow:48Vb4ZfwiX1" resolve="load" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5BgWpoK_e38" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5BgWpoK_e39" role="1oa70y" />
    </node>
  </node>
</model>

