<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f6154b4-93e5-4a51-94de-d145e58184e7(de.q60.mps.web.ui.svg.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="vyue" ref="r:a009b15b-6386-4045-b94f-fa21b9788c19(de.q60.mps.web.ui.svg.svg)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="vuw5" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.keymap(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="pcow" ref="r:ad9b9e36-6a2e-49cf-96d6-a1b4ef7befcd(de.q60.mps.web.ui.svg.environment)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qr12" ref="r:24ed310f-f0ab-4270-aa2f-e2180b5d4c31(de.q60.mps.web.ui.svg.repository)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mxf6" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.json(de.q60.mps.web.lib/)" />
    <import index="fz1u" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.websocket.api(de.q60.mps.web.jetty/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(de.q60.mps.web.ui.common)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="ia5i" ref="r:53d14de3-e820-4a3b-9328-a2833dcab0bd(de.q60.mps.web.common)" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="91lp" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.intentions(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="nddn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.intentions(MPS.Editor/)" />
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" implicit="true" />
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
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765275063380" name="de.slisson.mps.reflection.structure.ReflectionFieldAccess" flags="ng" index="1PnCL0">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="8473566765277240526" name="de.slisson.mps.reflection.structure.ReflectionMethodCall" flags="ng" index="1PvZjq" />
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
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
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
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat6" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
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
            <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
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
    <node concept="2uRRBj" id="6xm2RBlaf25" role="2uRRBE">
      <node concept="3clFbS" id="6xm2RBlaf26" role="2VODD2">
        <node concept="RRSsy" id="2wu1c06P3_m" role="3cqZAp">
          <node concept="Xl_RD" id="2wu1c06P3AM" role="RRSoy">
            <property role="Xl_RC" value="lazywebmps plugin in.." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="6xm2RBlaf2r" role="2uRRBF">
      <node concept="3clFbS" id="6xm2RBlaf2s" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="6xm2RBlaf2L">
    <property role="TrG5h" value="RenderServer" />
    <node concept="312cEg" id="3$7KuaipTnc" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="3$7KuaipTnd" role="1B3o_S" />
      <node concept="3uibUv" id="3$7KuaipY9d" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="5Sw$pxbNy5a" role="jymVt">
      <property role="TrG5h" value="websocketSession" />
      <node concept="3Tm6S6" id="5Sw$pxbNy5b" role="1B3o_S" />
      <node concept="3uibUv" id="5Sw$pxbNyRT" role="1tU5fm">
        <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
      </node>
    </node>
    <node concept="312cEg" id="5Sw$pxbNzIN" role="jymVt">
      <property role="TrG5h" value="renderSession" />
      <node concept="3Tm6S6" id="5Sw$pxbNzIO" role="1B3o_S" />
      <node concept="3uibUv" id="5Sw$pxbN$x_" role="1tU5fm">
        <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
      </node>
    </node>
    <node concept="312cEg" id="5MA9wbc6v$y" role="jymVt">
      <property role="TrG5h" value="user" />
      <node concept="3Tm6S6" id="5MA9wbc6v$z" role="1B3o_S" />
      <node concept="17QB3L" id="5MA9wbc6vTI" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3$7KuaihPjO" role="jymVt" />
    <node concept="3clFbW" id="6xm2RBlaUMt" role="jymVt">
      <node concept="37vLTG" id="3$7Kuaiimt1" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3$7KuaiioWl" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5MA9wbc6rAR" role="3clF46">
        <property role="TrG5h" value="user" />
        <node concept="17QB3L" id="5MA9wbc6uXc" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6xm2RBlaUMu" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBlaUMv" role="1B3o_S" />
      <node concept="3clFbS" id="6xm2RBlaUMx" role="3clF47">
        <node concept="3clFbF" id="3$7Kuaiq0lO" role="3cqZAp">
          <node concept="37vLTI" id="3$7Kuaiq1Xz" role="3clFbG">
            <node concept="37vLTw" id="3$7Kuaiq29a" role="37vLTx">
              <ref role="3cqZAo" node="3$7Kuaiimt1" resolve="project" />
            </node>
            <node concept="2OqwBi" id="3$7Kuaiq0Dm" role="37vLTJ">
              <node concept="Xjq3P" id="3$7Kuaiq0lM" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$7Kuaiq1ws" role="2OqNvi">
                <ref role="2Oxat6" node="3$7KuaipTnc" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MA9wbc6wl7" role="3cqZAp">
          <node concept="37vLTI" id="5MA9wbc6xcF" role="3clFbG">
            <node concept="37vLTw" id="5MA9wbc6xjc" role="37vLTx">
              <ref role="3cqZAo" node="5MA9wbc6rAR" resolve="user" />
            </node>
            <node concept="2OqwBi" id="5MA9wbc6wzP" role="37vLTJ">
              <node concept="Xjq3P" id="5MA9wbc6wl5" role="2Oq$k0" />
              <node concept="2OwXpG" id="5MA9wbc6wOB" role="2OqNvi">
                <ref role="2Oxat6" node="5MA9wbc6v$y" resolve="user" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7KuaijLOQ" role="jymVt" />
    <node concept="3clFb_" id="5Sw$pxbNAzC" role="jymVt">
      <property role="TrG5h" value="onWebSocketClose" />
      <node concept="3Tm1VV" id="5Sw$pxbNAzD" role="1B3o_S" />
      <node concept="3cqZAl" id="5Sw$pxbNAzF" role="3clF45" />
      <node concept="37vLTG" id="5Sw$pxbNAzG" role="3clF46">
        <property role="TrG5h" value="statusCode" />
        <node concept="10Oyi0" id="5Sw$pxbNAzH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Sw$pxbNAzI" role="3clF46">
        <property role="TrG5h" value="reason" />
        <node concept="17QB3L" id="5Sw$pxbNBZ4" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Sw$pxbNAzK" role="3clF47">
        <node concept="3clFbF" id="5Sw$pxbNAzP" role="3cqZAp">
          <node concept="3nyPlj" id="5Sw$pxbNAzO" role="3clFbG">
            <ref role="37wK5l" to="fz1u:~WebSocketAdapter.onWebSocketClose(int,java.lang.String)" resolve="onWebSocketClose" />
            <node concept="37vLTw" id="5Sw$pxbNAzM" role="37wK5m">
              <ref role="3cqZAo" node="5Sw$pxbNAzG" resolve="statusCode" />
            </node>
            <node concept="37vLTw" id="5Sw$pxbNAzN" role="37wK5m">
              <ref role="3cqZAo" node="5Sw$pxbNAzI" resolve="reason" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Sw$pxbNQJu" role="3cqZAp">
          <node concept="2OqwBi" id="5Sw$pxbNQWW" role="3clFbG">
            <node concept="37vLTw" id="5Sw$pxbNQJs" role="2Oq$k0">
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="renderSession" />
            </node>
            <node concept="liA8E" id="5Sw$pxbNT3u" role="2OqNvi">
              <ref role="37wK5l" node="1qbCJZsJ6j_" resolve="onClose" />
              <node concept="37vLTw" id="5Sw$pxbNTgW" role="37wK5m">
                <ref role="3cqZAo" node="5Sw$pxbNAzG" resolve="statusCode" />
              </node>
              <node concept="37vLTw" id="5Sw$pxbNTxQ" role="37wK5m">
                <ref role="3cqZAo" node="5Sw$pxbNAzI" resolve="reason" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsSR4F" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsSRp0" role="3clFbG">
            <node concept="37vLTw" id="5Sw$pxbNHAh" role="2Oq$k0">
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="renderSession" />
            </node>
            <node concept="liA8E" id="1qbCJZsSZdY" role="2OqNvi">
              <ref role="37wK5l" node="1qbCJZsJ6hF" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Sw$pxbNAzL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5Sw$pxbNAzQ" role="jymVt">
      <property role="TrG5h" value="onWebSocketConnect" />
      <node concept="3Tm1VV" id="5Sw$pxbNAzR" role="1B3o_S" />
      <node concept="3cqZAl" id="5Sw$pxbNAzT" role="3clF45" />
      <node concept="37vLTG" id="5Sw$pxbNAzU" role="3clF46">
        <property role="TrG5h" value="sess" />
        <node concept="3uibUv" id="5Sw$pxbNAzV" role="1tU5fm">
          <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
        </node>
      </node>
      <node concept="3clFbS" id="5Sw$pxbNAzW" role="3clF47">
        <node concept="SfApY" id="3RbPf8OKa36" role="3cqZAp">
          <node concept="3clFbS" id="3RbPf8OKa38" role="SfCbr">
            <node concept="3clFbF" id="5Sw$pxbNA$0" role="3cqZAp">
              <node concept="3nyPlj" id="5Sw$pxbNAzZ" role="3clFbG">
                <ref role="37wK5l" to="fz1u:~WebSocketAdapter.onWebSocketConnect(org.eclipse.jetty.websocket.api.Session)" resolve="onWebSocketConnect" />
                <node concept="37vLTw" id="5Sw$pxbNAzY" role="37wK5m">
                  <ref role="3cqZAo" node="5Sw$pxbNAzU" resolve="sess" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbNCT7" role="3cqZAp">
              <node concept="37vLTI" id="5Sw$pxbNEjx" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbNErw" role="37vLTx">
                  <ref role="3cqZAo" node="5Sw$pxbNAzU" resolve="sess" />
                </node>
                <node concept="2OqwBi" id="5Sw$pxbNDfm" role="37vLTJ">
                  <node concept="Xjq3P" id="5Sw$pxbNCT5" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Sw$pxbNDSs" role="2OqNvi">
                    <ref role="2Oxat6" node="5Sw$pxbNy5a" resolve="websocketSession" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbNKii" role="3cqZAp">
              <node concept="37vLTI" id="5Sw$pxbNLTW" role="3clFbG">
                <node concept="2ShNRf" id="5Sw$pxbNMhz" role="37vLTx">
                  <node concept="1pGfFk" id="5Sw$pxbNMaE" role="2ShVmc">
                    <ref role="37wK5l" node="1qbCJZsJ67H" resolve="RenderSession" />
                    <node concept="37vLTw" id="5Sw$pxbNMu2" role="37wK5m">
                      <ref role="3cqZAo" node="3$7KuaipTnc" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="5Sw$pxbNMNt" role="37wK5m">
                      <ref role="3cqZAo" node="5Sw$pxbNy5a" resolve="websocketSession" />
                    </node>
                    <node concept="37vLTw" id="2mcPA70xfSp" role="37wK5m">
                      <ref role="3cqZAo" node="5MA9wbc6v$y" resolve="user" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5Sw$pxbNKCu" role="37vLTJ">
                  <node concept="Xjq3P" id="5Sw$pxbNKig" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Sw$pxbNLm$" role="2OqNvi">
                    <ref role="2Oxat6" node="5Sw$pxbNzIN" resolve="renderSession" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbNNoV" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbNNDg" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbNNoT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="renderSession" />
                </node>
                <node concept="liA8E" id="5Sw$pxbNPOr" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ6iC" resolve="onOpen" />
                  <node concept="37vLTw" id="5Sw$pxbOaSu" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbNAzU" resolve="sess" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="3RbPf8OKa39" role="TEbGg">
            <node concept="3cpWsn" id="3RbPf8OKa3b" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="3RbPf8OKaXG" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="3RbPf8OKa3f" role="TDEfX">
              <node concept="3cpWs8" id="3RbPf8OJBdU" role="3cqZAp">
                <node concept="3cpWsn" id="3RbPf8OJBdV" role="3cpWs9">
                  <property role="TrG5h" value="msg" />
                  <node concept="17QB3L" id="3RbPf8OJtD4" role="1tU5fm" />
                  <node concept="3cpWs3" id="3RbPf8OKc4Y" role="33vP2m">
                    <node concept="2OqwBi" id="3RbPf8OKdhp" role="3uHU7w">
                      <node concept="2OqwBi" id="3RbPf8OKcx7" role="2Oq$k0">
                        <node concept="37vLTw" id="3RbPf8OKcch" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Sw$pxbNAzU" resolve="sess" />
                        </node>
                        <node concept="liA8E" id="3RbPf8OKd5G" role="2OqNvi">
                          <ref role="37wK5l" to="fz1u:~Session.getUpgradeRequest()" resolve="getUpgradeRequest" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3RbPf8OKduF" role="2OqNvi">
                        <ref role="37wK5l" to="fz1u:~UpgradeRequest.getRequestURI()" resolve="getRequestURI" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3RbPf8OJBe0" role="3uHU7B">
                      <property role="Xl_RC" value="Failed to open WebSocket connection for " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="RRSsy" id="3RbPf8OKee4" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="37vLTw" id="3RbPf8OKenz" role="RRSoy">
                  <ref role="3cqZAo" node="3RbPf8OJBdV" resolve="msg" />
                </node>
                <node concept="37vLTw" id="3RbPf8OKee8" role="RRSow">
                  <ref role="3cqZAo" node="3RbPf8OKa3b" resolve="ex" />
                </node>
              </node>
              <node concept="YS8fn" id="3RbPf8OKeCm" role="3cqZAp">
                <node concept="2ShNRf" id="3RbPf8OKeHS" role="YScLw">
                  <node concept="1pGfFk" id="3RbPf8OKzBR" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="3RbPf8OKzLi" role="37wK5m">
                      <ref role="3cqZAo" node="3RbPf8OJBdV" resolve="msg" />
                    </node>
                    <node concept="37vLTw" id="3RbPf8OK$l_" role="37wK5m">
                      <ref role="3cqZAo" node="3RbPf8OKa3b" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Sw$pxbNAzX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5Sw$pxbNA$1" role="jymVt">
      <property role="TrG5h" value="onWebSocketError" />
      <node concept="3Tm1VV" id="5Sw$pxbNA$2" role="1B3o_S" />
      <node concept="3cqZAl" id="5Sw$pxbNA$4" role="3clF45" />
      <node concept="37vLTG" id="5Sw$pxbNA$5" role="3clF46">
        <property role="TrG5h" value="cause" />
        <node concept="3uibUv" id="5Sw$pxbNA$6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3clFbS" id="5Sw$pxbNA$7" role="3clF47">
        <node concept="3clFbF" id="5Sw$pxbNA$b" role="3cqZAp">
          <node concept="3nyPlj" id="5Sw$pxbNA$a" role="3clFbG">
            <ref role="37wK5l" to="fz1u:~WebSocketAdapter.onWebSocketError(java.lang.Throwable)" resolve="onWebSocketError" />
            <node concept="37vLTw" id="5Sw$pxbNA$9" role="37wK5m">
              <ref role="3cqZAo" node="5Sw$pxbNA$5" resolve="cause" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Sw$pxbO6KN" role="3cqZAp">
          <node concept="2OqwBi" id="5Sw$pxbO71c" role="3clFbG">
            <node concept="37vLTw" id="5Sw$pxbO6KL" role="2Oq$k0">
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="renderSession" />
            </node>
            <node concept="liA8E" id="5Sw$pxbO96Y" role="2OqNvi">
              <ref role="37wK5l" node="1qbCJZsJ6ul" resolve="onError" />
              <node concept="37vLTw" id="5Sw$pxbO9ea" role="37wK5m">
                <ref role="3cqZAo" node="5Sw$pxbNA$5" resolve="cause" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Sw$pxbNA$8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5Sw$pxbNA$c" role="jymVt">
      <property role="TrG5h" value="onWebSocketText" />
      <node concept="3Tm1VV" id="5Sw$pxbNA$d" role="1B3o_S" />
      <node concept="3cqZAl" id="5Sw$pxbNA$f" role="3clF45" />
      <node concept="37vLTG" id="5Sw$pxbNA$g" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5Sw$pxbNChl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Sw$pxbNA$i" role="3clF47">
        <node concept="3clFbF" id="5Sw$pxbNA$m" role="3cqZAp">
          <node concept="3nyPlj" id="5Sw$pxbNA$l" role="3clFbG">
            <ref role="37wK5l" to="fz1u:~WebSocketAdapter.onWebSocketText(java.lang.String)" resolve="onWebSocketText" />
            <node concept="37vLTw" id="5Sw$pxbNA$k" role="37wK5m">
              <ref role="3cqZAo" node="5Sw$pxbNA$g" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MA9wbc6Mhv" role="3cqZAp">
          <node concept="2OqwBi" id="5MA9wbc6QaX" role="3clFbG">
            <node concept="10M0yZ" id="5MA9wbc6Q0J" role="2Oq$k0">
              <ref role="3cqZAo" to="ia5i:5MA9wbc5sJL" resolve="AUTHOR" />
              <ref role="1PxDUh" to="ia5i:5MA9wbc5skS" resolve="AuthorOverride" />
            </node>
            <node concept="liA8E" id="5MA9wbc6QnD" role="2OqNvi">
              <ref role="37wK5l" to="3d38:7vWAzuEE3Ye" resolve="runWith" />
              <node concept="37vLTw" id="5MA9wbc6Qu_" role="37wK5m">
                <ref role="3cqZAo" node="5MA9wbc6v$y" resolve="user" />
              </node>
              <node concept="1bVj0M" id="5MA9wbc6QO3" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5MA9wbc6QO5" role="1bW5cS">
                  <node concept="3clFbF" id="5Sw$pxbNUTq" role="3cqZAp">
                    <node concept="2OqwBi" id="5Sw$pxbNVg$" role="3clFbG">
                      <node concept="37vLTw" id="5Sw$pxbNUTo" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="renderSession" />
                      </node>
                      <node concept="liA8E" id="5Sw$pxbNXmt" role="2OqNvi">
                        <ref role="37wK5l" node="1qbCJZsJ6k5" resolve="onMessage" />
                        <node concept="37vLTw" id="5Sw$pxbO4Q1" role="37wK5m">
                          <ref role="3cqZAo" node="5Sw$pxbNA$g" resolve="message" />
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
      <node concept="2AHcQZ" id="5Sw$pxbNA$j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6xm2RBlaf2M" role="1B3o_S" />
    <node concept="3uibUv" id="5Sw$pxbN8Kx" role="1zkMxy">
      <ref role="3uigEE" to="fz1u:~WebSocketAdapter" resolve="WebSocketAdapter" />
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
                <ref role="2Oxat6" node="6xm2RBlpH41" resolve="mpsProject" />
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
    <node concept="2tJIrI" id="4qNw5QUxECt" role="jymVt" />
    <node concept="3clFb_" id="4qNw5QUxDtM" role="jymVt">
      <property role="TrG5h" value="updateStatusBarMessage" />
      <node concept="3Tm1VV" id="4qNw5QUxDtN" role="1B3o_S" />
      <node concept="3cqZAl" id="4qNw5QUxDtP" role="3clF45" />
      <node concept="3clFbS" id="4qNw5QUxDtQ" role="3clF47" />
      <node concept="2AHcQZ" id="4qNw5QUxDtR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
  <node concept="312cEu" id="3$7KuaikopA">
    <property role="TrG5h" value="SingletonProjectPlugin" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3$7Kuaikoro" role="jymVt" />
    <node concept="312cEg" id="3$7KuaikowI" role="jymVt">
      <property role="TrG5h" value="projects" />
      <node concept="3Tm6S6" id="3$7KuaikowJ" role="1B3o_S" />
      <node concept="2hMVRd" id="3$7Kuaiko_X" role="1tU5fm">
        <node concept="3uibUv" id="3$7KuaikoF8" role="2hN53Y">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2ShNRf" id="3$7KuailhHF" role="33vP2m">
        <node concept="32HrFt" id="3$7KuailhCp" role="2ShVmc">
          <node concept="3uibUv" id="3$7KuailhCq" role="HW$YZ">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3$7KuailmLd" role="jymVt">
      <property role="TrG5h" value="chosenProject" />
      <node concept="3Tm6S6" id="3$7KuailmLe" role="1B3o_S" />
      <node concept="3uibUv" id="3$7Kuailntz" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="3$7KuainbpG" role="jymVt">
      <property role="TrG5h" value="instanceInitialized" />
      <node concept="3Tm6S6" id="3$7KuainbpH" role="1B3o_S" />
      <node concept="10P_77" id="3$7Kuaincqe" role="1tU5fm" />
      <node concept="3clFbT" id="3$7Kuainc_u" role="33vP2m" />
    </node>
    <node concept="312cEg" id="3$7KuaimMl1" role="jymVt">
      <property role="TrG5h" value="instance" />
      <node concept="3Tm6S6" id="3$7KuaimMl2" role="1B3o_S" />
      <node concept="16syzq" id="3$7KuaimN7D" role="1tU5fm">
        <ref role="16sUi3" node="3$7KuaimIDF" resolve="E" />
      </node>
    </node>
    <node concept="312cEg" id="3$7KuaioPhy" role="jymVt">
      <property role="TrG5h" value="disposed" />
      <node concept="3Tm6S6" id="3$7KuaioPhz" role="1B3o_S" />
      <node concept="10P_77" id="3$7KuaioQ7P" role="1tU5fm" />
      <node concept="3clFbT" id="3$7KuaioQr3" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="3$7KuaikoRO" role="jymVt" />
    <node concept="3clFb_" id="3$7KuaikoXg" role="jymVt">
      <property role="TrG5h" value="registerProject" />
      <node concept="37vLTG" id="3$7KuaikoZh" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3$7Kuaikp9r" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="3$7KuaikoXi" role="3clF45" />
      <node concept="3Tm1VV" id="3$7KuaikoXj" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuaikoXk" role="3clF47">
        <node concept="3clFbF" id="3$7Kuaikpst" role="3cqZAp">
          <node concept="2OqwBi" id="3$7KuaikrfO" role="3clFbG">
            <node concept="37vLTw" id="3$7Kuaikqxj" role="2Oq$k0">
              <ref role="3cqZAo" node="3$7KuaikowI" resolve="projects" />
            </node>
            <node concept="TSZUe" id="3$7KuaikK2i" role="2OqNvi">
              <node concept="37vLTw" id="3$7KuaikKo1" role="25WWJ7">
                <ref role="3cqZAo" node="3$7KuaikoZh" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$7KuaimBtj" role="3cqZAp">
          <node concept="1rXfSq" id="3$7KuaimBth" role="3clFbG">
            <ref role="37wK5l" node="3$7KuailoRK" resolve="chooseNextProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7KuaikpaL" role="jymVt" />
    <node concept="3clFb_" id="3$7Kuaikpa0" role="jymVt">
      <property role="TrG5h" value="unregisterProject" />
      <node concept="37vLTG" id="3$7Kuaikpa1" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3$7Kuaikpa2" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="3$7Kuaikpa3" role="3clF45" />
      <node concept="3Tm1VV" id="3$7Kuaikpa4" role="1B3o_S" />
      <node concept="3clFbS" id="3$7Kuaikpa5" role="3clF47">
        <node concept="3clFbF" id="3$7KuaikKKY" role="3cqZAp">
          <node concept="2OqwBi" id="3$7KuaikLwF" role="3clFbG">
            <node concept="37vLTw" id="3$7KuaikKKX" role="2Oq$k0">
              <ref role="3cqZAo" node="3$7KuaikowI" resolve="projects" />
            </node>
            <node concept="3dhRuq" id="3$7Kuail6p2" role="2OqNvi">
              <node concept="37vLTw" id="3$7Kuail7c9" role="25WWJ7">
                <ref role="3cqZAo" node="3$7Kuaikpa1" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3$7KuaimCe_" role="3cqZAp">
          <node concept="1rXfSq" id="3$7KuaimCez" role="3clFbG">
            <ref role="37wK5l" node="3$7KuailoRK" resolve="chooseNextProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7Kuail7Bc" role="jymVt" />
    <node concept="3clFb_" id="3$7KuailoRK" role="jymVt">
      <property role="TrG5h" value="chooseNextProject" />
      <node concept="3cqZAl" id="3$7KuailoRM" role="3clF45" />
      <node concept="3Tm6S6" id="3$7Kuailtcv" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuailoRO" role="3clF47">
        <node concept="3clFbJ" id="3$7KuaioR$U" role="3cqZAp">
          <node concept="3clFbS" id="3$7KuaioR$W" role="3clFbx">
            <node concept="3cpWs6" id="3$7KuaioSgU" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="3$7KuaioRXw" role="3clFbw">
            <ref role="3cqZAo" node="3$7KuaioPhy" resolve="disposed" />
          </node>
        </node>
        <node concept="3cpWs8" id="3$7KuaimD3X" role="3cqZAp">
          <node concept="3cpWsn" id="3$7KuaimD3Y" role="3cpWs9">
            <property role="TrG5h" value="oldProject" />
            <node concept="3uibUv" id="3$7KuaimD3Z" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="37vLTw" id="3$7KuaimDp6" role="33vP2m">
              <ref role="3cqZAo" node="3$7KuailmLd" resolve="chosenProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3$7KuaimcUt" role="3cqZAp">
          <node concept="3cpWsn" id="3$7KuaimcUu" role="3cpWs9">
            <property role="TrG5h" value="newProject" />
            <node concept="3uibUv" id="3$7KuaimcUs" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="3K4zz7" id="3$7KuaimcUv" role="33vP2m">
              <node concept="10Nm6u" id="3$7KuaimcUw" role="3K4E3e" />
              <node concept="1rXfSq" id="3$7KuaimcUx" role="3K4GZi">
                <ref role="37wK5l" node="3$7Kuaildp9" resolve="chooseProject" />
                <node concept="37vLTw" id="3$7KuaimcUy" role="37wK5m">
                  <ref role="3cqZAo" node="3$7KuaikowI" resolve="projects" />
                </node>
              </node>
              <node concept="2OqwBi" id="3$7KuaimcUz" role="3K4Cdx">
                <node concept="37vLTw" id="3$7KuaimcU$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3$7KuaikowI" resolve="projects" />
                </node>
                <node concept="1v1jN8" id="3$7KuaimcU_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3$7KuaimdEO" role="3cqZAp">
          <node concept="3clFbS" id="3$7KuaimdEQ" role="3clFbx">
            <node concept="3clFbF" id="3$7KuaimeU2" role="3cqZAp">
              <node concept="37vLTI" id="3$7KuaimfhW" role="3clFbG">
                <node concept="37vLTw" id="3$7Kuaimfpb" role="37vLTx">
                  <ref role="3cqZAo" node="3$7KuaimcUu" resolve="newProject" />
                </node>
                <node concept="37vLTw" id="3$7KuaimeU0" role="37vLTJ">
                  <ref role="3cqZAo" node="3$7KuailmLd" resolve="chosenProject" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3$7Kuainasi" role="3cqZAp">
              <node concept="3clFbS" id="3$7Kuainask" role="3clFbx">
                <node concept="3clFbF" id="3$7KuaindMG" role="3cqZAp">
                  <node concept="1rXfSq" id="3$7KuaindME" role="3clFbG">
                    <ref role="37wK5l" node="3$7Kuain2vj" resolve="disposeInstance" />
                    <node concept="37vLTw" id="3$7KuaioFRF" role="37wK5m">
                      <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
                    </node>
                    <node concept="37vLTw" id="3$7KuaindWm" role="37wK5m">
                      <ref role="3cqZAo" node="3$7KuaimD3Y" resolve="oldProject" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3$7Kuaineho" role="3cqZAp">
                  <node concept="37vLTI" id="3$7Kuainetu" role="3clFbG">
                    <node concept="10Nm6u" id="3$7Kuaine_N" role="37vLTx" />
                    <node concept="37vLTw" id="3$7Kuainehm" role="37vLTJ">
                      <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3$7KuaineSS" role="3cqZAp">
                  <node concept="37vLTI" id="3$7KuainfjR" role="3clFbG">
                    <node concept="3clFbT" id="3$7Kuainfq_" role="37vLTx" />
                    <node concept="37vLTw" id="3$7KuaineSQ" role="37vLTJ">
                      <ref role="3cqZAo" node="3$7KuainbpG" resolve="instanceInitialized" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3$7KuaindtE" role="3clFbw">
                <ref role="3cqZAo" node="3$7KuainbpG" resolve="instanceInitialized" />
              </node>
            </node>
            <node concept="3clFbJ" id="3$7KuainfER" role="3cqZAp">
              <node concept="3clFbS" id="3$7KuainfET" role="3clFbx">
                <node concept="3clFbF" id="3$7KuainhGz" role="3cqZAp">
                  <node concept="37vLTI" id="3$7KuainhRZ" role="3clFbG">
                    <node concept="37vLTw" id="3$7KuainhGy" role="37vLTJ">
                      <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
                    </node>
                    <node concept="1rXfSq" id="3$7Kuain1GB" role="37vLTx">
                      <ref role="37wK5l" node="3$7KuaimTVy" resolve="initInstance" />
                      <node concept="37vLTw" id="3$7Kuain1Ri" role="37wK5m">
                        <ref role="3cqZAo" node="3$7KuaimcUu" resolve="newProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3$7KuainilA" role="3cqZAp">
                  <node concept="37vLTI" id="3$7KuainiKG" role="3clFbG">
                    <node concept="3clFbT" id="3$7KuainiRq" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="3$7Kuainil$" role="37vLTJ">
                      <ref role="3cqZAo" node="3$7KuainbpG" resolve="instanceInitialized" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3$7KuaingBa" role="3clFbw">
                <node concept="37vLTw" id="3$7KuainfOK" role="3uHU7B">
                  <ref role="3cqZAo" node="3$7KuaimcUu" resolve="newProject" />
                </node>
                <node concept="10Nm6u" id="3$7KuaingHA" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="3$7Kuaimel3" role="3clFbw">
            <node concept="37vLTw" id="3$7KuaimDR9" role="3uHU7w">
              <ref role="3cqZAo" node="3$7KuaimD3Y" resolve="oldProject" />
            </node>
            <node concept="37vLTw" id="3$7KuaimdRQ" role="3uHU7B">
              <ref role="3cqZAo" node="3$7KuaimcUu" resolve="newProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7Kuailnxs" role="jymVt" />
    <node concept="3clFb_" id="3$7KuaimtAE" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="3$7KuaimwSl" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="3$7KuaimtAH" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuaimtAI" role="3clF47">
        <node concept="3clFbF" id="3$7KuaimALr" role="3cqZAp">
          <node concept="37vLTw" id="3$7KuaimALq" role="3clFbG">
            <ref role="3cqZAo" node="3$7KuailmLd" resolve="chosenProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7KuaimsrI" role="jymVt" />
    <node concept="3clFb_" id="3$7KuaimOh9" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="16syzq" id="3$7KuaimRVi" role="3clF45">
        <ref role="16sUi3" node="3$7KuaimIDF" resolve="E" />
      </node>
      <node concept="3Tm1VV" id="3$7KuaimOhc" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuaimOhd" role="3clF47">
        <node concept="3clFbF" id="3$7KuainjfW" role="3cqZAp">
          <node concept="37vLTw" id="3$7KuainjfV" role="3clFbG">
            <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7KuaimNgD" role="jymVt" />
    <node concept="3clFb_" id="3$7Kuaildp9" role="jymVt">
      <property role="TrG5h" value="chooseProject" />
      <node concept="37vLTG" id="3$7KuailjXx" role="3clF46">
        <property role="TrG5h" value="projects" />
        <node concept="A3Dl8" id="3$7Kuailkwe" role="1tU5fm">
          <node concept="3uibUv" id="3$7Kuailk_K" role="A3Ik2">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3$7KuailkGo" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="3$7KuaimrKp" role="1B3o_S" />
      <node concept="3clFbS" id="3$7Kuaildpd" role="3clF47">
        <node concept="3clFbF" id="3$7Kuaill$f" role="3cqZAp">
          <node concept="2OqwBi" id="3$7KuaillRw" role="3clFbG">
            <node concept="37vLTw" id="3$7Kuaill$e" role="2Oq$k0">
              <ref role="3cqZAo" node="3$7KuailjXx" resolve="projects" />
            </node>
            <node concept="1uHKPH" id="3$7KuailmCz" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3$7KuaimTzX" role="jymVt" />
    <node concept="3clFb_" id="3$7KuaimTVy" role="jymVt">
      <property role="TrG5h" value="initInstance" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3$7KuaimYGW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3$7KuaimZFa" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="16syzq" id="3$7KuaimX9Q" role="3clF45">
        <ref role="16sUi3" node="3$7KuaimIDF" resolve="E" />
      </node>
      <node concept="3Tm1VV" id="3$7KuaimTV_" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuaimTVA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3$7Kuain8ce" role="jymVt" />
    <node concept="3clFb_" id="3$7Kuain2vj" role="jymVt">
      <property role="TrG5h" value="disposeInstance" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3$7KuaionnJ" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="16syzq" id="3$7KuaioofH" role="1tU5fm">
          <ref role="16sUi3" node="3$7KuaimIDF" resolve="E" />
        </node>
      </node>
      <node concept="37vLTG" id="3$7Kuain7_3" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3$7Kuain87Q" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="3$7Kuain2vl" role="3clF45" />
      <node concept="3Tm1VV" id="3$7Kuain2vm" role="1B3o_S" />
      <node concept="3clFbS" id="3$7Kuain2vn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3$7KuaikorB" role="jymVt" />
    <node concept="3clFb_" id="3$7KuaioLVp" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3$7KuaioLVr" role="3clF45" />
      <node concept="3Tm1VV" id="3$7KuaioLVs" role="1B3o_S" />
      <node concept="3clFbS" id="3$7KuaioLVt" role="3clF47">
        <node concept="3clFbF" id="3$7KuaioQAi" role="3cqZAp">
          <node concept="37vLTI" id="3$7KuaioR18" role="3clFbG">
            <node concept="3clFbT" id="3$7KuaioR7T" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="3$7KuaioQAh" role="37vLTJ">
              <ref role="3cqZAo" node="3$7KuaioPhy" resolve="disposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3$7KuaioSFD" role="3cqZAp">
          <node concept="3clFbS" id="3$7KuaioSFE" role="3clFbx">
            <node concept="3clFbF" id="3$7KuaioSFF" role="3cqZAp">
              <node concept="1rXfSq" id="3$7KuaioSFG" role="3clFbG">
                <ref role="37wK5l" node="3$7Kuain2vj" resolve="disposeInstance" />
                <node concept="37vLTw" id="3$7KuaioSFH" role="37wK5m">
                  <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
                </node>
                <node concept="37vLTw" id="3$7KuaioT0n" role="37wK5m">
                  <ref role="3cqZAo" node="3$7KuailmLd" resolve="chosenProject" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3$7KuaioSFJ" role="3cqZAp">
              <node concept="37vLTI" id="3$7KuaioSFK" role="3clFbG">
                <node concept="10Nm6u" id="3$7KuaioSFL" role="37vLTx" />
                <node concept="37vLTw" id="3$7KuaioSFM" role="37vLTJ">
                  <ref role="3cqZAo" node="3$7KuaimMl1" resolve="instance" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3$7KuaioSFN" role="3cqZAp">
              <node concept="37vLTI" id="3$7KuaioSFO" role="3clFbG">
                <node concept="3clFbT" id="3$7KuaioSFP" role="37vLTx" />
                <node concept="37vLTw" id="3$7KuaioSFQ" role="37vLTJ">
                  <ref role="3cqZAo" node="3$7KuainbpG" resolve="instanceInitialized" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3$7KuaioSFR" role="3clFbw">
            <ref role="3cqZAo" node="3$7KuainbpG" resolve="instanceInitialized" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3$7KuaikopB" role="1B3o_S" />
    <node concept="16euLQ" id="3$7KuaimIDF" role="16eVyc">
      <property role="TrG5h" value="E" />
    </node>
  </node>
  <node concept="2uRRBy" id="3$7KuaioF7m">
    <property role="TrG5h" value="ProjectPlugin" />
    <node concept="2uRRBT" id="3$7KuaioF7n" role="2uRRB$">
      <node concept="3clFbS" id="3$7KuaioF7o" role="2VODD2" />
    </node>
    <node concept="2uRRBN" id="3$7KuaioVKD" role="2uRRB_">
      <node concept="3clFbS" id="3$7KuaioVKE" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="1qbCJZsJ66o">
    <property role="TrG5h" value="RenderSession" />
    <node concept="Wx3nA" id="1qbCJZsJ66p" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1qbCJZsJ66q" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="1qbCJZsJ66r" role="1B3o_S" />
      <node concept="2YIFZM" id="1qbCJZsJ66s" role="33vP2m">
        <ref role="1Pybhc" to="q7tw:~Logger" resolve="Logger" />
        <ref role="37wK5l" to="q7tw:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <node concept="3VsKOn" id="1qbCJZsJ66t" role="37wK5m">
          <ref role="3VsUkX" node="1qbCJZsJ66o" resolve="RenderSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ679" role="jymVt" />
    <node concept="312cEg" id="1qbCJZsJ67a" role="jymVt">
      <property role="TrG5h" value="serverEditorComponent" />
      <node concept="3Tm6S6" id="1qbCJZsJ67b" role="1B3o_S" />
      <node concept="3uibUv" id="1qbCJZsJ67c" role="1tU5fm">
        <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsJ67d" role="jymVt">
      <property role="TrG5h" value="fullTimer" />
      <node concept="3Tm6S6" id="1qbCJZsJ67e" role="1B3o_S" />
      <node concept="3uibUv" id="1qbCJZsJ67f" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsJ67g" role="jymVt">
      <property role="TrG5h" value="viewTimer" />
      <node concept="3Tm6S6" id="1qbCJZsJ67h" role="1B3o_S" />
      <node concept="3uibUv" id="1qbCJZsJ67i" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsJ67j" role="jymVt">
      <property role="TrG5h" value="lastFullPng" />
      <node concept="3Tm6S6" id="1qbCJZsJ67k" role="1B3o_S" />
      <node concept="17QB3L" id="1qbCJZsJ67l" role="1tU5fm" />
      <node concept="10Nm6u" id="1qbCJZsJ67m" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1qbCJZsJ67n" role="jymVt">
      <property role="TrG5h" value="lastViewPng" />
      <node concept="3Tm6S6" id="1qbCJZsJ67o" role="1B3o_S" />
      <node concept="17QB3L" id="1qbCJZsJ67p" role="1tU5fm" />
      <node concept="10Nm6u" id="1qbCJZsJ67q" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1qbCJZsJ67r" role="jymVt">
      <property role="TrG5h" value="fullUpdateNext" />
      <node concept="3Tm6S6" id="1qbCJZsJ67s" role="1B3o_S" />
      <node concept="10P_77" id="1qbCJZsJ67t" role="1tU5fm" />
      <node concept="3clFbT" id="1qbCJZsJ67u" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsJ67v" role="jymVt">
      <property role="TrG5h" value="deltaUpdateCount" />
      <node concept="3Tm6S6" id="1qbCJZsJ67w" role="1B3o_S" />
      <node concept="10Oyi0" id="1qbCJZsJ67x" role="1tU5fm" />
      <node concept="3cmrfG" id="1qbCJZsJ67y" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsJ67z" role="jymVt">
      <property role="TrG5h" value="viewRange" />
      <node concept="3Tm6S6" id="1qbCJZsJ67$" role="1B3o_S" />
      <node concept="1LlUBW" id="1qbCJZsJ67_" role="1tU5fm">
        <node concept="10Oyi0" id="1qbCJZsJ67A" role="1Lm7xW" />
        <node concept="10Oyi0" id="1qbCJZsJ67B" role="1Lm7xW" />
      </node>
      <node concept="10Nm6u" id="1qbCJZsJ67C" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1qbCJZsJ67D" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="1qbCJZsJ67E" role="1B3o_S" />
      <node concept="3uibUv" id="1qbCJZsJ67F" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="1qbCJZsKdju" role="jymVt">
      <property role="TrG5h" value="websocketSession" />
      <node concept="3Tm6S6" id="1qbCJZsKdjv" role="1B3o_S" />
      <node concept="3uibUv" id="5Sw$pxbOwe9" role="1tU5fm">
        <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
      </node>
    </node>
    <node concept="312cEg" id="7trMQm40j_d" role="jymVt">
      <property role="TrG5h" value="rootNode" />
      <node concept="3Tm6S6" id="7trMQm40j_e" role="1B3o_S" />
      <node concept="3uibUv" id="7trMQm40o8K" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="5npwda7tz40" role="jymVt">
      <property role="TrG5h" value="transformationEngine" />
      <node concept="3Tm6S6" id="5npwda7tz41" role="1B3o_S" />
      <node concept="3uibUv" id="5npwda7tDJH" role="1tU5fm">
        <ref role="3uigEE" to="nv3w:5gTrVpGiJ3S" resolve="TransformationEngine" />
      </node>
    </node>
    <node concept="312cEg" id="2mcPA70wyj9" role="jymVt">
      <property role="TrG5h" value="user" />
      <node concept="3Tm6S6" id="2mcPA70wyja" role="1B3o_S" />
      <node concept="17QB3L" id="2mcPA70w_zP" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1MWbHmShfd_" role="jymVt" />
    <node concept="312cEg" id="2D2$TMZuJ42" role="jymVt">
      <property role="TrG5h" value="ccMenuTimer" />
      <node concept="3Tm6S6" id="2D2$TMZuJ43" role="1B3o_S" />
      <node concept="3uibUv" id="2D2$TMZuFEK" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
    </node>
    <node concept="312cEg" id="1MWbHmShPqI" role="jymVt">
      <property role="TrG5h" value="lastSelectedIndex" />
      <node concept="3Tm6S6" id="1MWbHmShPqJ" role="1B3o_S" />
      <node concept="10Oyi0" id="1MWbHmShV7O" role="1tU5fm" />
      <node concept="3cmrfG" id="1MWbHmShVEI" role="33vP2m">
        <property role="3cmrfH" value="-1" />
      </node>
    </node>
    <node concept="2tJIrI" id="2D2$TMZrOgM" role="jymVt" />
    <node concept="3clFbW" id="1qbCJZsJ67H" role="jymVt">
      <node concept="37vLTG" id="1qbCJZsJ67I" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1qbCJZsJ67J" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="1qbCJZsKjMG" role="3clF46">
        <property role="TrG5h" value="websocketSession" />
        <node concept="3uibUv" id="5Sw$pxbOvZ6" role="1tU5fm">
          <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
        </node>
        <node concept="2AHcQZ" id="1qbCJZsRsSv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2mcPA70wwkN" role="3clF46">
        <property role="TrG5h" value="user" />
        <node concept="17QB3L" id="2mcPA70wxPt" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ67K" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ67L" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ67M" role="3clF47">
        <node concept="3clFbF" id="1qbCJZsJ67R" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ67S" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ67T" role="37vLTx">
              <ref role="3cqZAo" node="1qbCJZsJ67I" resolve="project" />
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ67U" role="37vLTJ">
              <node concept="Xjq3P" id="1qbCJZsJ67V" role="2Oq$k0" />
              <node concept="2OwXpG" id="1qbCJZsJ67W" role="2OqNvi">
                <ref role="2Oxat6" node="1qbCJZsJ67D" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsQV2F" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsQVIm" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsQW27" role="37vLTx">
              <ref role="3cqZAo" node="1qbCJZsKjMG" resolve="websocketSession" />
            </node>
            <node concept="2OqwBi" id="1qbCJZsQV9g" role="37vLTJ">
              <node concept="Xjq3P" id="1qbCJZsQV2D" role="2Oq$k0" />
              <node concept="2OwXpG" id="1qbCJZsQVuH" role="2OqNvi">
                <ref role="2Oxat6" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2mcPA70wBoc" role="3cqZAp">
          <node concept="37vLTI" id="2mcPA70wCag" role="3clFbG">
            <node concept="37vLTw" id="2mcPA70wCpd" role="37vLTx">
              <ref role="3cqZAo" node="2mcPA70wwkN" resolve="user" />
            </node>
            <node concept="2OqwBi" id="2mcPA70wBxg" role="37vLTJ">
              <node concept="Xjq3P" id="2mcPA70wBoa" role="2Oq$k0" />
              <node concept="2OwXpG" id="2mcPA70wBDz" role="2OqNvi">
                <ref role="2Oxat6" node="2mcPA70wyj9" resolve="user" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ67X" role="3cqZAp">
          <node concept="1rXfSq" id="1qbCJZsJ67Y" role="3clFbG">
            <ref role="37wK5l" node="1qbCJZsJ681" resolve="init" />
            <node concept="37vLTw" id="1qbCJZsJ67Z" role="37wK5m">
              <ref role="3cqZAo" node="1qbCJZsJ67I" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ680" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ681" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="1qbCJZsJ682" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1qbCJZsJ683" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ684" role="3clF45" />
      <node concept="3Tmbuc" id="1qbCJZsJ685" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ686" role="3clF47">
        <node concept="3clFbF" id="5npwda7tNYN" role="3cqZAp">
          <node concept="37vLTI" id="5npwda7tPcc" role="3clFbG">
            <node concept="2ShNRf" id="5npwda7tPAb" role="37vLTx">
              <node concept="1pGfFk" id="5npwda7tPlN" role="2ShVmc">
                <ref role="37wK5l" to="nv3w:5gTrVpGmaY5" resolve="TransformationEngine" />
                <node concept="2ShNRf" id="5npwda7tPIy" role="37wK5m">
                  <node concept="1pGfFk" id="5npwda7ucKj" role="2ShVmc">
                    <ref role="37wK5l" to="od2j:41QOk3IHOCK" resolve="DefaultPFContext" />
                    <node concept="2ShNRf" id="5npwda7uhFH" role="37wK5m">
                      <node concept="1pGfFk" id="5npwda7uiUM" role="2ShVmc">
                        <ref role="37wK5l" to="l6bp:7YhLqbpjFao" resolve="TransformationsFromRepository" />
                        <node concept="2OqwBi" id="5npwda7ujxZ" role="37wK5m">
                          <node concept="37vLTw" id="5npwda7uj9v" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ682" resolve="project" />
                          </node>
                          <node concept="liA8E" id="5npwda7uk7l" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5npwda7tNYL" role="37vLTJ">
              <ref role="3cqZAo" node="5npwda7tz40" resolve="transformationEngine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ689" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ68a" role="3clFbG">
            <node concept="2ShNRf" id="1qbCJZsJ68b" role="37vLTx">
              <node concept="1pGfFk" id="1qbCJZsJ68c" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
                <node concept="3cmrfG" id="1qbCJZsJ68d" role="37wK5m">
                  <property role="3cmrfH" value="1000" />
                </node>
                <node concept="2ShNRf" id="1qbCJZsJ68e" role="37wK5m">
                  <node concept="YeOm9" id="1qbCJZsJ68f" role="2ShVmc">
                    <node concept="1Y3b0j" id="1qbCJZsJ68g" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="1qbCJZsJ68h" role="1B3o_S" />
                      <node concept="3clFb_" id="1qbCJZsJ68i" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="1qbCJZsJ68j" role="1B3o_S" />
                        <node concept="3cqZAl" id="1qbCJZsJ68k" role="3clF45" />
                        <node concept="37vLTG" id="1qbCJZsJ68l" role="3clF46">
                          <property role="TrG5h" value="p0" />
                          <node concept="3uibUv" id="1qbCJZsJ68m" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1qbCJZsJ68n" role="3clF47">
                          <node concept="SfApY" id="2D2$TMZv90N" role="3cqZAp">
                            <node concept="3clFbS" id="2D2$TMZv90P" role="SfCbr">
                              <node concept="3clFbJ" id="1qbCJZsJ68o" role="3cqZAp">
                                <node concept="3clFbS" id="1qbCJZsJ68p" role="3clFbx">
                                  <node concept="3clFbF" id="1qbCJZsJ68q" role="3cqZAp">
                                    <node concept="1rXfSq" id="1qbCJZsJ68r" role="3clFbG">
                                      <ref role="37wK5l" node="1qbCJZsJ6bn" resolve="renderAll" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1qbCJZsJ68s" role="3cqZAp">
                                    <node concept="37vLTI" id="1qbCJZsJ68t" role="3clFbG">
                                      <node concept="3clFbT" id="1qbCJZsJ68u" role="37vLTx">
                                        <property role="3clFbU" value="false" />
                                      </node>
                                      <node concept="37vLTw" id="1qbCJZsJ68v" role="37vLTJ">
                                        <ref role="3cqZAo" node="1qbCJZsJ67r" resolve="fullUpdateNext" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="22lmx$" id="1qbCJZsJ68w" role="3clFbw">
                                  <node concept="3eOSWO" id="1qbCJZsJ68x" role="3uHU7w">
                                    <node concept="3cmrfG" id="1qbCJZsJ68y" role="3uHU7w">
                                      <property role="3cmrfH" value="50" />
                                    </node>
                                    <node concept="37vLTw" id="1qbCJZsJ68z" role="3uHU7B">
                                      <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ68$" role="3uHU7B">
                                    <ref role="3cqZAo" node="1qbCJZsJ67r" resolve="fullUpdateNext" />
                                  </node>
                                </node>
                                <node concept="9aQIb" id="1qbCJZsJ68_" role="9aQIa">
                                  <node concept="3clFbS" id="1qbCJZsJ68A" role="9aQI4">
                                    <node concept="3clFbF" id="1qbCJZsJ68B" role="3cqZAp">
                                      <node concept="37vLTI" id="1qbCJZsJ68C" role="3clFbG">
                                        <node concept="3clFbT" id="1qbCJZsJ68D" role="37vLTx">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                        <node concept="37vLTw" id="1qbCJZsJ68E" role="37vLTJ">
                                          <ref role="3cqZAo" node="1qbCJZsJ67r" resolve="fullUpdateNext" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="TDmWw" id="2D2$TMZv90Q" role="TEbGg">
                              <node concept="3cpWsn" id="2D2$TMZv90S" role="TDEfY">
                                <property role="TrG5h" value="ex" />
                                <node concept="3uibUv" id="2D2$TMZva67" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="2D2$TMZv90W" role="TDEfX">
                                <node concept="RRSsy" id="2D2$TMZvaME" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="2D2$TMZvaMG" role="RRSoy" />
                                  <node concept="37vLTw" id="2D2$TMZvaMI" role="RRSow">
                                    <ref role="3cqZAo" node="2D2$TMZv90S" resolve="ex" />
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
            <node concept="37vLTw" id="1qbCJZsJ68F" role="37vLTJ">
              <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="fullTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ68G" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ68H" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ68I" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="fullTimer" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ68J" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ68K" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ68L" role="3clFbG">
            <node concept="2ShNRf" id="1qbCJZsJ68M" role="37vLTx">
              <node concept="1pGfFk" id="1qbCJZsJ68N" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
                <node concept="3cmrfG" id="1qbCJZsJ68O" role="37wK5m">
                  <property role="3cmrfH" value="500" />
                </node>
                <node concept="2ShNRf" id="1qbCJZsJ68P" role="37wK5m">
                  <node concept="YeOm9" id="1qbCJZsJ68Q" role="2ShVmc">
                    <node concept="1Y3b0j" id="1qbCJZsJ68R" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="1qbCJZsJ68S" role="1B3o_S" />
                      <node concept="3clFb_" id="1qbCJZsJ68T" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="1qbCJZsJ68U" role="1B3o_S" />
                        <node concept="3cqZAl" id="1qbCJZsJ68V" role="3clF45" />
                        <node concept="37vLTG" id="1qbCJZsJ68W" role="3clF46">
                          <property role="TrG5h" value="p0" />
                          <node concept="3uibUv" id="1qbCJZsJ68X" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1qbCJZsJ68Y" role="3clF47">
                          <node concept="SfApY" id="2D2$TMZv6Kl" role="3cqZAp">
                            <node concept="3clFbS" id="2D2$TMZv6Kn" role="SfCbr">
                              <node concept="3clFbF" id="1qbCJZsJ68Z" role="3cqZAp">
                                <node concept="1rXfSq" id="1qbCJZsJ690" role="3clFbG">
                                  <ref role="37wK5l" node="1qbCJZsJ6d4" resolve="renderView" />
                                </node>
                              </node>
                            </node>
                            <node concept="TDmWw" id="2D2$TMZv6Ko" role="TEbGg">
                              <node concept="3cpWsn" id="2D2$TMZv6Kq" role="TDEfY">
                                <property role="TrG5h" value="ex" />
                                <node concept="3uibUv" id="2D2$TMZv7Cl" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="2D2$TMZv6Ku" role="TDEfX">
                                <node concept="RRSsy" id="2D2$TMZv8iv" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="2D2$TMZv8ix" role="RRSoy" />
                                  <node concept="37vLTw" id="2D2$TMZv8iz" role="RRSow">
                                    <ref role="3cqZAo" node="2D2$TMZv6Kq" resolve="ex" />
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
            <node concept="37vLTw" id="1qbCJZsJ691" role="37vLTJ">
              <ref role="3cqZAo" node="1qbCJZsJ67g" resolve="viewTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ692" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ693" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ694" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ67g" resolve="viewTimer" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ695" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75ngnxkP043" role="3cqZAp">
          <node concept="2YIFZM" id="75ngnxkP044" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <node concept="1bVj0M" id="75ngnxkP045" role="37wK5m">
              <node concept="3clFbS" id="75ngnxkP046" role="1bW5cS">
                <node concept="3clFbF" id="75ngnxkP047" role="3cqZAp">
                  <node concept="1rXfSq" id="75ngnxkP048" role="3clFbG">
                    <ref role="37wK5l" node="1qbCJZsJ6bn" resolve="renderAll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2D2$TMZuCoy" role="3cqZAp" />
        <node concept="3clFbF" id="2D2$TMZuHnn" role="3cqZAp">
          <node concept="37vLTI" id="2D2$TMZuHnp" role="3clFbG">
            <node concept="2ShNRf" id="2D2$TMZuG$0" role="37vLTx">
              <node concept="1pGfFk" id="2D2$TMZuG$1" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
                <node concept="3cmrfG" id="2D2$TMZuG$2" role="37wK5m">
                  <property role="3cmrfH" value="500" />
                </node>
                <node concept="1bVj0M" id="2D2$TMZuG$3" role="37wK5m">
                  <node concept="37vLTG" id="2D2$TMZuG$4" role="1bW2Oz">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="2D2$TMZuG$5" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2D2$TMZuG$6" role="1bW5cS">
                    <node concept="SfApY" id="2D2$TMZvber" role="3cqZAp">
                      <node concept="3clFbS" id="2D2$TMZvbet" role="SfCbr">
                        <node concept="3clFbF" id="2D2$TMZuG$7" role="3cqZAp">
                          <node concept="1rXfSq" id="2D2$TMZuG$8" role="3clFbG">
                            <ref role="37wK5l" node="2D2$TMZu5kA" resolve="processCCMenu" />
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="2D2$TMZvbeu" role="TEbGg">
                        <node concept="3cpWsn" id="2D2$TMZvbew" role="TDEfY">
                          <property role="TrG5h" value="ex" />
                          <node concept="3uibUv" id="2D2$TMZvbrt" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2D2$TMZvbe$" role="TDEfX">
                          <node concept="RRSsy" id="2D2$TMZvbNU" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="Xl_RD" id="2D2$TMZvbNW" role="RRSoy" />
                            <node concept="37vLTw" id="2D2$TMZvbNY" role="RRSow">
                              <ref role="3cqZAo" node="2D2$TMZvbew" resolve="ex" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2D2$TMZuM7g" role="37vLTJ">
              <ref role="3cqZAo" node="2D2$TMZuJ42" resolve="ccMenuTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2D2$TMZuPAX" role="3cqZAp">
          <node concept="2OqwBi" id="2D2$TMZuQn2" role="3clFbG">
            <node concept="37vLTw" id="2D2$TMZuPAV" role="2Oq$k0">
              <ref role="3cqZAo" node="2D2$TMZuJ42" resolve="ccMenuTimer" />
            </node>
            <node concept="liA8E" id="2D2$TMZuQCX" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ69d" role="jymVt" />
    <node concept="3clFb_" id="2D2$TMZu5kA" role="jymVt">
      <property role="TrG5h" value="processCCMenu" />
      <node concept="3cqZAl" id="2D2$TMZu5kC" role="3clF45" />
      <node concept="3Tm1VV" id="2D2$TMZu5kD" role="1B3o_S" />
      <node concept="3clFbS" id="2D2$TMZu5kE" role="3clF47">
        <node concept="3clFbJ" id="1MWbHmSjLl5" role="3cqZAp">
          <node concept="3clFbS" id="1MWbHmSjLl7" role="3clFbx">
            <node concept="3cpWs6" id="1MWbHmSjUjZ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1MWbHmSjTnr" role="3clFbw">
            <node concept="10Nm6u" id="1MWbHmSjTsR" role="3uHU7w" />
            <node concept="37vLTw" id="1MWbHmSjRIu" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2D2$TMZsa8O" role="3cqZAp">
          <node concept="3cpWsn" id="2D2$TMZsa8P" role="3cpWs9">
            <property role="TrG5h" value="chooser" />
            <node concept="3uibUv" id="2D2$TMZs0nH" role="1tU5fm">
              <ref role="3uigEE" to="6lvu:~NodeSubstituteChooser" resolve="NodeSubstituteChooser" />
            </node>
            <node concept="2OqwBi" id="2D2$TMZsa8Q" role="33vP2m">
              <node concept="37vLTw" id="2D2$TMZsa8R" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
              </node>
              <node concept="liA8E" id="2D2$TMZsa8S" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getNodeSubstituteChooser()" resolve="getNodeSubstituteChooser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2D2$TMZrYet" role="3cqZAp">
          <node concept="3cpWsn" id="2D2$TMZrYeu" role="3cpWs9">
            <property role="TrG5h" value="chooserIsVisible" />
            <node concept="10P_77" id="2D2$TMZrVfe" role="1tU5fm" />
            <node concept="2OqwBi" id="2D2$TMZrYev" role="33vP2m">
              <node concept="37vLTw" id="2D2$TMZsa8T" role="2Oq$k0">
                <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
              </node>
              <node concept="liA8E" id="2D2$TMZrYez" role="2OqNvi">
                <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.isVisible()" resolve="isVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MWbHmSi2gF" role="3cqZAp">
          <node concept="3cpWsn" id="1MWbHmSi2gI" role="3cpWs9">
            <property role="TrG5h" value="selectedIndex" />
            <node concept="10Oyi0" id="1MWbHmSi2gD" role="1tU5fm" />
            <node concept="3K4zz7" id="1MWbHmSi4VQ" role="33vP2m">
              <node concept="2OqwBi" id="1MWbHmSi5qF" role="3K4E3e">
                <node concept="37vLTw" id="1MWbHmSi5ag" role="2Oq$k0">
                  <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
                </node>
                <node concept="1PvZjq" id="1MWbHmSi5Cn" role="2OqNvi">
                  <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getSelectionIndex()" resolve="getSelectionIndex" />
                </node>
              </node>
              <node concept="3cmrfG" id="1MWbHmSi5XJ" role="3K4GZi">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="1MWbHmSi4vm" role="3K4Cdx">
                <ref role="3cqZAo" node="2D2$TMZrYeu" resolve="chooserIsVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2D2$TMZx6$b" role="3cqZAp">
          <node concept="3clFbS" id="2D2$TMZx6$d" role="3clFbx">
            <node concept="3cpWs6" id="2D2$TMZxadV" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2D2$TMZx978" role="3clFbw">
            <node concept="37vLTw" id="1MWbHmSikyL" role="3uHU7w">
              <ref role="3cqZAo" node="1MWbHmShPqI" resolve="lastSelectedIndex" />
            </node>
            <node concept="37vLTw" id="1MWbHmSihG8" role="3uHU7B">
              <ref role="3cqZAo" node="1MWbHmSi2gI" resolve="selectedIndex" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2D2$TMZs3qH" role="3cqZAp">
          <node concept="3cpWsn" id="2D2$TMZs3qI" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="2D2$TMZs3qJ" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="2D2$TMZs3qK" role="33vP2m">
              <node concept="1pGfFk" id="2D2$TMZs3qL" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2D2$TMZrIfR" role="3cqZAp">
          <node concept="3clFbS" id="2D2$TMZrIfT" role="3clFbx">
            <node concept="1QHqEK" id="2D2$TMZw2Wf" role="3cqZAp">
              <node concept="1QHqEC" id="2D2$TMZw2Wh" role="1QHqEI">
                <node concept="3clFbS" id="2D2$TMZw2Wj" role="1bW5cS">
                  <node concept="3clFbF" id="2D2$TMZs3qM" role="3cqZAp">
                    <node concept="2OqwBi" id="2D2$TMZs3qN" role="3clFbG">
                      <node concept="37vLTw" id="2D2$TMZs3qO" role="2Oq$k0">
                        <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                      </node>
                      <node concept="liA8E" id="2D2$TMZs3qP" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                        <node concept="Xl_RD" id="2D2$TMZs3qQ" role="37wK5m">
                          <property role="Xl_RC" value="type" />
                        </node>
                        <node concept="Xl_RD" id="2D2$TMZs3qR" role="37wK5m">
                          <property role="Xl_RC" value="ccmenu" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2D2$TMZvqLj" role="3cqZAp">
                    <node concept="3cpWsn" id="2D2$TMZvqLk" role="3cpWs9">
                      <property role="TrG5h" value="contextCell" />
                      <node concept="3uibUv" id="2D2$TMZvq$3" role="1tU5fm">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                      <node concept="2OqwBi" id="2D2$TMZvqLl" role="33vP2m">
                        <node concept="37vLTw" id="2D2$TMZvqLm" role="2Oq$k0">
                          <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
                        </node>
                        <node concept="1PnCL0" id="2D2$TMZvqLn" role="2OqNvi">
                          <ref role="2Oxat5" to="6lvu:~NodeSubstituteChooser.myContextCell" resolve="myContextCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2D2$TMZs5E1" role="3cqZAp">
                    <node concept="2OqwBi" id="2D2$TMZs5E2" role="3clFbG">
                      <node concept="37vLTw" id="2D2$TMZs5E3" role="2Oq$k0">
                        <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                      </node>
                      <node concept="liA8E" id="2D2$TMZs5E4" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,double)" resolve="put" />
                        <node concept="Xl_RD" id="2D2$TMZs5E5" role="37wK5m">
                          <property role="Xl_RC" value="x" />
                        </node>
                        <node concept="3cpWs3" id="2D2$TMZvwMC" role="37wK5m">
                          <node concept="2OqwBi" id="2D2$TMZvxot" role="3uHU7w">
                            <node concept="37vLTw" id="2D2$TMZvx1_" role="2Oq$k0">
                              <ref role="3cqZAo" node="2D2$TMZvqLk" resolve="contextCell" />
                            </node>
                            <node concept="liA8E" id="2D2$TMZvx_g" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.getLeftInset()" resolve="getLeftInset" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2D2$TMZvvD4" role="3uHU7B">
                            <node concept="37vLTw" id="2D2$TMZvvsr" role="2Oq$k0">
                              <ref role="3cqZAo" node="2D2$TMZvqLk" resolve="contextCell" />
                            </node>
                            <node concept="liA8E" id="2D2$TMZvvOW" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2D2$TMZs7eZ" role="3cqZAp">
                    <node concept="2OqwBi" id="2D2$TMZs7f0" role="3clFbG">
                      <node concept="37vLTw" id="2D2$TMZs7f1" role="2Oq$k0">
                        <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                      </node>
                      <node concept="liA8E" id="2D2$TMZs7f2" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                        <node concept="Xl_RD" id="2D2$TMZs7f3" role="37wK5m">
                          <property role="Xl_RC" value="y" />
                        </node>
                        <node concept="3cpWs3" id="2D2$TMZv_UH" role="37wK5m">
                          <node concept="2OqwBi" id="2D2$TMZvAnx" role="3uHU7w">
                            <node concept="37vLTw" id="2D2$TMZvA8n" role="2Oq$k0">
                              <ref role="3cqZAo" node="2D2$TMZvqLk" resolve="contextCell" />
                            </node>
                            <node concept="liA8E" id="2D2$TMZvAMB" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2D2$TMZvzur" role="3uHU7B">
                            <node concept="37vLTw" id="2D2$TMZvy4V" role="2Oq$k0">
                              <ref role="3cqZAo" node="2D2$TMZvqLk" resolve="contextCell" />
                            </node>
                            <node concept="liA8E" id="2D2$TMZvzR8" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1MWbHmShkPE" role="3cqZAp">
                    <node concept="2OqwBi" id="1MWbHmShkPF" role="3clFbG">
                      <node concept="37vLTw" id="1MWbHmShkPG" role="2Oq$k0">
                        <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                      </node>
                      <node concept="liA8E" id="1MWbHmShkPH" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                        <node concept="Xl_RD" id="1MWbHmShkPI" role="37wK5m">
                          <property role="Xl_RC" value="selectionIndex" />
                        </node>
                        <node concept="2OqwBi" id="1MWbHmShqNJ" role="37wK5m">
                          <node concept="37vLTw" id="1MWbHmShqf1" role="2Oq$k0">
                            <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
                          </node>
                          <node concept="1PvZjq" id="1MWbHmShuQw" role="2OqNvi">
                            <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getSelectionIndex()" resolve="getSelectionIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2D2$TMZthab" role="3cqZAp">
                    <node concept="3cpWsn" id="2D2$TMZthac" role="3cpWs9">
                      <property role="TrG5h" value="pattern" />
                      <node concept="17QB3L" id="2D2$TMZtj_9" role="1tU5fm" />
                      <node concept="2OqwBi" id="2D2$TMZthad" role="33vP2m">
                        <node concept="2OqwBi" id="2D2$TMZthae" role="2Oq$k0">
                          <node concept="37vLTw" id="2D2$TMZthaf" role="2Oq$k0">
                            <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
                          </node>
                          <node concept="liA8E" id="2D2$TMZthag" role="2OqNvi">
                            <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getPatternEditor()" resolve="getPatternEditor" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2D2$TMZthah" role="2OqNvi">
                          <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.getPattern()" resolve="getPattern" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2D2$TMZs849" role="3cqZAp">
                    <node concept="2OqwBi" id="2D2$TMZs84a" role="3clFbG">
                      <node concept="37vLTw" id="2D2$TMZs84b" role="2Oq$k0">
                        <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                      </node>
                      <node concept="liA8E" id="2D2$TMZs84c" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                        <node concept="Xl_RD" id="2D2$TMZs84d" role="37wK5m">
                          <property role="Xl_RC" value="pattern" />
                        </node>
                        <node concept="37vLTw" id="2D2$TMZthai" role="37wK5m">
                          <ref role="3cqZAo" node="2D2$TMZthac" resolve="pattern" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1MWbHmSiWDp" role="3cqZAp">
                    <node concept="3clFbS" id="1MWbHmSiWDr" role="3clFbx">
                      <node concept="3cpWs8" id="2D2$TMZsqLX" role="3cqZAp">
                        <node concept="3cpWsn" id="2D2$TMZsqLY" role="3cpWs9">
                          <property role="TrG5h" value="actions" />
                          <node concept="_YKpA" id="2D2$TMZsuJM" role="1tU5fm">
                            <node concept="3uibUv" id="2D2$TMZsuJO" role="_ZDj9">
                              <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2D2$TMZsqLZ" role="33vP2m">
                            <node concept="37vLTw" id="2D2$TMZsqM0" role="2Oq$k0">
                              <ref role="3cqZAo" node="2D2$TMZsa8P" resolve="chooser" />
                            </node>
                            <node concept="1PvZjq" id="2D2$TMZsqM1" role="2OqNvi">
                              <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getSubstituteActions()" resolve="getSubstituteActions" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2D2$TMZs93Q" role="3cqZAp">
                        <node concept="2OqwBi" id="2D2$TMZs93R" role="3clFbG">
                          <node concept="37vLTw" id="2D2$TMZs93S" role="2Oq$k0">
                            <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                          </node>
                          <node concept="liA8E" id="2D2$TMZs93T" role="2OqNvi">
                            <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                            <node concept="Xl_RD" id="2D2$TMZs93U" role="37wK5m">
                              <property role="Xl_RC" value="actions" />
                            </node>
                            <node concept="2ShNRf" id="2D2$TMZsZyI" role="37wK5m">
                              <node concept="1pGfFk" id="2D2$TMZsZyJ" role="2ShVmc">
                                <ref role="37wK5l" to="mxf6:~JSONArray.&lt;init&gt;(java.util.Collection)" resolve="JSONArray" />
                                <node concept="2OqwBi" id="2D2$TMZvO3C" role="37wK5m">
                                  <node concept="2OqwBi" id="2D2$TMZsZyK" role="2Oq$k0">
                                    <node concept="37vLTw" id="2D2$TMZsZyL" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2D2$TMZsqLY" resolve="actions" />
                                    </node>
                                    <node concept="3$u5V9" id="2D2$TMZsZyM" role="2OqNvi">
                                      <node concept="1bVj0M" id="2D2$TMZsZyN" role="23t8la">
                                        <node concept="3clFbS" id="2D2$TMZsZyO" role="1bW5cS">
                                          <node concept="3cpWs8" id="2D2$TMZt38$" role="3cqZAp">
                                            <node concept="3cpWsn" id="2D2$TMZt38_" role="3cpWs9">
                                              <property role="TrG5h" value="o" />
                                              <node concept="3uibUv" id="2D2$TMZt2OX" role="1tU5fm">
                                                <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                                              </node>
                                              <node concept="2ShNRf" id="2D2$TMZt38A" role="33vP2m">
                                                <node concept="1pGfFk" id="2D2$TMZt38B" role="2ShVmc">
                                                  <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="2D2$TMZt4Xk" role="3cqZAp">
                                            <node concept="2OqwBi" id="2D2$TMZt5cW" role="3clFbG">
                                              <node concept="37vLTw" id="2D2$TMZt4Xi" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2D2$TMZt38_" resolve="o" />
                                              </node>
                                              <node concept="liA8E" id="2D2$TMZt5Kt" role="2OqNvi">
                                                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                                                <node concept="Xl_RD" id="2D2$TMZt6LC" role="37wK5m">
                                                  <property role="Xl_RC" value="pattern" />
                                                </node>
                                                <node concept="2OqwBi" id="2D2$TMZtdPn" role="37wK5m">
                                                  <node concept="37vLTw" id="2D2$TMZtbiQ" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2D2$TMZsZyS" resolve="it" />
                                                  </node>
                                                  <node concept="liA8E" id="2D2$TMZtezp" role="2OqNvi">
                                                    <ref role="37wK5l" to="f4zo:~SubstituteAction.getMatchingText(java.lang.String)" resolve="getMatchingText" />
                                                    <node concept="37vLTw" id="2D2$TMZtlM0" role="37wK5m">
                                                      <ref role="3cqZAo" node="2D2$TMZthac" resolve="pattern" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="2D2$TMZt7VC" role="3cqZAp">
                                            <node concept="2OqwBi" id="2D2$TMZt7VD" role="3clFbG">
                                              <node concept="37vLTw" id="2D2$TMZt7VE" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2D2$TMZt38_" resolve="o" />
                                              </node>
                                              <node concept="liA8E" id="2D2$TMZt7VF" role="2OqNvi">
                                                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                                                <node concept="Xl_RD" id="2D2$TMZt7VG" role="37wK5m">
                                                  <property role="Xl_RC" value="description" />
                                                </node>
                                                <node concept="2OqwBi" id="2D2$TMZtmMU" role="37wK5m">
                                                  <node concept="37vLTw" id="2D2$TMZtfVz" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2D2$TMZsZyS" resolve="it" />
                                                  </node>
                                                  <node concept="liA8E" id="2D2$TMZtnzq" role="2OqNvi">
                                                    <ref role="37wK5l" to="f4zo:~SubstituteAction.getDescriptionText(java.lang.String)" resolve="getDescriptionText" />
                                                    <node concept="37vLTw" id="2D2$TMZtokH" role="37wK5m">
                                                      <ref role="3cqZAo" node="2D2$TMZthac" resolve="pattern" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="2D2$TMZsZyP" role="3cqZAp">
                                            <node concept="37vLTw" id="2D2$TMZt38C" role="3clFbG">
                                              <ref role="3cqZAo" node="2D2$TMZt38_" resolve="o" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="2D2$TMZsZyS" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="2D2$TMZsZyT" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="2D2$TMZvPAp" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="1MWbHmSj0k7" role="3clFbw">
                      <node concept="3cmrfG" id="1MWbHmSj0pz" role="3uHU7w">
                        <property role="3cmrfH" value="-1" />
                      </node>
                      <node concept="37vLTw" id="1MWbHmSiY9P" role="3uHU7B">
                        <ref role="3cqZAo" node="1MWbHmShPqI" resolve="lastSelectedIndex" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2D2$TMZw43N" role="ukAjM">
                <node concept="37vLTw" id="2D2$TMZw3JK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                </node>
                <node concept="liA8E" id="2D2$TMZw4xS" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1MWbHmSiwko" role="3clFbw">
            <node concept="3cmrfG" id="1MWbHmSiwpO" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="1MWbHmSiy0_" role="3uHU7B">
              <ref role="3cqZAo" node="1MWbHmSi2gI" resolve="selectedIndex" />
            </node>
          </node>
          <node concept="9aQIb" id="2D2$TMZxeKY" role="9aQIa">
            <node concept="3clFbS" id="2D2$TMZxeKZ" role="9aQI4">
              <node concept="3clFbF" id="2D2$TMZxqNI" role="3cqZAp">
                <node concept="2OqwBi" id="2D2$TMZxqNJ" role="3clFbG">
                  <node concept="37vLTw" id="2D2$TMZxqNK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
                  </node>
                  <node concept="liA8E" id="2D2$TMZxqNL" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                    <node concept="Xl_RD" id="2D2$TMZxqNM" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="Xl_RD" id="2D2$TMZxqNN" role="37wK5m">
                      <property role="Xl_RC" value="ccmenu.hide" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MWbHmSin$C" role="3cqZAp">
          <node concept="37vLTI" id="1MWbHmSiqTr" role="3clFbG">
            <node concept="37vLTw" id="1MWbHmSirSR" role="37vLTx">
              <ref role="3cqZAo" node="1MWbHmSi2gI" resolve="selectedIndex" />
            </node>
            <node concept="37vLTw" id="1MWbHmSin$A" role="37vLTJ">
              <ref role="3cqZAo" node="1MWbHmShPqI" resolve="lastSelectedIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2D2$TMZxkOo" role="3cqZAp" />
        <node concept="3clFbF" id="1MWbHmSlwuj" role="3cqZAp">
          <node concept="1rXfSq" id="1MWbHmSlwuh" role="3clFbG">
            <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
            <node concept="37vLTw" id="1MWbHmSlyTN" role="37wK5m">
              <ref role="3cqZAo" node="2D2$TMZs3qI" resolve="message" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MWbHmSl509" role="jymVt" />
    <node concept="3clFb_" id="1MWbHmSl9Am" role="jymVt">
      <property role="TrG5h" value="sendMessage" />
      <node concept="37vLTG" id="1MWbHmSlkWg" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="1MWbHmSlCzX" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1MWbHmSl9Ao" role="3clF45" />
      <node concept="3Tm1VV" id="1MWbHmSl9Ap" role="1B3o_S" />
      <node concept="3clFbS" id="1MWbHmSl9Aq" role="3clF47">
        <node concept="3cpWs8" id="1MWbHmSlrpw" role="3cqZAp">
          <node concept="3cpWsn" id="1MWbHmSlrpx" role="3cpWs9">
            <property role="TrG5h" value="messageStr" />
            <node concept="17QB3L" id="1MWbHmSlrpy" role="1tU5fm" />
            <node concept="2OqwBi" id="1MWbHmSlrpz" role="33vP2m">
              <node concept="37vLTw" id="1MWbHmSlrp$" role="2Oq$k0">
                <ref role="3cqZAo" node="1MWbHmSlkWg" resolve="message" />
              </node>
              <node concept="liA8E" id="1MWbHmSlrp_" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MWbHmSlrpA" role="3cqZAp" />
        <node concept="RRSsy" id="1MWbHmSlrpB" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="3cpWs3" id="1MWbHmSlrpC" role="RRSoy">
            <node concept="2YIFZM" id="1MWbHmSlrpD" role="3uHU7B">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
            </node>
            <node concept="Xl_RD" id="1MWbHmSlrpE" role="3uHU7w">
              <property role="Xl_RC" value=" sending" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MWbHmSlrpF" role="3cqZAp" />
        <node concept="SfApY" id="1MWbHmSlrpG" role="3cqZAp">
          <node concept="3clFbS" id="1MWbHmSlrpH" role="SfCbr">
            <node concept="3clFbF" id="1MWbHmSlrpI" role="3cqZAp">
              <node concept="2OqwBi" id="1MWbHmSlrpJ" role="3clFbG">
                <node concept="2OqwBi" id="1MWbHmSlrpK" role="2Oq$k0">
                  <node concept="37vLTw" id="1MWbHmSlrpL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
                  </node>
                  <node concept="liA8E" id="1MWbHmSlrpM" role="2OqNvi">
                    <ref role="37wK5l" to="fz1u:~Session.getRemote()" resolve="getRemote" />
                  </node>
                </node>
                <node concept="liA8E" id="1MWbHmSlrpN" role="2OqNvi">
                  <ref role="37wK5l" to="fz1u:~RemoteEndpoint.sendString(java.lang.String)" resolve="sendString" />
                  <node concept="37vLTw" id="1MWbHmSlrpO" role="37wK5m">
                    <ref role="3cqZAo" node="1MWbHmSlrpx" resolve="messageStr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1MWbHmSlrpP" role="TEbGg">
            <node concept="3cpWsn" id="1MWbHmSlrpQ" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1MWbHmSlrpR" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="1MWbHmSlrpS" role="TDEfX">
              <node concept="RRSsy" id="1MWbHmSlrpT" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="1MWbHmSlrpU" role="RRSoy" />
                <node concept="37vLTw" id="1MWbHmSlrpV" role="RRSow">
                  <ref role="3cqZAo" node="1MWbHmSlrpQ" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="1MWbHmSlrpW" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="3cpWs3" id="1MWbHmSlrpX" role="RRSoy">
            <node concept="2YIFZM" id="1MWbHmSlrpY" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="Xl_RD" id="1MWbHmSlrpZ" role="3uHU7w">
              <property role="Xl_RC" value=" sent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MWbHmSlOX$" role="jymVt" />
    <node concept="3clFb_" id="1MWbHmSlE5Z" role="jymVt">
      <property role="TrG5h" value="sendMessage" />
      <node concept="37vLTG" id="1MWbHmSlE60" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="1MWbHmSlIaW" role="1tU5fm">
          <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
        </node>
      </node>
      <node concept="3cqZAl" id="1MWbHmSlE62" role="3clF45" />
      <node concept="3Tm1VV" id="1MWbHmSlE63" role="1B3o_S" />
      <node concept="3clFbS" id="1MWbHmSlE64" role="3clF47">
        <node concept="3clFbF" id="1MWbHmSlNep" role="3cqZAp">
          <node concept="1rXfSq" id="1MWbHmSlNeo" role="3clFbG">
            <ref role="37wK5l" node="1MWbHmSl9Am" resolve="sendMessage" />
            <node concept="2OqwBi" id="1MWbHmSlNJb" role="37wK5m">
              <node concept="37vLTw" id="1MWbHmSlNzP" role="2Oq$k0">
                <ref role="3cqZAo" node="1MWbHmSlE60" resolve="message" />
              </node>
              <node concept="liA8E" id="1MWbHmSlO5S" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2D2$TMZu0Pt" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ69e" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <node concept="3Tm6S6" id="1qbCJZsJ69f" role="1B3o_S" />
      <node concept="3uibUv" id="1qbCJZsJ69g" role="3clF45">
        <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
      </node>
      <node concept="3clFbS" id="1qbCJZsJ69h" role="3clF47">
        <node concept="3clFbJ" id="1qbCJZsJ69i" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ69j" role="3clFbx">
            <node concept="3cpWs8" id="1qbCJZsJ69k" role="3cqZAp">
              <node concept="3cpWsn" id="1qbCJZsJ69l" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="1qbCJZsJ69m" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="1qbCJZsJ69n" role="33vP2m">
                  <node concept="37vLTw" id="1qbCJZsJ69o" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ69p" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1qbCJZsJ69q" role="3cqZAp" />
            <node concept="1QHqEK" id="1qbCJZsJ69r" role="3cqZAp">
              <node concept="1QHqEC" id="1qbCJZsJ69s" role="1QHqEI">
                <node concept="3clFbS" id="1qbCJZsJ69t" role="1bW5cS">
                  <node concept="3clFbF" id="1qbCJZsJ6ad" role="3cqZAp">
                    <node concept="37vLTI" id="1qbCJZsJ6ae" role="3clFbG">
                      <node concept="2ShNRf" id="1qbCJZsJ6af" role="37vLTx">
                        <node concept="1pGfFk" id="1qbCJZsJ6ag" role="2ShVmc">
                          <ref role="37wK5l" node="6xm2RBlmxP4" resolve="ServerEditorComponent" />
                          <node concept="37vLTw" id="7trMQm40pAd" role="37wK5m">
                            <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
                          </node>
                          <node concept="37vLTw" id="1qbCJZsJ6ai" role="37wK5m">
                            <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6aj" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1qbCJZsJ6ak" role="3cqZAp">
                    <node concept="2OqwBi" id="1qbCJZsJ6al" role="3clFbG">
                      <node concept="2OqwBi" id="1qbCJZsJ6am" role="2Oq$k0">
                        <node concept="37vLTw" id="1qbCJZsJ6an" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="1qbCJZsJ6ao" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6ap" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.addSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="addSelectionListener" />
                        <node concept="2ShNRf" id="1qbCJZsJ6aq" role="37wK5m">
                          <node concept="YeOm9" id="1qbCJZsJ6ar" role="2ShVmc">
                            <node concept="1Y3b0j" id="1qbCJZsJ6as" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <ref role="1Y3XeK" to="lwvz:~SelectionListener" resolve="SelectionListener" />
                              <node concept="3Tm1VV" id="1qbCJZsJ6at" role="1B3o_S" />
                              <node concept="3clFb_" id="1qbCJZsJ6au" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="selectionChanged" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tm1VV" id="1qbCJZsJ6av" role="1B3o_S" />
                                <node concept="3cqZAl" id="1qbCJZsJ6aw" role="3clF45" />
                                <node concept="37vLTG" id="1qbCJZsJ6ax" role="3clF46">
                                  <property role="TrG5h" value="p0" />
                                  <node concept="3uibUv" id="1qbCJZsJ6ay" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="1qbCJZsJ6az" role="3clF46">
                                  <property role="TrG5h" value="oldSelection" />
                                  <node concept="3uibUv" id="1qbCJZsJ6a$" role="1tU5fm">
                                    <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="1qbCJZsJ6a_" role="3clF46">
                                  <property role="TrG5h" value="newSelection" />
                                  <node concept="3uibUv" id="1qbCJZsJ6aA" role="1tU5fm">
                                    <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="1qbCJZsJ6aB" role="3clF47">
                                  <node concept="3clFbF" id="1qbCJZsJ6aC" role="3cqZAp">
                                    <node concept="2YIFZM" id="1qbCJZsJ6aD" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="1qbCJZsJ6aE" role="37wK5m">
                                        <node concept="3clFbS" id="1qbCJZsJ6aF" role="1bW5cS">
                                          <node concept="3clFbF" id="1qbCJZsJ6aG" role="3cqZAp">
                                            <node concept="1rXfSq" id="1qbCJZsJ6aH" role="3clFbG">
                                              <ref role="37wK5l" node="1qbCJZsJ6f0" resolve="renderSelections" />
                                              <node concept="37vLTw" id="1qbCJZsJ6aI" role="37wK5m">
                                                <ref role="3cqZAo" node="1qbCJZsJ6az" resolve="oldSelection" />
                                              </node>
                                              <node concept="37vLTw" id="1qbCJZsJ6aJ" role="37wK5m">
                                                <ref role="3cqZAo" node="1qbCJZsJ6a_" resolve="newSelection" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="1qbCJZsJ6aK" role="3cqZAp">
                                            <node concept="1rXfSq" id="1qbCJZsJ6aL" role="3clFbG">
                                              <ref role="37wK5l" node="1qbCJZsJ6d4" resolve="renderView" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1qbCJZsJ6aM" role="3cqZAp">
                                    <node concept="2YIFZM" id="1qbCJZsJ6aN" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="1qbCJZsJ6aO" role="37wK5m">
                                        <node concept="3clFbS" id="1qbCJZsJ6aP" role="1bW5cS">
                                          <node concept="3clFbF" id="1qbCJZsJ6aQ" role="3cqZAp">
                                            <node concept="1rXfSq" id="1qbCJZsJ6aR" role="3clFbG">
                                              <ref role="37wK5l" node="1qbCJZsJ6bn" resolve="renderAll" />
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
                  <node concept="3clFbF" id="1qbCJZsJ6aS" role="3cqZAp">
                    <node concept="2OqwBi" id="1qbCJZsJ6aT" role="3clFbG">
                      <node concept="2OqwBi" id="1qbCJZsJ6aU" role="2Oq$k0">
                        <node concept="37vLTw" id="1qbCJZsJ6aV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="1qbCJZsJ6aW" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getUpdater()" resolve="getUpdater" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6aX" role="2OqNvi">
                        <ref role="37wK5l" to="22ra:~Updater.addListener(jetbrains.mps.openapi.editor.update.UpdaterListener)" resolve="addListener" />
                        <node concept="2ShNRf" id="1qbCJZsJ6aY" role="37wK5m">
                          <node concept="YeOm9" id="1qbCJZsJ6aZ" role="2ShVmc">
                            <node concept="1Y3b0j" id="1qbCJZsJ6b0" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="22ra:~UpdaterListenerAdapter.&lt;init&gt;()" resolve="UpdaterListenerAdapter" />
                              <ref role="1Y3XeK" to="22ra:~UpdaterListenerAdapter" resolve="UpdaterListenerAdapter" />
                              <node concept="3Tm1VV" id="1qbCJZsJ6b1" role="1B3o_S" />
                              <node concept="3clFb_" id="1qbCJZsJ6b2" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="editorUpdated" />
                                <property role="DiZV1" value="false" />
                                <property role="od$2w" value="false" />
                                <node concept="3Tm1VV" id="1qbCJZsJ6b3" role="1B3o_S" />
                                <node concept="3cqZAl" id="1qbCJZsJ6b4" role="3clF45" />
                                <node concept="37vLTG" id="1qbCJZsJ6b5" role="3clF46">
                                  <property role="TrG5h" value="p0" />
                                  <node concept="3uibUv" id="1qbCJZsJ6b6" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="1qbCJZsJ6b7" role="3clF47">
                                  <node concept="3clFbF" id="1qbCJZsJ6b8" role="3cqZAp">
                                    <node concept="2YIFZM" id="1qbCJZsJ6b9" role="3clFbG">
                                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                      <node concept="1bVj0M" id="1qbCJZsJ6ba" role="37wK5m">
                                        <node concept="3clFbS" id="1qbCJZsJ6bb" role="1bW5cS">
                                          <node concept="3clFbF" id="1qbCJZsJ6bc" role="3cqZAp">
                                            <node concept="1rXfSq" id="1qbCJZsJ6bd" role="3clFbG">
                                              <ref role="37wK5l" node="1qbCJZsJ6bn" resolve="renderAll" />
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
              <node concept="37vLTw" id="1qbCJZsJ6be" role="ukAjM">
                <ref role="3cqZAo" node="1qbCJZsJ69l" resolve="repo" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1qbCJZsJ6bf" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6bg" role="3uHU7w" />
            <node concept="37vLTw" id="1qbCJZsJ6bh" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1qbCJZsJ6bi" role="3cqZAp" />
        <node concept="3clFbF" id="1qbCJZsJ6bj" role="3cqZAp">
          <node concept="37vLTw" id="1qbCJZsJ6bk" role="3clFbG">
            <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6bl" role="jymVt" />
    <node concept="2tJIrI" id="1qbCJZsJ6bm" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6bn" role="jymVt">
      <property role="TrG5h" value="renderAll" />
      <node concept="3cqZAl" id="1qbCJZsJ6bo" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6bp" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6bq" role="3clF47">
        <node concept="3clFbF" id="1qbCJZsJ6br" role="3cqZAp">
          <node concept="1rXfSq" id="1qbCJZsJ6bs" role="3clFbG">
            <ref role="37wK5l" node="1qbCJZsJ6bv" resolve="renderAll" />
            <node concept="3clFbT" id="1qbCJZsJ6bt" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6bu" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6bv" role="jymVt">
      <property role="TrG5h" value="renderAll" />
      <node concept="37vLTG" id="1qbCJZsJ6bw" role="3clF46">
        <property role="TrG5h" value="force" />
        <node concept="10P_77" id="1qbCJZsJ6bx" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6by" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6bz" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6b$" role="3clF47">
        <node concept="3clFbJ" id="1qbCJZsJ6b_" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6bA" role="3clFbx">
            <node concept="3cpWs6" id="1qbCJZsJ6bB" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1qbCJZsKqua" role="3clFbw">
            <node concept="2OqwBi" id="1qbCJZsKquc" role="3fr31v">
              <node concept="37vLTw" id="1qbCJZsKqud" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
              <node concept="liA8E" id="1qbCJZsKque" role="2OqNvi">
                <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="16LO$McC0p3" role="3cqZAp">
          <node concept="3clFbS" id="16LO$McC0p5" role="3clFbx">
            <node concept="3cpWs6" id="16LO$McDUKN" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="16LO$McDijK" role="3clFbw">
            <node concept="10Nm6u" id="16LO$McDipd" role="3uHU7w" />
            <node concept="2OqwBi" id="16LO$McC3k7" role="3uHU7B">
              <node concept="1rXfSq" id="16LO$McC1S7" role="2Oq$k0">
                <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
              </node>
              <node concept="liA8E" id="16LO$McDe5u" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6bF" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6bG" role="3clFbG">
            <node concept="1rXfSq" id="1qbCJZsJ6bH" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6bI" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="1qbCJZsJ6bJ" role="37wK5m">
                <node concept="liA8E" id="1qbCJZsJ6bK" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="1qbCJZsJ6bL" role="2Oq$k0">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6bM" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6bN" role="3clFbG">
            <node concept="liA8E" id="1qbCJZsJ6bO" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6bP" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1qbCJZsJ6bQ" role="3cqZAp" />
        <node concept="3cpWs8" id="1qbCJZsJ6bR" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6bS" role="3cpWs9">
            <property role="TrG5h" value="png" />
            <node concept="17QB3L" id="1qbCJZsJ6bT" role="1tU5fm" />
            <node concept="2YIFZM" id="4qNw5QUztXL" role="33vP2m">
              <ref role="37wK5l" to="vyue:4qNw5QUzlqD" resolve="toPngBase64" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
              <node concept="1rXfSq" id="4qNw5QUztXM" role="37wK5m">
                <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
              </node>
              <node concept="10Nm6u" id="4qNw5QUztXN" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6bX" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6bY" role="3clFbx">
            <node concept="3clFbF" id="1qbCJZsJ6bZ" role="3cqZAp">
              <node concept="37vLTI" id="1qbCJZsJ6c0" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6c1" role="37vLTx">
                  <ref role="3cqZAo" node="1qbCJZsJ6bS" resolve="png" />
                </node>
                <node concept="37vLTw" id="1qbCJZsJ6c2" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ67j" resolve="lastFullPng" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1qbCJZsJ6c3" role="3cqZAp">
              <node concept="3cpWsn" id="1qbCJZsJ6c4" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="3uibUv" id="6GOzicSf2Q2" role="1tU5fm">
                  <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                </node>
                <node concept="2ShNRf" id="1qbCJZsJ6c6" role="33vP2m">
                  <node concept="1pGfFk" id="6GOzicSf39t" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6c8" role="3cqZAp">
              <node concept="2OqwBi" id="1qbCJZsJ6c9" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6ca" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6c4" resolve="message" />
                </node>
                <node concept="liA8E" id="1qbCJZsJ6cb" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                  <node concept="Xl_RD" id="1qbCJZsJ6cc" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                  </node>
                  <node concept="Xl_RD" id="1qbCJZsJ6cd" role="37wK5m">
                    <property role="Xl_RC" value="image.full" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1MWbHmSlBdz" role="3cqZAp" />
            <node concept="3clFbF" id="1MWbHmSlAik" role="3cqZAp">
              <node concept="1rXfSq" id="1MWbHmSlAii" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                <node concept="37vLTw" id="1MWbHmSlBbK" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6c4" resolve="message" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MWbHmSlVTi" role="3cqZAp">
              <node concept="1rXfSq" id="1MWbHmSlVTg" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSl9Am" resolve="sendMessage" />
                <node concept="37vLTw" id="1MWbHmSlX3V" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6bS" resolve="png" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6cU" role="3cqZAp">
              <node concept="37vLTI" id="1qbCJZsJ6cV" role="3clFbG">
                <node concept="3cmrfG" id="1qbCJZsJ6cW" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="1qbCJZsJ6cX" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1qbCJZsJ6cY" role="3clFbw">
            <node concept="37vLTw" id="1qbCJZsJ6cZ" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ6bw" resolve="force" />
            </node>
            <node concept="17QLQc" id="1qbCJZsJ6d0" role="3uHU7w">
              <node concept="37vLTw" id="1qbCJZsJ6d1" role="3uHU7w">
                <ref role="3cqZAo" node="1qbCJZsJ67j" resolve="lastFullPng" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6d2" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6bS" resolve="png" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6d3" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6d4" role="jymVt">
      <property role="TrG5h" value="renderView" />
      <node concept="3cqZAl" id="1qbCJZsJ6d5" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6d6" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6d7" role="3clF47">
        <node concept="3clFbJ" id="1qbCJZsJ6d8" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6d9" role="3clFbx">
            <node concept="3cpWs6" id="1qbCJZsJ6da" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1qbCJZsKST$" role="3clFbw">
            <node concept="2OqwBi" id="1qbCJZsKSTA" role="3fr31v">
              <node concept="37vLTw" id="1qbCJZsKSTB" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
              <node concept="liA8E" id="1qbCJZsKSTC" role="2OqNvi">
                <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6de" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6df" role="3clFbG">
            <node concept="liA8E" id="1qbCJZsJ6dg" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="1qbCJZsJ6dh" role="37wK5m">
                <node concept="liA8E" id="1qbCJZsJ6di" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="1qbCJZsJ6dj" role="2Oq$k0">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6dk" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6dl" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6dm" role="3clFbG">
            <node concept="liA8E" id="1qbCJZsJ6dn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6do" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1qbCJZsJ6dp" role="3cqZAp" />
        <node concept="3cpWs8" id="1qbCJZsJ6dq" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6dr" role="3cpWs9">
            <property role="TrG5h" value="clip" />
            <node concept="3uibUv" id="1qbCJZsJ6ds" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="10Nm6u" id="1qbCJZsJ6dt" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6du" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6dv" role="3clFbx">
            <node concept="3clFbF" id="1qbCJZsJ6dw" role="3cqZAp">
              <node concept="37vLTI" id="1qbCJZsJ6dx" role="3clFbG">
                <node concept="2ShNRf" id="1qbCJZsJ6dy" role="37vLTx">
                  <node concept="1pGfFk" id="1qbCJZsJ6dz" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="3cmrfG" id="1qbCJZsJ6d$" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1LFfDK" id="1qbCJZsJ6d_" role="37wK5m">
                      <node concept="3cmrfG" id="1qbCJZsJ6dA" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6dB" role="1LFl5Q">
                        <ref role="3cqZAo" node="1qbCJZsJ67z" resolve="viewRange" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1qbCJZsJ6dC" role="37wK5m">
                      <node concept="liA8E" id="1qbCJZsJ6dD" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                      </node>
                      <node concept="1rXfSq" id="1qbCJZsJ6dE" role="2Oq$k0">
                        <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="1qbCJZsJ6dF" role="37wK5m">
                      <node concept="1LFfDK" id="1qbCJZsJ6dG" role="3uHU7w">
                        <node concept="3cmrfG" id="1qbCJZsJ6dH" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6dI" role="1LFl5Q">
                          <ref role="3cqZAo" node="1qbCJZsJ67z" resolve="viewRange" />
                        </node>
                      </node>
                      <node concept="1LFfDK" id="1qbCJZsJ6dJ" role="3uHU7B">
                        <node concept="3cmrfG" id="1qbCJZsJ6dK" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6dL" role="1LFl5Q">
                          <ref role="3cqZAo" node="1qbCJZsJ67z" resolve="viewRange" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1qbCJZsJ6dM" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ6dr" resolve="clip" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1qbCJZsJ6dN" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6dO" role="3uHU7w" />
            <node concept="37vLTw" id="1qbCJZsJ6dP" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67z" resolve="viewRange" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6dQ" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6dR" role="3cpWs9">
            <property role="TrG5h" value="png" />
            <node concept="17QB3L" id="1qbCJZsJ6dS" role="1tU5fm" />
            <node concept="2YIFZM" id="4qNw5QUzukw" role="33vP2m">
              <ref role="37wK5l" to="vyue:4qNw5QUzlqD" resolve="toPngBase64" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
              <node concept="1rXfSq" id="4qNw5QUzukx" role="37wK5m">
                <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
              </node>
              <node concept="37vLTw" id="4qNw5QUzuky" role="37wK5m">
                <ref role="3cqZAo" node="1qbCJZsJ6dr" resolve="clip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6dW" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6dX" role="3clFbx">
            <node concept="3clFbF" id="1qbCJZsJ6dY" role="3cqZAp">
              <node concept="37vLTI" id="1qbCJZsJ6dZ" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6e0" role="37vLTx">
                  <ref role="3cqZAo" node="1qbCJZsJ6dR" resolve="png" />
                </node>
                <node concept="37vLTw" id="1qbCJZsJ6e1" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ67n" resolve="lastViewPng" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1qbCJZsJ6e2" role="3cqZAp">
              <node concept="3cpWsn" id="1qbCJZsJ6e3" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="3uibUv" id="1qbCJZsJ6e4" role="1tU5fm">
                  <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                </node>
                <node concept="2ShNRf" id="1qbCJZsJ6e5" role="33vP2m">
                  <node concept="1pGfFk" id="1qbCJZsJ6e6" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6e7" role="3cqZAp">
              <node concept="2OqwBi" id="1qbCJZsJ6e8" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6e9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6e3" resolve="message" />
                </node>
                <node concept="liA8E" id="1qbCJZsJ6ea" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                  <node concept="Xl_RD" id="1qbCJZsJ6eb" role="37wK5m">
                    <property role="Xl_RC" value="type" />
                  </node>
                  <node concept="Xl_RD" id="1qbCJZsJ6ec" role="37wK5m">
                    <property role="Xl_RC" value="image.fragment" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MWbHmSlYSi" role="3cqZAp">
              <node concept="1rXfSq" id="1MWbHmSlYSj" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                <node concept="37vLTw" id="1MWbHmSlYSk" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6e3" resolve="message" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MWbHmSlYSl" role="3cqZAp">
              <node concept="1rXfSq" id="1MWbHmSlYSm" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSl9Am" resolve="sendMessage" />
                <node concept="37vLTw" id="1MWbHmSlYSn" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6dR" resolve="png" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6eT" role="3cqZAp">
              <node concept="3uNrnE" id="1qbCJZsJ6eU" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6eV" role="2$L3a6">
                  <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1qbCJZsJ6eW" role="3clFbw">
            <node concept="37vLTw" id="1qbCJZsJ6eX" role="3uHU7w">
              <ref role="3cqZAo" node="1qbCJZsJ6dR" resolve="png" />
            </node>
            <node concept="37vLTw" id="1qbCJZsJ6eY" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67n" resolve="lastViewPng" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6eZ" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6f0" role="jymVt">
      <property role="TrG5h" value="renderSelections" />
      <node concept="37vLTG" id="1qbCJZsJ6f1" role="3clF46">
        <property role="TrG5h" value="selections" />
        <node concept="8X2XB" id="1qbCJZsJ6f2" role="1tU5fm">
          <node concept="3uibUv" id="1qbCJZsJ6f3" role="8Xvag">
            <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6f4" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6f5" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6f6" role="3clF47">
        <node concept="3clFbJ" id="1qbCJZsL3Y6" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsL3Y7" role="3clFbx">
            <node concept="3cpWs6" id="1qbCJZsL3Y8" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1qbCJZsL3Y9" role="3clFbw">
            <node concept="2OqwBi" id="1qbCJZsL3Ya" role="3fr31v">
              <node concept="37vLTw" id="1qbCJZsL3Yb" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
              <node concept="liA8E" id="1qbCJZsL3Yc" role="2OqNvi">
                <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6fd" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6fe" role="3clFbx">
            <node concept="3cpWs6" id="1qbCJZsJ6ff" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1qbCJZsJ6fg" role="3clFbw">
            <node concept="3cmrfG" id="1qbCJZsJ6fh" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ6fi" role="3uHU7B">
              <node concept="37vLTw" id="1qbCJZsJ6fj" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6f1" resolve="selections" />
              </node>
              <node concept="1Rwk04" id="1qbCJZsJ6fk" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6fl" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6fm" role="3clFbG">
            <node concept="liA8E" id="1qbCJZsJ6fn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="1qbCJZsJ6fo" role="37wK5m">
                <node concept="liA8E" id="1qbCJZsJ6fp" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="1rXfSq" id="1qbCJZsJ6fq" role="2Oq$k0">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6fr" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6fs" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6ft" role="3clFbG">
            <node concept="liA8E" id="1qbCJZsJ6fu" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6fv" role="2Oq$k0">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1qbCJZsJ6fw" role="3cqZAp" />
        <node concept="3cpWs8" id="1qbCJZsJ6fx" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6fy" role="3cpWs9">
            <property role="TrG5h" value="cells" />
            <node concept="_YKpA" id="1qbCJZsJ6fz" role="1tU5fm">
              <node concept="3uibUv" id="1qbCJZsJ6f$" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
              </node>
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ6f_" role="33vP2m">
              <node concept="2OqwBi" id="1qbCJZsJ6fA" role="2Oq$k0">
                <node concept="2OqwBi" id="75ngnxkPnTZ" role="2Oq$k0">
                  <node concept="2OqwBi" id="1qbCJZsJ6fB" role="2Oq$k0">
                    <node concept="37vLTw" id="1qbCJZsJ6fC" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6f1" resolve="selections" />
                    </node>
                    <node concept="39bAoz" id="1qbCJZsJ6fD" role="2OqNvi" />
                  </node>
                  <node concept="1KnU$U" id="75ngnxkPqCW" role="2OqNvi" />
                </node>
                <node concept="3goQfb" id="1qbCJZsJ6fE" role="2OqNvi">
                  <node concept="1bVj0M" id="1qbCJZsJ6fF" role="23t8la">
                    <node concept="3clFbS" id="1qbCJZsJ6fG" role="1bW5cS">
                      <node concept="3clFbF" id="1qbCJZsJ6fH" role="3cqZAp">
                        <node concept="2OqwBi" id="1qbCJZsJ6fI" role="3clFbG">
                          <node concept="37vLTw" id="1qbCJZsJ6fJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ6fL" resolve="it" />
                          </node>
                          <node concept="liA8E" id="1qbCJZsJ6fK" role="2OqNvi">
                            <ref role="37wK5l" to="lwvz:~Selection.getSelectedCells()" resolve="getSelectedCells" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1qbCJZsJ6fL" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1qbCJZsJ6fM" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1qbCJZsJ6fN" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6fO" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6fP" role="3clFbx">
            <node concept="3cpWs6" id="1qbCJZsJ6fQ" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1qbCJZsJ6fR" role="3clFbw">
            <node concept="37vLTw" id="1qbCJZsJ6fS" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6fy" resolve="cells" />
            </node>
            <node concept="1v1jN8" id="1qbCJZsJ6fT" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6fU" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6fV" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="1qbCJZsJ6fW" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2YIFZM" id="1qbCJZsJ6fX" role="33vP2m">
              <ref role="37wK5l" to="g51k:~GeometryUtil.getBounds(jetbrains.mps.openapi.editor.cells.EditorCell...)" resolve="getBounds" />
              <ref role="1Pybhc" to="g51k:~GeometryUtil" resolve="GeometryUtil" />
              <node concept="2OqwBi" id="1qbCJZsJ6fY" role="37wK5m">
                <node concept="37vLTw" id="1qbCJZsJ6fZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6fy" resolve="cells" />
                </node>
                <node concept="3_kTaI" id="1qbCJZsJ6g0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6g1" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ6g2" role="3clFbG">
            <node concept="3cmrfG" id="1qbCJZsJ6g3" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ6g4" role="37vLTJ">
              <node concept="37vLTw" id="1qbCJZsJ6g5" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6fV" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="1qbCJZsJ6g6" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6g7" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ6g8" role="3clFbG">
            <node concept="2OqwBi" id="1qbCJZsJ6g9" role="37vLTx">
              <node concept="liA8E" id="1qbCJZsJ6ga" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
              </node>
              <node concept="1rXfSq" id="1qbCJZsJ6gb" role="2Oq$k0">
                <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ6gc" role="37vLTJ">
              <node concept="37vLTw" id="1qbCJZsJ6gd" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6fV" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="1qbCJZsJ6ge" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6gf" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6gg" role="3cpWs9">
            <property role="TrG5h" value="png" />
            <node concept="17QB3L" id="1qbCJZsJ6gh" role="1tU5fm" />
            <node concept="2YIFZM" id="4qNw5QUzuF3" role="33vP2m">
              <ref role="37wK5l" to="vyue:4qNw5QUzlqD" resolve="toPngBase64" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
              <node concept="1rXfSq" id="4qNw5QUzuF4" role="37wK5m">
                <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
              </node>
              <node concept="37vLTw" id="4qNw5QUzuF5" role="37wK5m">
                <ref role="3cqZAo" node="1qbCJZsJ6fV" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6gw" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6gx" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="1qbCJZsJ6gy" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="1qbCJZsJ6gz" role="33vP2m">
              <node concept="1pGfFk" id="1qbCJZsJ6g$" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6g_" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6gA" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6gB" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gx" resolve="message" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6gC" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6gD" role="37wK5m">
                <property role="Xl_RC" value="type" />
              </node>
              <node concept="Xl_RD" id="1qbCJZsJ6gE" role="37wK5m">
                <property role="Xl_RC" value="image.fragment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6gF" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6gG" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="1qbCJZsJ6gH" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="1qbCJZsJ6gI" role="33vP2m">
              <node concept="1pGfFk" id="1qbCJZsJ6gJ" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6gK" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6gL" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6gM" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gG" resolve="data" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6gN" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6gO" role="37wK5m">
                <property role="Xl_RC" value="x" />
              </node>
              <node concept="3cmrfG" id="1qbCJZsJ6gP" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6gQ" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6gR" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6gS" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gG" resolve="data" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6gT" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6gU" role="37wK5m">
                <property role="Xl_RC" value="y" />
              </node>
              <node concept="3cmrfG" id="1qbCJZsJ6gV" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6gW" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6gX" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6gY" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gG" resolve="data" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6gZ" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6h0" role="37wK5m">
                <property role="Xl_RC" value="width" />
              </node>
              <node concept="2OqwBi" id="1qbCJZsJ6h1" role="37wK5m">
                <node concept="37vLTw" id="1qbCJZsJ6h2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6fV" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="1qbCJZsJ6h3" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~Rectangle.width" resolve="width" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6h4" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6h5" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6h6" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gG" resolve="data" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6h7" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6h8" role="37wK5m">
                <property role="Xl_RC" value="height" />
              </node>
              <node concept="2OqwBi" id="1qbCJZsJ6h9" role="37wK5m">
                <node concept="37vLTw" id="1qbCJZsJ6ha" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6fV" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="1qbCJZsJ6hb" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~Rectangle.height" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6hc" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6hd" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6he" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ6gx" resolve="message" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6hf" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="1qbCJZsJ6hg" role="37wK5m">
                <property role="Xl_RC" value="data" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6hh" role="37wK5m">
                <ref role="3cqZAo" node="1qbCJZsJ6gG" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MWbHmSm1e7" role="3cqZAp">
          <node concept="1rXfSq" id="1MWbHmSm1e8" role="3clFbG">
            <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
            <node concept="37vLTw" id="1MWbHmSm1e9" role="37wK5m">
              <ref role="3cqZAo" node="1qbCJZsJ6gx" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MWbHmSm1ea" role="3cqZAp">
          <node concept="1rXfSq" id="1MWbHmSm1eb" role="3clFbG">
            <ref role="37wK5l" node="1MWbHmSl9Am" resolve="sendMessage" />
            <node concept="37vLTw" id="1MWbHmSm1ec" role="37wK5m">
              <ref role="3cqZAo" node="1qbCJZsJ6gg" resolve="png" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6hv" role="3cqZAp">
          <node concept="37vLTI" id="1qbCJZsJ6hw" role="3clFbG">
            <node concept="3clFbT" id="1qbCJZsJ6hx" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="1qbCJZsJ6hy" role="37vLTJ">
              <ref role="3cqZAo" node="1qbCJZsJ67r" resolve="fullUpdateNext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6hz" role="3cqZAp">
          <node concept="3uNrnE" id="1qbCJZsJ6h$" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6h_" role="2$L3a6">
              <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6hA" role="3cqZAp">
          <node concept="2OqwBi" id="1qbCJZsJ6hB" role="3clFbG">
            <node concept="37vLTw" id="1qbCJZsJ6hC" role="2Oq$k0">
              <ref role="3cqZAo" node="1qbCJZsJ67g" resolve="viewTimer" />
            </node>
            <node concept="liA8E" id="1qbCJZsJ6hD" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.restart()" resolve="restart" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6hE" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6hF" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="1qbCJZsJ6hG" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6hH" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6hI" role="3clF47">
        <node concept="3clFbJ" id="2D2$TMZuRih" role="3cqZAp">
          <node concept="3clFbS" id="2D2$TMZuRij" role="3clFbx">
            <node concept="3clFbF" id="2D2$TMZuTF9" role="3cqZAp">
              <node concept="2OqwBi" id="2D2$TMZuU38" role="3clFbG">
                <node concept="37vLTw" id="2D2$TMZuTF7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2D2$TMZuJ42" resolve="ccMenuTimer" />
                </node>
                <node concept="liA8E" id="2D2$TMZuUeM" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2D2$TMZuSXf" role="3clFbw">
            <node concept="10Nm6u" id="2D2$TMZuT2F" role="3uHU7w" />
            <node concept="37vLTw" id="2D2$TMZuRHi" role="3uHU7B">
              <ref role="3cqZAo" node="2D2$TMZuJ42" resolve="ccMenuTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6hN" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6hO" role="3clFbx">
            <node concept="3clFbF" id="1qbCJZsJ6hP" role="3cqZAp">
              <node concept="2OqwBi" id="1qbCJZsJ6hQ" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6hR" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="fullTimer" />
                </node>
                <node concept="liA8E" id="1qbCJZsJ6hS" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1qbCJZsJ6hT" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6hU" role="3uHU7w" />
            <node concept="37vLTw" id="1qbCJZsJ6hV" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="fullTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6hW" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6hX" role="3clFbx">
            <node concept="3clFbF" id="1qbCJZsJ6hY" role="3cqZAp">
              <node concept="2OqwBi" id="1qbCJZsJ6hZ" role="3clFbG">
                <node concept="37vLTw" id="1qbCJZsJ6i0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ67g" resolve="viewTimer" />
                </node>
                <node concept="liA8E" id="1qbCJZsJ6i1" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1qbCJZsJ6i2" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6i3" role="3uHU7w" />
            <node concept="37vLTw" id="1qbCJZsJ6i4" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67g" resolve="viewTimer" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6i5" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6i6" role="3clFbx">
            <node concept="3clFbF" id="75ngnxkPMQ3" role="3cqZAp">
              <node concept="2YIFZM" id="75ngnxkPMZj" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                <node concept="1bVj0M" id="75ngnxkPNcE" role="37wK5m">
                  <node concept="3clFbS" id="75ngnxkPNcF" role="1bW5cS">
                    <node concept="3clFbF" id="1qbCJZsJ6i7" role="3cqZAp">
                      <node concept="2OqwBi" id="1qbCJZsJ6i8" role="3clFbG">
                        <node concept="2OqwBi" id="1qbCJZsJ6i9" role="2Oq$k0">
                          <node concept="Xjq3P" id="1qbCJZsJ6ia" role="2Oq$k0" />
                          <node concept="2OwXpG" id="1qbCJZsJ6ib" role="2OqNvi">
                            <ref role="2Oxat6" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1qbCJZsJ6ic" role="2OqNvi">
                          <ref role="37wK5l" node="1oBrsEKQjag" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1qbCJZsJ6id" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6ie" role="3uHU7w" />
            <node concept="2OqwBi" id="1qbCJZsJ6if" role="3uHU7B">
              <node concept="Xjq3P" id="1qbCJZsJ6ig" role="2Oq$k0" />
              <node concept="2OwXpG" id="1qbCJZsJ6ih" role="2OqNvi">
                <ref role="2Oxat6" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5npwda7ulMR" role="3cqZAp">
          <node concept="3clFbS" id="5npwda7ulMT" role="3clFbx">
            <node concept="3clFbF" id="5npwda7unaj" role="3cqZAp">
              <node concept="2OqwBi" id="5npwda7unsS" role="3clFbG">
                <node concept="37vLTw" id="5npwda7unah" role="2Oq$k0">
                  <ref role="3cqZAo" node="5npwda7tz40" resolve="transformationEngine" />
                </node>
                <node concept="liA8E" id="5npwda7unRw" role="2OqNvi">
                  <ref role="37wK5l" to="nv3w:7q7cTU0YTwr" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5npwda7umA5" role="3clFbw">
            <node concept="10Nm6u" id="5npwda7umSj" role="3uHU7w" />
            <node concept="37vLTw" id="5npwda7ulXH" role="3uHU7B">
              <ref role="3cqZAo" node="5npwda7tz40" resolve="transformationEngine" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsLq2j" role="jymVt" />
    <node concept="3Tm1VV" id="1qbCJZsJ6iA" role="1B3o_S" />
    <node concept="3clFb_" id="1qbCJZsJ6iC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onOpen" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1qbCJZsJ6iD" role="1B3o_S" />
      <node concept="3cqZAl" id="1qbCJZsJ6iE" role="3clF45" />
      <node concept="37vLTG" id="1qbCJZsJ6iH" role="3clF46">
        <property role="TrG5h" value="websocketSession" />
        <node concept="3uibUv" id="5Sw$pxbOuoB" role="1tU5fm">
          <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
        </node>
      </node>
      <node concept="3clFbS" id="1qbCJZsJ6iJ" role="3clF47">
        <node concept="1X3_iC" id="16LO$Mc$cum" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="1qbCJZsJ6jr" role="8Wnug">
            <node concept="2YIFZM" id="1qbCJZsJ6js" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
              <node concept="1bVj0M" id="1qbCJZsJ6jt" role="37wK5m">
                <node concept="3clFbS" id="1qbCJZsJ6ju" role="1bW5cS">
                  <node concept="3clFbF" id="1qbCJZsJ6jv" role="3cqZAp">
                    <node concept="1rXfSq" id="1qbCJZsJ6jw" role="3clFbG">
                      <ref role="37wK5l" node="1qbCJZsJ6bv" resolve="renderAll" />
                      <node concept="3clFbT" id="1qbCJZsJ6jx" role="37wK5m">
                        <property role="3clFbU" value="true" />
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
    <node concept="2tJIrI" id="1qbCJZsJ6jz" role="jymVt" />
    <node concept="2tJIrI" id="1qbCJZsJ6j$" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6j_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onClose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1qbCJZsJ6jA" role="1B3o_S" />
      <node concept="3cqZAl" id="1qbCJZsJ6jB" role="3clF45" />
      <node concept="37vLTG" id="1qbCJZsJ6jE" role="3clF46">
        <property role="TrG5h" value="code" />
        <node concept="10Oyi0" id="1qbCJZsJ6jF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6jG" role="3clF46">
        <property role="TrG5h" value="reason" />
        <node concept="17QB3L" id="1qbCJZsLK1C" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1qbCJZsJ6jK" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1qbCJZsLNuO" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6k5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onMessage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1qbCJZsJ6k6" role="1B3o_S" />
      <node concept="3cqZAl" id="1qbCJZsJ6k7" role="3clF45" />
      <node concept="37vLTG" id="1qbCJZsJ6ka" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="1qbCJZsLXHu" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1qbCJZsJ6kc" role="3clF47">
        <node concept="SfApY" id="1qbCJZsJ6kq" role="3cqZAp">
          <node concept="3clFbS" id="1qbCJZsJ6kr" role="SfCbr">
            <node concept="3clFbF" id="1qbCJZsJ6ks" role="3cqZAp">
              <node concept="1rXfSq" id="1qbCJZsJ6kt" role="3clFbG">
                <ref role="37wK5l" node="1qbCJZsJ6kO" resolve="processMessage" />
                <node concept="2ShNRf" id="1qbCJZsJ6ku" role="37wK5m">
                  <node concept="1pGfFk" id="1qbCJZsJ6kv" role="2ShVmc">
                    <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;(java.lang.String)" resolve="JSONObject" />
                    <node concept="37vLTw" id="1qbCJZsJ6kw" role="37wK5m">
                      <ref role="3cqZAo" node="1qbCJZsJ6ka" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1qbCJZsJ6kx" role="TEbGg">
            <node concept="3cpWsn" id="1qbCJZsJ6ky" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1qbCJZsJ6kz" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1qbCJZsJ6k$" role="TDEfX">
              <node concept="RRSsy" id="2wu1c06PylW" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="37vLTw" id="2wu1c06Pym0" role="RRSow">
                  <ref role="3cqZAo" node="1qbCJZsJ6ky" resolve="ex" />
                </node>
                <node concept="3cpWs3" id="1qbCJZsJ6kD" role="RRSoy">
                  <node concept="2OqwBi" id="1qbCJZsJ6kE" role="3uHU7w">
                    <node concept="37vLTw" id="1qbCJZsJ6kF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6ky" resolve="ex" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6kG" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1qbCJZsJ6kH" role="3uHU7B">
                    <property role="Xl_RC" value="Failed: " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6kN" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6kO" role="jymVt">
      <property role="TrG5h" value="processMessage" />
      <node concept="37vLTG" id="1qbCJZsJ6kP" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="1qbCJZsJ6kQ" role="1tU5fm">
          <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
        </node>
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6kR" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6kS" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6kT" role="3clF47">
        <node concept="3cpWs8" id="1qbCJZsJ6kU" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6kV" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="1qbCJZsJ6kW" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2OqwBi" id="1qbCJZsJ6kX" role="33vP2m">
              <node concept="37vLTw" id="1qbCJZsJ6kY" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
              </node>
              <node concept="liA8E" id="1qbCJZsJ6kZ" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.optJSONObject(java.lang.String)" resolve="optJSONObject" />
                <node concept="Xl_RD" id="1qbCJZsJ6l0" role="37wK5m">
                  <property role="Xl_RC" value="data" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6l1" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6l2" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="17QB3L" id="1qbCJZsJ6l3" role="1tU5fm" />
            <node concept="2OqwBi" id="1qbCJZsJ6l4" role="33vP2m">
              <node concept="37vLTw" id="1qbCJZsJ6l5" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
              </node>
              <node concept="liA8E" id="1qbCJZsJ6l6" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.getString(java.lang.String)" resolve="getString" />
                <node concept="Xl_RD" id="1qbCJZsJ6l7" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6l8" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6l9" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="17QB3L" id="1qbCJZsJ6la" role="1tU5fm" />
            <node concept="2EnYce" id="1qbCJZsJ6lb" role="33vP2m">
              <node concept="37vLTw" id="1qbCJZsJ6lc" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
              </node>
              <node concept="liA8E" id="1qbCJZsJ6ld" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.optString(java.lang.String)" resolve="optString" />
                <node concept="Xl_RD" id="1qbCJZsJ6le" role="37wK5m">
                  <property role="Xl_RC" value="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1qbCJZsJ6lf" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6lg" role="3cpWs9">
            <property role="TrG5h" value="keyChar" />
            <node concept="10Pfzv" id="1qbCJZsJ6lh" role="1tU5fm" />
            <node concept="3K4zz7" id="1qbCJZsJ6li" role="33vP2m">
              <node concept="2OqwBi" id="1qbCJZsJ6lj" role="3K4E3e">
                <node concept="37vLTw" id="1qbCJZsJ6lk" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6l9" resolve="key" />
                </node>
                <node concept="liA8E" id="1qbCJZsJ6ll" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                  <node concept="3cmrfG" id="1qbCJZsJ6lm" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="1Xhbcc" id="1qbCJZsJ6ln" role="3K4GZi">
                <property role="1XhdNS" value="\0" />
              </node>
              <node concept="1Wc70l" id="1qbCJZsJ6lo" role="3K4Cdx">
                <node concept="3clFbC" id="1qbCJZsJ6lp" role="3uHU7w">
                  <node concept="3cmrfG" id="1qbCJZsJ6lq" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1qbCJZsJ6lr" role="3uHU7B">
                    <node concept="37vLTw" id="1qbCJZsJ6ls" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6l9" resolve="key" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6lt" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1qbCJZsJ6lu" role="3uHU7B">
                  <node concept="37vLTw" id="1qbCJZsJ6lv" role="3uHU7B">
                    <ref role="3cqZAo" node="1qbCJZsJ6l9" resolve="key" />
                  </node>
                  <node concept="10Nm6u" id="1qbCJZsJ6lw" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qbCJZsJ6lx" role="3cqZAp">
          <node concept="17R0WA" id="1qbCJZsJ6ly" role="3clFbw">
            <node concept="Xl_RD" id="1qbCJZsJ6lz" role="3uHU7w">
              <property role="Xl_RC" value="click" />
            </node>
            <node concept="37vLTw" id="1qbCJZsJ6l$" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
            </node>
          </node>
          <node concept="3clFbS" id="1qbCJZsJ6l_" role="3clFbx">
            <node concept="3cpWs8" id="1qbCJZsJ6lA" role="3cqZAp">
              <node concept="3cpWsn" id="1qbCJZsJ6lB" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="1qbCJZsJ6lC" role="1tU5fm" />
                <node concept="2OqwBi" id="1qbCJZsJ6lD" role="33vP2m">
                  <node concept="37vLTw" id="1qbCJZsJ6lE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6lF" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                    <node concept="Xl_RD" id="1qbCJZsJ6lG" role="37wK5m">
                      <property role="Xl_RC" value="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1qbCJZsJ6lH" role="3cqZAp">
              <node concept="3cpWsn" id="1qbCJZsJ6lI" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="1qbCJZsJ6lJ" role="1tU5fm" />
                <node concept="2OqwBi" id="1qbCJZsJ6lK" role="33vP2m">
                  <node concept="37vLTw" id="1qbCJZsJ6lL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6lM" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                    <node concept="Xl_RD" id="1qbCJZsJ6lN" role="37wK5m">
                      <property role="Xl_RC" value="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6lO" role="3cqZAp">
              <node concept="1rXfSq" id="1qbCJZsJ6lP" role="3clFbG">
                <ref role="37wK5l" node="1qbCJZsJ6n_" resolve="simulateClick" />
                <node concept="37vLTw" id="1qbCJZsJ6lQ" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6lB" resolve="x" />
                </node>
                <node concept="37vLTw" id="1qbCJZsJ6lR" role="37wK5m">
                  <ref role="3cqZAo" node="1qbCJZsJ6lI" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1qbCJZsJ6lS" role="3eNLev">
            <node concept="3clFbS" id="1qbCJZsJ6lT" role="3eOfB_">
              <node concept="3clFbF" id="1qbCJZsJ6lU" role="3cqZAp">
                <node concept="1rXfSq" id="1qbCJZsJ6lV" role="3clFbG">
                  <ref role="37wK5l" node="1qbCJZsJ6p3" resolve="simulateKeypress" />
                  <node concept="2OqwBi" id="1qbCJZsJ6lW" role="37wK5m">
                    <node concept="37vLTw" id="1qbCJZsJ6lX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6lY" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="1qbCJZsJ6lZ" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1qbCJZsJ6m0" role="37wK5m">
                    <ref role="3cqZAo" node="1qbCJZsJ6lg" resolve="keyChar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1qbCJZsJ6m1" role="3eO9$A">
              <node concept="Xl_RD" id="1qbCJZsJ6m2" role="3uHU7w">
                <property role="Xl_RC" value="keypress" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6m3" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1qbCJZsJ6m4" role="3eNLev">
            <node concept="3clFbS" id="1qbCJZsJ6m5" role="3eOfB_">
              <node concept="3cpWs8" id="1qbCJZsJ6m6" role="3cqZAp">
                <node concept="3cpWsn" id="1qbCJZsJ6m7" role="3cpWs9">
                  <property role="TrG5h" value="modifier" />
                  <node concept="10Oyi0" id="1qbCJZsJ6m8" role="1tU5fm" />
                  <node concept="3cmrfG" id="1qbCJZsJ6m9" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1qbCJZsJ6ma" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1qbCJZsJ6mb" role="3clFbx">
                  <node concept="3clFbF" id="1qbCJZsJ6mc" role="3cqZAp">
                    <node concept="37vLTI" id="1qbCJZsJ6md" role="3clFbG">
                      <node concept="pVOtf" id="1qbCJZsJ6me" role="37vLTx">
                        <node concept="10M0yZ" id="1qbCJZsJ6mf" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.CTRL_DOWN_MASK" resolve="CTRL_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6mg" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6mh" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1qbCJZsJ6mi" role="3clFbw">
                  <node concept="37vLTw" id="1qbCJZsJ6mj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6mk" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1qbCJZsJ6ml" role="37wK5m">
                      <property role="Xl_RC" value="ctrl" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1qbCJZsJ6mm" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1qbCJZsJ6mn" role="3clFbx">
                  <node concept="3clFbF" id="1qbCJZsJ6mo" role="3cqZAp">
                    <node concept="37vLTI" id="1qbCJZsJ6mp" role="3clFbG">
                      <node concept="pVOtf" id="1qbCJZsJ6mq" role="37vLTx">
                        <node concept="10M0yZ" id="1qbCJZsJ6mr" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.ALT_DOWN_MASK" resolve="ALT_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6ms" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6mt" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1qbCJZsJ6mu" role="3clFbw">
                  <node concept="37vLTw" id="1qbCJZsJ6mv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6mw" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1qbCJZsJ6mx" role="37wK5m">
                      <property role="Xl_RC" value="alt" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1qbCJZsJ6my" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1qbCJZsJ6mz" role="3clFbx">
                  <node concept="3clFbF" id="1qbCJZsJ6m$" role="3cqZAp">
                    <node concept="37vLTI" id="1qbCJZsJ6m_" role="3clFbG">
                      <node concept="pVOtf" id="1qbCJZsJ6mA" role="37vLTx">
                        <node concept="10M0yZ" id="1qbCJZsJ6mB" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.SHIFT_DOWN_MASK" resolve="SHIFT_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6mC" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6mD" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1qbCJZsJ6mE" role="3clFbw">
                  <node concept="37vLTw" id="1qbCJZsJ6mF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6mG" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1qbCJZsJ6mH" role="37wK5m">
                      <property role="Xl_RC" value="shift" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1qbCJZsJ6mI" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="1qbCJZsJ6mJ" role="3clFbx">
                  <node concept="3clFbF" id="1qbCJZsJ6mK" role="3cqZAp">
                    <node concept="37vLTI" id="1qbCJZsJ6mL" role="3clFbG">
                      <node concept="pVOtf" id="1qbCJZsJ6mM" role="37vLTx">
                        <node concept="10M0yZ" id="1qbCJZsJ6mN" role="3uHU7w">
                          <ref role="3cqZAo" to="hyam:~InputEvent.META_DOWN_MASK" resolve="META_DOWN_MASK" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6mO" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6mP" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="1qbCJZsJ6mQ" role="3clFbw">
                  <node concept="37vLTw" id="1qbCJZsJ6mR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1qbCJZsJ6mS" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="1qbCJZsJ6mT" role="37wK5m">
                      <property role="Xl_RC" value="meta" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1qbCJZsJ6mU" role="3cqZAp">
                <node concept="1rXfSq" id="1qbCJZsJ6mV" role="3clFbG">
                  <ref role="37wK5l" node="1qbCJZsJ6pt" resolve="simulateKeyDown" />
                  <node concept="2OqwBi" id="1qbCJZsJ6mW" role="37wK5m">
                    <node concept="37vLTw" id="1qbCJZsJ6mX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6mY" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="1qbCJZsJ6mZ" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1qbCJZsJ6n0" role="37wK5m">
                    <ref role="3cqZAo" node="1qbCJZsJ6lg" resolve="keyChar" />
                  </node>
                  <node concept="37vLTw" id="1qbCJZsJ6n1" role="37wK5m">
                    <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1qbCJZsJ6n2" role="3eO9$A">
              <node concept="Xl_RD" id="1qbCJZsJ6n3" role="3uHU7w">
                <property role="Xl_RC" value="keydown" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6n4" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1qbCJZsJ6n5" role="3eNLev">
            <node concept="3clFbS" id="1qbCJZsJ6n6" role="3eOfB_">
              <node concept="3clFbF" id="1qbCJZsJ6n7" role="3cqZAp">
                <node concept="1rXfSq" id="1qbCJZsJ6n8" role="3clFbG">
                  <ref role="37wK5l" node="1qbCJZsJ6tC" resolve="simulateKeyUp" />
                  <node concept="2OqwBi" id="1qbCJZsJ6n9" role="37wK5m">
                    <node concept="37vLTw" id="1qbCJZsJ6na" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6nb" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="1qbCJZsJ6nc" role="37wK5m">
                        <property role="Xl_RC" value="keyCode" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1qbCJZsJ6nd" role="37wK5m">
                    <ref role="3cqZAo" node="1qbCJZsJ6lg" resolve="keyChar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1qbCJZsJ6ne" role="3eO9$A">
              <node concept="Xl_RD" id="1qbCJZsJ6nf" role="3uHU7w">
                <property role="Xl_RC" value="keyup" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6ng" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1qbCJZsJ6nh" role="3eNLev">
            <node concept="17R0WA" id="1qbCJZsJ6ni" role="3eO9$A">
              <node concept="Xl_RD" id="1qbCJZsJ6nj" role="3uHU7w">
                <property role="Xl_RC" value="viewrange" />
              </node>
              <node concept="37vLTw" id="1qbCJZsJ6nk" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
            <node concept="3clFbS" id="1qbCJZsJ6nl" role="3eOfB_">
              <node concept="3clFbF" id="1qbCJZsJ6nm" role="3cqZAp">
                <node concept="37vLTI" id="1qbCJZsJ6nn" role="3clFbG">
                  <node concept="1Ls8ON" id="1qbCJZsJ6no" role="37vLTx">
                    <node concept="2OqwBi" id="1qbCJZsJ6np" role="1Lso8e">
                      <node concept="37vLTw" id="1qbCJZsJ6nq" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6nr" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="1qbCJZsJ6ns" role="37wK5m">
                          <property role="Xl_RC" value="top" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1qbCJZsJ6nt" role="1Lso8e">
                      <node concept="37vLTw" id="1qbCJZsJ6nu" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6nv" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="1qbCJZsJ6nw" role="37wK5m">
                          <property role="Xl_RC" value="bottom" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1qbCJZsJ6nx" role="37vLTJ">
                    <ref role="3cqZAo" node="1qbCJZsJ67z" resolve="viewRange" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6kYN8GanNmb" role="3eNLev">
            <node concept="17R0WA" id="6kYN8GanO5C" role="3eO9$A">
              <node concept="Xl_RD" id="6kYN8GanO6V" role="3uHU7w">
                <property role="Xl_RC" value="rootNode" />
              </node>
              <node concept="37vLTw" id="6kYN8GanNJ9" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
            <node concept="3clFbS" id="6kYN8GanNmd" role="3eOfB_">
              <node concept="3clFbF" id="4JrW6YuSVEr" role="3cqZAp">
                <node concept="2YIFZM" id="4JrW6YuSW1B" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                  <node concept="1bVj0M" id="4JrW6YuSWjh" role="37wK5m">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="4JrW6YuSWji" role="1bW5cS">
                      <node concept="1QHqEK" id="6kYN8Gao_Hp" role="3cqZAp">
                        <node concept="1QHqEC" id="6kYN8Gao_Hr" role="1QHqEI">
                          <node concept="3clFbS" id="6kYN8Gao_Ht" role="1bW5cS">
                            <node concept="3clFbF" id="5npwda7urWS" role="3cqZAp">
                              <node concept="2OqwBi" id="5npwda7usJL" role="3clFbG">
                                <node concept="10M0yZ" id="5npwda7usit" role="2Oq$k0">
                                  <ref role="3cqZAo" to="nv3w:1HMbik_OEOx" resolve="CONTEXT_ENGINE" />
                                  <ref role="1PxDUh" to="nv3w:5gTrVpGiJ3S" resolve="TransformationEngine" />
                                </node>
                                <node concept="liA8E" id="5npwda7ut1R" role="2OqNvi">
                                  <ref role="37wK5l" to="3d38:7vWAzuEE3Ye" resolve="runWith" />
                                  <node concept="37vLTw" id="5npwda7utwS" role="37wK5m">
                                    <ref role="3cqZAo" node="5npwda7tz40" resolve="transformationEngine" />
                                  </node>
                                  <node concept="1bVj0M" id="5npwda7uuhQ" role="37wK5m">
                                    <node concept="3clFbS" id="5npwda7uuhS" role="1bW5cS">
                                      <node concept="3cpWs8" id="6kYN8GanPo$" role="3cqZAp">
                                        <node concept="3cpWsn" id="6kYN8GanPo_" role="3cpWs9">
                                          <property role="TrG5h" value="nodeRef" />
                                          <node concept="3uibUv" id="6kYN8GanPoz" role="1tU5fm">
                                            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                          </node>
                                          <node concept="2YIFZM" id="6kYN8GanPoA" role="33vP2m">
                                            <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                                            <ref role="37wK5l" to="qsto:5T6M7OO0Pie" resolve="deserialize" />
                                            <node concept="2OqwBi" id="6kYN8GanPoB" role="37wK5m">
                                              <node concept="37vLTw" id="6kYN8GanPoC" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                                              </node>
                                              <node concept="liA8E" id="6kYN8GanPoD" role="2OqNvi">
                                                <ref role="37wK5l" to="mxf6:~JSONObject.getString(java.lang.String)" resolve="getString" />
                                                <node concept="Xl_RD" id="6kYN8GanPoE" role="37wK5m">
                                                  <property role="Xl_RC" value="nodeRef" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="5npwda7vZIn" role="37wK5m">
                                              <node concept="37vLTw" id="5npwda7vYUH" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                                              </node>
                                              <node concept="liA8E" id="5npwda7w0yn" role="2OqNvi">
                                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="5npwda7w1nS" role="37wK5m">
                                              <ref role="3cqZAo" node="5npwda7tz40" resolve="transformationEngine" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="6kYN8GanS1L" role="3cqZAp">
                                        <node concept="3cpWsn" id="6kYN8GanS1M" role="3cpWs9">
                                          <property role="TrG5h" value="node" />
                                          <node concept="3uibUv" id="6kYN8GanS1H" role="1tU5fm">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                          <node concept="2OqwBi" id="6kYN8GanS1N" role="33vP2m">
                                            <node concept="37vLTw" id="6kYN8GanS1O" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6kYN8GanPo_" resolve="nodeRef" />
                                            </node>
                                            <node concept="liA8E" id="6kYN8GanS1P" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                              <node concept="2OqwBi" id="5npwda7uqFz" role="37wK5m">
                                                <node concept="37vLTw" id="5npwda7uq4N" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                                                </node>
                                                <node concept="liA8E" id="5npwda7urnW" role="2OqNvi">
                                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="5npwda7uF9r" role="3cqZAp">
                                        <node concept="3clFbS" id="5npwda7uF9t" role="3clFbx">
                                          <node concept="3clFbF" id="5npwda7uHrs" role="3cqZAp">
                                            <node concept="2OqwBi" id="5npwda7uIk_" role="3clFbG">
                                              <node concept="1eOMI4" id="5npwda7uHrp" role="2Oq$k0">
                                                <node concept="10QFUN" id="5npwda7uHrm" role="1eOMHV">
                                                  <node concept="3uibUv" id="5npwda7uHrr" role="10QFUM">
                                                    <ref role="3uigEE" to="l6bp:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                                  </node>
                                                  <node concept="37vLTw" id="5npwda7uHG4" role="10QFUP">
                                                    <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="5npwda7uISG" role="2OqNvi">
                                                <ref role="37wK5l" to="l6bp:1zncNMQHsfN" resolve="setModelMode" />
                                                <node concept="Rm8GO" id="5npwda7uJAQ" role="37wK5m">
                                                  <ref role="Rm8GQ" to="l6bp:1zncNMQGpu2" resolve="DUMMY" />
                                                  <ref role="1Px2BO" to="l6bp:1zncNMQGps0" resolve="EModelMode" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="5npwda7DhDz" role="3cqZAp">
                                            <node concept="37vLTI" id="5npwda7Dief" role="3clFbG">
                                              <node concept="2YIFZM" id="5npwda7Dj0T" role="37vLTx">
                                                <ref role="37wK5l" to="l6bp:75046mlPk8L" resolve="wrap" />
                                                <ref role="1Pybhc" to="l6bp:kHIbzAYu9G" resolve="ANode" />
                                                <node concept="37vLTw" id="5npwda7DjwN" role="37wK5m">
                                                  <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="5npwda7DhDx" role="37vLTJ">
                                                <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2ZW3vV" id="5npwda7uGeW" role="3clFbw">
                                          <node concept="3uibUv" id="5npwda7uGMn" role="2ZW6by">
                                            <ref role="3uigEE" to="l6bp:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                          </node>
                                          <node concept="37vLTw" id="5npwda7uFAV" role="2ZW6bz">
                                            <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="7trMQm40CI7" role="3cqZAp">
                                        <node concept="37vLTI" id="7trMQm40Dgi" role="3clFbG">
                                          <node concept="37vLTw" id="7trMQm40Dv9" role="37vLTx">
                                            <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                          </node>
                                          <node concept="37vLTw" id="7trMQm40CI5" role="37vLTJ">
                                            <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="7trMQm40E6v" role="3cqZAp">
                                        <node concept="3clFbS" id="7trMQm40E6x" role="3clFbx">
                                          <node concept="3clFbF" id="7trMQm40GWT" role="3cqZAp">
                                            <node concept="2OqwBi" id="7trMQm40I2V" role="3clFbG">
                                              <node concept="37vLTw" id="7trMQm40GWR" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                              </node>
                                              <node concept="liA8E" id="7trMQm41g72" role="2OqNvi">
                                                <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                                                <node concept="37vLTw" id="7trMQm41gPe" role="37wK5m">
                                                  <ref role="3cqZAo" node="6kYN8GanS1M" resolve="node" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="7trMQm41ip9" role="3cqZAp">
                                            <node concept="1rXfSq" id="7trMQm41ip7" role="3clFbG">
                                              <ref role="37wK5l" node="1qbCJZsJ6bn" resolve="renderAll" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3y3z36" id="7trMQm40FUl" role="3clFbw">
                                          <node concept="10Nm6u" id="7trMQm40Gpw" role="3uHU7w" />
                                          <node concept="37vLTw" id="7trMQm40EBh" role="3uHU7B">
                                            <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
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
                        <node concept="2OqwBi" id="7trMQm40$uk" role="ukAjM">
                          <node concept="37vLTw" id="7trMQm40zXE" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                          </node>
                          <node concept="liA8E" id="7trMQm40Bf6" role="2OqNvi">
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
        <node concept="3clFbF" id="1MWbHmSj6lm" role="3cqZAp">
          <node concept="1rXfSq" id="1MWbHmSj6lk" role="3clFbG">
            <ref role="37wK5l" node="2D2$TMZu5kA" resolve="processCCMenu" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6ny" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6nz" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6n$" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6n_" role="jymVt">
      <property role="TrG5h" value="simulateClick" />
      <node concept="37vLTG" id="1qbCJZsJ6nA" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1qbCJZsJ6nB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6nC" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1qbCJZsJ6nD" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6nE" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6nF" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6nG" role="3clF47">
        <node concept="3cpWs8" id="1qbCJZsJ6nH" role="3cqZAp">
          <node concept="3cpWsn" id="1qbCJZsJ6nI" role="3cpWs9">
            <property role="TrG5h" value="serverEditorComponent" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1qbCJZsJ6nJ" role="1tU5fm">
              <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
            </node>
            <node concept="1rXfSq" id="1qbCJZsJ6nK" role="33vP2m">
              <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6nL" role="3cqZAp">
          <node concept="2YIFZM" id="1qbCJZsJ6nM" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <node concept="1bVj0M" id="1qbCJZsJ6nN" role="37wK5m">
              <node concept="3clFbS" id="1qbCJZsJ6nO" role="1bW5cS">
                <node concept="3cpWs8" id="1qbCJZsJ6nP" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6nQ" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3uibUv" id="1qbCJZsJ6nR" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2YIFZM" id="1qbCJZsJ6nS" role="33vP2m">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.getDeepestComponentAt(java.awt.Component,int,int)" resolve="getDeepestComponentAt" />
                      <node concept="37vLTw" id="1qbCJZsJ6nT" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6nU" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ6nA" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6nV" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ6nC" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6nW" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6nX" role="3clFbG">
                    <node concept="37vLTw" id="1qbCJZsJ6nY" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6nZ" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6o0" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="1qbCJZsJ6o1" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6o2" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6o3" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="1qbCJZsJ6o4" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6o5" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6o6" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6o7" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6o8" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nA" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6o9" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nC" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="1qbCJZsJ6oa" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="1qbCJZsJ6ob" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6oc" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6od" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6oe" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6of" role="3clFbG">
                    <node concept="37vLTw" id="1qbCJZsJ6og" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6oh" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6oi" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="1qbCJZsJ6oj" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6ok" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6ol" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="1qbCJZsJ6om" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6on" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6oo" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6op" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6oq" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nA" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6or" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nC" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="1qbCJZsJ6os" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="1qbCJZsJ6ot" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6ou" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6ov" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6ow" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6ox" role="3clFbG">
                    <node concept="37vLTw" id="1qbCJZsJ6oy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6oz" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6o$" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <node concept="37vLTw" id="1qbCJZsJ6o_" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6oA" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6oB" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="1qbCJZsJ6oC" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6oD" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6oE" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6oF" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_MASK" resolve="BUTTON1_MASK" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6oG" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nA" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6oH" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nC" resolve="y" />
                            </node>
                            <node concept="3cmrfG" id="1qbCJZsJ6oI" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3clFbT" id="1qbCJZsJ6oJ" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6oK" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6oL" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1qbCJZsJ6oM" role="3cqZAp">
          <node concept="2YIFZM" id="1qbCJZsJ6oN" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <node concept="1bVj0M" id="1qbCJZsJ6oO" role="37wK5m">
              <node concept="3clFbS" id="1qbCJZsJ6oP" role="1bW5cS">
                <node concept="3clFbF" id="1qbCJZsJ6oQ" role="3cqZAp">
                  <node concept="1rXfSq" id="1qbCJZsJ6oR" role="3clFbG">
                    <ref role="37wK5l" node="1qbCJZsJ6f0" resolve="renderSelections" />
                    <node concept="2OqwBi" id="1qbCJZsJ6oS" role="37wK5m">
                      <node concept="2OqwBi" id="1qbCJZsJ6oT" role="2Oq$k0">
                        <node concept="37vLTw" id="1qbCJZsJ6oU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                        </node>
                        <node concept="liA8E" id="1qbCJZsJ6oV" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6oW" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6oX" role="3cqZAp">
                  <node concept="1rXfSq" id="1qbCJZsJ6oY" role="3clFbG">
                    <ref role="37wK5l" node="1qbCJZsJ6d4" resolve="renderView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1qbCJZsJ6oZ" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6p0" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6p1" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6p2" role="jymVt" />
    <node concept="3clFb_" id="2mcPA70wLfh" role="jymVt">
      <property role="TrG5h" value="runInUIThreadAndWait" />
      <node concept="37vLTG" id="2mcPA70wTXh" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="2mcPA70wXen" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="2mcPA70wLfj" role="3clF45" />
      <node concept="3Tm1VV" id="2mcPA70wLfk" role="1B3o_S" />
      <node concept="3clFbS" id="2mcPA70wLfl" role="3clF47">
        <node concept="3clFbF" id="2mcPA70wYHI" role="3cqZAp">
          <node concept="2OqwBi" id="2mcPA70wYSt" role="3clFbG">
            <node concept="10M0yZ" id="2mcPA70wYIR" role="2Oq$k0">
              <ref role="3cqZAo" to="ia5i:5MA9wbc5sJL" resolve="AUTHOR" />
              <ref role="1PxDUh" to="ia5i:5MA9wbc5skS" resolve="AuthorOverride" />
            </node>
            <node concept="liA8E" id="2mcPA70wZ4g" role="2OqNvi">
              <ref role="37wK5l" to="3d38:7vWAzuEE3Ye" resolve="runWith" />
              <node concept="37vLTw" id="2mcPA70wZfJ" role="37wK5m">
                <ref role="3cqZAo" node="2mcPA70wyj9" resolve="user" />
              </node>
              <node concept="1bVj0M" id="2mcPA70xszx" role="37wK5m">
                <node concept="3clFbS" id="2mcPA70xsz$" role="1bW5cS">
                  <node concept="3clFbF" id="2mcPA70xsBO" role="3cqZAp">
                    <node concept="2YIFZM" id="2mcPA70xrNS" role="3clFbG">
                      <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                      <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
                      <node concept="37vLTw" id="2mcPA70xrZc" role="37wK5m">
                        <ref role="3cqZAo" node="2mcPA70wTXh" resolve="r" />
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
    <node concept="2tJIrI" id="2mcPA70wGvU" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6p3" role="jymVt">
      <property role="TrG5h" value="simulateKeypress" />
      <node concept="37vLTG" id="1qbCJZsJ6p4" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="1qbCJZsJ6p5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6p6" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="1qbCJZsJ6p7" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6p8" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6p9" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6pa" role="3clF47">
        <node concept="3clFbF" id="2mcPA70x0jP" role="3cqZAp">
          <node concept="1rXfSq" id="2mcPA70x0jN" role="3clFbG">
            <ref role="37wK5l" node="2mcPA70wLfh" resolve="runInUIThreadAndWait" />
            <node concept="1bVj0M" id="2mcPA70wERx" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="2mcPA70wERz" role="1bW5cS">
                <node concept="3clFbF" id="1qbCJZsJ6pf" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6pg" role="3clFbG">
                    <node concept="1rXfSq" id="1qbCJZsJ6ph" role="2Oq$k0">
                      <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6pi" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.processKeyTyped(java.awt.event.KeyEvent)" resolve="processKeyTyped" />
                      <node concept="2ShNRf" id="1qbCJZsJ6pj" role="37wK5m">
                        <node concept="1pGfFk" id="1qbCJZsJ6pk" role="2ShVmc">
                          <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                          <node concept="1rXfSq" id="1qbCJZsJ6pl" role="37wK5m">
                            <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                          </node>
                          <node concept="10M0yZ" id="1qbCJZsJ6pm" role="37wK5m">
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                            <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_TYPED" resolve="KEY_TYPED" />
                          </node>
                          <node concept="2YIFZM" id="1qbCJZsJ6pn" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                          </node>
                          <node concept="3cmrfG" id="1qbCJZsJ6po" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="10M0yZ" id="1qbCJZsJ6pp" role="37wK5m">
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_UNDEFINED" resolve="VK_UNDEFINED" />
                          </node>
                          <node concept="37vLTw" id="1qbCJZsJ6pq" role="37wK5m">
                            <ref role="3cqZAo" node="1qbCJZsJ6p6" resolve="key" />
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
      <node concept="3uibUv" id="1qbCJZsJ6pr" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6ps" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="3clFb_" id="1qbCJZsJ6pt" role="jymVt">
      <property role="TrG5h" value="simulateKeyDown" />
      <node concept="37vLTG" id="1qbCJZsJ6pu" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="1qbCJZsJ6pv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6pw" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="1qbCJZsJ6px" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6py" role="3clF46">
        <property role="TrG5h" value="modifiers" />
        <node concept="10Oyi0" id="1qbCJZsJ6pz" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6p$" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6p_" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6pA" role="3clF47">
        <node concept="RRSsy" id="2wu1c06P$Lp" role="3cqZAp">
          <node concept="3cpWs3" id="1qbCJZsJ6pF" role="RRSoy">
            <node concept="37vLTw" id="1qbCJZsJ6pG" role="3uHU7w">
              <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
            </node>
            <node concept="Xl_RD" id="1qbCJZsJ6pH" role="3uHU7B">
              <property role="Xl_RC" value="down: " />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2mcPA70x3Qz" role="3cqZAp">
          <node concept="1rXfSq" id="2mcPA70x3Qx" role="3clFbG">
            <ref role="37wK5l" node="2mcPA70wLfh" resolve="runInUIThreadAndWait" />
            <node concept="1bVj0M" id="1qbCJZsJ6pK" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="1qbCJZsJ6pL" role="1bW5cS">
                <node concept="3cpWs8" id="1qbCJZsJ6pM" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6pN" role="3cpWs9">
                    <property role="TrG5h" value="oldSelection" />
                    <node concept="3uibUv" id="1qbCJZsJ6pO" role="1tU5fm">
                      <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                    </node>
                    <node concept="2OqwBi" id="1qbCJZsJ6pP" role="33vP2m">
                      <node concept="2OqwBi" id="1qbCJZsJ6pQ" role="2Oq$k0">
                        <node concept="liA8E" id="1qbCJZsJ6pR" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                        <node concept="1rXfSq" id="1qbCJZsJ6pS" role="2Oq$k0">
                          <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6pT" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1qbCJZsJ6pU" role="3cqZAp" />
                <node concept="3cpWs8" id="1qbCJZsJ6pV" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6pW" role="3cpWs9">
                    <property role="TrG5h" value="dataContext" />
                    <node concept="3uibUv" id="1qbCJZsJ6pX" role="1tU5fm">
                      <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
                    </node>
                    <node concept="2OqwBi" id="1qbCJZsJ6pY" role="33vP2m">
                      <node concept="liA8E" id="1qbCJZsJ6pZ" role="2OqNvi">
                        <ref role="37wK5l" node="4XpeNv81V3j" resolve="getDataContext" />
                      </node>
                      <node concept="1rXfSq" id="1qbCJZsJ6q0" role="2Oq$k0">
                        <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1qbCJZsJ6q1" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6q2" role="3cpWs9">
                    <property role="TrG5h" value="keyEvent" />
                    <node concept="3uibUv" id="1qbCJZsJ6q3" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                    <node concept="2ShNRf" id="1qbCJZsJ6q4" role="33vP2m">
                      <node concept="1pGfFk" id="1qbCJZsJ6q5" role="2ShVmc">
                        <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                        <node concept="1rXfSq" id="1qbCJZsJ6q6" role="37wK5m">
                          <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                        </node>
                        <node concept="10M0yZ" id="1qbCJZsJ6q7" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_PRESSED" resolve="KEY_PRESSED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="2YIFZM" id="1qbCJZsJ6q8" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6q9" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6py" resolve="modifiers" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6qa" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                        </node>
                        <node concept="10M0yZ" id="1qbCJZsJ6qb" role="37wK5m">
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          <ref role="3cqZAo" to="hyam:~KeyEvent.CHAR_UNDEFINED" resolve="CHAR_UNDEFINED" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1qbCJZsJ6qc" role="3cqZAp" />
                <node concept="3clFbJ" id="1MWbHmSkm__" role="3cqZAp">
                  <node concept="3clFbS" id="1MWbHmSkm_B" role="3clFbx">
                    <node concept="3clFbJ" id="1MWbHmSkuAr" role="3cqZAp">
                      <node concept="3clFbS" id="1MWbHmSkuAt" role="3clFbx">
                        <node concept="3cpWs8" id="1MWbHmSm4qH" role="3cqZAp">
                          <node concept="3cpWsn" id="1MWbHmSm4qI" role="3cpWs9">
                            <property role="TrG5h" value="message" />
                            <node concept="3uibUv" id="1MWbHmSm4qJ" role="1tU5fm">
                              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                            </node>
                            <node concept="2ShNRf" id="1MWbHmSmaHO" role="33vP2m">
                              <node concept="1pGfFk" id="1MWbHmSmaCr" role="2ShVmc">
                                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1QHqEK" id="1MWbHmSms5$" role="3cqZAp">
                          <node concept="1QHqEC" id="1MWbHmSms5_" role="1QHqEI">
                            <node concept="3clFbS" id="1MWbHmSms5A" role="1bW5cS">
                              <node concept="3clFbF" id="1MWbHmSms5B" role="3cqZAp">
                                <node concept="2OqwBi" id="1MWbHmSms5C" role="3clFbG">
                                  <node concept="37vLTw" id="1MWbHmSms5D" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1MWbHmSm4qI" resolve="message" />
                                  </node>
                                  <node concept="liA8E" id="1MWbHmSms5E" role="2OqNvi">
                                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                                    <node concept="Xl_RD" id="1MWbHmSms5F" role="37wK5m">
                                      <property role="Xl_RC" value="type" />
                                    </node>
                                    <node concept="Xl_RD" id="1MWbHmSms5G" role="37wK5m">
                                      <property role="Xl_RC" value="intentions" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="1MWbHmSms5H" role="3cqZAp">
                                <node concept="3cpWsn" id="1MWbHmSms5I" role="3cpWs9">
                                  <property role="TrG5h" value="contextCell" />
                                  <node concept="3uibUv" id="1MWbHmSms5J" role="1tU5fm">
                                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                                  </node>
                                  <node concept="2OqwBi" id="1MWbHmSmF8x" role="33vP2m">
                                    <node concept="37vLTw" id="1MWbHmSmD03" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                    </node>
                                    <node concept="liA8E" id="1MWbHmSmJG4" role="2OqNvi">
                                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1MWbHmSms5N" role="3cqZAp">
                                <node concept="2OqwBi" id="1MWbHmSms5O" role="3clFbG">
                                  <node concept="37vLTw" id="1MWbHmSms5P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1MWbHmSm4qI" resolve="message" />
                                  </node>
                                  <node concept="liA8E" id="1MWbHmSms5Q" role="2OqNvi">
                                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,double)" resolve="put" />
                                    <node concept="Xl_RD" id="1MWbHmSms5R" role="37wK5m">
                                      <property role="Xl_RC" value="x" />
                                    </node>
                                    <node concept="3cpWs3" id="1MWbHmSms5S" role="37wK5m">
                                      <node concept="2OqwBi" id="1MWbHmSms5T" role="3uHU7w">
                                        <node concept="37vLTw" id="1MWbHmSms5U" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1MWbHmSms5I" resolve="contextCell" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSms5V" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getLeftInset()" resolve="getLeftInset" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1MWbHmSms5W" role="3uHU7B">
                                        <node concept="37vLTw" id="1MWbHmSms5X" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1MWbHmSms5I" resolve="contextCell" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSms5Y" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1MWbHmSms5Z" role="3cqZAp">
                                <node concept="2OqwBi" id="1MWbHmSms60" role="3clFbG">
                                  <node concept="37vLTw" id="1MWbHmSms61" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1MWbHmSm4qI" resolve="message" />
                                  </node>
                                  <node concept="liA8E" id="1MWbHmSms62" role="2OqNvi">
                                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                                    <node concept="Xl_RD" id="1MWbHmSms63" role="37wK5m">
                                      <property role="Xl_RC" value="y" />
                                    </node>
                                    <node concept="3cpWs3" id="1MWbHmSms64" role="37wK5m">
                                      <node concept="2OqwBi" id="1MWbHmSms65" role="3uHU7w">
                                        <node concept="37vLTw" id="1MWbHmSms66" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1MWbHmSms5I" resolve="contextCell" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSms67" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1MWbHmSms68" role="3uHU7B">
                                        <node concept="37vLTw" id="1MWbHmSms69" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1MWbHmSms5I" resolve="contextCell" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSms6a" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1MWbHmSnyI5" role="3cqZAp" />
                              <node concept="3cpWs8" id="1MWbHmSo2$W" role="3cqZAp">
                                <node concept="3cpWsn" id="1MWbHmSo2$X" role="3cpWs9">
                                  <property role="TrG5h" value="query" />
                                  <node concept="3uibUv" id="1MWbHmSo0YB" role="1tU5fm">
                                    <ref role="3uigEE" to="91lp:~IntentionsManager$QueryDescriptor" resolve="IntentionsManager.QueryDescriptor" />
                                  </node>
                                  <node concept="2ShNRf" id="1MWbHmSo2$Y" role="33vP2m">
                                    <node concept="1pGfFk" id="1MWbHmSo2$Z" role="2ShVmc">
                                      <ref role="37wK5l" to="91lp:~IntentionsManager$QueryDescriptor.&lt;init&gt;()" resolve="IntentionsManager.QueryDescriptor" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1MWbHmSnBmB" role="3cqZAp">
                                <node concept="2OqwBi" id="1MWbHmSo8Fb" role="3clFbG">
                                  <node concept="37vLTw" id="1MWbHmSo2_0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1MWbHmSo2$X" resolve="query" />
                                  </node>
                                  <node concept="liA8E" id="1MWbHmSobEp" role="2OqNvi">
                                    <ref role="37wK5l" to="91lp:~IntentionsManager$QueryDescriptor.setEnabledOnly(boolean)" resolve="setEnabledOnly" />
                                    <node concept="3clFbT" id="1MWbHmSoeCz" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1MWbHmSnyJ$" role="3cqZAp" />
                              <node concept="3cpWs8" id="1MWbHmSoKOK" role="3cqZAp">
                                <node concept="3cpWsn" id="1MWbHmSoKOL" role="3cpWs9">
                                  <property role="TrG5h" value="intentions" />
                                  <node concept="A3Dl8" id="1MWbHmSp3Ms" role="1tU5fm">
                                    <node concept="3uibUv" id="1MWbHmSp3Mu" role="A3Ik2">
                                      <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                                      <node concept="3uibUv" id="1MWbHmSp3Mv" role="11_B2D">
                                        <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                                      </node>
                                      <node concept="3uibUv" id="1MWbHmSp3Mw" role="11_B2D">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1MWbHmSoKOM" role="33vP2m">
                                    <node concept="2YIFZM" id="1MWbHmSoKON" role="2Oq$k0">
                                      <ref role="37wK5l" to="91lp:~IntentionsManager.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="91lp:~IntentionsManager" resolve="IntentionsManager" />
                                    </node>
                                    <node concept="liA8E" id="1MWbHmSoKOO" role="2OqNvi">
                                      <ref role="37wK5l" to="91lp:~IntentionsManager.getAvailableIntentions(jetbrains.mps.intentions.IntentionsManager$QueryDescriptor,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="getAvailableIntentions" />
                                      <node concept="37vLTw" id="1MWbHmSoKOP" role="37wK5m">
                                        <ref role="3cqZAo" node="1MWbHmSo2$X" resolve="query" />
                                      </node>
                                      <node concept="2OqwBi" id="1MWbHmSoKOQ" role="37wK5m">
                                        <node concept="37vLTw" id="1MWbHmSoKOR" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSoKOS" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedNode()" resolve="getSelectedNode" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1MWbHmSoKOT" role="37wK5m">
                                        <node concept="37vLTw" id="1MWbHmSoKOU" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                        </node>
                                        <node concept="liA8E" id="1MWbHmSoKOV" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1MWbHmSms6E" role="3cqZAp">
                                <node concept="2OqwBi" id="1MWbHmSms6F" role="3clFbG">
                                  <node concept="37vLTw" id="1MWbHmSms6G" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1MWbHmSm4qI" resolve="message" />
                                  </node>
                                  <node concept="liA8E" id="1MWbHmSms6H" role="2OqNvi">
                                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                                    <node concept="Xl_RD" id="1MWbHmSms6I" role="37wK5m">
                                      <property role="Xl_RC" value="intentions" />
                                    </node>
                                    <node concept="2ShNRf" id="1MWbHmSms6J" role="37wK5m">
                                      <node concept="1pGfFk" id="1MWbHmSms6K" role="2ShVmc">
                                        <ref role="37wK5l" to="mxf6:~JSONArray.&lt;init&gt;(java.util.Collection)" resolve="JSONArray" />
                                        <node concept="2OqwBi" id="1MWbHmSms6L" role="37wK5m">
                                          <node concept="2OqwBi" id="1MWbHmSms6M" role="2Oq$k0">
                                            <node concept="37vLTw" id="1MWbHmSpkNN" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1MWbHmSoKOL" resolve="intentions" />
                                            </node>
                                            <node concept="3$u5V9" id="1MWbHmSms6O" role="2OqNvi">
                                              <node concept="1bVj0M" id="1MWbHmSms6P" role="23t8la">
                                                <node concept="3clFbS" id="1MWbHmSms6Q" role="1bW5cS">
                                                  <node concept="3cpWs8" id="1MWbHmSms6R" role="3cqZAp">
                                                    <node concept="3cpWsn" id="1MWbHmSms6S" role="3cpWs9">
                                                      <property role="TrG5h" value="o" />
                                                      <node concept="3uibUv" id="1MWbHmSms6T" role="1tU5fm">
                                                        <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                                                      </node>
                                                      <node concept="2ShNRf" id="1MWbHmSms6U" role="33vP2m">
                                                        <node concept="1pGfFk" id="1MWbHmSms6V" role="2ShVmc">
                                                          <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbF" id="1MWbHmSms6W" role="3cqZAp">
                                                    <node concept="2OqwBi" id="1MWbHmSms6X" role="3clFbG">
                                                      <node concept="37vLTw" id="1MWbHmSms6Y" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="1MWbHmSms6S" resolve="o" />
                                                      </node>
                                                      <node concept="liA8E" id="1MWbHmSms6Z" role="2OqNvi">
                                                        <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                                                        <node concept="Xl_RD" id="1MWbHmSms70" role="37wK5m">
                                                          <property role="Xl_RC" value="text" />
                                                        </node>
                                                        <node concept="2OqwBi" id="1MWbHmSp$gD" role="37wK5m">
                                                          <node concept="2OqwBi" id="1MWbHmSms71" role="2Oq$k0">
                                                            <node concept="37vLTw" id="1MWbHmSms72" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="1MWbHmSms7g" resolve="it" />
                                                            </node>
                                                            <node concept="2OwXpG" id="1MWbHmSpwT5" role="2OqNvi">
                                                              <ref role="2Oxat6" to="18ew:~Pair.o1" resolve="o1" />
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="1MWbHmSpBl2" role="2OqNvi">
                                                            <ref role="37wK5l" to="nddn:~IntentionExecutable.getDescription(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="getDescription" />
                                                            <node concept="2OqwBi" id="1MWbHmSpFRE" role="37wK5m">
                                                              <node concept="37vLTw" id="1MWbHmSpElO" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="1MWbHmSms7g" resolve="it" />
                                                              </node>
                                                              <node concept="2OwXpG" id="1MWbHmSpHlN" role="2OqNvi">
                                                                <ref role="2Oxat6" to="18ew:~Pair.o2" resolve="o2" />
                                                              </node>
                                                            </node>
                                                            <node concept="2OqwBi" id="1MWbHmSpRCB" role="37wK5m">
                                                              <node concept="37vLTw" id="1MWbHmSpNzB" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                                              </node>
                                                              <node concept="liA8E" id="1MWbHmSpVWZ" role="2OqNvi">
                                                                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbF" id="1MWbHmSms7e" role="3cqZAp">
                                                    <node concept="37vLTw" id="1MWbHmSms7f" role="3clFbG">
                                                      <ref role="3cqZAo" node="1MWbHmSms6S" resolve="o" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Rh6nW" id="1MWbHmSms7g" role="1bW2Oz">
                                                  <property role="TrG5h" value="it" />
                                                  <node concept="2jxLKc" id="1MWbHmSms7h" role="1tU5fm" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="ANE8D" id="1MWbHmSms7i" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1MWbHmSms7m" role="ukAjM">
                            <node concept="37vLTw" id="1MWbHmSms7n" role="2Oq$k0">
                              <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                            </node>
                            <node concept="liA8E" id="1MWbHmSms7o" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1MWbHmSqdA3" role="3cqZAp">
                          <node concept="1rXfSq" id="1MWbHmSqdA1" role="3clFbG">
                            <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                            <node concept="37vLTw" id="1MWbHmSqjp5" role="37wK5m">
                              <ref role="3cqZAo" node="1MWbHmSm4qI" resolve="message" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1MWbHmSl2wJ" role="3cqZAp" />
                        <node concept="3clFbF" id="1MWbHmSkXFf" role="3cqZAp">
                          <node concept="2OqwBi" id="1MWbHmSkYM1" role="3clFbG">
                            <node concept="37vLTw" id="1MWbHmSkXFd" role="2Oq$k0">
                              <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                            </node>
                            <node concept="liA8E" id="1MWbHmSl0_C" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="1MWbHmSkOeL" role="3clFbw">
                        <node concept="3clFbC" id="1MWbHmSkSvl" role="3uHU7w">
                          <node concept="10M0yZ" id="1MWbHmSq$f9" role="3uHU7w">
                            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ENTER" resolve="VK_ENTER" />
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          </node>
                          <node concept="37vLTw" id="1MWbHmSkQaO" role="3uHU7B">
                            <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                          </node>
                        </node>
                        <node concept="3clFbC" id="1MWbHmSkI5B" role="3uHU7B">
                          <node concept="37vLTw" id="1MWbHmSkFM6" role="3uHU7B">
                            <ref role="3cqZAo" node="1qbCJZsJ6py" resolve="modifiers" />
                          </node>
                          <node concept="10M0yZ" id="1MWbHmSkLxH" role="3uHU7w">
                            <ref role="3cqZAo" to="hyam:~InputEvent.ALT_DOWN_MASK" resolve="ALT_DOWN_MASK" />
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1MWbHmSkt2_" role="3clFbw">
                    <node concept="2OqwBi" id="1MWbHmSkt2B" role="3fr31v">
                      <node concept="37vLTw" id="1MWbHmSkt2C" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="1MWbHmSkt2D" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1MWbHmSkkYL" role="3cqZAp" />
                <node concept="3clFbJ" id="1MWbHmSk9GO" role="3cqZAp">
                  <node concept="3clFbS" id="1MWbHmSk9GQ" role="3clFbx">
                    <node concept="3SKdUt" id="1qbCJZsJ6qd" role="3cqZAp">
                      <node concept="1PaTwC" id="xL$$tDoztC" role="3ndbpf">
                        <node concept="3oM_SD" id="xL$$tDoztD" role="1PaTwD">
                          <property role="3oM_SC" value="TODO" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztE" role="1PaTwD">
                          <property role="3oM_SC" value="find" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztF" role="1PaTwD">
                          <property role="3oM_SC" value="component" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztG" role="1PaTwD">
                          <property role="3oM_SC" value="local" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztH" role="1PaTwD">
                          <property role="3oM_SC" value="keystroke" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztI" role="1PaTwD">
                          <property role="3oM_SC" value="(see" />
                        </node>
                        <node concept="3oM_SD" id="xL$$tDoztJ" role="1PaTwD">
                          <property role="3oM_SC" value="IdeKeyEventDispatcher)" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1qbCJZsJ6qf" role="3cqZAp">
                      <node concept="3cpWsn" id="1qbCJZsJ6qg" role="3cpWs9">
                        <property role="TrG5h" value="keymap" />
                        <node concept="3uibUv" id="1qbCJZsJ6qh" role="1tU5fm">
                          <ref role="3uigEE" to="vuw5:~Keymap" resolve="Keymap" />
                        </node>
                        <node concept="2OqwBi" id="1qbCJZsJ6qi" role="33vP2m">
                          <node concept="2YIFZM" id="1qbCJZsJ6qj" role="2Oq$k0">
                            <ref role="1Pybhc" to="vuw5:~KeymapManager" resolve="KeymapManager" />
                            <ref role="37wK5l" to="vuw5:~KeymapManager.getInstance()" resolve="getInstance" />
                          </node>
                          <node concept="liA8E" id="1qbCJZsJ6qk" role="2OqNvi">
                            <ref role="37wK5l" to="vuw5:~KeymapManager.getActiveKeymap()" resolve="getActiveKeymap" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1qbCJZsJ6ql" role="3cqZAp">
                      <node concept="3cpWsn" id="1qbCJZsJ6qm" role="3cpWs9">
                        <property role="TrG5h" value="actionIds" />
                        <node concept="10Q1$e" id="1qbCJZsJ6qn" role="1tU5fm">
                          <node concept="17QB3L" id="1qbCJZsJ6qo" role="10Q1$1" />
                        </node>
                        <node concept="2OqwBi" id="1qbCJZsJ6qp" role="33vP2m">
                          <node concept="37vLTw" id="1qbCJZsJ6qq" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ6qg" resolve="keymap" />
                          </node>
                          <node concept="liA8E" id="1qbCJZsJ6qr" role="2OqNvi">
                            <ref role="37wK5l" to="vuw5:~Keymap.getActionIds(javax.swing.KeyStroke)" resolve="getActionIds" />
                            <node concept="2YIFZM" id="1qbCJZsJ6qs" role="37wK5m">
                              <ref role="37wK5l" to="dxuu:~KeyStroke.getKeyStroke(int,int,boolean)" resolve="getKeyStroke" />
                              <ref role="1Pybhc" to="dxuu:~KeyStroke" resolve="KeyStroke" />
                              <node concept="37vLTw" id="1qbCJZsJ6qt" role="37wK5m">
                                <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                              </node>
                              <node concept="37vLTw" id="1qbCJZsJ6qu" role="37wK5m">
                                <ref role="3cqZAo" node="1qbCJZsJ6py" resolve="modifiers" />
                              </node>
                              <node concept="3clFbT" id="1qbCJZsJ6qv" role="37wK5m">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1qbCJZsJ6qw" role="3cqZAp">
                      <node concept="3clFbS" id="1qbCJZsJ6qx" role="3clFbx">
                        <node concept="3cpWs8" id="1qbCJZsJ6qy" role="3cqZAp">
                          <node concept="3cpWsn" id="1qbCJZsJ6qz" role="3cpWs9">
                            <property role="TrG5h" value="actionManager" />
                            <node concept="3uibUv" id="1qbCJZsJ6q$" role="1tU5fm">
                              <ref role="3uigEE" to="8rsk:~ActionManagerEx" resolve="ActionManagerEx" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6q_" role="33vP2m">
                              <ref role="37wK5l" to="8rsk:~ActionManagerEx.getInstanceEx()" resolve="getInstanceEx" />
                              <ref role="1Pybhc" to="8rsk:~ActionManagerEx" resolve="ActionManagerEx" />
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="1qbCJZsJ6qA" role="3cqZAp">
                          <node concept="2GrKxI" id="1qbCJZsJ6qB" role="2Gsz3X">
                            <property role="TrG5h" value="actionId" />
                          </node>
                          <node concept="37vLTw" id="1qbCJZsJ6qC" role="2GsD0m">
                            <ref role="3cqZAo" node="1qbCJZsJ6qm" resolve="actionIds" />
                          </node>
                          <node concept="3clFbS" id="1qbCJZsJ6qD" role="2LFqv$">
                            <node concept="3cpWs8" id="1qbCJZsJ6qE" role="3cqZAp">
                              <node concept="3cpWsn" id="1qbCJZsJ6qF" role="3cpWs9">
                                <property role="TrG5h" value="action" />
                                <node concept="3uibUv" id="1qbCJZsJ6qG" role="1tU5fm">
                                  <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                                </node>
                                <node concept="2OqwBi" id="1qbCJZsJ6qH" role="33vP2m">
                                  <node concept="37vLTw" id="1qbCJZsJ6qI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qz" resolve="actionManager" />
                                  </node>
                                  <node concept="liA8E" id="1qbCJZsJ6qJ" role="2OqNvi">
                                    <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                                    <node concept="2GrUjf" id="1qbCJZsJ6qK" role="37wK5m">
                                      <ref role="2Gs0qQ" node="1qbCJZsJ6qB" resolve="actionId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1qbCJZsJ6qL" role="3cqZAp">
                              <node concept="3clFbS" id="1qbCJZsJ6qM" role="3clFbx">
                                <node concept="3N13vt" id="1qbCJZsJ6qN" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="1qbCJZsJ6qO" role="3clFbw">
                                <node concept="10Nm6u" id="1qbCJZsJ6qP" role="3uHU7w" />
                                <node concept="37vLTw" id="1qbCJZsJ6qQ" role="3uHU7B">
                                  <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1qbCJZsJ6qR" role="3cqZAp">
                              <node concept="3cpWsn" id="1qbCJZsJ6qS" role="3cpWs9">
                                <property role="TrG5h" value="actionEvent" />
                                <node concept="3uibUv" id="1qbCJZsJ6qT" role="1tU5fm">
                                  <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                                </node>
                                <node concept="2YIFZM" id="1qbCJZsJ6qU" role="33vP2m">
                                  <ref role="1Pybhc" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                                  <ref role="37wK5l" to="qkt:~AnActionEvent.createFromAnAction(com.intellij.openapi.actionSystem.AnAction,java.awt.event.InputEvent,java.lang.String,com.intellij.openapi.actionSystem.DataContext)" resolve="createFromAnAction" />
                                  <node concept="37vLTw" id="1qbCJZsJ6qV" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6qW" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                                  </node>
                                  <node concept="10M0yZ" id="1qbCJZsJ6qX" role="37wK5m">
                                    <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                                    <ref role="3cqZAo" to="qkt:~ActionPlaces.MAIN_MENU" resolve="MAIN_MENU" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6qY" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6pW" resolve="dataContext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1qbCJZsJ6qZ" role="3cqZAp">
                              <node concept="3cpWsn" id="1qbCJZsJ6r0" role="3cpWs9">
                                <property role="TrG5h" value="token" />
                                <node concept="3uibUv" id="1qbCJZsJ6r1" role="1tU5fm">
                                  <ref role="3uigEE" to="bd8o:~AccessToken" resolve="AccessToken" />
                                </node>
                                <node concept="2YIFZM" id="1qbCJZsJ6r2" role="33vP2m">
                                  <ref role="1Pybhc" to="ddhc:~ProhibitAWTEvents" resolve="ProhibitAWTEvents" />
                                  <ref role="37wK5l" to="ddhc:~ProhibitAWTEvents.start(java.lang.String)" resolve="start" />
                                  <node concept="Xl_RD" id="1qbCJZsJ6r3" role="37wK5m">
                                    <property role="Xl_RC" value="update" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2GUZhq" id="1qbCJZsJ6r4" role="3cqZAp">
                              <node concept="3clFbS" id="1qbCJZsJ6r5" role="2GV8ay">
                                <node concept="3clFbF" id="1qbCJZsJ6r6" role="3cqZAp">
                                  <node concept="2OqwBi" id="1qbCJZsJ6r7" role="3clFbG">
                                    <node concept="1eOMI4" id="1qbCJZsJ6r8" role="2Oq$k0">
                                      <node concept="10QFUN" id="1qbCJZsJ6r9" role="1eOMHV">
                                        <node concept="2YIFZM" id="1qbCJZsJ6ra" role="10QFUP">
                                          <ref role="37wK5l" to="bd8o:~TransactionGuard.getInstance()" resolve="getInstance" />
                                          <ref role="1Pybhc" to="bd8o:~TransactionGuard" resolve="TransactionGuard" />
                                        </node>
                                        <node concept="3uibUv" id="1qbCJZsJ6rb" role="10QFUM">
                                          <ref role="3uigEE" to="bd8o:~TransactionGuardImpl" resolve="TransactionGuardImpl" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1qbCJZsJ6rc" role="2OqNvi">
                                      <ref role="37wK5l" to="bd8o:~TransactionGuardImpl.performUserActivity(java.lang.Runnable)" resolve="performUserActivity" />
                                      <node concept="1bVj0M" id="1qbCJZsJ6rd" role="37wK5m">
                                        <property role="3yWfEV" value="true" />
                                        <node concept="3clFbS" id="1qbCJZsJ6re" role="1bW5cS">
                                          <node concept="3clFbF" id="1qbCJZsJ6rf" role="3cqZAp">
                                            <node concept="2YIFZM" id="1qbCJZsJ6rg" role="3clFbG">
                                              <ref role="37wK5l" to="8rsk:~ActionUtil.performDumbAwareUpdate(boolean,com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.AnActionEvent,boolean)" resolve="performDumbAwareUpdate" />
                                              <ref role="1Pybhc" to="8rsk:~ActionUtil" resolve="ActionUtil" />
                                              <node concept="3clFbT" id="1qbCJZsJ6rh" role="37wK5m">
                                                <property role="3clFbU" value="false" />
                                              </node>
                                              <node concept="37vLTw" id="1qbCJZsJ6ri" role="37wK5m">
                                                <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                              </node>
                                              <node concept="37vLTw" id="1qbCJZsJ6rj" role="37wK5m">
                                                <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                              </node>
                                              <node concept="3clFbT" id="1qbCJZsJ6rk" role="37wK5m">
                                                <property role="3clFbU" value="true" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="1qbCJZsJ6rl" role="3cqZAp" />
                              </node>
                              <node concept="3clFbS" id="1qbCJZsJ6rm" role="2GVbov">
                                <node concept="3clFbF" id="1qbCJZsJ6rn" role="3cqZAp">
                                  <node concept="2OqwBi" id="1qbCJZsJ6ro" role="3clFbG">
                                    <node concept="37vLTw" id="1qbCJZsJ6rp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1qbCJZsJ6r0" resolve="token" />
                                    </node>
                                    <node concept="liA8E" id="1qbCJZsJ6rq" role="2OqNvi">
                                      <ref role="37wK5l" to="bd8o:~AccessToken.close()" resolve="close" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1qbCJZsJ6rr" role="3cqZAp">
                              <node concept="3clFbS" id="1qbCJZsJ6rs" role="3clFbx">
                                <node concept="RRSsy" id="2wu1c06PC4E" role="3cqZAp">
                                  <node concept="3cpWs3" id="2wu1c06PDJo" role="RRSoy">
                                    <node concept="2GrUjf" id="2wu1c06PDJp" role="3uHU7w">
                                      <ref role="2Gs0qQ" node="1qbCJZsJ6qB" resolve="actionId" />
                                    </node>
                                    <node concept="Xl_RD" id="2wu1c06PDJq" role="3uHU7B">
                                      <property role="Xl_RC" value="not applicable: " />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3N13vt" id="1qbCJZsJ6r$" role="3cqZAp" />
                              </node>
                              <node concept="3fqX7Q" id="1qbCJZsJ6r_" role="3clFbw">
                                <node concept="2OqwBi" id="1qbCJZsJ6rA" role="3fr31v">
                                  <node concept="2OqwBi" id="1qbCJZsJ6rB" role="2Oq$k0">
                                    <node concept="37vLTw" id="1qbCJZsJ6rC" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                    </node>
                                    <node concept="liA8E" id="1qbCJZsJ6rD" role="2OqNvi">
                                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1qbCJZsJ6rE" role="2OqNvi">
                                    <ref role="37wK5l" to="qkt:~Presentation.isEnabled()" resolve="isEnabled" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1qbCJZsJ6rF" role="3cqZAp" />
                            <node concept="3clFbF" id="1qbCJZsJ6rG" role="3cqZAp">
                              <node concept="2OqwBi" id="1qbCJZsJ6rH" role="3clFbG">
                                <node concept="37vLTw" id="1qbCJZsJ6rI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1qbCJZsJ6qz" resolve="actionManager" />
                                </node>
                                <node concept="liA8E" id="1qbCJZsJ6rJ" role="2OqNvi">
                                  <ref role="37wK5l" to="8rsk:~ActionManagerEx.fireBeforeActionPerformed(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.DataContext,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="fireBeforeActionPerformed" />
                                  <node concept="37vLTw" id="1qbCJZsJ6rK" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6rL" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6pW" resolve="dataContext" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6rM" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1qbCJZsJ6rN" role="3cqZAp">
                              <node concept="2OqwBi" id="1qbCJZsJ6rO" role="3clFbG">
                                <node concept="1eOMI4" id="1qbCJZsJ6rP" role="2Oq$k0">
                                  <node concept="10QFUN" id="1qbCJZsJ6rQ" role="1eOMHV">
                                    <node concept="2YIFZM" id="1qbCJZsJ6rR" role="10QFUP">
                                      <ref role="37wK5l" to="bd8o:~TransactionGuard.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="bd8o:~TransactionGuard" resolve="TransactionGuard" />
                                    </node>
                                    <node concept="3uibUv" id="1qbCJZsJ6rS" role="10QFUM">
                                      <ref role="3uigEE" to="bd8o:~TransactionGuardImpl" resolve="TransactionGuardImpl" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1qbCJZsJ6rT" role="2OqNvi">
                                  <ref role="37wK5l" to="bd8o:~TransactionGuardImpl.performUserActivity(java.lang.Runnable)" resolve="performUserActivity" />
                                  <node concept="1bVj0M" id="1qbCJZsJ6rU" role="37wK5m">
                                    <property role="3yWfEV" value="true" />
                                    <node concept="3clFbS" id="1qbCJZsJ6rV" role="1bW5cS">
                                      <node concept="3clFbF" id="1qbCJZsJ6rW" role="3cqZAp">
                                        <node concept="2OqwBi" id="1qbCJZsJ6rX" role="3clFbG">
                                          <node concept="37vLTw" id="1qbCJZsJ6rY" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                          </node>
                                          <node concept="liA8E" id="1qbCJZsJ6rZ" role="2OqNvi">
                                            <ref role="37wK5l" to="qkt:~AnAction.actionPerformed(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="actionPerformed" />
                                            <node concept="37vLTw" id="1qbCJZsJ6s0" role="37wK5m">
                                              <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1qbCJZsJ6s1" role="3cqZAp">
                              <node concept="2OqwBi" id="1qbCJZsJ6s2" role="3clFbG">
                                <node concept="37vLTw" id="1qbCJZsJ6s3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1qbCJZsJ6qz" resolve="actionManager" />
                                </node>
                                <node concept="liA8E" id="1qbCJZsJ6s4" role="2OqNvi">
                                  <ref role="37wK5l" to="8rsk:~ActionManagerEx.fireAfterActionPerformed(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.DataContext,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="fireAfterActionPerformed" />
                                  <node concept="37vLTw" id="1qbCJZsJ6s5" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qF" resolve="action" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6s6" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6pW" resolve="dataContext" />
                                  </node>
                                  <node concept="37vLTw" id="1qbCJZsJ6s7" role="37wK5m">
                                    <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1qbCJZsJ6s8" role="3cqZAp">
                              <node concept="2OqwBi" id="1qbCJZsJ6s9" role="3clFbG">
                                <node concept="37vLTw" id="1qbCJZsJ6sa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                                </node>
                                <node concept="liA8E" id="1qbCJZsJ6sb" role="2OqNvi">
                                  <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                                </node>
                              </node>
                            </node>
                            <node concept="RRSsy" id="2wu1c06PInh" role="3cqZAp">
                              <node concept="3cpWs3" id="1qbCJZsJ6sg" role="RRSoy">
                                <node concept="2OqwBi" id="1qbCJZsJ6sh" role="3uHU7w">
                                  <node concept="2OqwBi" id="1qbCJZsJ6si" role="2Oq$k0">
                                    <node concept="37vLTw" id="1qbCJZsJ6sj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1qbCJZsJ6qS" resolve="actionEvent" />
                                    </node>
                                    <node concept="liA8E" id="1qbCJZsJ6sk" role="2OqNvi">
                                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1qbCJZsJ6sl" role="2OqNvi">
                                    <ref role="37wK5l" to="qkt:~Presentation.getText()" resolve="getText" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="1qbCJZsJ6sm" role="3uHU7B">
                                  <property role="Xl_RC" value="processed by " />
                                </node>
                              </node>
                            </node>
                            <node concept="3zACq4" id="1qbCJZsJ6sn" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="1qbCJZsJ6so" role="3clFbw">
                        <node concept="3eOSWO" id="1qbCJZsJ6sp" role="3uHU7w">
                          <node concept="3cmrfG" id="1qbCJZsJ6sq" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="1qbCJZsJ6sr" role="3uHU7B">
                            <node concept="37vLTw" id="1qbCJZsJ6ss" role="2Oq$k0">
                              <ref role="3cqZAo" node="1qbCJZsJ6qm" resolve="actionIds" />
                            </node>
                            <node concept="1Rwk04" id="1qbCJZsJ6st" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3y3z36" id="1qbCJZsJ6su" role="3uHU7B">
                          <node concept="37vLTw" id="1qbCJZsJ6sv" role="3uHU7B">
                            <ref role="3cqZAo" node="1qbCJZsJ6qm" resolve="actionIds" />
                          </node>
                          <node concept="10Nm6u" id="1qbCJZsJ6sw" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1MWbHmSkg4u" role="3clFbw">
                    <node concept="2OqwBi" id="1MWbHmSkg4w" role="3fr31v">
                      <node concept="37vLTw" id="1MWbHmSkg4x" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="1MWbHmSkg4y" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1qbCJZsJ6sx" role="3cqZAp" />
                <node concept="3clFbJ" id="1qbCJZsJ6sy" role="3cqZAp">
                  <node concept="3clFbS" id="1qbCJZsJ6sz" role="3clFbx">
                    <node concept="3clFbF" id="1qbCJZsJ6s$" role="3cqZAp">
                      <node concept="2OqwBi" id="1qbCJZsJ6s_" role="3clFbG">
                        <node concept="liA8E" id="1qbCJZsJ6sA" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.processKeyPressed(java.awt.event.KeyEvent)" resolve="processKeyPressed" />
                          <node concept="37vLTw" id="1qbCJZsJ6sB" role="37wK5m">
                            <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="1qbCJZsJ6sC" role="2Oq$k0">
                          <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1MWbHmSjl7E" role="3cqZAp">
                      <node concept="3clFbS" id="1MWbHmSjl7G" role="3clFbx">
                        <node concept="RRSsy" id="2wu1c06PMnk" role="3cqZAp">
                          <node concept="Xl_RD" id="1qbCJZsJ6sH" role="RRSoy">
                            <property role="Xl_RC" value="processed by editor" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1MWbHmSjnN4" role="3clFbw">
                        <node concept="37vLTw" id="1MWbHmSjmCC" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                        </node>
                        <node concept="liA8E" id="1MWbHmSjp$C" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1qbCJZsJ6sI" role="3clFbw">
                    <node concept="2OqwBi" id="1qbCJZsJ6sJ" role="3fr31v">
                      <node concept="37vLTw" id="1qbCJZsJ6sK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6sL" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1qbCJZsJ6sM" role="3cqZAp">
                  <node concept="3clFbS" id="1qbCJZsJ6sN" role="3clFbx">
                    <node concept="RRSsy" id="2wu1c06PQ0d" role="3cqZAp">
                      <node concept="3cpWs3" id="1qbCJZsJ6sS" role="RRSoy">
                        <node concept="37vLTw" id="1qbCJZsJ6sT" role="3uHU7w">
                          <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                        </node>
                        <node concept="Xl_RD" id="1qbCJZsJ6sU" role="3uHU7B">
                          <property role="Xl_RC" value="unprocessed keydown: " />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1qbCJZsJ6sV" role="3cqZAp">
                      <node concept="3clFbS" id="1qbCJZsJ6sW" role="3clFbx">
                        <node concept="3clFbH" id="1qbCJZsJ6sX" role="3cqZAp" />
                      </node>
                      <node concept="3y3z36" id="1qbCJZsJ6sY" role="3clFbw">
                        <node concept="3cmrfG" id="1qbCJZsJ6sZ" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6t0" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6pw" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="SfApY" id="1qbCJZsJ6t1" role="3cqZAp">
                      <node concept="3clFbS" id="1qbCJZsJ6t2" role="SfCbr">
                        <node concept="3clFbF" id="1qbCJZsJ6t3" role="3cqZAp">
                          <node concept="1rXfSq" id="1qbCJZsJ6t4" role="3clFbG">
                            <ref role="37wK5l" node="1qbCJZsJ6p3" resolve="simulateKeypress" />
                            <node concept="37vLTw" id="1qbCJZsJ6t5" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6t6" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6pw" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="1qbCJZsJ6t7" role="TEbGg">
                        <node concept="3cpWsn" id="1qbCJZsJ6t8" role="TDEfY">
                          <property role="TrG5h" value="ex" />
                          <node concept="3uibUv" id="1qbCJZsJ6t9" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1qbCJZsJ6ta" role="TDEfX">
                          <node concept="YS8fn" id="1qbCJZsJ6tb" role="3cqZAp">
                            <node concept="2ShNRf" id="1qbCJZsJ6tc" role="YScLw">
                              <node concept="1pGfFk" id="1qbCJZsJ6td" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                                <node concept="37vLTw" id="1qbCJZsJ6te" role="37wK5m">
                                  <ref role="3cqZAo" node="1qbCJZsJ6t8" resolve="ex" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="1qbCJZsJ6tf" role="3clFbw">
                    <node concept="3y3z36" id="1qbCJZsJ6tg" role="3uHU7w">
                      <node concept="1Xhbcc" id="1qbCJZsJ6th" role="3uHU7w">
                        <property role="1XhdNS" value="\0" />
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6ti" role="3uHU7B">
                        <ref role="3cqZAo" node="1qbCJZsJ6pu" resolve="keyCode" />
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="1qbCJZsJ6tj" role="3uHU7B">
                      <node concept="2OqwBi" id="1qbCJZsJ6tk" role="3fr31v">
                        <node concept="37vLTw" id="1qbCJZsJ6tl" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ6q2" resolve="keyEvent" />
                        </node>
                        <node concept="liA8E" id="1qbCJZsJ6tm" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1qbCJZsJ6tn" role="3cqZAp" />
                <node concept="3clFbF" id="1qbCJZsJ6to" role="3cqZAp">
                  <node concept="2YIFZM" id="1qbCJZsJ6tp" role="3clFbG">
                    <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                    <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                    <node concept="1bVj0M" id="1qbCJZsJ6tq" role="37wK5m">
                      <node concept="3clFbS" id="1qbCJZsJ6tr" role="1bW5cS">
                        <node concept="3clFbF" id="1qbCJZsJ6ts" role="3cqZAp">
                          <node concept="1rXfSq" id="1qbCJZsJ6tt" role="3clFbG">
                            <ref role="37wK5l" node="1qbCJZsJ6f0" resolve="renderSelections" />
                            <node concept="2OqwBi" id="1qbCJZsJ6tu" role="37wK5m">
                              <node concept="2OqwBi" id="1qbCJZsJ6tv" role="2Oq$k0">
                                <node concept="liA8E" id="1qbCJZsJ6tw" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                                </node>
                                <node concept="1rXfSq" id="1qbCJZsJ6tx" role="2Oq$k0">
                                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1qbCJZsJ6ty" role="2OqNvi">
                                <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="1qbCJZsJ6tz" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6pN" resolve="oldSelection" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1qbCJZsJ6t$" role="3cqZAp">
                          <node concept="1rXfSq" id="1qbCJZsJ6t_" role="3clFbG">
                            <ref role="37wK5l" node="1qbCJZsJ6d4" resolve="renderView" />
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
      <node concept="3uibUv" id="1qbCJZsJ6tA" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6tB" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="3clFb_" id="1qbCJZsJ6tC" role="jymVt">
      <property role="TrG5h" value="simulateKeyUp" />
      <node concept="37vLTG" id="1qbCJZsJ6tD" role="3clF46">
        <property role="TrG5h" value="keyCode" />
        <node concept="10Oyi0" id="1qbCJZsJ6tE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1qbCJZsJ6tF" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Pfzv" id="1qbCJZsJ6tG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ6tH" role="3clF45" />
      <node concept="3Tm1VV" id="1qbCJZsJ6tI" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ6tJ" role="3clF47">
        <node concept="3clFbF" id="2mcPA70x7nG" role="3cqZAp">
          <node concept="1rXfSq" id="2mcPA70x7nF" role="3clFbG">
            <ref role="37wK5l" node="2mcPA70wLfh" resolve="runInUIThreadAndWait" />
            <node concept="1bVj0M" id="1qbCJZsJ6tM" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="1qbCJZsJ6tN" role="1bW5cS">
                <node concept="3cpWs8" id="1qbCJZsJ6tO" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6tP" role="3cpWs9">
                    <property role="TrG5h" value="keyEvent" />
                    <node concept="3uibUv" id="1qbCJZsJ6tQ" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                    </node>
                    <node concept="2ShNRf" id="1qbCJZsJ6tR" role="33vP2m">
                      <node concept="1pGfFk" id="1qbCJZsJ6tS" role="2ShVmc">
                        <ref role="37wK5l" to="hyam:~KeyEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,char)" resolve="KeyEvent" />
                        <node concept="1rXfSq" id="1qbCJZsJ6tT" role="37wK5m">
                          <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                        </node>
                        <node concept="10M0yZ" id="1qbCJZsJ6tU" role="37wK5m">
                          <ref role="3cqZAo" to="hyam:~KeyEvent.KEY_RELEASED" resolve="KEY_RELEASED" />
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                        </node>
                        <node concept="2YIFZM" id="1qbCJZsJ6tV" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        </node>
                        <node concept="3cmrfG" id="1qbCJZsJ6tW" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="1qbCJZsJ6tX" role="37wK5m">
                          <ref role="3cqZAo" node="1qbCJZsJ6tD" resolve="keyCode" />
                        </node>
                        <node concept="10M0yZ" id="1qbCJZsJ6tY" role="37wK5m">
                          <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          <ref role="3cqZAo" to="hyam:~KeyEvent.CHAR_UNDEFINED" resolve="CHAR_UNDEFINED" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6tZ" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6u0" role="3clFbG">
                    <node concept="liA8E" id="1qbCJZsJ6u1" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.processKeyReleased(java.awt.event.KeyEvent)" resolve="processKeyReleased" />
                      <node concept="37vLTw" id="1qbCJZsJ6u2" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ6tP" resolve="keyEvent" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="1qbCJZsJ6u3" role="2Oq$k0">
                      <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1qbCJZsJ6u4" role="3cqZAp">
                  <node concept="3clFbS" id="1qbCJZsJ6u5" role="3clFbx">
                    <node concept="RRSsy" id="2wu1c06PTmF" role="3cqZAp">
                      <node concept="3cpWs3" id="1qbCJZsJ6ua" role="RRSoy">
                        <node concept="37vLTw" id="1qbCJZsJ6ub" role="3uHU7w">
                          <ref role="3cqZAo" node="1qbCJZsJ6tD" resolve="keyCode" />
                        </node>
                        <node concept="Xl_RD" id="1qbCJZsJ6uc" role="3uHU7B">
                          <property role="Xl_RC" value="unprocessed keyup: " />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1qbCJZsJ6ud" role="3clFbw">
                    <node concept="2OqwBi" id="1qbCJZsJ6ue" role="3fr31v">
                      <node concept="37vLTw" id="1qbCJZsJ6uf" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6tP" resolve="keyEvent" />
                      </node>
                      <node concept="liA8E" id="1qbCJZsJ6ug" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~InputEvent.isConsumed()" resolve="isConsumed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1qbCJZsJ6uh" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6ui" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="1qbCJZsJ6uj" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1qbCJZsJ6uk" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ6ul" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="onError" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1qbCJZsJ6um" role="1B3o_S" />
      <node concept="3cqZAl" id="1qbCJZsJ6un" role="3clF45" />
      <node concept="37vLTG" id="1qbCJZsJ6uq" role="3clF46">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="5Sw$pxbP8HV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3clFbS" id="1qbCJZsJ6us" role="3clF47">
        <node concept="RRSsy" id="5Sw$pxbP8g0" role="3cqZAp">
          <property role="RRSoG" value="error" />
          <node concept="Xl_RD" id="5Sw$pxbP8g2" role="RRSoy" />
          <node concept="37vLTw" id="5Sw$pxbP8rE" role="RRSow">
            <ref role="3cqZAo" node="1qbCJZsJ6uq" resolve="exception" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

