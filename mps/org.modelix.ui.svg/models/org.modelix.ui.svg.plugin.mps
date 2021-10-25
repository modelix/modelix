<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f6154b4-93e5-4a51-94de-d145e58184e7(org.modelix.ui.svg.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="vyue" ref="r:a009b15b-6386-4045-b94f-fa21b9788c19(org.modelix.ui.svg.svg)" />
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
    <import index="pcow" ref="r:ad9b9e36-6a2e-49cf-96d6-a1b4ef7befcd(org.modelix.ui.svg.environment)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qr12" ref="r:24ed310f-f0ab-4270-aa2f-e2180b5d4c31(org.modelix.ui.svg.repository)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mxf6" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.json(org.modelix.lib/)" />
    <import index="fz1u" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.websocket.api(org.modelix.jetty/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="ia5i" ref="r:53d14de3-e820-4a3b-9328-a2833dcab0bd(org.modelix.common)" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="91lp" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.intentions(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="nddn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.intentions(MPS.Editor/)" />
    <import index="j0b4" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.keyboard(MPS.Editor/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="ioq2" ref="r:d5a75d6a-e56f-4c12-a58e-3acb971cef19(org.modelix.ui.state.behavior)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="v18h" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:kotlin(org.modelix.model.api/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="qvpu" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.area(org.modelix.model.api/)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="9tft" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:sun.awt.image(JDK/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="7oz1" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.configuration(MPS.Editor/)" />
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" implicit="true" />
  </imports>
  <registry>
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765275063380" name="de.slisson.mps.reflection.structure.ReflectionFieldAccess" flags="ng" index="1PnCL0">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="8473566765277240526" name="de.slisson.mps.reflection.structure.ReflectionMethodCall" flags="ng" index="1PvZjq" />
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1732176556423009631" name="jetbrains.mps.baseLanguage.structure.MultiLineComment" flags="ng" index="2lOVwT">
        <child id="1732176556423038857" name="lines" index="2lOMFJ" />
      </concept>
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1224500790866" name="jetbrains.mps.baseLanguage.structure.BitwiseOrExpression" flags="nn" index="pVOtf" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
        <child id="1206655950512" name="initializer" index="3Mj9YC" />
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
      <concept id="1206655653991" name="jetbrains.mps.baseLanguage.collections.structure.MapInitializer" flags="ng" index="3Mi1_Z">
        <child id="1206655902276" name="entries" index="3MiYds" />
      </concept>
      <concept id="1206655735055" name="jetbrains.mps.baseLanguage.collections.structure.MapEntry" flags="ng" index="3Milgn">
        <child id="1206655844556" name="key" index="3MiK7k" />
        <child id="1206655853135" name="value" index="3MiMdn" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="6xm2RBl6fwx" />
  <node concept="2uRRBC" id="6xm2RBlaf24">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2uRRBj" id="6xm2RBlaf25" role="2uRRBE">
      <node concept="3clFbS" id="6xm2RBlaf26" role="2VODD2" />
    </node>
    <node concept="2uRRBI" id="6xm2RBlaf2r" role="2uRRBF">
      <node concept="3clFbS" id="6xm2RBlaf2s" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="6xm2RBlaf2L">
    <property role="TrG5h" value="RenderServer" />
    <node concept="Wx3nA" id="eACOy0i3$m" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SESSION_COOKIE_NAME" />
      <node concept="3Tm1VV" id="eACOy0is4d" role="1B3o_S" />
      <node concept="17QB3L" id="eACOy0i3$k" role="1tU5fm" />
      <node concept="Xl_RD" id="eACOy0i3$l" role="33vP2m">
        <property role="Xl_RC" value="modelix-session" />
      </node>
    </node>
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
      <property role="TrG5h" value="mainEditorSession" />
      <node concept="3Tm6S6" id="5Sw$pxbNzIO" role="1B3o_S" />
      <node concept="3uibUv" id="5Sw$pxbN$x_" role="1tU5fm">
        <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
      </node>
      <node concept="10Nm6u" id="2sCgtIfC53v" role="33vP2m" />
    </node>
    <node concept="312cEg" id="2sCgtIfC1vd" role="jymVt">
      <property role="TrG5h" value="inspectorEditorSession" />
      <node concept="3Tm6S6" id="2sCgtIfC1ve" role="1B3o_S" />
      <node concept="3uibUv" id="2sCgtIfC1vf" role="1tU5fm">
        <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
      </node>
      <node concept="10Nm6u" id="2sCgtIfC5DC" role="33vP2m" />
    </node>
    <node concept="312cEg" id="5MA9wbc6v$y" role="jymVt">
      <property role="TrG5h" value="user" />
      <node concept="3Tm6S6" id="5MA9wbc6v$z" role="1B3o_S" />
      <node concept="17QB3L" id="5MA9wbc6vTI" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="eACOy0iyQV" role="jymVt">
      <property role="TrG5h" value="sessionId" />
      <node concept="3Tm6S6" id="eACOy0iyQW" role="1B3o_S" />
      <node concept="17QB3L" id="eACOy0iziu" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2sCgtIfKDH6" role="jymVt" />
    <node concept="Wx3nA" id="2sCgtIfKFDT" role="jymVt">
      <property role="TrG5h" value="mainToInspectorMap" />
      <node concept="3Tm1VV" id="2sCgtIfKEoQ" role="1B3o_S" />
      <node concept="3rvAFt" id="2sCgtIfKFge" role="1tU5fm">
        <node concept="3uibUv" id="2sCgtIfKFuo" role="3rvQeY">
          <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
        </node>
        <node concept="3uibUv" id="2sCgtIfKOwn" role="3rvSg0">
          <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
        </node>
      </node>
      <node concept="2ShNRf" id="2sCgtIfKGif" role="33vP2m">
        <node concept="3rGOSV" id="2sCgtIfKHgY" role="2ShVmc">
          <node concept="3uibUv" id="2sCgtIfKHA3" role="3rHrn6">
            <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
          </node>
          <node concept="3uibUv" id="2sCgtIfKO4S" role="3rHtpV">
            <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2sCgtIfKAcE" role="jymVt" />
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
        <node concept="2AHcQZ" id="eACOy0hTrM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="eACOy0iwUf" role="3clF46">
        <property role="TrG5h" value="sessionId" />
        <node concept="17QB3L" id="eACOy0ix6D" role="1tU5fm" />
        <node concept="2AHcQZ" id="eACOy0ixe0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
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
        <node concept="3clFbF" id="5e9llKySDCc" role="3cqZAp">
          <node concept="37vLTI" id="5e9llKySEK0" role="3clFbG">
            <node concept="37vLTw" id="5e9llKySEWV" role="37vLTx">
              <ref role="3cqZAo" node="eACOy0iwUf" resolve="sessionId" />
            </node>
            <node concept="2OqwBi" id="5e9llKySDRZ" role="37vLTJ">
              <node concept="Xjq3P" id="5e9llKySDCa" role="2Oq$k0" />
              <node concept="2OwXpG" id="5e9llKySE94" role="2OqNvi">
                <ref role="2Oxat6" node="eACOy0iyQV" resolve="sessionId" />
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
        <node concept="3clFbF" id="2sCgtIfKIXv" role="3cqZAp">
          <node concept="2OqwBi" id="2sCgtIfKJuO" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfKIXt" role="2Oq$k0">
              <ref role="3cqZAo" node="2sCgtIfKFDT" resolve="mainToInspectorMap" />
            </node>
            <node concept="kI3uX" id="2sCgtIfKK3g" role="2OqNvi">
              <node concept="37vLTw" id="2sCgtIfKKev" role="kIiFs">
                <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Sw$pxbNQJu" role="3cqZAp">
          <node concept="2OqwBi" id="5Sw$pxbNQWW" role="3clFbG">
            <node concept="37vLTw" id="5Sw$pxbNQJs" role="2Oq$k0">
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
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
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
            </node>
            <node concept="liA8E" id="1qbCJZsSZdY" role="2OqNvi">
              <ref role="37wK5l" node="1qbCJZsJ6hF" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2sCgtIfCxHn" role="3cqZAp" />
        <node concept="3clFbJ" id="2sCgtIfCxSc" role="3cqZAp">
          <node concept="3clFbS" id="2sCgtIfCxSe" role="3clFbx">
            <node concept="3clFbF" id="2sCgtIfCzW1" role="3cqZAp">
              <node concept="2OqwBi" id="2sCgtIfCzW2" role="3clFbG">
                <node concept="37vLTw" id="2sCgtIfC$sq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                </node>
                <node concept="liA8E" id="2sCgtIfCzW4" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ6j_" resolve="onClose" />
                  <node concept="37vLTw" id="2sCgtIfCzW5" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbNAzG" resolve="statusCode" />
                  </node>
                  <node concept="37vLTw" id="2sCgtIfCzW6" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbNAzI" resolve="reason" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2sCgtIfCzVX" role="3cqZAp">
              <node concept="2OqwBi" id="2sCgtIfCzVY" role="3clFbG">
                <node concept="37vLTw" id="2sCgtIfC$Fk" role="2Oq$k0">
                  <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                </node>
                <node concept="liA8E" id="2sCgtIfCzW0" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ6hF" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2sCgtIfCypz" role="3clFbw">
            <node concept="10Nm6u" id="2sCgtIfCyDr" role="3uHU7w" />
            <node concept="37vLTw" id="2sCgtIfCy51" role="3uHU7B">
              <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
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
        <node concept="3J1_TO" id="3RbPf8OKa36" role="3cqZAp">
          <node concept="3clFbS" id="3RbPf8OKa38" role="1zxBo7">
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
                    <node concept="37vLTw" id="eACOy0i$tC" role="37wK5m">
                      <ref role="3cqZAo" node="eACOy0iyQV" resolve="sessionId" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5Sw$pxbNKCu" role="37vLTJ">
                  <node concept="Xjq3P" id="5Sw$pxbNKig" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Sw$pxbNLm$" role="2OqNvi">
                    <ref role="2Oxat6" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbNNoV" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbNNDg" role="3clFbG">
                <node concept="liA8E" id="5Sw$pxbNPOr" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ6iC" resolve="onOpen" />
                  <node concept="37vLTw" id="5Sw$pxbOaSu" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbNAzU" resolve="sess" />
                  </node>
                </node>
                <node concept="37vLTw" id="5Sw$pxbNNoT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3RbPf8OKa39" role="1zxBo5">
            <node concept="XOnhg" id="3RbPf8OKa3b" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="bKNaGD0pwvh" role="1tU5fm">
                <node concept="3uibUv" id="3RbPf8OKaXG" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3RbPf8OKa3f" role="1zc67A">
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
              <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
            </node>
            <node concept="liA8E" id="5Sw$pxbO96Y" role="2OqNvi">
              <ref role="37wK5l" node="1qbCJZsJ6ul" resolve="onError" />
              <node concept="37vLTw" id="5Sw$pxbO9ea" role="37wK5m">
                <ref role="3cqZAo" node="5Sw$pxbNA$5" resolve="cause" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2sCgtIfCNGn" role="3cqZAp">
          <node concept="3clFbS" id="2sCgtIfCNGo" role="3clFbx">
            <node concept="3clFbF" id="2sCgtIfCNGp" role="3cqZAp">
              <node concept="2OqwBi" id="2sCgtIfCNGq" role="3clFbG">
                <node concept="37vLTw" id="2sCgtIfCNGr" role="2Oq$k0">
                  <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                </node>
                <node concept="liA8E" id="2sCgtIfCNGs" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ6ul" resolve="onError" />
                  <node concept="37vLTw" id="2sCgtIfCOnt" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbNA$5" resolve="cause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2sCgtIfCNGz" role="3clFbw">
            <node concept="10Nm6u" id="2sCgtIfCNG$" role="3uHU7w" />
            <node concept="37vLTw" id="2sCgtIfCNG_" role="3uHU7B">
              <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
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
        <node concept="3cpWs8" id="24akhGs5pbb" role="3cqZAp">
          <node concept="3cpWsn" id="24akhGs5pbc" role="3cpWs9">
            <property role="TrG5h" value="obj" />
            <node concept="3uibUv" id="24akhGs5oUw" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="24akhGs5pbd" role="33vP2m">
              <node concept="1pGfFk" id="24akhGs5pbe" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;(java.lang.String)" resolve="JSONObject" />
                <node concept="37vLTw" id="24akhGs5pbf" role="37wK5m">
                  <ref role="3cqZAo" node="5Sw$pxbNA$g" resolve="message" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfz1Yi" role="3cqZAp">
          <node concept="2OqwBi" id="2sCgtIfz1Yj" role="3clFbG">
            <node concept="10M0yZ" id="2sCgtIfz1Yk" role="2Oq$k0">
              <ref role="3cqZAo" to="ia5i:5MA9wbc5sJL" resolve="AUTHOR" />
              <ref role="1PxDUh" to="ia5i:5MA9wbc5skS" resolve="AuthorOverride" />
            </node>
            <node concept="liA8E" id="2sCgtIfz1Yl" role="2OqNvi">
              <ref role="37wK5l" to="3d38:7vWAzuEE3Ye" resolve="runWith" />
              <node concept="37vLTw" id="2sCgtIfz1Ym" role="37wK5m">
                <ref role="3cqZAo" node="5MA9wbc6v$y" resolve="user" />
              </node>
              <node concept="1bVj0M" id="2sCgtIfz1Yn" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2sCgtIfz1Yo" role="1bW5cS">
                  <node concept="3clFbJ" id="24akhGs5pYu" role="3cqZAp">
                    <node concept="3clFbS" id="24akhGs5pYw" role="3clFbx">
                      <node concept="3J1_TO" id="4OOltvpOlo4" role="3cqZAp">
                        <node concept="3uVAMA" id="4OOltvpOlWk" role="1zxBo5">
                          <node concept="XOnhg" id="4OOltvpOlWl" role="1zc67B">
                            <property role="TrG5h" value="ex" />
                            <node concept="nSUau" id="4OOltvpOlWm" role="1tU5fm">
                              <node concept="3uibUv" id="4OOltvpOmde" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="4OOltvpOlWn" role="1zc67A">
                            <node concept="RRSsy" id="4OOltvpOqLB" role="3cqZAp">
                              <property role="RRSoG" value="gZ5fh_4/error" />
                              <node concept="37vLTw" id="4OOltvpOtrQ" role="RRSow">
                                <ref role="3cqZAo" node="4OOltvpOlWl" resolve="ex" />
                              </node>
                              <node concept="3cpWs3" id="4OOltvpOqLD" role="RRSoy">
                                <node concept="2OqwBi" id="4OOltvpOqLE" role="3uHU7w">
                                  <node concept="37vLTw" id="4OOltvpOtD1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4OOltvpOlWl" resolve="ex" />
                                  </node>
                                  <node concept="liA8E" id="4OOltvpOqLG" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4OOltvpOqLH" role="3uHU7B">
                                  <property role="Xl_RC" value="Failed to process message: " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4OOltvpOlo6" role="1zxBo7">
                          <node concept="3clFbJ" id="2sCgtIfC3Gh" role="3cqZAp">
                            <node concept="3clFbS" id="2sCgtIfC3Gj" role="3clFbx">
                              <node concept="3clFbF" id="2sCgtIfCxg6" role="3cqZAp">
                                <node concept="37vLTI" id="2sCgtIfCxgg" role="3clFbG">
                                  <node concept="2ShNRf" id="2sCgtIfCxgq" role="37vLTx">
                                    <node concept="1pGfFk" id="2sCgtIfCxgu" role="2ShVmc">
                                      <ref role="37wK5l" node="2sCgtIfLTMJ" resolve="RenderSession" />
                                      <node concept="37vLTw" id="2sCgtIfCxgs" role="37wK5m">
                                        <ref role="3cqZAo" node="3$7KuaipTnc" resolve="project" />
                                      </node>
                                      <node concept="37vLTw" id="2sCgtIfCxge" role="37wK5m">
                                        <ref role="3cqZAo" node="5Sw$pxbNy5a" resolve="websocketSession" />
                                      </node>
                                      <node concept="37vLTw" id="2sCgtIfCxgo" role="37wK5m">
                                        <ref role="3cqZAo" node="5MA9wbc6v$y" resolve="user" />
                                      </node>
                                      <node concept="37vLTw" id="2sCgtIfCxgi" role="37wK5m">
                                        <ref role="3cqZAo" node="eACOy0iyQV" resolve="sessionId" />
                                      </node>
                                      <node concept="3clFbT" id="2sCgtIfLSC5" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="2sCgtIfCxgc" role="37vLTJ">
                                    <node concept="Xjq3P" id="2sCgtIfCxg8" role="2Oq$k0" />
                                    <node concept="2OwXpG" id="2sCgtIfC8mt" role="2OqNvi">
                                      <ref role="2Oxat6" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2sCgtIfCxgm" role="3cqZAp">
                                <node concept="2OqwBi" id="2sCgtIfCxga" role="3clFbG">
                                  <node concept="37vLTw" id="2sCgtIfC8Bh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                                  </node>
                                  <node concept="liA8E" id="2sCgtIfCxgk" role="2OqNvi">
                                    <ref role="37wK5l" node="1qbCJZsJ6iC" resolve="onOpen" />
                                    <node concept="37vLTw" id="2sCgtIfC6JM" role="37wK5m">
                                      <ref role="3cqZAo" node="5Sw$pxbNy5a" resolve="websocketSession" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2sCgtIfKKOs" role="3cqZAp">
                                <node concept="37vLTI" id="2sCgtIfKNcr" role="3clFbG">
                                  <node concept="37vLTw" id="2sCgtIfKNFu" role="37vLTx">
                                    <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                                  </node>
                                  <node concept="3EllGN" id="2sCgtIfKMmb" role="37vLTJ">
                                    <node concept="37vLTw" id="2sCgtIfKMMQ" role="3ElVtu">
                                      <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
                                    </node>
                                    <node concept="37vLTw" id="2sCgtIfKKOq" role="3ElQJh">
                                      <ref role="3cqZAo" node="2sCgtIfKFDT" resolve="mainToInspectorMap" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="2sCgtIfC4oa" role="3clFbw">
                              <node concept="10Nm6u" id="2sCgtIfC4tw" role="3uHU7w" />
                              <node concept="37vLTw" id="2sCgtIfC41U" role="3uHU7B">
                                <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="24akhGs5sfe" role="3cqZAp">
                            <node concept="2OqwBi" id="24akhGs5stD" role="3clFbG">
                              <node concept="37vLTw" id="2sCgtIfC2W9" role="2Oq$k0">
                                <ref role="3cqZAo" node="2sCgtIfC1vd" resolve="inspectorEditorSession" />
                              </node>
                              <node concept="liA8E" id="24akhGs5sMN" role="2OqNvi">
                                <ref role="37wK5l" node="1qbCJZsJ6kO" resolve="processMessage" />
                                <node concept="37vLTw" id="4OOltvpNzLu" role="37wK5m">
                                  <ref role="3cqZAo" node="24akhGs5pbc" resolve="obj" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="24akhGs5rvb" role="9aQIa">
                      <node concept="3clFbS" id="24akhGs5rvc" role="9aQI4">
                        <node concept="3J1_TO" id="4OOltvpOrNJ" role="3cqZAp">
                          <node concept="3uVAMA" id="4OOltvpOsd1" role="1zxBo5">
                            <node concept="XOnhg" id="4OOltvpOsd2" role="1zc67B">
                              <property role="TrG5h" value="ex" />
                              <node concept="nSUau" id="4OOltvpOsd3" role="1tU5fm">
                                <node concept="3uibUv" id="4OOltvpOsnf" role="nSUat">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="4OOltvpOsd4" role="1zc67A">
                              <node concept="RRSsy" id="4OOltvpOs$c" role="3cqZAp">
                                <property role="RRSoG" value="gZ5fh_4/error" />
                                <node concept="37vLTw" id="4OOltvpOtgx" role="RRSow">
                                  <ref role="3cqZAo" node="4OOltvpOsd2" resolve="ex" />
                                </node>
                                <node concept="3cpWs3" id="4OOltvpOs$e" role="RRSoy">
                                  <node concept="2OqwBi" id="4OOltvpOs$f" role="3uHU7w">
                                    <node concept="37vLTw" id="4OOltvpOt4Y" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4OOltvpOsd2" resolve="ex" />
                                    </node>
                                    <node concept="liA8E" id="4OOltvpOs$h" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="4OOltvpOs$i" role="3uHU7B">
                                    <property role="Xl_RC" value="Failed to process inspector message: " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="4OOltvpOrNL" role="1zxBo7">
                            <node concept="3clFbF" id="2sCgtIfz1Yp" role="3cqZAp">
                              <node concept="2OqwBi" id="2sCgtIfz1Yq" role="3clFbG">
                                <node concept="37vLTw" id="2sCgtIfz3BV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Sw$pxbNzIN" resolve="mainEditorSession" />
                                </node>
                                <node concept="liA8E" id="2sCgtIfz1Ys" role="2OqNvi">
                                  <ref role="37wK5l" node="1qbCJZsJ6kO" resolve="processMessage" />
                                  <node concept="37vLTw" id="4OOltvpN$kT" role="37wK5m">
                                    <ref role="3cqZAo" node="24akhGs5pbc" resolve="obj" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4OOltvpNtUJ" role="3clFbw">
                      <node concept="37vLTw" id="4OOltvpNtUK" role="2Oq$k0">
                        <ref role="3cqZAo" node="24akhGs5pbc" resolve="obj" />
                      </node>
                      <node concept="liA8E" id="4OOltvpNtUL" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String,boolean)" resolve="optBoolean" />
                        <node concept="Xl_RD" id="4OOltvpNtUM" role="37wK5m">
                          <property role="Xl_RC" value="inspector" />
                        </node>
                        <node concept="3clFbT" id="4OOltvpNtUN" role="37wK5m" />
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
    <node concept="312cEg" id="6JxzAvoGVl_" role="jymVt">
      <property role="TrG5h" value="gc" />
      <node concept="3Tm6S6" id="6JxzAvoGVlA" role="1B3o_S" />
      <node concept="3uibUv" id="6JxzAvoGXEh" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
      </node>
      <node concept="2ShNRf" id="6JxzAvoEdjc" role="33vP2m">
        <node concept="YeOm9" id="6JxzAvoEjK1" role="2ShVmc">
          <node concept="1Y3b0j" id="6JxzAvoEjK4" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
            <ref role="37wK5l" to="z60i:~GraphicsConfiguration.&lt;init&gt;()" resolve="GraphicsConfiguration" />
            <node concept="312cEg" id="6JxzAvoF9Eq" role="jymVt">
              <property role="TrG5h" value="graphicsConfig" />
              <node concept="3Tm6S6" id="6JxzAvoF9Er" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoFbsQ" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
              </node>
              <node concept="Xjq3P" id="6JxzAvoFcBh" role="33vP2m" />
            </node>
            <node concept="312cEg" id="6JxzAvoEJgT" role="jymVt">
              <property role="TrG5h" value="device" />
              <node concept="3uibUv" id="6JxzAvoEIej" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
              </node>
              <node concept="2ShNRf" id="6JxzAvoEL7X" role="33vP2m">
                <node concept="YeOm9" id="6JxzAvoEP80" role="2ShVmc">
                  <node concept="1Y3b0j" id="6JxzAvoEP83" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="z60i:~GraphicsDevice.&lt;init&gt;()" resolve="GraphicsDevice" />
                    <ref role="1Y3XeK" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
                    <node concept="3Tm1VV" id="6JxzAvoEP84" role="1B3o_S" />
                    <node concept="3clFb_" id="6JxzAvoEP87" role="jymVt">
                      <property role="TrG5h" value="getType" />
                      <node concept="3Tm1VV" id="6JxzAvoEP88" role="1B3o_S" />
                      <node concept="10Oyi0" id="6JxzAvoEP8a" role="3clF45" />
                      <node concept="3clFbS" id="6JxzAvoEP8b" role="3clF47">
                        <node concept="3clFbF" id="6JxzAvoEYXX" role="3cqZAp">
                          <node concept="10M0yZ" id="6JxzAvoFzl4" role="3clFbG">
                            <ref role="3cqZAo" to="z60i:~GraphicsDevice.TYPE_RASTER_SCREEN" resolve="TYPE_RASTER_SCREEN" />
                            <ref role="1PxDUh" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="6JxzAvoEP8d" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="6JxzAvoEP8e" role="jymVt" />
                    <node concept="3clFb_" id="6JxzAvoEP8f" role="jymVt">
                      <property role="TrG5h" value="getIDstring" />
                      <node concept="3Tm1VV" id="6JxzAvoEP8g" role="1B3o_S" />
                      <node concept="17QB3L" id="6JxzAvoFh27" role="3clF45" />
                      <node concept="3clFbS" id="6JxzAvoEP8j" role="3clF47">
                        <node concept="3clFbF" id="6JxzAvoF0e$" role="3cqZAp">
                          <node concept="Xl_RD" id="6JxzAvoF0ez" role="3clFbG">
                            <property role="Xl_RC" value="Modelix EditorComponent" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="6JxzAvoEP8l" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="6JxzAvoEP8m" role="jymVt" />
                    <node concept="3clFb_" id="6JxzAvoEP8n" role="jymVt">
                      <property role="TrG5h" value="getConfigurations" />
                      <node concept="3Tm1VV" id="6JxzAvoEP8o" role="1B3o_S" />
                      <node concept="10Q1$e" id="6JxzAvoEP8q" role="3clF45">
                        <node concept="3uibUv" id="6JxzAvoEP8r" role="10Q1$1">
                          <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6JxzAvoEP8s" role="3clF47">
                        <node concept="3clFbF" id="6JxzAvoF1hy" role="3cqZAp">
                          <node concept="2ShNRf" id="6JxzAvoF1hw" role="3clFbG">
                            <node concept="3g6Rrh" id="6JxzAvoF5Gp" role="2ShVmc">
                              <node concept="3uibUv" id="6JxzAvoF4su" role="3g7fb8">
                                <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
                              </node>
                              <node concept="37vLTw" id="6JxzAvoFewX" role="3g7hyw">
                                <ref role="3cqZAo" node="6JxzAvoF9Eq" resolve="graphicsConfig" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="6JxzAvoEP8u" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="6JxzAvoEP8v" role="jymVt" />
                    <node concept="3clFb_" id="6JxzAvoEP8w" role="jymVt">
                      <property role="TrG5h" value="getDefaultConfiguration" />
                      <node concept="3Tm1VV" id="6JxzAvoEP8x" role="1B3o_S" />
                      <node concept="3uibUv" id="6JxzAvoEP8z" role="3clF45">
                        <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
                      </node>
                      <node concept="3clFbS" id="6JxzAvoEP8$" role="3clF47">
                        <node concept="3clFbF" id="6JxzAvoFgzL" role="3cqZAp">
                          <node concept="37vLTw" id="6JxzAvoFgzK" role="3clFbG">
                            <ref role="3cqZAo" node="6JxzAvoF9Eq" resolve="graphicsConfig" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="6JxzAvoEP8A" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm6S6" id="6JxzAvoEQTX" role="1B3o_S" />
            </node>
            <node concept="3Tm1VV" id="6JxzAvoEjK5" role="1B3o_S" />
            <node concept="3clFb_" id="6JxzAvoEkKl" role="jymVt">
              <property role="TrG5h" value="getBounds" />
              <node concept="3Tm1VV" id="6JxzAvoEkKm" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkKo" role="3clF45">
                <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkKq" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoErmz" role="3cqZAp">
                  <node concept="2ShNRf" id="6JxzAvoErmt" role="3clFbG">
                    <node concept="1pGfFk" id="6JxzAvoEtkG" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                      <node concept="3cmrfG" id="6JxzAvoEu9B" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="6JxzAvoEw56" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="6JxzAvoEwTP" role="37wK5m">
                        <property role="3cmrfH" value="1000" />
                      </node>
                      <node concept="3cmrfG" id="6JxzAvoEyzt" role="37wK5m">
                        <property role="3cmrfH" value="1000" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkKr" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6JxzAvoEkKu" role="jymVt">
              <property role="TrG5h" value="getColorModel" />
              <node concept="3Tm1VV" id="6JxzAvoEkKv" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkKx" role="3clF45">
                <ref role="3uigEE" to="jan3:~ColorModel" resolve="ColorModel" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkKz" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoE_d1" role="3cqZAp">
                  <node concept="2YIFZM" id="6JxzAvoE_iW" role="3clFbG">
                    <ref role="1Pybhc" to="jan3:~ColorModel" resolve="ColorModel" />
                    <ref role="37wK5l" to="jan3:~ColorModel.getRGBdefault()" resolve="getRGBdefault" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkK$" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6JxzAvoEkKB" role="jymVt">
              <property role="TrG5h" value="getColorModel" />
              <node concept="3Tm1VV" id="6JxzAvoEkKC" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkKE" role="3clF45">
                <ref role="3uigEE" to="jan3:~ColorModel" resolve="ColorModel" />
              </node>
              <node concept="37vLTG" id="6JxzAvoEkKF" role="3clF46">
                <property role="TrG5h" value="transparency" />
                <node concept="10Oyi0" id="6JxzAvoEkKG" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkKI" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoE_wE" role="3cqZAp">
                  <node concept="2YIFZM" id="6JxzAvoE_wF" role="3clFbG">
                    <ref role="37wK5l" to="jan3:~ColorModel.getRGBdefault()" resolve="getRGBdefault" />
                    <ref role="1Pybhc" to="jan3:~ColorModel" resolve="ColorModel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkKJ" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6JxzAvoEkKM" role="jymVt">
              <property role="TrG5h" value="getDefaultTransform" />
              <node concept="3Tm1VV" id="6JxzAvoEkKN" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkKP" role="3clF45">
                <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkKR" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoEWSN" role="3cqZAp">
                  <node concept="2ShNRf" id="6JxzAvoEWSO" role="3clFbG">
                    <node concept="1pGfFk" id="6JxzAvoEWSP" role="2ShVmc">
                      <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;()" resolve="AffineTransform" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkKS" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6JxzAvoEkKV" role="jymVt">
              <property role="TrG5h" value="getDevice" />
              <node concept="3Tm1VV" id="6JxzAvoEkKW" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkKY" role="3clF45">
                <ref role="3uigEE" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkL0" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoERVz" role="3cqZAp">
                  <node concept="37vLTw" id="6JxzAvoERVy" role="3clFbG">
                    <ref role="3cqZAo" node="6JxzAvoEJgT" resolve="device" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkL1" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6JxzAvoEkL4" role="jymVt">
              <property role="TrG5h" value="getNormalizingTransform" />
              <node concept="3Tm1VV" id="6JxzAvoEkL5" role="1B3o_S" />
              <node concept="3uibUv" id="6JxzAvoEkL7" role="3clF45">
                <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
              </node>
              <node concept="3clFbS" id="6JxzAvoEkL9" role="3clF47">
                <node concept="3clFbF" id="6JxzAvoESVe" role="3cqZAp">
                  <node concept="2ShNRf" id="6JxzAvoESVc" role="3clFbG">
                    <node concept="1pGfFk" id="6JxzAvoEWPL" role="2ShVmc">
                      <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;()" resolve="AffineTransform" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6JxzAvoEkLa" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="46lepK4rHpp" role="jymVt">
      <property role="TrG5h" value="frame" />
      <node concept="3Tm6S6" id="46lepK4rHpq" role="1B3o_S" />
      <node concept="3uibUv" id="46lepK4rJPa" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
      </node>
      <node concept="2ShNRf" id="46lepK4rMNk" role="33vP2m">
        <node concept="1pGfFk" id="46lepK4rSz$" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;(java.lang.String)" resolve="JFrame" />
          <node concept="Xl_RD" id="46lepK4rPOI" role="37wK5m">
            <property role="Xl_RC" value="Modelix Editor" />
          </node>
        </node>
      </node>
    </node>
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
          <ref role="37wK5l" to="exr9:~EditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.nodeEditor.configuration.EditorConfiguration)" resolve="EditorComponent" />
          <node concept="2OqwBi" id="6xm2RBlpFVl" role="37wK5m">
            <node concept="37vLTw" id="6xm2RBlpEOp" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBlpBW9" resolve="project" />
            </node>
            <node concept="liA8E" id="6xm2RBlpGu9" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="2OqwBi" id="2Per06E_wLm" role="37wK5m">
            <node concept="2OqwBi" id="2Per06E_u1i" role="2Oq$k0">
              <node concept="2ShNRf" id="2Per06E_6Vg" role="2Oq$k0">
                <node concept="1pGfFk" id="2Per06E_tfm" role="2ShVmc">
                  <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.&lt;init&gt;()" resolve="EditorConfigurationBuilder" />
                </node>
              </node>
              <node concept="liA8E" id="2Per06E_uFz" role="2OqNvi">
                <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.showErrorsGutter(boolean)" resolve="showErrorsGutter" />
                <node concept="3clFbT" id="2Per06E_vXT" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2Per06E_xCA" role="2OqNvi">
              <ref role="37wK5l" to="7oz1:~EditorConfigurationBuilder.build()" resolve="build" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5KfI6H$P92V" role="3cqZAp">
          <node concept="2OqwBi" id="6JxzAvo$be3" role="3clFbG">
            <node concept="2OqwBi" id="5KfI6H$Pbb0" role="2Oq$k0">
              <node concept="37vLTw" id="46lepK4rYzH" role="2Oq$k0">
                <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
              </node>
              <node concept="liA8E" id="6JxzAvoBbl9" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JFrame.getContentPane()" resolve="getContentPane" />
              </node>
            </node>
            <node concept="liA8E" id="6JxzAvo$cJ_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="2OqwBi" id="6JxzAvo$lkg" role="37wK5m">
                <node concept="Xjq3P" id="6JxzAvo$ebR" role="2Oq$k0" />
                <node concept="liA8E" id="6JxzAvo$odP" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JxzAvoDzfn" role="3cqZAp">
          <node concept="2OqwBi" id="6JxzAvoD$LM" role="3clFbG">
            <node concept="37vLTw" id="46lepK4s0vf" role="2Oq$k0">
              <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
            </node>
            <node concept="liA8E" id="6JxzAvoDA_G" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="6JxzAvoDCe6" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46lepK4tbzt" role="3cqZAp">
          <node concept="2OqwBi" id="46lepK4tdeO" role="3clFbG">
            <node concept="37vLTw" id="46lepK4tbzr" role="2Oq$k0">
              <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
            </node>
            <node concept="liA8E" id="46lepK4tgAK" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JFrame.setDefaultCloseOperation(int)" resolve="setDefaultCloseOperation" />
              <node concept="10M0yZ" id="46lepK4tkVZ" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~WindowConstants.DO_NOTHING_ON_CLOSE" resolve="DO_NOTHING_ON_CLOSE" />
                <ref role="1PxDUh" to="dxuu:~JFrame" resolve="JFrame" />
              </node>
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
        <node concept="1X3_iC" id="YrAPzE$7zf" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5SuPMXLfXkq" role="8Wnug">
            <node concept="37vLTI" id="5SuPMXLg3xF" role="3clFbG">
              <node concept="2ShNRf" id="5SuPMXLg5zE" role="37vLTx">
                <node concept="YeOm9" id="5SuPMXLg6tG" role="2ShVmc">
                  <node concept="1Y3b0j" id="5SuPMXLg6tJ" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.&lt;init&gt;(jetbrains.mps.nodeEditor.EditorComponent)" resolve="NodeSubstituteChooser" />
                    <ref role="1Y3XeK" to="6lvu:~NodeSubstituteChooser" resolve="NodeSubstituteChooser" />
                    <node concept="312cEg" id="5SuPMXLg7d2" role="jymVt">
                      <property role="TrG5h" value="headlessPatternEditor" />
                      <node concept="3Tm6S6" id="5SuPMXLg7d3" role="1B3o_S" />
                      <node concept="3uibUv" id="5SuPMXLg84v" role="1tU5fm">
                        <ref role="3uigEE" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
                      </node>
                      <node concept="2ShNRf" id="5SuPMXLga7m" role="33vP2m">
                        <node concept="YeOm9" id="5SuPMXLgcer" role="2ShVmc">
                          <node concept="1Y3b0j" id="5SuPMXLgceu" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.&lt;init&gt;()" resolve="NodeSubstitutePatternEditor" />
                            <ref role="1Y3XeK" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
                            <node concept="312cEg" id="5SuPMXLhajW" role="jymVt">
                              <property role="TrG5h" value="active" />
                              <node concept="3Tm6S6" id="5SuPMXLhajX" role="1B3o_S" />
                              <node concept="10P_77" id="5SuPMXLhb0i" role="1tU5fm" />
                            </node>
                            <node concept="3Tm1VV" id="5SuPMXLgcev" role="1B3o_S" />
                            <node concept="3clFb_" id="5SuPMXLgcl9" role="jymVt">
                              <property role="TrG5h" value="setText" />
                              <node concept="3Tm1VV" id="5SuPMXLgcla" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgclc" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLgcld" role="3clF46">
                                <property role="TrG5h" value="text" />
                                <node concept="17QB3L" id="5SuPMXLhlt1" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgclg" role="3clF47" />
                              <node concept="2AHcQZ" id="5SuPMXLgclh" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgcXB" role="jymVt">
                              <property role="TrG5h" value="getText" />
                              <node concept="3Tm1VV" id="5SuPMXLgcXC" role="1B3o_S" />
                              <node concept="17QB3L" id="5SuPMXLhk32" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLgcXG" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhjDV" role="3cqZAp">
                                  <node concept="Xl_RD" id="5SuPMXLhjDU" role="3clFbG">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgcXH" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgsW2" role="jymVt">
                              <property role="TrG5h" value="setCaretPosition" />
                              <node concept="3Tm1VV" id="5SuPMXLgsW3" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgsW5" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLgsW6" role="3clF46">
                                <property role="TrG5h" value="caretPosition" />
                                <node concept="10Oyi0" id="5SuPMXLgsW7" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgsW9" role="3clF47" />
                              <node concept="2AHcQZ" id="5SuPMXLgsWa" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgtan" role="jymVt">
                              <property role="TrG5h" value="getCaretPosition" />
                              <node concept="3Tm1VV" id="5SuPMXLgtao" role="1B3o_S" />
                              <node concept="10Oyi0" id="5SuPMXLgtaq" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLgtas" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhi7H" role="3cqZAp">
                                  <node concept="3cmrfG" id="5SuPMXLhi7G" role="3clFbG">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgtat" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLhC9H" role="jymVt">
                              <property role="TrG5h" value="isActivated" />
                              <node concept="3Tm1VV" id="5SuPMXLhC9I" role="1B3o_S" />
                              <node concept="10P_77" id="5SuPMXLhC9K" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLhC9M" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhDGk" role="3cqZAp">
                                  <node concept="37vLTw" id="5SuPMXLhDGh" role="3clFbG">
                                    <ref role="3cqZAo" node="5SuPMXLhajW" resolve="active" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLhC9N" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgtx1" role="jymVt">
                              <property role="TrG5h" value="processKeyPressed" />
                              <node concept="3Tm1VV" id="5SuPMXLgtx2" role="1B3o_S" />
                              <node concept="10P_77" id="5SuPMXLgtx4" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLgtx5" role="3clF46">
                                <property role="TrG5h" value="keyEvent" />
                                <node concept="3uibUv" id="5SuPMXLgtx6" role="1tU5fm">
                                  <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgtx8" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhPLZ" role="3cqZAp">
                                  <node concept="3clFbT" id="5SuPMXLhPLY" role="3clFbG" />
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgtx9" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgtZv" role="jymVt">
                              <property role="TrG5h" value="toggleReplaceMode" />
                              <node concept="3Tm1VV" id="5SuPMXLgtZw" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgtZy" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLgtZ$" role="3clF47" />
                              <node concept="2AHcQZ" id="5SuPMXLgtZ_" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLguiu" role="jymVt">
                              <property role="TrG5h" value="processKeyTyped" />
                              <node concept="3Tm1VV" id="5SuPMXLguiv" role="1B3o_S" />
                              <node concept="10P_77" id="5SuPMXLguix" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLguiy" role="3clF46">
                                <property role="TrG5h" value="keyEvent" />
                                <node concept="3uibUv" id="5SuPMXLguiz" role="1tU5fm">
                                  <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgui_" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhQSH" role="3cqZAp">
                                  <node concept="3clFbT" id="5SuPMXLhQSG" role="3clFbG" />
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLguiA" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLguOb" role="jymVt">
                              <property role="TrG5h" value="processTextChanged" />
                              <node concept="3Tm1VV" id="5SuPMXLguOc" role="1B3o_S" />
                              <node concept="10P_77" id="5SuPMXLguOe" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLguOf" role="3clF46">
                                <property role="TrG5h" value="textChangeEvent" />
                                <node concept="3uibUv" id="5SuPMXLguOg" role="1tU5fm">
                                  <ref role="3uigEE" to="j0b4:~TextChangeEvent" resolve="TextChangeEvent" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="5SuPMXLguOi" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhSrB" role="3cqZAp">
                                  <node concept="3clFbT" id="5SuPMXLhSrA" role="3clFbG" />
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLguOj" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgvdI" role="jymVt">
                              <property role="TrG5h" value="getPattern" />
                              <node concept="3Tm1VV" id="5SuPMXLgvdJ" role="1B3o_S" />
                              <node concept="2AHcQZ" id="5SuPMXLgvdL" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                              </node>
                              <node concept="17QB3L" id="5SuPMXLh6_w" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLgvdO" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLh8F5" role="3cqZAp">
                                  <node concept="Xl_RD" id="5SuPMXLh8F4" role="3clFbG">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgvdP" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgwy9" role="jymVt">
                              <property role="TrG5h" value="activate" />
                              <node concept="3Tm1VV" id="5SuPMXLgwya" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgwyc" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLgwyd" role="3clF46">
                                <property role="TrG5h" value="owner" />
                                <node concept="3uibUv" id="5SuPMXLgwye" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="5SuPMXLgwyf" role="3clF46">
                                <property role="TrG5h" value="location" />
                                <node concept="3uibUv" id="5SuPMXLgwyg" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="5SuPMXLgwyh" role="3clF46">
                                <property role="TrG5h" value="size" />
                                <node concept="3uibUv" id="5SuPMXLgwyi" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="5SuPMXLgwyj" role="3clF46">
                                <property role="TrG5h" value="show" />
                                <node concept="10P_77" id="5SuPMXLgwyk" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgwym" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhneH" role="3cqZAp">
                                  <node concept="37vLTI" id="5SuPMXLhoMc" role="3clFbG">
                                    <node concept="3clFbT" id="5SuPMXLhpMM" role="37vLTx">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="37vLTw" id="5SuPMXLhneG" role="37vLTJ">
                                      <ref role="3cqZAo" node="5SuPMXLhajW" resolve="active" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgwyn" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgyju" role="jymVt">
                              <property role="TrG5h" value="setLocation" />
                              <node concept="3Tm1VV" id="5SuPMXLgyjv" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgyjx" role="3clF45" />
                              <node concept="37vLTG" id="5SuPMXLgyjy" role="3clF46">
                                <property role="TrG5h" value="point" />
                                <node concept="3uibUv" id="5SuPMXLgyjz" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgyj_" role="3clF47" />
                              <node concept="2AHcQZ" id="5SuPMXLgyjA" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgyUa" role="jymVt">
                              <property role="TrG5h" value="getLeftBottomPosition" />
                              <node concept="3Tm1VV" id="5SuPMXLgyUb" role="1B3o_S" />
                              <node concept="3uibUv" id="5SuPMXLgyUd" role="3clF45">
                                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                              </node>
                              <node concept="3clFbS" id="5SuPMXLgyUf" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLgBE2" role="3cqZAp">
                                  <node concept="2ShNRf" id="5SuPMXLgBE0" role="3clFbG">
                                    <node concept="1pGfFk" id="5SuPMXLh2KD" role="2ShVmc">
                                      <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                                      <node concept="3cmrfG" id="5SuPMXLh3LR" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="3cmrfG" id="5SuPMXLh5Fg" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgyUg" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="5SuPMXLgz$i" role="jymVt">
                              <property role="TrG5h" value="done" />
                              <node concept="3Tm1VV" id="5SuPMXLgz$j" role="1B3o_S" />
                              <node concept="3cqZAl" id="5SuPMXLgz$l" role="3clF45" />
                              <node concept="3clFbS" id="5SuPMXLgz$n" role="3clF47">
                                <node concept="3clFbF" id="5SuPMXLhr7L" role="3cqZAp">
                                  <node concept="37vLTI" id="5SuPMXLhsq6" role="3clFbG">
                                    <node concept="3clFbT" id="5SuPMXLhtpU" role="37vLTx" />
                                    <node concept="37vLTw" id="5SuPMXLhr7K" role="37vLTJ">
                                      <ref role="3cqZAo" node="5SuPMXLhajW" resolve="active" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5SuPMXLgz$o" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="5SuPMXLg6tK" role="1B3o_S" />
                    <node concept="Xjq3P" id="5SuPMXLg6ki" role="37wK5m" />
                    <node concept="3clFb_" id="5SuPMXLg6z$" role="jymVt">
                      <property role="TrG5h" value="getPatternEditor" />
                      <node concept="3Tm1VV" id="5SuPMXLg6z_" role="1B3o_S" />
                      <node concept="3uibUv" id="5SuPMXLg6zB" role="3clF45">
                        <ref role="3uigEE" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
                      </node>
                      <node concept="3clFbS" id="5SuPMXLg6zD" role="3clF47">
                        <node concept="3clFbF" id="5SuPMXLgc4Q" role="3cqZAp">
                          <node concept="37vLTw" id="5SuPMXLgc4P" role="3clFbG">
                            <ref role="3cqZAo" node="5SuPMXLg7d2" resolve="headlessPatternEditor" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5SuPMXLg6zE" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5SuPMXLg02x" role="37vLTJ">
                <node concept="1eOMI4" id="5SuPMXLfXko" role="2Oq$k0">
                  <node concept="10QFUN" id="5SuPMXLfXkl" role="1eOMHV">
                    <node concept="3uibUv" id="5SuPMXLfY3h" role="10QFUM">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="Xjq3P" id="5SuPMXLfZp$" role="10QFUP" />
                  </node>
                </node>
                <node concept="1PnCL0" id="5SuPMXLg2cn" role="2OqNvi">
                  <ref role="2Oxat5" to="exr9:~EditorComponent.myNodeSubstituteChooser" resolve="myNodeSubstituteChooser" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JxzAvo$gvd" role="3cqZAp">
          <node concept="2OqwBi" id="6JxzAvo$i72" role="3clFbG">
            <node concept="37vLTw" id="46lepK4s9ZV" role="2Oq$k0">
              <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
            </node>
            <node concept="liA8E" id="6JxzAvo$jAg" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
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
        <node concept="3clFbF" id="46lepK4sIvy" role="3cqZAp">
          <node concept="2OqwBi" id="46lepK4sKr4" role="3clFbG">
            <node concept="37vLTw" id="46lepK4sIvw" role="2Oq$k0">
              <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
            </node>
            <node concept="liA8E" id="46lepK4sMjx" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="46lepK4sNwp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="46lepK4sOPb" role="3cqZAp">
          <node concept="2OqwBi" id="46lepK4sQht" role="3clFbG">
            <node concept="37vLTw" id="46lepK4sOP9" role="2Oq$k0">
              <ref role="3cqZAo" node="46lepK4rHpp" resolve="frame" />
            </node>
            <node concept="liA8E" id="46lepK4sSjQ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.dispose()" resolve="dispose" />
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
    <node concept="3clFb_" id="5SuPMXLfwWX" role="jymVt">
      <property role="TrG5h" value="activateNodeSubstituteChooser" />
      <node concept="37vLTG" id="5SuPMXLfwWY" role="3clF46">
        <property role="TrG5h" value="editorCell" />
        <node concept="3uibUv" id="5SuPMXLfwWZ" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="5SuPMXLfwX0" role="3clF46">
        <property role="TrG5h" value="substituteInfo" />
        <node concept="3uibUv" id="5SuPMXLfwX1" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~SubstituteInfo" resolve="SubstituteInfo" />
        </node>
      </node>
      <node concept="37vLTG" id="5SuPMXLfwX2" role="3clF46">
        <property role="TrG5h" value="resetPattern" />
        <node concept="10P_77" id="5SuPMXLfwX3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5SuPMXLfwX4" role="3clF46">
        <property role="TrG5h" value="isSmart" />
        <node concept="10P_77" id="5SuPMXLfwX5" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5SuPMXLfwX6" role="3clF47">
        <node concept="3clFbJ" id="5SuPMXLfwX7" role="3cqZAp">
          <node concept="22lmx$" id="5SuPMXLfwX8" role="3clFbw">
            <node concept="3clFbC" id="5SuPMXLfwX9" role="3uHU7B">
              <node concept="37vLTw" id="5SuPMXLfwXa" role="3uHU7B">
                <ref role="3cqZAo" node="5SuPMXLfwWY" resolve="editorCell" />
              </node>
              <node concept="10Nm6u" id="5SuPMXLfwXb" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="5SuPMXLfwXc" role="3uHU7w">
              <node concept="37vLTw" id="5SuPMXLfwXd" role="3uHU7B">
                <ref role="3cqZAo" node="5SuPMXLfwX0" resolve="substituteInfo" />
              </node>
              <node concept="10Nm6u" id="5SuPMXLfwXe" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5SuPMXLfwXg" role="3clFbx">
            <node concept="3cpWs6" id="5SuPMXLfwXh" role="3cqZAp">
              <node concept="3clFbT" id="5SuPMXLfwXi" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5SuPMXLfwXk" role="3cqZAp">
          <node concept="3cpWsn" id="5SuPMXLfwXj" role="3cpWs9">
            <property role="TrG5h" value="patternEditor" />
            <node concept="3uibUv" id="5SuPMXLfwXl" role="1tU5fm">
              <ref role="3uigEE" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
            </node>
            <node concept="2OqwBi" id="5SuPMXLfwXm" role="33vP2m">
              <node concept="1eOMI4" id="5SuPMXLfwXq" role="2Oq$k0">
                <node concept="10QFUN" id="5SuPMXLfwXn" role="1eOMHV">
                  <node concept="37vLTw" id="5SuPMXLfwXo" role="10QFUP">
                    <ref role="3cqZAo" node="5SuPMXLfwWY" resolve="editorCell" />
                  </node>
                  <node concept="3uibUv" id="5SuPMXLfUXS" role="10QFUM">
                    <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5SuPMXLfwXr" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell.createSubstitutePatternEditor()" resolve="createSubstitutePatternEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5SuPMXLfwXs" role="3cqZAp">
          <node concept="37vLTw" id="5SuPMXLfwXt" role="3clFbw">
            <ref role="3cqZAo" node="5SuPMXLfwX2" resolve="resetPattern" />
          </node>
          <node concept="3clFbS" id="5SuPMXLfwXv" role="3clFbx">
            <node concept="3clFbF" id="5SuPMXLfwXw" role="3cqZAp">
              <node concept="2OqwBi" id="5SuPMXLfFW1" role="3clFbG">
                <node concept="37vLTw" id="5SuPMXLfFW0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SuPMXLfwXj" resolve="patternEditor" />
                </node>
                <node concept="liA8E" id="5SuPMXLfFW2" role="2OqNvi">
                  <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.toggleReplaceMode()" resolve="toggleReplaceMode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5SuPMXLfwXz" role="3cqZAp">
          <node concept="3cpWsn" id="5SuPMXLfwXy" role="3cpWs9">
            <property role="TrG5h" value="substituteChooserHandler" />
            <node concept="3uibUv" id="5SuPMXLfwX$" role="1tU5fm">
              <ref role="3uigEE" to="6lvu:~NodeSubstituteChooserHandler" resolve="NodeSubstituteChooserHandler" />
            </node>
            <node concept="2ShNRf" id="5SuPMXLfFTn" role="33vP2m">
              <node concept="1pGfFk" id="5SuPMXLfFTx" role="2ShVmc">
                <ref role="37wK5l" to="6lvu:~NodeSubstituteChooserHandler.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell,jetbrains.mps.nodeEditor.EditorComponent,jetbrains.mps.openapi.editor.cells.SubstituteInfo,jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor,boolean)" resolve="NodeSubstituteChooserHandler" />
                <node concept="37vLTw" id="5SuPMXLfFTy" role="37wK5m">
                  <ref role="3cqZAo" node="5SuPMXLfwWY" resolve="editorCell" />
                </node>
                <node concept="Xjq3P" id="5SuPMXLfFTz" role="37wK5m" />
                <node concept="37vLTw" id="5SuPMXLfFT$" role="37wK5m">
                  <ref role="3cqZAo" node="5SuPMXLfwX0" resolve="substituteInfo" />
                </node>
                <node concept="37vLTw" id="5SuPMXLfFT_" role="37wK5m">
                  <ref role="3cqZAo" node="5SuPMXLfwXj" resolve="patternEditor" />
                </node>
                <node concept="37vLTw" id="5SuPMXLfFTA" role="37wK5m">
                  <ref role="3cqZAo" node="5SuPMXLfwX4" resolve="isSmart" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5SuPMXLfwXF" role="3cqZAp">
          <node concept="3fqX7Q" id="5SuPMXLfwXG" role="3clFbw">
            <node concept="2OqwBi" id="5SuPMXLfFYb" role="3fr31v">
              <node concept="37vLTw" id="5SuPMXLfFYa" role="2Oq$k0">
                <ref role="3cqZAo" node="5SuPMXLfwXy" resolve="substituteChooserHandler" />
              </node>
              <node concept="liA8E" id="5SuPMXLfFYc" role="2OqNvi">
                <ref role="37wK5l" to="6lvu:~NodeSubstituteChooserHandler.tryToSubstituteImmediately()" resolve="tryToSubstituteImmediately" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5SuPMXLfwXJ" role="3clFbx">
            <node concept="3clFbF" id="5SuPMXLfwXK" role="3cqZAp">
              <node concept="2OqwBi" id="5SuPMXLfFTN" role="3clFbG">
                <node concept="37vLTw" id="5SuPMXLfFTM" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SuPMXLfwXy" resolve="substituteChooserHandler" />
                </node>
                <node concept="liA8E" id="5SuPMXLfFTO" role="2OqNvi">
                  <ref role="37wK5l" to="6lvu:~NodeSubstituteChooserHandler.showNodeSubstituteChooser(jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser)" resolve="showNodeSubstituteChooser" />
                  <node concept="1rXfSq" id="5SuPMXLfTWr" role="37wK5m">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getNodeSubstituteChooser()" resolve="getNodeSubstituteChooser" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5SuPMXLfwXN" role="3cqZAp">
          <node concept="3clFbT" id="5SuPMXLfwXO" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SuPMXLfwXP" role="1B3o_S" />
      <node concept="10P_77" id="5SuPMXLfwXQ" role="3clF45" />
    </node>
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
    <node concept="312cEg" id="6ouH5jodJJe" role="jymVt">
      <property role="TrG5h" value="MOUSE_EVENT_TYPE" />
      <node concept="3Tm6S6" id="6ouH5jodJJf" role="1B3o_S" />
      <node concept="3rvAFt" id="6ouH5jodVj_" role="1tU5fm">
        <node concept="17QB3L" id="6ouH5jodVxz" role="3rvQeY" />
        <node concept="10Oyi0" id="6ouH5jodVLf" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="6ouH5jodW70" role="33vP2m">
        <node concept="3rGOSV" id="6ouH5jodW1_" role="2ShVmc">
          <node concept="17QB3L" id="6ouH5jodW1A" role="3rHrn6" />
          <node concept="10Oyi0" id="6ouH5jodW1B" role="3rHtpV" />
          <node concept="3Mi1_Z" id="6ouH5joer8Z" role="3Mj9YC">
            <node concept="3Milgn" id="6ouH5joerkn" role="3MiYds">
              <node concept="Xl_RD" id="6ouH5joerpJ" role="3MiK7k">
                <property role="Xl_RC" value="mousemove" />
              </node>
              <node concept="10M0yZ" id="6ouH5joerYR" role="3MiMdn">
                <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_MOVED" resolve="MOUSE_MOVED" />
                <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
              </node>
            </node>
            <node concept="3Milgn" id="6ouH5joespq" role="3MiYds">
              <node concept="Xl_RD" id="6ouH5joespr" role="3MiK7k">
                <property role="Xl_RC" value="mouseenter" />
              </node>
              <node concept="10M0yZ" id="6ouH5joesOf" role="3MiMdn">
                <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_ENTERED" resolve="MOUSE_ENTERED" />
                <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
              </node>
            </node>
            <node concept="3Milgn" id="6ouH5joeteU" role="3MiYds">
              <node concept="Xl_RD" id="6ouH5joeteV" role="3MiK7k">
                <property role="Xl_RC" value="mouseleave" />
              </node>
              <node concept="10M0yZ" id="6ouH5joetDI" role="3MiMdn">
                <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_EXITED" resolve="MOUSE_EXITED" />
                <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
              </node>
            </node>
          </node>
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
    <node concept="312cEg" id="2UHWH1pM8_v" role="jymVt">
      <property role="TrG5h" value="editorId" />
      <node concept="3Tm6S6" id="2UHWH1pM8_w" role="1B3o_S" />
      <node concept="17QB3L" id="2UHWH1pM9ba" role="1tU5fm" />
      <node concept="10Nm6u" id="2UHWH1pM9hI" role="33vP2m" />
    </node>
    <node concept="312cEg" id="2UHWH1pMDPW" role="jymVt">
      <property role="TrG5h" value="httpSessionId" />
      <node concept="3Tm6S6" id="2UHWH1pMDPX" role="1B3o_S" />
      <node concept="17QB3L" id="2UHWH1pMEsg" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2UHWH1pLseU" role="jymVt" />
    <node concept="312cEg" id="1qbCJZsJ67d" role="jymVt">
      <property role="TrG5h" value="changeDetectionTimer" />
      <node concept="3Tm6S6" id="1qbCJZsJ67e" role="1B3o_S" />
      <node concept="3uibUv" id="7tTb3N6VJVI" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ScheduledFuture" resolve="ScheduledFuture" />
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
    <node concept="312cEg" id="7tTb3N6QEMo" role="jymVt">
      <property role="TrG5h" value="imageChangeDetector" />
      <node concept="3Tm6S6" id="7tTb3N6QEMp" role="1B3o_S" />
      <node concept="3uibUv" id="7tTb3N6QKkq" role="1tU5fm">
        <ref role="3uigEE" node="7tTb3N6JZZ2" resolve="EditorChangeDetector" />
      </node>
    </node>
    <node concept="312cEg" id="7tTb3N6XkrX" role="jymVt">
      <property role="TrG5h" value="changeDetectionInterval" />
      <node concept="3Tm6S6" id="7tTb3N6XkrY" role="1B3o_S" />
      <node concept="10Oyi0" id="7tTb3N6XqyS" role="1tU5fm" />
      <node concept="3cmrfG" id="7tTb3N6XrIJ" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="312cEg" id="Cck3bmLhm6" role="jymVt">
      <property role="TrG5h" value="lastImageTime" />
      <node concept="3Tm6S6" id="Cck3bmLhm7" role="1B3o_S" />
      <node concept="3cpWsb" id="Cck3bmLxhC" role="1tU5fm" />
      <node concept="3cmrfG" id="Cck3bmLpD6" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6Qu1j" role="jymVt" />
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
    <node concept="2tJIrI" id="Cck3bmMy_M" role="jymVt" />
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
    <node concept="312cEg" id="YSRTOetFhY" role="jymVt">
      <property role="TrG5h" value="lastIntentions" />
      <node concept="3Tm6S6" id="YSRTOetFhZ" role="1B3o_S" />
      <node concept="_YKpA" id="YSRTOetKEm" role="1tU5fm">
        <node concept="3uibUv" id="YSRTOetN3J" role="_ZDj9">
          <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
          <node concept="3uibUv" id="YSRTOetN3K" role="11_B2D">
            <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
          </node>
          <node concept="3uibUv" id="YSRTOetN3L" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2D2$TMZrOgM" role="jymVt" />
    <node concept="312cEg" id="5T3RZQ95ndl" role="jymVt">
      <property role="TrG5h" value="tooltip" />
      <node concept="3Tm6S6" id="5T3RZQ95ndm" role="1B3o_S" />
      <node concept="3uibUv" id="5T3RZQ95uP$" role="1tU5fm">
        <ref role="3uigEE" node="5T3RZQ93ztz" resolve="RenderSession.RemoteTooltip" />
      </node>
      <node concept="2ShNRf" id="5T3RZQ95w5X" role="33vP2m">
        <node concept="1pGfFk" id="5T3RZQ95vOh" role="2ShVmc">
          <ref role="37wK5l" node="5T3RZQ9596I" resolve="RenderSession.RemoteTooltip" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5T3RZQ95cej" role="jymVt" />
    <node concept="312cEg" id="7tTb3N6JEBz" role="jymVt">
      <property role="TrG5h" value="sendLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7tTb3N6JEB$" role="1B3o_S" />
      <node concept="3uibUv" id="7tTb3N6JKmC" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="7tTb3N6JO2M" role="33vP2m">
        <node concept="1pGfFk" id="7tTb3N6JNXp" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Cck3bmEywg" role="jymVt" />
    <node concept="312cEg" id="2sCgtIfMg42" role="jymVt">
      <property role="TrG5h" value="isInspector" />
      <node concept="3Tm6S6" id="2sCgtIfMax0" role="1B3o_S" />
      <node concept="10P_77" id="2sCgtIfMg0A" role="1tU5fm" />
      <node concept="3clFbT" id="2sCgtIfMnXI" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="2sCgtIfM5II" role="jymVt" />
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
      <node concept="37vLTG" id="2UHWH1pMD6Z" role="3clF46">
        <property role="TrG5h" value="httpSessionId" />
        <node concept="17QB3L" id="2UHWH1pMDd1" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1qbCJZsJ67K" role="3clF45" />
      <node concept="3Tm1VV" id="2sCgtIfGXvY" role="1B3o_S" />
      <node concept="3clFbS" id="1qbCJZsJ67M" role="3clF47">
        <node concept="1VxSAg" id="2KYpxsX78F0" role="3cqZAp">
          <ref role="37wK5l" node="2sCgtIfLTMJ" resolve="RenderSession" />
          <node concept="37vLTw" id="2KYpxsX790g" role="37wK5m">
            <ref role="3cqZAo" node="1qbCJZsJ67I" resolve="project" />
          </node>
          <node concept="37vLTw" id="2KYpxsX79c9" role="37wK5m">
            <ref role="3cqZAo" node="1qbCJZsKjMG" resolve="websocketSession" />
          </node>
          <node concept="37vLTw" id="2KYpxsX79j0" role="37wK5m">
            <ref role="3cqZAo" node="2mcPA70wwkN" resolve="user" />
          </node>
          <node concept="37vLTw" id="2KYpxsX79Hs" role="37wK5m">
            <ref role="3cqZAo" node="2UHWH1pMD6Z" resolve="httpSessionId" />
          </node>
          <node concept="3clFbT" id="2KYpxsX79PT" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="2sCgtIfLTMJ" role="jymVt">
      <node concept="37vLTG" id="2sCgtIfLTMK" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2sCgtIfLTML" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2sCgtIfLTMM" role="3clF46">
        <property role="TrG5h" value="websocketSession" />
        <node concept="3uibUv" id="2sCgtIfLTMN" role="1tU5fm">
          <ref role="3uigEE" to="fz1u:~Session" resolve="Session" />
        </node>
        <node concept="2AHcQZ" id="2sCgtIfLTMO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2sCgtIfLTMP" role="3clF46">
        <property role="TrG5h" value="user" />
        <node concept="17QB3L" id="2sCgtIfLTMQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2sCgtIfLTMR" role="3clF46">
        <property role="TrG5h" value="httpSessionId" />
        <node concept="17QB3L" id="2sCgtIfLTMS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2sCgtIfM2Sn" role="3clF46">
        <property role="TrG5h" value="isInspector" />
        <node concept="10P_77" id="2sCgtIfM348" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2sCgtIfLTMT" role="3clF45" />
      <node concept="3Tm1VV" id="2sCgtIfLTMU" role="1B3o_S" />
      <node concept="3clFbS" id="2sCgtIfLTMV" role="3clF47">
        <node concept="3clFbF" id="2sCgtIfLTMW" role="3cqZAp">
          <node concept="37vLTI" id="2sCgtIfLTMX" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfLTMY" role="37vLTx">
              <ref role="3cqZAo" node="2sCgtIfLTMK" resolve="project" />
            </node>
            <node concept="2OqwBi" id="2sCgtIfLTMZ" role="37vLTJ">
              <node concept="Xjq3P" id="2sCgtIfLTN0" role="2Oq$k0" />
              <node concept="2OwXpG" id="2sCgtIfLTN1" role="2OqNvi">
                <ref role="2Oxat6" node="1qbCJZsJ67D" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfLTN2" role="3cqZAp">
          <node concept="37vLTI" id="2sCgtIfLTN3" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfLTN4" role="37vLTx">
              <ref role="3cqZAo" node="2sCgtIfLTMM" resolve="websocketSession" />
            </node>
            <node concept="2OqwBi" id="2sCgtIfLTN5" role="37vLTJ">
              <node concept="Xjq3P" id="2sCgtIfLTN6" role="2Oq$k0" />
              <node concept="2OwXpG" id="2sCgtIfLTN7" role="2OqNvi">
                <ref role="2Oxat6" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfLTN8" role="3cqZAp">
          <node concept="37vLTI" id="2sCgtIfLTN9" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfLTNa" role="37vLTx">
              <ref role="3cqZAo" node="2sCgtIfLTMP" resolve="user" />
            </node>
            <node concept="2OqwBi" id="2sCgtIfLTNb" role="37vLTJ">
              <node concept="Xjq3P" id="2sCgtIfLTNc" role="2Oq$k0" />
              <node concept="2OwXpG" id="2sCgtIfLTNd" role="2OqNvi">
                <ref role="2Oxat6" node="2mcPA70wyj9" resolve="user" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfLTNe" role="3cqZAp">
          <node concept="37vLTI" id="2sCgtIfLTNf" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfLTNg" role="37vLTx">
              <ref role="3cqZAo" node="2sCgtIfLTMR" resolve="httpSessionId" />
            </node>
            <node concept="2OqwBi" id="2sCgtIfLTNh" role="37vLTJ">
              <node concept="Xjq3P" id="2sCgtIfLTNi" role="2Oq$k0" />
              <node concept="2OwXpG" id="2sCgtIfLTNj" role="2OqNvi">
                <ref role="2Oxat6" node="2UHWH1pMDPW" resolve="httpSessionId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfM50a" role="3cqZAp">
          <node concept="37vLTI" id="2sCgtIfMp3g" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfMpsh" role="37vLTx">
              <ref role="3cqZAo" node="2sCgtIfM2Sn" resolve="isInspector" />
            </node>
            <node concept="2OqwBi" id="2sCgtIfMolh" role="37vLTJ">
              <node concept="Xjq3P" id="2sCgtIfM508" role="2Oq$k0" />
              <node concept="2OwXpG" id="2sCgtIfMouB" role="2OqNvi">
                <ref role="2Oxat6" node="2sCgtIfMg42" resolve="isInspector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2sCgtIfLTNk" role="3cqZAp">
          <node concept="1rXfSq" id="2sCgtIfLTNl" role="3clFbG">
            <ref role="37wK5l" node="1qbCJZsJ681" resolve="init" />
            <node concept="37vLTw" id="2sCgtIfLTNm" role="37wK5m">
              <ref role="3cqZAo" node="2sCgtIfLTMK" resolve="project" />
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
                <ref role="37wK5l" to="l6bp:92VPpV3ueU" resolve="STransformationEngine" />
                <node concept="2ShNRf" id="5npwda7tPIy" role="37wK5m">
                  <node concept="1pGfFk" id="5npwda7ucKj" role="2ShVmc">
                    <ref role="37wK5l" to="od2j:41QOk3IHOCK" resolve="DefaultPFContext" />
                    <node concept="2ShNRf" id="5npwda7uhFH" role="37wK5m">
                      <node concept="1pGfFk" id="5npwda7uiUM" role="2ShVmc">
                        <ref role="37wK5l" to="l6bp:7YhLqbpjFao" resolve="SM_TransformationsFromRepository" />
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
        <node concept="3clFbF" id="7tTb3N6QMQL" role="3cqZAp">
          <node concept="37vLTI" id="7tTb3N6QNID" role="3clFbG">
            <node concept="2ShNRf" id="7tTb3N6QNXf" role="37vLTx">
              <node concept="YeOm9" id="7tTb3N6Sq$1" role="2ShVmc">
                <node concept="1Y3b0j" id="7tTb3N6Sq$4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" node="7tTb3N6R1Wx" resolve="EditorChangeDetector" />
                  <ref role="1Y3XeK" node="7tTb3N6JZZ2" resolve="EditorChangeDetector" />
                  <node concept="3Tm1VV" id="7tTb3N6Sq$5" role="1B3o_S" />
                  <node concept="3clFb_" id="7tTb3N6SqAM" role="jymVt">
                    <property role="TrG5h" value="getEditorComponent" />
                    <node concept="3uibUv" id="7tTb3N6SqAN" role="3clF45">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="3Tmbuc" id="7tTb3N6SqAO" role="1B3o_S" />
                    <node concept="3clFbS" id="7tTb3N6SqAR" role="3clF47">
                      <node concept="3clFbF" id="7tTb3N6St4q" role="3cqZAp">
                        <node concept="2OqwBi" id="7tTb3N6Sta2" role="3clFbG">
                          <node concept="Xjq3P" id="7tTb3N6St4p" role="2Oq$k0">
                            <ref role="1HBi2w" node="1qbCJZsJ66o" resolve="RenderSession" />
                          </node>
                          <node concept="liA8E" id="7tTb3N6Svjw" role="2OqNvi">
                            <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7tTb3N6SqAS" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7tTb3N6SqAV" role="jymVt">
                    <property role="TrG5h" value="handleFullChange" />
                    <node concept="37vLTG" id="7tTb3N6SqAW" role="3clF46">
                      <property role="TrG5h" value="newImage" />
                      <node concept="3uibUv" id="7tTb3N6SqAX" role="1tU5fm">
                        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                      </node>
                    </node>
                    <node concept="3cqZAl" id="7tTb3N6SqAY" role="3clF45" />
                    <node concept="3Tmbuc" id="7tTb3N6SqAZ" role="1B3o_S" />
                    <node concept="3clFbS" id="7tTb3N6SqB2" role="3clF47">
                      <node concept="3clFbF" id="7tTb3N6Y1J1" role="3cqZAp">
                        <node concept="37vLTI" id="7tTb3N6Y1YY" role="3clFbG">
                          <node concept="3cmrfG" id="7tTb3N6Y2eI" role="37vLTx">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="7tTb3N6Y1IZ" role="37vLTJ">
                            <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7tTb3N6SVhu" role="3cqZAp">
                        <node concept="3clFbS" id="7tTb3N6SVhv" role="3clFbx">
                          <node concept="3cpWs6" id="7tTb3N6SVhw" role="3cqZAp" />
                        </node>
                        <node concept="3fqX7Q" id="7tTb3N6SVhx" role="3clFbw">
                          <node concept="2OqwBi" id="7tTb3N6SVhy" role="3fr31v">
                            <node concept="37vLTw" id="7tTb3N6SVhz" role="2Oq$k0">
                              <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
                            </node>
                            <node concept="liA8E" id="7tTb3N6SVh$" role="2OqNvi">
                              <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7tTb3N6V8zg" role="3cqZAp">
                        <node concept="1rXfSq" id="7tTb3N6V8ze" role="3clFbG">
                          <ref role="37wK5l" node="7tTb3N6T3eC" resolve="sendFullImage" />
                          <node concept="37vLTw" id="7tTb3N6V9ec" role="37wK5m">
                            <ref role="3cqZAo" node="7tTb3N6SqAW" resolve="newImage" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7tTb3N6SqB3" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7tTb3N6SqB4" role="jymVt">
                    <property role="TrG5h" value="handlePartialChange" />
                    <node concept="37vLTG" id="7tTb3N6SqB5" role="3clF46">
                      <property role="TrG5h" value="newImage" />
                      <node concept="3uibUv" id="7tTb3N6SqB6" role="1tU5fm">
                        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7tTb3N6SqB7" role="3clF46">
                      <property role="TrG5h" value="offsetY" />
                      <node concept="10Oyi0" id="7tTb3N6SqB8" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="7tTb3N6SqB9" role="3clF45" />
                    <node concept="3Tmbuc" id="7tTb3N6SqBa" role="1B3o_S" />
                    <node concept="3clFbS" id="7tTb3N6SqBd" role="3clF47">
                      <node concept="3clFbF" id="7tTb3N6Y2eO" role="3cqZAp">
                        <node concept="37vLTI" id="7tTb3N6Y2eP" role="3clFbG">
                          <node concept="3cmrfG" id="7tTb3N6Y2eQ" role="37vLTx">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="7tTb3N6Y2eR" role="37vLTJ">
                            <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7tTb3N6SV$2" role="3cqZAp">
                        <node concept="3clFbS" id="7tTb3N6SV$3" role="3clFbx">
                          <node concept="3cpWs6" id="7tTb3N6SV$4" role="3cqZAp" />
                        </node>
                        <node concept="3fqX7Q" id="7tTb3N6SV$5" role="3clFbw">
                          <node concept="2OqwBi" id="7tTb3N6SV$6" role="3fr31v">
                            <node concept="37vLTw" id="7tTb3N6SV$7" role="2Oq$k0">
                              <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
                            </node>
                            <node concept="liA8E" id="7tTb3N6SV$8" role="2OqNvi">
                              <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7tTb3N6VCcN" role="3cqZAp">
                        <node concept="3clFbS" id="7tTb3N6VCcP" role="3clFbx">
                          <node concept="3clFbF" id="7tTb3N6Va03" role="3cqZAp">
                            <node concept="1rXfSq" id="7tTb3N6Va01" role="3clFbG">
                              <ref role="37wK5l" node="7tTb3N6TGqq" resolve="sendPartialImage" />
                              <node concept="37vLTw" id="7tTb3N6VaWo" role="37wK5m">
                                <ref role="3cqZAo" node="7tTb3N6SqB5" resolve="newImage" />
                              </node>
                              <node concept="37vLTw" id="7tTb3N6VbDv" role="37wK5m">
                                <ref role="3cqZAo" node="7tTb3N6SqB7" resolve="offsetY" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eOVzh" id="7tTb3N6VF99" role="3clFbw">
                          <node concept="37vLTw" id="7tTb3N6VCNi" role="3uHU7B">
                            <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                          </node>
                          <node concept="3cmrfG" id="7tTb3N6VEwl" role="3uHU7w">
                            <property role="3cmrfH" value="20" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="7tTb3N6VGDc" role="9aQIa">
                          <node concept="3clFbS" id="7tTb3N6VGDd" role="9aQI4">
                            <node concept="3clFbF" id="7tTb3N6VHrh" role="3cqZAp">
                              <node concept="1rXfSq" id="7tTb3N6VHrg" role="3clFbG">
                                <ref role="37wK5l" node="7tTb3N6T3eC" resolve="sendFullImage" />
                                <node concept="1rXfSq" id="7tTb3N6VIj3" role="37wK5m">
                                  <ref role="37wK5l" node="7tTb3N6P_2E" resolve="getLastImage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7tTb3N6SqBe" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7tTb3N6QMQJ" role="37vLTJ">
              <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6VME6" role="3cqZAp" />
        <node concept="3clFbF" id="7tTb3N6VKp4" role="3cqZAp">
          <node concept="37vLTI" id="7tTb3N6VKp6" role="3clFbG">
            <node concept="2YIFZM" id="7tTb3N6VIPz" role="37vLTx">
              <ref role="37wK5l" to="csg2:4qNw5QU$ess" resolve="fixDelay" />
              <ref role="1Pybhc" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
              <node concept="3cmrfG" id="7tTb3N6VIP$" role="37wK5m">
                <property role="3cmrfH" value="10" />
              </node>
              <node concept="2ShNRf" id="7tTb3N6XtI6" role="37wK5m">
                <node concept="YeOm9" id="7tTb3N6Xvzi" role="2ShVmc">
                  <node concept="1Y3b0j" id="7tTb3N6Xvzl" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="312cEg" id="7tTb3N6XzNG" role="jymVt">
                      <property role="TrG5h" value="counter" />
                      <node concept="3Tm6S6" id="7tTb3N6XzNH" role="1B3o_S" />
                      <node concept="10Oyi0" id="7tTb3N6X$nO" role="1tU5fm" />
                      <node concept="3cmrfG" id="7tTb3N6X$E8" role="33vP2m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="7tTb3N6Xvzm" role="1B3o_S" />
                    <node concept="3clFb_" id="7tTb3N6Xvzr" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="7tTb3N6Xvzs" role="1B3o_S" />
                      <node concept="3cqZAl" id="7tTb3N6Xvzu" role="3clF45" />
                      <node concept="3clFbS" id="7tTb3N6Xvzv" role="3clF47">
                        <node concept="3clFbH" id="7tTb3N6XJSa" role="3cqZAp" />
                        <node concept="3clFbJ" id="7tTb3N6XseD" role="3cqZAp">
                          <node concept="3clFbS" id="7tTb3N6XseF" role="3clFbx">
                            <node concept="3clFbF" id="7tTb3N6XCIr" role="3cqZAp">
                              <node concept="37vLTI" id="7tTb3N6XDX6" role="3clFbG">
                                <node concept="3cmrfG" id="7tTb3N6XEif" role="37vLTx">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="7tTb3N6XCIp" role="37vLTJ">
                                  <ref role="3cqZAo" node="7tTb3N6XzNG" resolve="counter" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7tTb3N6XMBW" role="3cqZAp">
                              <node concept="3clFbS" id="7tTb3N6XMBY" role="3clFbx">
                                <node concept="3clFbF" id="7tTb3N6XM4D" role="3cqZAp">
                                  <node concept="37vLTI" id="7tTb3N6XO7h" role="3clFbG">
                                    <node concept="10QFUN" id="7tTb3N6XVbc" role="37vLTx">
                                      <node concept="10Oyi0" id="7tTb3N6XVjT" role="10QFUM" />
                                      <node concept="2YIFZM" id="7tTb3N6XOAS" role="10QFUP">
                                        <ref role="37wK5l" to="wyt6:~Math.round(double)" resolve="round" />
                                        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                                        <node concept="2YIFZM" id="7tTb3N6XOQV" role="37wK5m">
                                          <ref role="37wK5l" to="wyt6:~Math.ceil(double)" resolve="ceil" />
                                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                                          <node concept="17qRlL" id="7tTb3N6XPQa" role="37wK5m">
                                            <node concept="37vLTw" id="7tTb3N6XQlF" role="3uHU7w">
                                              <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                                            </node>
                                            <node concept="3b6qkQ" id="7tTb3N6XPAo" role="3uHU7B">
                                              <property role="$nhwW" value="1.5" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7tTb3N6XMkF" role="37vLTJ">
                                      <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3eOVzh" id="7tTb3N6XNnx" role="3clFbw">
                                <node concept="3cmrfG" id="7tTb3N6XNBh" role="3uHU7w">
                                  <property role="3cmrfH" value="500" />
                                </node>
                                <node concept="37vLTw" id="7tTb3N6XN7J" role="3uHU7B">
                                  <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7tTb3N6VIPB" role="3cqZAp">
                              <node concept="3clFbS" id="7tTb3N6VIPC" role="3clFbx">
                                <node concept="3clFbF" id="7tTb3N6VIPI" role="3cqZAp">
                                  <node concept="2OqwBi" id="7tTb3N6VIPJ" role="3clFbG">
                                    <node concept="37vLTw" id="7tTb3N6VIPK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                                    </node>
                                    <node concept="liA8E" id="7tTb3N6VIPL" role="2OqNvi">
                                      <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7tTb3N6VIPF" role="3clFbw">
                                <node concept="37vLTw" id="7tTb3N6VIPG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
                                </node>
                                <node concept="liA8E" id="7tTb3N6VIPH" role="2OqNvi">
                                  <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2d3UOw" id="7tTb3N6XAtF" role="3clFbw">
                            <node concept="37vLTw" id="7tTb3N6XBN6" role="3uHU7w">
                              <ref role="3cqZAo" node="7tTb3N6XkrX" resolve="changeDetectionInterval" />
                            </node>
                            <node concept="37vLTw" id="7tTb3N6X$Vc" role="3uHU7B">
                              <ref role="3cqZAo" node="7tTb3N6XzNG" resolve="counter" />
                            </node>
                          </node>
                          <node concept="9aQIb" id="7tTb3N6XG2v" role="9aQIa">
                            <node concept="3clFbS" id="7tTb3N6XG2w" role="9aQI4">
                              <node concept="3clFbF" id="7tTb3N6XGCA" role="3cqZAp">
                                <node concept="3uNrnE" id="7tTb3N6XHEX" role="3clFbG">
                                  <node concept="37vLTw" id="7tTb3N6XHEZ" role="2$L3a6">
                                    <ref role="3cqZAo" node="7tTb3N6XzNG" resolve="counter" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="Cck3bmLxAM" role="3cqZAp" />
                        <node concept="3clFbJ" id="Cck3bmLyGA" role="3cqZAp">
                          <node concept="3clFbS" id="Cck3bmLyGC" role="3clFbx">
                            <node concept="3clFbF" id="Cck3bmKuM3" role="3cqZAp">
                              <node concept="1rXfSq" id="Cck3bmKuM2" role="3clFbG">
                                <ref role="37wK5l" node="7tTb3N6T3eC" resolve="sendFullImage" />
                                <node concept="2OqwBi" id="Cck3bmKxCX" role="37wK5m">
                                  <node concept="37vLTw" id="Cck3bmKwJy" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                                  </node>
                                  <node concept="liA8E" id="Cck3bmKyaG" role="2OqNvi">
                                    <ref role="37wK5l" node="7tTb3N6P_2E" resolve="getLastImage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="Cck3bmLXl0" role="3clFbw">
                            <node concept="3eOSWO" id="Cck3bmLA9O" role="3uHU7w">
                              <node concept="3cpWsd" id="Cck3bmL$Ao" role="3uHU7B">
                                <node concept="2YIFZM" id="Cck3bmLzPZ" role="3uHU7B">
                                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                </node>
                                <node concept="37vLTw" id="Cck3bmL_m7" role="3uHU7w">
                                  <ref role="3cqZAo" node="Cck3bmLhm6" resolve="lastImageTime" />
                                </node>
                              </node>
                              <node concept="3cmrfG" id="Cck3bmLAp$" role="3uHU7w">
                                <property role="3cmrfH" value="3000" />
                              </node>
                            </node>
                            <node concept="3y3z36" id="Cck3bmLDSs" role="3uHU7B">
                              <node concept="3cmrfG" id="Cck3bmLEqd" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="Cck3bmLCPW" role="3uHU7B">
                                <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7tTb3N6Xvzx" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7tTb3N6VLzE" role="37vLTJ">
              <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="changeDetectionTimer" />
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
                    <node concept="3J1_TO" id="2D2$TMZvber" role="3cqZAp">
                      <node concept="3clFbS" id="2D2$TMZvbet" role="1zxBo7">
                        <node concept="1X3_iC" id="YrAPzE$053" role="lGtFl">
                          <property role="3V$3am" value="statement" />
                          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                          <node concept="3clFbF" id="2D2$TMZuG$7" role="8Wnug">
                            <node concept="1rXfSq" id="2D2$TMZuG$8" role="3clFbG">
                              <ref role="37wK5l" node="2D2$TMZu5kA" resolve="processCCMenu" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uVAMA" id="2D2$TMZvbeu" role="1zxBo5">
                        <node concept="XOnhg" id="2D2$TMZvbew" role="1zc67B">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="9cxD1tn7y47" role="1tU5fm">
                            <node concept="3uibUv" id="2D2$TMZvbrt" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2D2$TMZvbe$" role="1zc67A">
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
        <node concept="3clFbF" id="2sCgtIfDBlw" role="3cqZAp">
          <node concept="2OqwBi" id="2sCgtIfDBLW" role="3clFbG">
            <node concept="37vLTw" id="2sCgtIfDBlu" role="2Oq$k0">
              <ref role="3cqZAo" node="1MWbHmSlE60" resolve="message" />
            </node>
            <node concept="liA8E" id="2sCgtIfDCkA" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,boolean)" resolve="put" />
              <node concept="Xl_RD" id="2sCgtIfDD1d" role="37wK5m">
                <property role="Xl_RC" value="inspector" />
              </node>
              <node concept="2OqwBi" id="2sCgtIfDDpi" role="37wK5m">
                <node concept="Xjq3P" id="2sCgtIfDDcH" role="2Oq$k0" />
                <node concept="liA8E" id="2sCgtIfDD$G" role="2OqNvi">
                  <ref role="37wK5l" node="2sCgtIf$6pJ" resolve="isInspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="7tTb3N6JQr5" role="3cqZAp">
          <node concept="37vLTw" id="7tTb3N6JTH3" role="1HWFw0">
            <ref role="3cqZAo" node="7tTb3N6JEBz" resolve="sendLock" />
          </node>
          <node concept="3clFbS" id="7tTb3N6JQr9" role="1HWHxc">
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
            <node concept="3J1_TO" id="1MWbHmSlrpG" role="3cqZAp">
              <node concept="3clFbS" id="1MWbHmSlrpH" role="1zxBo7">
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
                      <node concept="2OqwBi" id="1MWbHmSlrpz" role="37wK5m">
                        <node concept="37vLTw" id="1MWbHmSlrp$" role="2Oq$k0">
                          <ref role="3cqZAo" node="1MWbHmSlE60" resolve="message" />
                        </node>
                        <node concept="liA8E" id="1MWbHmSlrp_" role="2OqNvi">
                          <ref role="37wK5l" to="mxf6:~JSONObject.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="1MWbHmSlrpP" role="1zxBo5">
                <node concept="XOnhg" id="1MWbHmSlrpQ" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="fVsRClpj2EF" role="1tU5fm">
                    <node concept="3uibUv" id="1MWbHmSlrpR" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1MWbHmSlrpS" role="1zc67A">
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
      </node>
    </node>
    <node concept="2tJIrI" id="2D2$TMZu0Pt" role="jymVt" />
    <node concept="3clFb_" id="1qbCJZsJ69e" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <node concept="3Tmbuc" id="2sCgtIfI8B_" role="1B3o_S" />
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
                  <node concept="3clFbJ" id="2sCgtIfMO6H" role="3cqZAp">
                    <node concept="3clFbS" id="2sCgtIfMO6J" role="3clFbx">
                      <node concept="3clFbF" id="2sCgtIfMR5o" role="3cqZAp">
                        <node concept="37vLTI" id="2sCgtIfMR5p" role="3clFbG">
                          <node concept="37vLTw" id="2sCgtIfMR5t" role="37vLTJ">
                            <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                          </node>
                          <node concept="2ShNRf" id="2sCgtIfN0vM" role="37vLTx">
                            <node concept="1pGfFk" id="2sCgtIfN0vN" role="2ShVmc">
                              <ref role="37wK5l" node="4OOltvpOJWv" resolve="ServerInspectorEditorComponent" />
                              <node concept="37vLTw" id="2sCgtIfN0vO" role="37wK5m">
                                <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
                              </node>
                              <node concept="37vLTw" id="2sCgtIfN0vP" role="37wK5m">
                                <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2sCgtIfMOZE" role="3clFbw">
                      <node concept="Xjq3P" id="2sCgtIfMOw3" role="2Oq$k0" />
                      <node concept="2OwXpG" id="2sCgtIfMPuj" role="2OqNvi">
                        <ref role="2Oxat6" node="2sCgtIfMg42" resolve="isInspector" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="2sCgtIfMPYM" role="9aQIa">
                      <node concept="3clFbS" id="2sCgtIfMPYN" role="9aQI4">
                        <node concept="3clFbF" id="1qbCJZsJ6ad" role="3cqZAp">
                          <node concept="37vLTI" id="1qbCJZsJ6ae" role="3clFbG">
                            <node concept="37vLTw" id="1qbCJZsJ6aj" role="37vLTJ">
                              <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                            </node>
                            <node concept="2ShNRf" id="2sCgtIfIUHy" role="37vLTx">
                              <node concept="1pGfFk" id="2sCgtIfIO0B" role="2ShVmc">
                                <ref role="37wK5l" node="6xm2RBlmxP4" resolve="ServerEditorComponent" />
                                <node concept="37vLTw" id="2sCgtIfJltt" role="37wK5m">
                                  <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
                                </node>
                                <node concept="37vLTw" id="2sCgtIfJws6" role="37wK5m">
                                  <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2sCgtIfGXJh" role="3cqZAp" />
                  <node concept="3clFbF" id="3bLfBq93lKI" role="3cqZAp">
                    <node concept="2YIFZM" id="3bLfBq93mqy" role="3clFbG">
                      <ref role="37wK5l" to="wvnl:~EditorExtensionUtil.extendUsingProject(jetbrains.mps.openapi.editor.EditorComponent,jetbrains.mps.project.IProject)" resolve="extendUsingProject" />
                      <ref role="1Pybhc" to="wvnl:~EditorExtensionUtil" resolve="EditorExtensionUtil" />
                      <node concept="37vLTw" id="3bLfBq93mHu" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                      <node concept="37vLTw" id="3bLfBq93nEy" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
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
                                  <node concept="3clFbF" id="7tTb3N6V5R0" role="3cqZAp">
                                    <node concept="2OqwBi" id="7tTb3N6V6s2" role="3clFbG">
                                      <node concept="37vLTw" id="7tTb3N6V5QY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                                      </node>
                                      <node concept="liA8E" id="7tTb3N6V6NG" role="2OqNvi">
                                        <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="42vnfqpq8Rg" role="3cqZAp">
                                    <node concept="1rXfSq" id="42vnfqpq8Re" role="3clFbG">
                                      <ref role="37wK5l" node="42vnfqppZlZ" resolve="inspect" />
                                      <node concept="37vLTw" id="2sCgtIf$JRN" role="37wK5m">
                                        <ref role="3cqZAo" node="1qbCJZsJ6a_" resolve="newSelection" />
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
                                  <node concept="3clFbF" id="7tTb3N6V7AG" role="3cqZAp">
                                    <node concept="2OqwBi" id="7tTb3N6V7AH" role="3clFbG">
                                      <node concept="37vLTw" id="7tTb3N6V7AI" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                                      </node>
                                      <node concept="liA8E" id="7tTb3N6V7AJ" role="2OqNvi">
                                        <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
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
    <node concept="2tJIrI" id="2sCgtIfEEkP" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6T3eC" role="jymVt">
      <property role="TrG5h" value="sendFullImage" />
      <node concept="37vLTG" id="7tTb3N6TcQH" role="3clF46">
        <property role="TrG5h" value="img" />
        <node concept="3uibUv" id="Cck3bmFZsU" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="3cqZAl" id="7tTb3N6T3eE" role="3clF45" />
      <node concept="3Tm1VV" id="7tTb3N6T3eF" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6T3eG" role="3clF47">
        <node concept="3clFbJ" id="7tTb3N6Tsc$" role="3cqZAp">
          <node concept="3clFbS" id="7tTb3N6Tsc_" role="3clFbx">
            <node concept="3cpWs6" id="7tTb3N6TscA" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="7tTb3N6TscB" role="3clFbw">
            <node concept="2OqwBi" id="7tTb3N6TscC" role="3fr31v">
              <node concept="37vLTw" id="7tTb3N6TscD" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsKdju" resolve="websocketSession" />
              </node>
              <node concept="liA8E" id="7tTb3N6TscE" role="2OqNvi">
                <ref role="37wK5l" to="fz1u:~Session.isOpen()" resolve="isOpen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6TkwZ" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6Tkx0" role="3cpWs9">
            <property role="TrG5h" value="png" />
            <node concept="17QB3L" id="7tTb3N6Tkh2" role="1tU5fm" />
            <node concept="2YIFZM" id="7tTb3N6Tkx1" role="33vP2m">
              <ref role="37wK5l" to="vyue:7tTb3N6PLuj" resolve="toPngBase64" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
              <node concept="37vLTw" id="7tTb3N6Tkx2" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6TcQH" resolve="img" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6TkNB" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6TkNC" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="7tTb3N6TkND" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="7tTb3N6TkNE" role="33vP2m">
              <node concept="1pGfFk" id="7tTb3N6TkNF" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6TkNG" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6TkNH" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6TkNI" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6TkNC" resolve="message" />
            </node>
            <node concept="liA8E" id="7tTb3N6TkNJ" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6TkNK" role="37wK5m">
                <property role="Xl_RC" value="type" />
              </node>
              <node concept="Xl_RD" id="7tTb3N6TkNL" role="37wK5m">
                <property role="Xl_RC" value="image.full" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Z3re34dWCr" role="3cqZAp">
          <node concept="3cpWsn" id="1Z3re34dWCs" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="1Z3re34dWCt" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="1Z3re34dWCu" role="33vP2m">
              <node concept="1pGfFk" id="1Z3re34dWCv" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z3re34dWCw" role="3cqZAp">
          <node concept="2OqwBi" id="1Z3re34dWCx" role="3clFbG">
            <node concept="37vLTw" id="1Z3re34dWCy" role="2Oq$k0">
              <ref role="3cqZAo" node="1Z3re34dWCs" resolve="data" />
            </node>
            <node concept="liA8E" id="1Z3re34dWCz" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="1Z3re34dWC$" role="37wK5m">
                <property role="Xl_RC" value="rawData" />
              </node>
              <node concept="37vLTw" id="1Z3re34e0KS" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6Tkx0" resolve="png" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z3re34dWCW" role="3cqZAp">
          <node concept="2OqwBi" id="1Z3re34dWCX" role="3clFbG">
            <node concept="37vLTw" id="1Z3re34dWCY" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6TkNC" resolve="message" />
            </node>
            <node concept="liA8E" id="1Z3re34dWCZ" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="1Z3re34dWD0" role="37wK5m">
                <property role="Xl_RC" value="data" />
              </node>
              <node concept="37vLTw" id="1Z3re34dWD1" role="37wK5m">
                <ref role="3cqZAo" node="1Z3re34dWCs" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="7tTb3N6TkNN" role="3cqZAp">
          <node concept="37vLTw" id="7tTb3N6TkNO" role="1HWFw0">
            <ref role="3cqZAo" node="7tTb3N6JEBz" resolve="sendLock" />
          </node>
          <node concept="3clFbS" id="7tTb3N6TkNP" role="1HWHxc">
            <node concept="3clFbF" id="7tTb3N6TkNQ" role="3cqZAp">
              <node concept="1rXfSq" id="7tTb3N6TkNR" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                <node concept="37vLTw" id="7tTb3N6TkNS" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6TkNC" resolve="message" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7tTb3N6TkNW" role="3cqZAp">
              <node concept="37vLTI" id="7tTb3N6TkNX" role="3clFbG">
                <node concept="3cmrfG" id="7tTb3N6TkNY" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="7tTb3N6TkNZ" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Cck3bmLqkk" role="3cqZAp">
              <node concept="37vLTI" id="Cck3bmLrpJ" role="3clFbG">
                <node concept="2YIFZM" id="Cck3bmLrZD" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="37vLTw" id="Cck3bmLqki" role="37vLTJ">
                  <ref role="3cqZAo" node="Cck3bmLhm6" resolve="lastImageTime" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6TCr3" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6TGqq" role="jymVt">
      <property role="TrG5h" value="sendPartialImage" />
      <node concept="37vLTG" id="7tTb3N6TX52" role="3clF46">
        <property role="TrG5h" value="img" />
        <node concept="3uibUv" id="Cck3bmG6NJ" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="37vLTG" id="7tTb3N6U5Ej" role="3clF46">
        <property role="TrG5h" value="offsetY" />
        <node concept="10Oyi0" id="7tTb3N6UcAG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7tTb3N6TGqs" role="3clF45" />
      <node concept="3Tm1VV" id="7tTb3N6TGqt" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6TGqu" role="3clF47">
        <node concept="3cpWs8" id="7tTb3N6Ueil" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6Ueio" role="3cpWs9">
            <property role="TrG5h" value="png" />
            <node concept="17QB3L" id="7tTb3N6Ueij" role="1tU5fm" />
            <node concept="2YIFZM" id="7tTb3N6Uf9R" role="33vP2m">
              <ref role="37wK5l" to="vyue:7tTb3N6PLuj" resolve="toPngBase64" />
              <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
              <node concept="37vLTw" id="7tTb3N6Ufg8" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6TX52" resolve="img" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6U3k2" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6U3k3" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="3uibUv" id="7tTb3N6U3k4" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="7tTb3N6U3k5" role="33vP2m">
              <node concept="1pGfFk" id="7tTb3N6U3k6" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3k7" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3k8" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3k9" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3k3" resolve="message" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3ka" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3kb" role="37wK5m">
                <property role="Xl_RC" value="type" />
              </node>
              <node concept="Xl_RD" id="7tTb3N6U3kc" role="37wK5m">
                <property role="Xl_RC" value="image.fragment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6U3kd" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6U3ke" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="7tTb3N6U3kf" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="7tTb3N6U3kg" role="33vP2m">
              <node concept="1pGfFk" id="7tTb3N6U3kh" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3ki" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3kj" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3kk" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3kl" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3km" role="37wK5m">
                <property role="Xl_RC" value="x" />
              </node>
              <node concept="3cmrfG" id="7tTb3N6U3kn" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3ko" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3kp" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3kq" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3kr" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3ks" role="37wK5m">
                <property role="Xl_RC" value="y" />
              </node>
              <node concept="37vLTw" id="7tTb3N6UhVN" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6U5Ej" resolve="offsetY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3ku" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3kv" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3kw" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3kx" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3ky" role="37wK5m">
                <property role="Xl_RC" value="width" />
              </node>
              <node concept="2OqwBi" id="7tTb3N6Ug7a" role="37wK5m">
                <node concept="37vLTw" id="7tTb3N6UfTa" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6TX52" resolve="img" />
                </node>
                <node concept="liA8E" id="7tTb3N6UgxE" role="2OqNvi">
                  <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3kA" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3kB" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3kC" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3kD" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3kE" role="37wK5m">
                <property role="Xl_RC" value="height" />
              </node>
              <node concept="2OqwBi" id="7tTb3N6Uh3H" role="37wK5m">
                <node concept="37vLTw" id="7tTb3N6UgR1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6TX52" resolve="img" />
                </node>
                <node concept="liA8E" id="7tTb3N6UhNi" role="2OqNvi">
                  <ref role="37wK5l" to="jan3:~BufferedImage.getHeight()" resolve="getHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z3re34e4gS" role="3cqZAp">
          <node concept="2OqwBi" id="1Z3re34e4Nr" role="3clFbG">
            <node concept="37vLTw" id="1Z3re34e4gQ" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
            </node>
            <node concept="liA8E" id="1Z3re34e5u9" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="1Z3re34e6rG" role="37wK5m">
                <property role="Xl_RC" value="rawData" />
              </node>
              <node concept="37vLTw" id="1Z3re34e6_s" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6Ueio" resolve="png" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6U3kI" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6U3kJ" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6U3kK" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6U3k3" resolve="message" />
            </node>
            <node concept="liA8E" id="7tTb3N6U3kL" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="7tTb3N6U3kM" role="37wK5m">
                <property role="Xl_RC" value="data" />
              </node>
              <node concept="37vLTw" id="7tTb3N6U3kN" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6U3ke" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="7tTb3N6U3kO" role="3cqZAp">
          <node concept="37vLTw" id="7tTb3N6U3kP" role="1HWFw0">
            <ref role="3cqZAo" node="7tTb3N6JEBz" resolve="sendLock" />
          </node>
          <node concept="3clFbS" id="7tTb3N6U3kQ" role="1HWHxc">
            <node concept="3clFbF" id="7tTb3N6U3kR" role="3cqZAp">
              <node concept="1rXfSq" id="7tTb3N6U3kS" role="3clFbG">
                <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                <node concept="37vLTw" id="7tTb3N6U3kT" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6U3k3" resolve="message" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7tTb3N6UnJM" role="3cqZAp">
              <node concept="3uNrnE" id="7tTb3N6UpxX" role="3clFbG">
                <node concept="37vLTw" id="7tTb3N6UpxZ" role="2$L3a6">
                  <ref role="3cqZAo" node="1qbCJZsJ67v" resolve="deltaUpdateCount" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Cck3bmLuX$" role="3cqZAp">
              <node concept="37vLTI" id="Cck3bmLwk$" role="3clFbG">
                <node concept="2YIFZM" id="Cck3bmLx97" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="37vLTw" id="Cck3bmLuXy" role="37vLTJ">
                  <ref role="3cqZAo" node="Cck3bmLhm6" resolve="lastImageTime" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UHWH1pLhZY" role="jymVt" />
    <node concept="3clFb_" id="2UHWH1pLjo8" role="jymVt">
      <property role="TrG5h" value="saveEditorState" />
      <node concept="3cqZAl" id="2UHWH1pLjoa" role="3clF45" />
      <node concept="3Tm1VV" id="2UHWH1pLjob" role="1B3o_S" />
      <node concept="3clFbS" id="2UHWH1pLjoc" role="3clF47">
        <node concept="3J1_TO" id="2UHWH1pN2CE" role="3cqZAp">
          <node concept="3uVAMA" id="2UHWH1pN2Eu" role="1zxBo5">
            <node concept="XOnhg" id="2UHWH1pN2Ev" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2UHWH1pN2Ew" role="1tU5fm">
                <node concept="3uibUv" id="2UHWH1pN2Pg" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2UHWH1pN2Ex" role="1zc67A">
              <node concept="RRSsy" id="2UHWH1pN37i" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="2UHWH1pN37k" role="RRSoy">
                  <property role="Xl_RC" value="Failed to save editor state" />
                </node>
                <node concept="37vLTw" id="2UHWH1pN3fW" role="RRSow">
                  <ref role="3cqZAo" node="2UHWH1pN2Ev" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2UHWH1pN2CG" role="1zxBo7">
            <node concept="3clFbJ" id="2UHWH1pM9uk" role="3cqZAp">
              <node concept="3clFbS" id="2UHWH1pM9um" role="3clFbx">
                <node concept="3cpWs6" id="2UHWH1pMdXl" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="2UHWH1pMdHJ" role="3clFbw">
                <node concept="10Nm6u" id="2UHWH1pMdNK" role="3uHU7w" />
                <node concept="37vLTw" id="2UHWH1pM9E3" role="3uHU7B">
                  <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2UHWH1pMvrH" role="3cqZAp">
              <node concept="3clFbS" id="2UHWH1pMvrJ" role="3clFbx">
                <node concept="3cpWs6" id="2UHWH1pMx8A" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="2UHWH1pMxuD" role="3clFbw">
                <node concept="2OqwBi" id="2UHWH1pMyTZ" role="3uHU7w">
                  <node concept="37vLTw" id="2UHWH1pMxFH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                  </node>
                  <node concept="liA8E" id="2UHWH1pM$Vv" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.isDisposed()" resolve="isDisposed" />
                  </node>
                </node>
                <node concept="3clFbC" id="2UHWH1pMwTy" role="3uHU7B">
                  <node concept="37vLTw" id="2UHWH1pMvCq" role="3uHU7B">
                    <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                  </node>
                  <node concept="10Nm6u" id="2UHWH1pMwZz" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gw1ikeZYRB" role="3cqZAp">
              <node concept="2YIFZM" id="czMm1Hv_YH" role="3clFbG">
                <ref role="37wK5l" to="qsto:czMm1HtSOl" resolve="writeOnSession" />
                <ref role="1Pybhc" to="qsto:6gw1ikeUVSA" resolve="UiStateUtil" />
                <node concept="37vLTw" id="czMm1Hv_YS" role="37wK5m">
                  <ref role="3cqZAo" node="2UHWH1pMDPW" resolve="httpSessionId" />
                </node>
                <node concept="37vLTw" id="czMm1Hv_YT" role="37wK5m">
                  <ref role="3cqZAo" node="2mcPA70wyj9" resolve="user" />
                </node>
                <node concept="1bVj0M" id="czMm1Hv_YI" role="37wK5m">
                  <node concept="37vLTG" id="czMm1HvF60" role="1bW2Oz">
                    <property role="TrG5h" value="sessionNode" />
                    <node concept="3Tqbb2" id="czMm1HvFWY" role="1tU5fm">
                      <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="czMm1Hv_YL" role="1bW5cS">
                    <node concept="3clFbJ" id="czMm1Hv_YU" role="3cqZAp">
                      <node concept="3clFbS" id="czMm1Hv_YV" role="3clFbx">
                        <node concept="3clFbF" id="czMm1Hv_YW" role="3cqZAp">
                          <node concept="2OqwBi" id="czMm1Hv_YX" role="3clFbG">
                            <node concept="37vLTw" id="czMm1Hv_YY" role="2Oq$k0">
                              <ref role="3cqZAo" node="czMm1HvF60" resolve="sessionNode" />
                            </node>
                            <node concept="2qgKlT" id="czMm1Hv_YZ" role="2OqNvi">
                              <ref role="37wK5l" to="ioq2:5Yll$oNPp7L" resolve="updateLastActivity" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2d3UOw" id="czMm1Hv_Z0" role="3clFbw">
                        <node concept="2OqwBi" id="czMm1Hv_Z1" role="3uHU7B">
                          <node concept="37vLTw" id="czMm1Hv_Z2" role="2Oq$k0">
                            <ref role="3cqZAo" node="czMm1HvF60" resolve="sessionNode" />
                          </node>
                          <node concept="2qgKlT" id="czMm1Hv_Z3" role="2OqNvi">
                            <ref role="37wK5l" to="ioq2:5Yll$oNPrnH" resolve="getAgeInSeconds" />
                            <node concept="2YIFZM" id="czMm1Hv_Z4" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="czMm1Hv_Z5" role="3uHU7w">
                          <property role="1adDun" value="10L" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="czMm1Hv_Z6" role="3cqZAp" />
                    <node concept="3cpWs8" id="czMm1Hv_Z7" role="3cqZAp">
                      <node concept="3cpWsn" id="czMm1Hv_Z8" role="3cpWs9">
                        <property role="TrG5h" value="editorState" />
                        <node concept="3Tqbb2" id="czMm1Hv_Z9" role="1tU5fm">
                          <ref role="ehGHo" to="fnup:4bjL$lUeeQe" resolve="EditorComponentState" />
                        </node>
                        <node concept="2OqwBi" id="czMm1Hv_Za" role="33vP2m">
                          <node concept="2OqwBi" id="czMm1Hv_Zb" role="2Oq$k0">
                            <node concept="37vLTw" id="czMm1Hv_Zc" role="2Oq$k0">
                              <ref role="3cqZAo" node="czMm1HvF60" resolve="sessionNode" />
                            </node>
                            <node concept="3Tsc0h" id="czMm1Hv_Zd" role="2OqNvi">
                              <ref role="3TtcxE" to="fnup:2UHWH1pKOdl" resolve="editorStates" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="czMm1Hv_Ze" role="2OqNvi">
                            <node concept="1bVj0M" id="czMm1Hv_Zf" role="23t8la">
                              <node concept="3clFbS" id="czMm1Hv_Zg" role="1bW5cS">
                                <node concept="3clFbF" id="czMm1Hv_Zh" role="3cqZAp">
                                  <node concept="17R0WA" id="czMm1Hv_Zi" role="3clFbG">
                                    <node concept="37vLTw" id="czMm1Hv_Zj" role="3uHU7w">
                                      <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                                    </node>
                                    <node concept="2OqwBi" id="czMm1Hv_Zk" role="3uHU7B">
                                      <node concept="37vLTw" id="czMm1Hv_Zl" role="2Oq$k0">
                                        <ref role="3cqZAo" node="czMm1Hv_Zn" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="czMm1Hv_Zm" role="2OqNvi">
                                        <ref role="3TsBF5" to="fnup:2UHWH1pKOia" resolve="id" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="czMm1Hv_Zn" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="czMm1Hv_Zo" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="czMm1Hv_Zp" role="3cqZAp">
                      <node concept="3clFbS" id="czMm1Hv_Zq" role="3clFbx">
                        <node concept="3clFbF" id="czMm1Hv_Zr" role="3cqZAp">
                          <node concept="37vLTI" id="czMm1Hv_Zs" role="3clFbG">
                            <node concept="37vLTw" id="czMm1Hv_Zt" role="37vLTJ">
                              <ref role="3cqZAo" node="czMm1Hv_Z8" resolve="editorState" />
                            </node>
                            <node concept="1PxgMI" id="czMm1Hv_Zu" role="37vLTx">
                              <node concept="chp4Y" id="czMm1Hv_Zv" role="3oSUPX">
                                <ref role="cht4Q" to="fnup:4bjL$lUeeQe" resolve="EditorComponentState" />
                              </node>
                              <node concept="2YIFZM" id="czMm1Hv_Zw" role="1m5AlR">
                                <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                                <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                                <node concept="37vLTw" id="czMm1Hv_Zx" role="37wK5m">
                                  <ref role="3cqZAo" node="czMm1HvF60" resolve="sessionNode" />
                                </node>
                                <node concept="359W_D" id="czMm1Hv_Zy" role="37wK5m">
                                  <ref role="359W_E" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                                  <ref role="359W_F" to="fnup:2UHWH1pKOdl" resolve="editorStates" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="czMm1Hv_Zz" role="3cqZAp">
                          <node concept="37vLTI" id="czMm1Hv_Z$" role="3clFbG">
                            <node concept="37vLTw" id="czMm1Hv_Z_" role="37vLTx">
                              <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                            </node>
                            <node concept="2OqwBi" id="czMm1Hv_ZA" role="37vLTJ">
                              <node concept="37vLTw" id="czMm1Hv_ZB" role="2Oq$k0">
                                <ref role="3cqZAo" node="czMm1Hv_Z8" resolve="editorState" />
                              </node>
                              <node concept="3TrcHB" id="czMm1Hv_ZC" role="2OqNvi">
                                <ref role="3TsBF5" to="fnup:2UHWH1pKOia" resolve="id" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="czMm1Hv_ZD" role="3clFbw">
                        <node concept="10Nm6u" id="czMm1Hv_ZE" role="3uHU7w" />
                        <node concept="37vLTw" id="czMm1Hv_ZF" role="3uHU7B">
                          <ref role="3cqZAo" node="czMm1Hv_Z8" resolve="editorState" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="czMm1Hv_ZG" role="3cqZAp">
                      <node concept="2OqwBi" id="czMm1Hv_ZH" role="3clFbG">
                        <node concept="37vLTw" id="czMm1Hv_ZI" role="2Oq$k0">
                          <ref role="3cqZAo" node="czMm1Hv_Z8" resolve="editorState" />
                        </node>
                        <node concept="2qgKlT" id="czMm1Hv_ZJ" role="2OqNvi">
                          <ref role="37wK5l" to="ioq2:4bjL$lUeOEb" resolve="save" />
                          <node concept="37vLTw" id="czMm1Hv_ZK" role="37wK5m">
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
      </node>
    </node>
    <node concept="2tJIrI" id="2UHWH1pO8tk" role="jymVt" />
    <node concept="3clFb_" id="2UHWH1pO9D2" role="jymVt">
      <property role="TrG5h" value="restoreEditorState" />
      <node concept="3cqZAl" id="2UHWH1pO9D4" role="3clF45" />
      <node concept="3Tm1VV" id="2UHWH1pO9D5" role="1B3o_S" />
      <node concept="3clFbS" id="2UHWH1pO9D6" role="3clF47">
        <node concept="3clFbJ" id="2UHWH1pOajN" role="3cqZAp">
          <node concept="3clFbS" id="2UHWH1pOajO" role="3clFbx">
            <node concept="3cpWs6" id="2UHWH1pOajP" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2UHWH1pOajQ" role="3clFbw">
            <node concept="10Nm6u" id="2UHWH1pOajR" role="3uHU7w" />
            <node concept="37vLTw" id="2UHWH1pOajS" role="3uHU7B">
              <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UHWH1pOajT" role="3cqZAp">
          <node concept="3clFbS" id="2UHWH1pOajU" role="3clFbx">
            <node concept="3cpWs6" id="2UHWH1pOajV" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="2UHWH1pOajW" role="3clFbw">
            <node concept="2OqwBi" id="2UHWH1pOajX" role="3uHU7w">
              <node concept="37vLTw" id="2UHWH1pOajY" role="2Oq$k0">
                <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
              </node>
              <node concept="liA8E" id="2UHWH1pOajZ" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
            <node concept="3clFbC" id="2UHWH1pOak0" role="3uHU7B">
              <node concept="37vLTw" id="2UHWH1pOak1" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
              </node>
              <node concept="10Nm6u" id="2UHWH1pOak2" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3kKR972Blns" role="3cqZAp">
          <node concept="3cpWsn" id="3kKR972Blnv" role="3cpWs9">
            <property role="TrG5h" value="restored" />
            <node concept="10P_77" id="3kKR972Blnq" role="1tU5fm" />
            <node concept="3clFbT" id="3kKR972Bm7J" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="6gw1ikf0DVI" role="3cqZAp" />
        <node concept="3clFbF" id="6gw1ikf0ZYt" role="3cqZAp">
          <node concept="2YIFZM" id="6gw1ikf14oM" role="3clFbG">
            <ref role="37wK5l" to="qsto:6gw1ikf12gp" resolve="readOnStateRoots" />
            <ref role="1Pybhc" to="qsto:6gw1ikeUVSA" resolve="UiStateUtil" />
            <node concept="1bVj0M" id="6gw1ikf15aa" role="37wK5m">
              <node concept="37vLTG" id="6gw1ikf17Yf" role="1bW2Oz">
                <property role="TrG5h" value="stateRoot" />
                <node concept="3Tqbb2" id="6gw1ikf18Pl" role="1tU5fm">
                  <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                </node>
              </node>
              <node concept="3clFbS" id="6gw1ikf15ab" role="1bW5cS">
                <node concept="3cpWs8" id="2UHWH1pOalh" role="3cqZAp">
                  <node concept="3cpWsn" id="2UHWH1pOali" role="3cpWs9">
                    <property role="TrG5h" value="session" />
                    <node concept="3Tqbb2" id="2UHWH1pOalj" role="1tU5fm">
                      <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                    </node>
                    <node concept="2OqwBi" id="5Yll$oNNI5h" role="33vP2m">
                      <node concept="2OqwBi" id="2UHWH1pOalk" role="2Oq$k0">
                        <node concept="37vLTw" id="2UHWH1pOall" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gw1ikf17Yf" resolve="stateRoot" />
                        </node>
                        <node concept="3Tsc0h" id="5Yll$oNNG10" role="2OqNvi">
                          <ref role="3TtcxE" to="fnup:4bjL$lUeegP" resolve="sessions" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="5Yll$oNNL9d" role="2OqNvi">
                        <node concept="1bVj0M" id="5Yll$oNNL9f" role="23t8la">
                          <node concept="3clFbS" id="5Yll$oNNL9g" role="1bW5cS">
                            <node concept="3clFbF" id="5Yll$oNNLDd" role="3cqZAp">
                              <node concept="1Wc70l" id="5Yll$oNNPDP" role="3clFbG">
                                <node concept="17R0WA" id="5Yll$oNNUlm" role="3uHU7w">
                                  <node concept="37vLTw" id="5Yll$oNNUPY" role="3uHU7w">
                                    <ref role="3cqZAo" node="2mcPA70wyj9" resolve="user" />
                                  </node>
                                  <node concept="2OqwBi" id="5Yll$oNNSEd" role="3uHU7B">
                                    <node concept="2OqwBi" id="5Yll$oNNRe5" role="2Oq$k0">
                                      <node concept="37vLTw" id="5Yll$oNNQwX" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5Yll$oNNL9h" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="5Yll$oNNRN_" role="2OqNvi">
                                        <ref role="3Tt5mk" to="fnup:4bjL$lUeeoQ" resolve="user" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="5Yll$oNNTmj" role="2OqNvi">
                                      <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="17R0WA" id="5Yll$oNNNFD" role="3uHU7B">
                                  <node concept="2OqwBi" id="5Yll$oNNMhV" role="3uHU7B">
                                    <node concept="37vLTw" id="5Yll$oNNLDc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5Yll$oNNL9h" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="5Yll$oNNMAz" role="2OqNvi">
                                      <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5Yll$oNNO7_" role="3uHU7w">
                                    <ref role="3cqZAo" node="2UHWH1pMDPW" resolve="httpSessionId" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5Yll$oNNL9h" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5Yll$oNNL9i" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2UHWH1pOalo" role="3cqZAp">
                  <node concept="3clFbS" id="2UHWH1pOalp" role="3clFbx">
                    <node concept="3cpWs6" id="2UHWH1pQ2JZ" role="3cqZAp">
                      <node concept="3clFbT" id="6gw1ikf1dM9" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2UHWH1pOalC" role="3clFbw">
                    <node concept="37vLTw" id="2UHWH1pOalD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2UHWH1pOali" resolve="session" />
                    </node>
                    <node concept="3w_OXm" id="2UHWH1pOalE" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs8" id="2UHWH1pOalG" role="3cqZAp">
                  <node concept="3cpWsn" id="2UHWH1pOalH" role="3cpWs9">
                    <property role="TrG5h" value="editorState" />
                    <node concept="3Tqbb2" id="2UHWH1pOalI" role="1tU5fm">
                      <ref role="ehGHo" to="fnup:4bjL$lUeeQe" resolve="EditorComponentState" />
                    </node>
                    <node concept="2OqwBi" id="2UHWH1pOalJ" role="33vP2m">
                      <node concept="2OqwBi" id="2UHWH1pOalK" role="2Oq$k0">
                        <node concept="37vLTw" id="2UHWH1pOalL" role="2Oq$k0">
                          <ref role="3cqZAo" node="2UHWH1pOali" resolve="session" />
                        </node>
                        <node concept="3Tsc0h" id="2UHWH1pOalM" role="2OqNvi">
                          <ref role="3TtcxE" to="fnup:2UHWH1pKOdl" resolve="editorStates" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="2UHWH1pOalN" role="2OqNvi">
                        <node concept="1bVj0M" id="2UHWH1pOalO" role="23t8la">
                          <node concept="3clFbS" id="2UHWH1pOalP" role="1bW5cS">
                            <node concept="3clFbF" id="2UHWH1pOalQ" role="3cqZAp">
                              <node concept="17R0WA" id="2UHWH1pOalR" role="3clFbG">
                                <node concept="37vLTw" id="2UHWH1pOalS" role="3uHU7w">
                                  <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                                </node>
                                <node concept="2OqwBi" id="2UHWH1pOalT" role="3uHU7B">
                                  <node concept="37vLTw" id="2UHWH1pOalU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2UHWH1pOalW" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2UHWH1pOalV" role="2OqNvi">
                                    <ref role="3TsBF5" to="fnup:2UHWH1pKOia" resolve="id" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="2UHWH1pOalW" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="2UHWH1pOalX" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2UHWH1pOalY" role="3cqZAp">
                  <node concept="3clFbS" id="2UHWH1pOalZ" role="3clFbx">
                    <node concept="3cpWs6" id="2UHWH1pQ2KF" role="3cqZAp">
                      <node concept="3clFbT" id="6gw1ikf1gMM" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2UHWH1pOame" role="3clFbw">
                    <node concept="10Nm6u" id="2UHWH1pOamf" role="3uHU7w" />
                    <node concept="37vLTw" id="2UHWH1pOamg" role="3uHU7B">
                      <ref role="3cqZAo" node="2UHWH1pOalH" resolve="editorState" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2UHWH1pOamh" role="3cqZAp">
                  <node concept="2OqwBi" id="2UHWH1pOami" role="3clFbG">
                    <node concept="37vLTw" id="2UHWH1pOamj" role="2Oq$k0">
                      <ref role="3cqZAo" node="2UHWH1pOalH" resolve="editorState" />
                    </node>
                    <node concept="2qgKlT" id="2UHWH1pOamk" role="2OqNvi">
                      <ref role="37wK5l" to="ioq2:2UHWH1pI$vB" resolve="restore" />
                      <node concept="37vLTw" id="2UHWH1pOaml" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3kKR972BmQ6" role="3cqZAp">
                  <node concept="37vLTI" id="3kKR972BnGM" role="3clFbG">
                    <node concept="3clFbT" id="3kKR972BouO" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="3kKR972BmQ4" role="37vLTJ">
                      <ref role="3cqZAo" node="3kKR972Blnv" resolve="restored" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6gw1ikf15lJ" role="3cqZAp">
                  <node concept="3clFbT" id="6gw1ikf15rd" role="3cqZAk" />
                </node>
              </node>
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
        <node concept="3clFbJ" id="5T3RZQ95aX9" role="3cqZAp">
          <node concept="3clFbS" id="5T3RZQ95aXb" role="3clFbx">
            <node concept="3clFbF" id="5T3RZQ95EiZ" role="3cqZAp">
              <node concept="2OqwBi" id="5T3RZQ95Ev2" role="3clFbG">
                <node concept="37vLTw" id="5T3RZQ95EiX" role="2Oq$k0">
                  <ref role="3cqZAo" node="5T3RZQ95ndl" resolve="tooltip" />
                </node>
                <node concept="liA8E" id="5T3RZQ95EHd" role="2OqNvi">
                  <ref role="37wK5l" node="5T3RZQ93TfE" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5T3RZQ95Dmg" role="3clFbw">
            <node concept="10Nm6u" id="5T3RZQ95DZN" role="3uHU7w" />
            <node concept="37vLTw" id="5T3RZQ95CBY" role="3uHU7B">
              <ref role="3cqZAo" node="5T3RZQ95ndl" resolve="tooltip" />
            </node>
          </node>
        </node>
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
                  <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="changeDetectionTimer" />
                </node>
                <node concept="liA8E" id="7tTb3N6W08W" role="2OqNvi">
                  <ref role="37wK5l" to="5zyv:~Future.cancel(boolean)" resolve="cancel" />
                  <node concept="3clFbT" id="7tTb3N6W1v5" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1qbCJZsJ6hT" role="3clFbw">
            <node concept="10Nm6u" id="1qbCJZsJ6hU" role="3uHU7w" />
            <node concept="37vLTw" id="1qbCJZsJ6hV" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ67d" resolve="changeDetectionTimer" />
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
        <node concept="3clFbF" id="7tTb3N6W1Uu" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6W2xy" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6W3o0" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
            </node>
            <node concept="liA8E" id="7tTb3N6W3Hp" role="2OqNvi">
              <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
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
        <node concept="3clFbJ" id="6ouH5joeIDC" role="3cqZAp">
          <node concept="3clFbS" id="6ouH5joeIDE" role="3clFbx">
            <node concept="3clFbF" id="6ouH5joePEN" role="3cqZAp">
              <node concept="37vLTI" id="6ouH5joePRW" role="3clFbG">
                <node concept="37vLTw" id="6ouH5joePEI" role="37vLTJ">
                  <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
                </node>
                <node concept="2OqwBi" id="6ouH5joePio" role="37vLTx">
                  <node concept="37vLTw" id="6ouH5joeP9v" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
                  </node>
                  <node concept="liA8E" id="6ouH5joePxg" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6ouH5joeNSR" role="3clFbw">
            <node concept="10Nm6u" id="6ouH5joeOmE" role="3uHU7w" />
            <node concept="37vLTw" id="6ouH5joeJJn" role="3uHU7B">
              <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
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
            <node concept="3SKdUt" id="7K83ZSN_Q6_" role="3cqZAp">
              <node concept="1PaTwC" id="7K83ZSNAas7" role="1aUNEU">
                <node concept="3oM_SD" id="7K83ZSNAcgi" role="1PaTwD">
                  <property role="3oM_SC" value="The" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgk" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgn" role="1PaTwD">
                  <property role="3oM_SC" value="thing" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgr" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgC" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgI" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcgX" role="1PaTwD">
                  <property role="3oM_SC" value="simulating" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAch5" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAche" role="1PaTwD">
                  <property role="3oM_SC" value="click" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcho" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAchz" role="1PaTwD">
                  <property role="3oM_SC" value="update" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAchR" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcic" role="1PaTwD">
                  <property role="3oM_SC" value="selection" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAciq" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAciL" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7K83ZSNAcj9" role="1PaTwD">
                  <property role="3oM_SC" value="editor." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1qbCJZsJ6lO" role="3cqZAp">
              <node concept="1rXfSq" id="1qbCJZsJ6lP" role="3clFbG">
                <ref role="37wK5l" node="1qbCJZsJ6n_" resolve="simulateClick" />
                <node concept="2OqwBi" id="1qbCJZsJ6lD" role="37wK5m">
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
                <node concept="2OqwBi" id="1qbCJZsJ6lK" role="37wK5m">
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
            <node concept="2lOVwT" id="7WbdMMEfi_t" role="3cqZAp">
              <node concept="1PaTwC" id="7WbdMMEfi_u" role="2lOMFJ">
                <node concept="3oM_SD" id="7WbdMMEfi_v" role="1PaTwD">
                  <property role="3oM_SC" value="For" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiKv" role="1PaTwD">
                  <property role="3oM_SC" value="following" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiKK" role="1PaTwD">
                  <property role="3oM_SC" value="references" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiP4" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiPf" role="1PaTwD">
                  <property role="3oM_SC" value="uses" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiPr" role="1PaTwD">
                  <property role="3oM_SC" value="MPSEditorOpener" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiUf" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiUn" role="1PaTwD">
                  <property role="3oM_SC" value="searches" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiUw" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiWQ" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiX1" role="1PaTwD">
                  <property role="3oM_SC" value="open" />
                </node>
              </node>
              <node concept="1PaTwC" id="7WbdMMEfiZq" role="2lOMFJ">
                <node concept="3oM_SD" id="7WbdMMEfiZp" role="1PaTwD">
                  <property role="3oM_SC" value="tab" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiZP" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfiZS" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj4z" role="1PaTwD">
                  <property role="3oM_SC" value="target" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj4C" role="1PaTwD">
                  <property role="3oM_SC" value="root" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj4I" role="1PaTwD">
                  <property role="3oM_SC" value="node" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj4P" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj4X" role="1PaTwD">
                  <property role="3oM_SC" value="creates" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj56" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj5g" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj5r" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj5B" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj5O" role="1PaTwD">
                  <property role="3oM_SC" value="find" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfj62" role="1PaTwD">
                  <property role="3oM_SC" value="any." />
                </node>
              </node>
              <node concept="1PaTwC" id="7WbdMMEfj8m" role="2lOMFJ">
                <node concept="3oM_SD" id="7WbdMMEfj8l" role="1PaTwD">
                  <property role="3oM_SC" value="This" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjbx" role="1PaTwD">
                  <property role="3oM_SC" value="seems" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjdL" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjdP" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjdU" role="1PaTwD">
                  <property role="3oM_SC" value="work" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfje0" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfje7" role="1PaTwD">
                  <property role="3oM_SC" value="ServerEditorComponents" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjgr" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjiC" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjiM" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjiX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjj9" role="1PaTwD">
                  <property role="3oM_SC" value="implement" />
                </node>
              </node>
              <node concept="1PaTwC" id="7WbdMMEfjlz" role="2lOMFJ">
                <node concept="3oM_SD" id="7WbdMMEfjly" role="1PaTwD">
                  <property role="3oM_SC" value="our" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjmx" role="1PaTwD">
                  <property role="3oM_SC" value="own" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjm$" role="1PaTwD">
                  <property role="3oM_SC" value="logic" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjp0" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjpj" role="1PaTwD">
                  <property role="3oM_SC" value="following" />
                </node>
                <node concept="3oM_SD" id="7WbdMMEfjpp" role="1PaTwD">
                  <property role="3oM_SC" value="references." />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2PDuPZLN3BD" role="3cqZAp">
              <node concept="3clFbS" id="2PDuPZLN3BF" role="3clFbx">
                <node concept="3cpWs8" id="7K83ZSNg0gi" role="3cqZAp">
                  <node concept="3cpWsn" id="7K83ZSNg0gj" role="3cpWs9">
                    <property role="TrG5h" value="cell" />
                    <node concept="3uibUv" id="7K83ZSNfZRT" role="1tU5fm">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="2OqwBi" id="7K83ZSNg0gk" role="33vP2m">
                      <node concept="liA8E" id="7K83ZSNg0gm" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                      </node>
                      <node concept="1rXfSq" id="2PDuPZLN7J4" role="2Oq$k0">
                        <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7K83ZSNAEYJ" role="3cqZAp">
                  <node concept="3clFbS" id="7K83ZSNAEYL" role="3clFbx">
                    <node concept="1QHqEK" id="7WbdMME8jrg" role="3cqZAp">
                      <node concept="1QHqEC" id="7WbdMME8jri" role="1QHqEI">
                        <node concept="3clFbS" id="7WbdMME8jrk" role="1bW5cS">
                          <node concept="3cpWs8" id="7WbdMME7ptr" role="3cqZAp">
                            <node concept="3cpWsn" id="7WbdMME7pts" role="3cpWs9">
                              <property role="TrG5h" value="node" />
                              <node concept="3uibUv" id="7WbdMME7pr2" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2YIFZM" id="7WbdMME7ptt" role="33vP2m">
                                <ref role="37wK5l" to="g51k:~APICellAdapter.getSNodeWRTReference(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getSNodeWRTReference" />
                                <ref role="1Pybhc" to="g51k:~APICellAdapter" resolve="APICellAdapter" />
                                <node concept="37vLTw" id="7WbdMME7ptu" role="37wK5m">
                                  <ref role="3cqZAo" node="7K83ZSNg0gj" resolve="cell" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7WbdMME76M9" role="3cqZAp">
                            <node concept="1rXfSq" id="7WbdMME76M8" role="3clFbG">
                              <ref role="37wK5l" node="7WbdMME76M3" resolve="openNode" />
                              <node concept="37vLTw" id="7WbdMME7ptv" role="37wK5m">
                                <ref role="3cqZAo" node="7WbdMME7pts" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7WbdMME8k4X" role="ukAjM">
                        <node concept="37vLTw" id="7WbdMME8jE9" role="2Oq$k0">
                          <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                        </node>
                        <node concept="liA8E" id="7WbdMME8kH6" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="7K83ZSNAVvP" role="3clFbw">
                    <node concept="3y3z36" id="7K83ZSNAZ0z" role="3uHU7B">
                      <node concept="10Nm6u" id="7K83ZSNAZ8y" role="3uHU7w" />
                      <node concept="37vLTw" id="7K83ZSNAXHv" role="3uHU7B">
                        <ref role="3cqZAo" node="7K83ZSNg0gj" resolve="cell" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7K83ZSNAH73" role="3uHU7w">
                      <node concept="37vLTw" id="7K83ZSNAGRr" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K83ZSNg0gj" resolve="cell" />
                      </node>
                      <node concept="liA8E" id="7K83ZSNAImq" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.isReferenceCell()" resolve="isReferenceCell" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="2PDuPZLN4oG" role="3clFbw">
                <node concept="2EnYce" id="3zFEIknjtpb" role="3uHU7B">
                  <node concept="37vLTw" id="3zFEIknjtpc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="3zFEIknjtpd" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="3zFEIknjtpe" role="37wK5m">
                      <property role="Xl_RC" value="ctrl" />
                    </node>
                  </node>
                </node>
                <node concept="2EnYce" id="3zFEIknjtpi" role="3uHU7w">
                  <node concept="37vLTw" id="3zFEIknjtpj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                  </node>
                  <node concept="liA8E" id="3zFEIknjtpk" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                    <node concept="Xl_RD" id="3zFEIknjtpl" role="37wK5m">
                      <property role="Xl_RC" value="meta" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5T3RZQ90_Qo" role="3eNLev">
            <node concept="3clFbS" id="5T3RZQ90_Qp" role="3eOfB_">
              <node concept="3cpWs8" id="7UhBoONorf0" role="3cqZAp">
                <node concept="3cpWsn" id="7UhBoONorf1" role="3cpWs9">
                  <property role="TrG5h" value="x" />
                  <node concept="10Oyi0" id="7UhBoONofSz" role="1tU5fm" />
                  <node concept="2OqwBi" id="7UhBoONorf2" role="33vP2m">
                    <node concept="37vLTw" id="7UhBoONorf3" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="7UhBoONorf4" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="7UhBoONorf5" role="37wK5m">
                        <property role="Xl_RC" value="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7UhBoONospN" role="3cqZAp">
                <node concept="3cpWsn" id="7UhBoONospO" role="3cpWs9">
                  <property role="TrG5h" value="y" />
                  <node concept="10Oyi0" id="7UhBoONotxd" role="1tU5fm" />
                  <node concept="2OqwBi" id="7UhBoONospP" role="33vP2m">
                    <node concept="37vLTw" id="7UhBoONospQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="7UhBoONospR" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="7UhBoONospS" role="37wK5m">
                        <property role="Xl_RC" value="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7WbdMMEaHBv" role="3cqZAp">
                <node concept="3cpWsn" id="7WbdMMEaHBy" role="3cpWs9">
                  <property role="TrG5h" value="modifier" />
                  <node concept="10Oyi0" id="7WbdMMEaHBt" role="1tU5fm" />
                  <node concept="3K4zz7" id="51Fsa9h$ieg" role="33vP2m">
                    <node concept="1rXfSq" id="51Fsa9h$kOu" role="3K4E3e">
                      <ref role="37wK5l" node="7WbdMMEcg8T" resolve="ctrlDownModifier" />
                    </node>
                    <node concept="3cmrfG" id="51Fsa9h$lfM" role="3K4GZi">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1eOMI4" id="51Fsa9h$jri" role="3K4Cdx">
                      <node concept="22lmx$" id="51Fsa9h$eS7" role="1eOMHV">
                        <node concept="2EnYce" id="51Fsa9h$eS8" role="3uHU7B">
                          <node concept="37vLTw" id="51Fsa9h$eS9" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                          </node>
                          <node concept="liA8E" id="51Fsa9h$eSa" role="2OqNvi">
                            <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                            <node concept="Xl_RD" id="51Fsa9h$eSb" role="37wK5m">
                              <property role="Xl_RC" value="ctrl" />
                            </node>
                          </node>
                        </node>
                        <node concept="2EnYce" id="51Fsa9h$eSc" role="3uHU7w">
                          <node concept="37vLTw" id="51Fsa9h$eSd" role="2Oq$k0">
                            <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                          </node>
                          <node concept="liA8E" id="51Fsa9h$eSe" role="2OqNvi">
                            <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                            <node concept="Xl_RD" id="51Fsa9h$eSf" role="37wK5m">
                              <property role="Xl_RC" value="meta" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7WbdMMEe$9Z" role="3cqZAp">
                <node concept="1rXfSq" id="7WbdMMEe$9X" role="3clFbG">
                  <ref role="37wK5l" node="7WbdMMEdzbp" resolve="simulateMouseEvent" />
                  <node concept="37vLTw" id="7WbdMMEe$CF" role="37wK5m">
                    <ref role="3cqZAo" node="7UhBoONorf1" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7WbdMMEe$Lz" role="37wK5m">
                    <ref role="3cqZAo" node="7UhBoONospO" resolve="y" />
                  </node>
                  <node concept="37vLTw" id="7WbdMMEe$Yx" role="37wK5m">
                    <ref role="3cqZAo" node="7WbdMMEaHBy" resolve="modifier" />
                  </node>
                  <node concept="3EllGN" id="6ouH5joeShY" role="37wK5m">
                    <node concept="37vLTw" id="6ouH5joeSBr" role="3ElVtu">
                      <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
                    </node>
                    <node concept="37vLTw" id="6ouH5joeQIa" role="3ElQJh">
                      <ref role="3cqZAo" node="6ouH5jodJJe" resolve="MOUSE_EVENT_TYPE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5T3RZQ96tMu" role="3cqZAp">
                <node concept="2OqwBi" id="5T3RZQ96uRz" role="3clFbG">
                  <node concept="37vLTw" id="5T3RZQ96tMs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5T3RZQ95ndl" resolve="tooltip" />
                  </node>
                  <node concept="liA8E" id="5T3RZQ96v4u" role="2OqNvi">
                    <ref role="37wK5l" node="5T3RZQ93Fgo" resolve="mouseMove" />
                    <node concept="37vLTw" id="7UhBoONorf6" role="37wK5m">
                      <ref role="3cqZAo" node="7UhBoONorf1" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7UhBoONospT" role="37wK5m">
                      <ref role="3cqZAo" node="7UhBoONospO" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6ouH5joeEyi" role="3eO9$A">
              <node concept="37vLTw" id="6ouH5joeE4w" role="2Oq$k0">
                <ref role="3cqZAo" node="6ouH5jodJJe" resolve="MOUSE_EVENT_TYPE" />
              </node>
              <node concept="2Nt0df" id="6ouH5joeGEe" role="2OqNvi">
                <node concept="37vLTw" id="6ouH5joeGKC" role="38cxEo">
                  <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
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
              <node concept="3clFbF" id="2UHWH1pLp2S" role="3cqZAp">
                <node concept="1rXfSq" id="2UHWH1pLp2T" role="3clFbG">
                  <ref role="37wK5l" node="2UHWH1pLjo8" resolve="saveEditorState" />
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
                        <node concept="37vLTw" id="1qbCJZsJ6mg" role="3uHU7B">
                          <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                        </node>
                        <node concept="1rXfSq" id="7WbdMMEcpbU" role="3uHU7w">
                          <ref role="37wK5l" node="7WbdMMEcg8T" resolve="ctrlDownModifier" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1qbCJZsJ6mh" role="37vLTJ">
                        <ref role="3cqZAo" node="1qbCJZsJ6m7" resolve="modifier" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="7WbdMMEbRhs" role="3clFbw">
                  <node concept="2EnYce" id="1qbCJZsJ6mi" role="3uHU7B">
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
                  <node concept="2EnYce" id="7WbdMMEbRU1" role="3uHU7w">
                    <node concept="37vLTw" id="7WbdMMEbRU2" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kV" resolve="data" />
                    </node>
                    <node concept="liA8E" id="7WbdMMEbRU3" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.optBoolean(java.lang.String)" resolve="optBoolean" />
                      <node concept="Xl_RD" id="7WbdMMEbRU4" role="37wK5m">
                        <property role="Xl_RC" value="meta" />
                      </node>
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
              <node concept="3clFbF" id="1zzk$H$Pwws" role="3cqZAp">
                <node concept="1rXfSq" id="1zzk$H$Pwwt" role="3clFbG">
                  <ref role="37wK5l" node="2UHWH1pLjo8" resolve="saveEditorState" />
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
              <node concept="3clFbF" id="1zzk$H$PxbE" role="3cqZAp">
                <node concept="1rXfSq" id="1zzk$H$PxbF" role="3clFbG">
                  <ref role="37wK5l" node="2UHWH1pLjo8" resolve="saveEditorState" />
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
              <node concept="3clFbF" id="Cck3bmB0cl" role="3cqZAp">
                <node concept="2OqwBi" id="Cck3bmB0tL" role="3clFbG">
                  <node concept="37vLTw" id="Cck3bmB0cj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                  </node>
                  <node concept="liA8E" id="Cck3bmB0Bf" role="2OqNvi">
                    <ref role="37wK5l" node="Cck3bm_drM" resolve="setVisibleYRange" />
                    <node concept="2OqwBi" id="Cck3bmB5di" role="37wK5m">
                      <node concept="37vLTw" id="Cck3bmB5dj" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                      </node>
                      <node concept="liA8E" id="Cck3bmB5dk" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="Cck3bmB5dl" role="37wK5m">
                          <property role="Xl_RC" value="top" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="Cck3bmB6kz" role="37wK5m">
                      <node concept="37vLTw" id="Cck3bmB6k$" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                      </node>
                      <node concept="liA8E" id="Cck3bmB6k_" role="2OqNvi">
                        <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                        <node concept="Xl_RD" id="Cck3bmB6kA" role="37wK5m">
                          <property role="Xl_RC" value="bottom" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Cck3bmOJme" role="3cqZAp">
                <node concept="2OqwBi" id="Cck3bmOJT3" role="3clFbG">
                  <node concept="37vLTw" id="Cck3bmOJmc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                  </node>
                  <node concept="liA8E" id="Cck3bmOKm5" role="2OqNvi">
                    <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6kYN8GanNmb" role="3eNLev">
            <node concept="17R0WA" id="6kYN8GanO5C" role="3eO9$A">
              <node concept="Xl_RD" id="6kYN8GanO6V" role="3uHU7w">
                <property role="Xl_RC" value="rootnode" />
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
                      <node concept="3cpWs8" id="7$7_4ZidfmJ" role="3cqZAp">
                        <node concept="3cpWsn" id="7$7_4ZidfmK" role="3cpWs9">
                          <property role="TrG5h" value="area" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="7$7_4Zid9is" role="1tU5fm">
                            <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
                          </node>
                          <node concept="2OqwBi" id="7$7_4ZidfmL" role="33vP2m">
                            <node concept="2YIFZM" id="7$7_4ZidfmM" role="2Oq$k0">
                              <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                              <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="ModelServerConnections" />
                            </node>
                            <node concept="liA8E" id="7$7_4ZidfmN" role="2OqNvi">
                              <ref role="37wK5l" to="csg2:FyCC6tvOE7" resolve="getArea" />
                              <node concept="2OqwBi" id="7$7_4ZidsK3" role="37wK5m">
                                <node concept="37vLTw" id="7$7_4ZidsK4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZidsK5" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6gw1ikeTQiQ" role="3cqZAp">
                        <node concept="2OqwBi" id="6gw1ikeTSeM" role="3clFbG">
                          <node concept="37vLTw" id="7$7_4ZidfmO" role="2Oq$k0">
                            <ref role="3cqZAo" node="7$7_4ZidfmK" resolve="area" />
                          </node>
                          <node concept="liA8E" id="6gw1ikeTSAv" role="2OqNvi">
                            <ref role="37wK5l" to="qvpu:~IArea.executeRead(kotlin.jvm.functions.Function0)" resolve="executeRead" />
                            <node concept="1bVj0M" id="6gw1ikeTTf_" role="37wK5m">
                              <node concept="3clFbS" id="6gw1ikeTTfA" role="1bW5cS">
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
                                              <node concept="3uibUv" id="7$7_4Zids4l" role="1tU5fm">
                                                <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
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
                                              <node concept="2YIFZM" id="7$7_4Zidwj5" role="33vP2m">
                                                <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                                <node concept="2YIFZM" id="p8q6LlQkGs" role="37wK5m">
                                                  <ref role="37wK5l" to="jks5:~NodeUtilKt.deepUnwrapNode(org.modelix.model.api.INode)" resolve="deepUnwrapNode" />
                                                  <ref role="1Pybhc" to="jks5:~NodeUtilKt" resolve="NodeUtilKt" />
                                                  <node concept="2OqwBi" id="6kYN8GanS1N" role="37wK5m">
                                                    <node concept="37vLTw" id="6kYN8GanS1O" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="6kYN8GanPo_" resolve="nodeRef" />
                                                    </node>
                                                    <node concept="liA8E" id="6kYN8GanS1P" role="2OqNvi">
                                                      <ref role="37wK5l" to="jks5:~INodeReference.resolveNode(org.modelix.model.area.IArea)" resolve="resolveNode" />
                                                      <node concept="37vLTw" id="7$7_4ZiduyC" role="37wK5m">
                                                        <ref role="3cqZAo" node="7$7_4ZidfmK" resolve="area" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbJ" id="5npwda7uF9r" role="3cqZAp">
                                            <node concept="3clFbS" id="5npwda7uF9t" role="3clFbx">
                                              <node concept="3clFbF" id="5npwda7DhDz" role="3cqZAp">
                                                <node concept="37vLTI" id="5npwda7Dief" role="3clFbG">
                                                  <node concept="2YIFZM" id="5npwda7Dj0T" role="37vLTx">
                                                    <ref role="1Pybhc" to="xxte:kHIbzAYu9G" resolve="ANode" />
                                                    <ref role="37wK5l" to="xxte:75046mlPk8L" resolve="wrap" />
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
                                              <node concept="3uibUv" id="5U8hsWBwyLE" role="2ZW6by">
                                                <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
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
                                          <node concept="3clFbF" id="2KYpxsX7OIy" role="3cqZAp">
                                            <node concept="1rXfSq" id="2KYpxsX7OIk" role="3clFbG">
                                              <ref role="37wK5l" node="2KYpxsX7rTj" resolve="updateEditorId" />
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
                                              <node concept="3clFbF" id="2UHWH1pOyDN" role="3cqZAp">
                                                <node concept="1rXfSq" id="2UHWH1pOyDL" role="3clFbG">
                                                  <ref role="37wK5l" node="2UHWH1pO9D2" resolve="restoreEditorState" />
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="7tTb3N6VcCO" role="3cqZAp">
                                                <node concept="2OqwBi" id="7tTb3N6Vdsr" role="3clFbG">
                                                  <node concept="37vLTw" id="7tTb3N6VcCM" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                                                  </node>
                                                  <node concept="liA8E" id="7tTb3N6Vedw" role="2OqNvi">
                                                    <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
                                                  </node>
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
                                <node concept="3cpWs6" id="6gw1ikeTV0m" role="3cqZAp">
                                  <node concept="10M0yZ" id="6gw1ikeTVB6" role="3cqZAk">
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
            </node>
          </node>
          <node concept="3eNFk2" id="YSRTOeubG1" role="3eNLev">
            <node concept="17R0WA" id="YSRTOeudmt" role="3eO9$A">
              <node concept="Xl_RD" id="YSRTOeudwi" role="3uHU7w">
                <property role="Xl_RC" value="intentions.execute" />
              </node>
              <node concept="37vLTw" id="YSRTOeucQW" role="3uHU7B">
                <ref role="3cqZAo" node="1qbCJZsJ6l2" resolve="type" />
              </node>
            </node>
            <node concept="3clFbS" id="YSRTOeubG3" role="3eOfB_">
              <node concept="3cpWs8" id="YSRTOeufot" role="3cqZAp">
                <node concept="3cpWsn" id="YSRTOeufou" role="3cpWs9">
                  <property role="TrG5h" value="index" />
                  <node concept="10Oyi0" id="YSRTOeufof" role="1tU5fm" />
                  <node concept="2OqwBi" id="YSRTOeufov" role="33vP2m">
                    <node concept="37vLTw" id="YSRTOevd_S" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                    </node>
                    <node concept="liA8E" id="YSRTOeufox" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getInt(java.lang.String)" resolve="getInt" />
                      <node concept="Xl_RD" id="YSRTOeufoy" role="37wK5m">
                        <property role="Xl_RC" value="index" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="YSRTOeui8h" role="3cqZAp">
                <node concept="3cpWsn" id="YSRTOeui8i" role="3cpWs9">
                  <property role="TrG5h" value="expectedText" />
                  <node concept="17QB3L" id="YSRTOeukJb" role="1tU5fm" />
                  <node concept="2OqwBi" id="YSRTOeui8j" role="33vP2m">
                    <node concept="37vLTw" id="YSRTOeverY" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6kP" resolve="message" />
                    </node>
                    <node concept="liA8E" id="YSRTOeui8l" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.getString(java.lang.String)" resolve="getString" />
                      <node concept="Xl_RD" id="YSRTOeui8m" role="37wK5m">
                        <property role="Xl_RC" value="text" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="YSRTOeusMM" role="3cqZAp">
                <node concept="3clFbS" id="YSRTOeusMO" role="3clFbx">
                  <node concept="3cpWs8" id="YSRTOeuq0q" role="3cqZAp">
                    <node concept="3cpWsn" id="YSRTOeuq0r" role="3cpWs9">
                      <property role="TrG5h" value="intention" />
                      <node concept="3uibUv" id="YSRTOeupZS" role="1tU5fm">
                        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                        <node concept="3uibUv" id="YSRTOeupZY" role="11_B2D">
                          <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                        </node>
                        <node concept="3uibUv" id="YSRTOeupZX" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="1y4W85" id="YSRTOeuq0s" role="33vP2m">
                        <node concept="37vLTw" id="YSRTOeuq0t" role="1y58nS">
                          <ref role="3cqZAo" node="YSRTOeufou" resolve="index" />
                        </node>
                        <node concept="37vLTw" id="YSRTOeuq0u" role="1y566C">
                          <ref role="3cqZAo" node="YSRTOetFhY" resolve="lastIntentions" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="YSRTOevN0u" role="3cqZAp">
                    <node concept="1rXfSq" id="YSRTOevN0s" role="3clFbG">
                      <ref role="37wK5l" node="2mcPA70wLfh" resolve="runInUIThreadAndWait" />
                      <node concept="1bVj0M" id="YSRTOevO0s" role="37wK5m">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="YSRTOevO0t" role="1bW5cS">
                          <node concept="1QHqEO" id="YSRTOevwZl" role="3cqZAp">
                            <node concept="1QHqEC" id="YSRTOevwZn" role="1QHqEI">
                              <node concept="3clFbS" id="YSRTOevwZp" role="1bW5cS">
                                <node concept="3cpWs8" id="YSRTOeuFa$" role="3cqZAp">
                                  <node concept="3cpWsn" id="YSRTOeuFa_" role="3cpWs9">
                                    <property role="TrG5h" value="actualText" />
                                    <node concept="17QB3L" id="YSRTOeuJJC" role="1tU5fm" />
                                    <node concept="2OqwBi" id="YSRTOeuFaA" role="33vP2m">
                                      <node concept="2OqwBi" id="YSRTOeuFaB" role="2Oq$k0">
                                        <node concept="37vLTw" id="YSRTOeuFaC" role="2Oq$k0">
                                          <ref role="3cqZAo" node="YSRTOeuq0r" resolve="intention" />
                                        </node>
                                        <node concept="2OwXpG" id="YSRTOeuFaD" role="2OqNvi">
                                          <ref role="2Oxat6" to="18ew:~Pair.o1" resolve="o1" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="YSRTOeuFaE" role="2OqNvi">
                                        <ref role="37wK5l" to="nddn:~IntentionExecutable.getDescription(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="getDescription" />
                                        <node concept="2OqwBi" id="YSRTOeuFaF" role="37wK5m">
                                          <node concept="37vLTw" id="YSRTOeuFaG" role="2Oq$k0">
                                            <ref role="3cqZAo" node="YSRTOeuq0r" resolve="intention" />
                                          </node>
                                          <node concept="2OwXpG" id="YSRTOeuFaH" role="2OqNvi">
                                            <ref role="2Oxat6" to="18ew:~Pair.o2" resolve="o2" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="YSRTOeuFaI" role="37wK5m">
                                          <node concept="37vLTw" id="YSRTOeuFaJ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                          </node>
                                          <node concept="liA8E" id="YSRTOeuFaK" role="2OqNvi">
                                            <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="YSRTOeuxdR" role="3cqZAp">
                                  <node concept="3clFbS" id="YSRTOeuxdT" role="3clFbx">
                                    <node concept="3clFbF" id="YSRTOeuR7f" role="3cqZAp">
                                      <node concept="2OqwBi" id="YSRTOeuRBg" role="3clFbG">
                                        <node concept="2OqwBi" id="YSRTOeuRi_" role="2Oq$k0">
                                          <node concept="37vLTw" id="YSRTOeuR7d" role="2Oq$k0">
                                            <ref role="3cqZAo" node="YSRTOeuq0r" resolve="intention" />
                                          </node>
                                          <node concept="2OwXpG" id="YSRTOeuRn8" role="2OqNvi">
                                            <ref role="2Oxat6" to="18ew:~Pair.o1" resolve="o1" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="YSRTOeuRP3" role="2OqNvi">
                                          <ref role="37wK5l" to="nddn:~IntentionExecutable.execute(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                                          <node concept="2OqwBi" id="YSRTOeuShc" role="37wK5m">
                                            <node concept="37vLTw" id="YSRTOeuS49" role="2Oq$k0">
                                              <ref role="3cqZAo" node="YSRTOeuq0r" resolve="intention" />
                                            </node>
                                            <node concept="2OwXpG" id="YSRTOeuSlV" role="2OqNvi">
                                              <ref role="2Oxat6" to="18ew:~Pair.o2" resolve="o2" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="YSRTOeuU1E" role="37wK5m">
                                            <node concept="37vLTw" id="YSRTOeuSK1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                                            </node>
                                            <node concept="liA8E" id="YSRTOeuWC3" role="2OqNvi">
                                              <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="17R0WA" id="YSRTOeuDAr" role="3clFbw">
                                    <node concept="37vLTw" id="YSRTOeuMhE" role="3uHU7w">
                                      <ref role="3cqZAo" node="YSRTOeui8i" resolve="expectedText" />
                                    </node>
                                    <node concept="37vLTw" id="YSRTOeuFaL" role="3uHU7B">
                                      <ref role="3cqZAo" node="YSRTOeuFa_" resolve="actualText" />
                                    </node>
                                  </node>
                                  <node concept="9aQIb" id="YSRTOeuMuk" role="9aQIa">
                                    <node concept="3clFbS" id="YSRTOeuMul" role="9aQI4">
                                      <node concept="RRSsy" id="YSRTOeuMNg" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="3cpWs3" id="YSRTOeuPJu" role="RRSoy">
                                          <node concept="3cpWs3" id="YSRTOeuQnQ" role="3uHU7B">
                                            <node concept="37vLTw" id="YSRTOeuQGN" role="3uHU7w">
                                              <ref role="3cqZAo" node="YSRTOeui8i" resolve="expectedText" />
                                            </node>
                                            <node concept="3cpWs3" id="YSRTOeuPTV" role="3uHU7B">
                                              <node concept="3cpWs3" id="YSRTOeuPtF" role="3uHU7B">
                                                <node concept="3cpWs3" id="YSRTOeuNTa" role="3uHU7B">
                                                  <node concept="3cpWs3" id="YSRTOeuN2A" role="3uHU7B">
                                                    <node concept="Xl_RD" id="YSRTOeuMNi" role="3uHU7B">
                                                      <property role="Xl_RC" value="Intention " />
                                                    </node>
                                                    <node concept="37vLTw" id="YSRTOeuN85" role="3uHU7w">
                                                      <ref role="3cqZAo" node="YSRTOeufou" resolve="index" />
                                                    </node>
                                                  </node>
                                                  <node concept="Xl_RD" id="YSRTOeuPtL" role="3uHU7w">
                                                    <property role="Xl_RC" value=" is '" />
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="YSRTOeuQe0" role="3uHU7w">
                                                  <ref role="3cqZAo" node="YSRTOeuFa_" resolve="actualText" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="YSRTOeuPJ$" role="3uHU7w">
                                                <property role="Xl_RC" value="' but '" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="YSRTOeuPJA" role="3uHU7w">
                                            <property role="Xl_RC" value="' was expected" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="YSRTOevy3G" role="ukAjM">
                              <node concept="37vLTw" id="YSRTOevxFR" role="2Oq$k0">
                                <ref role="3cqZAo" node="1qbCJZsJ67D" resolve="project" />
                              </node>
                              <node concept="liA8E" id="YSRTOevySi" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="YSRTOeutVN" role="3clFbw">
                  <node concept="10Nm6u" id="YSRTOeuu1i" role="3uHU7w" />
                  <node concept="37vLTw" id="YSRTOeutbh" role="3uHU7B">
                    <ref role="3cqZAo" node="YSRTOetFhY" resolve="lastIntentions" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1zzk$H$Px$l" role="3cqZAp">
                <node concept="1rXfSq" id="1zzk$H$Px$m" role="3clFbG">
                  <ref role="37wK5l" node="2UHWH1pLjo8" resolve="saveEditorState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="YrAPzE$128" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="1MWbHmSj6lm" role="8Wnug">
            <node concept="1rXfSq" id="1MWbHmSj6lk" role="3clFbG">
              <ref role="37wK5l" node="2D2$TMZu5kA" resolve="processCCMenu" />
            </node>
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
    <node concept="2tJIrI" id="2KYpxsX7mWK" role="jymVt" />
    <node concept="3clFb_" id="2KYpxsX7rTj" role="jymVt">
      <property role="TrG5h" value="updateEditorId" />
      <node concept="3cqZAl" id="2KYpxsX7rTl" role="3clF45" />
      <node concept="3Tm6S6" id="2KYpxsX7FBi" role="1B3o_S" />
      <node concept="3clFbS" id="2KYpxsX7rTn" role="3clF47">
        <node concept="3clFbJ" id="2UHWH1pMlAg" role="3cqZAp">
          <node concept="3clFbC" id="2KYpxsX7XFU" role="3clFbw">
            <node concept="37vLTw" id="2KYpxsX7UBo" role="3uHU7B">
              <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
            </node>
            <node concept="10Nm6u" id="2UHWH1pMmyW" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2KYpxsX7Wd6" role="3clFbx">
            <node concept="3clFbF" id="2KYpxsX7Wxr" role="3cqZAp">
              <node concept="37vLTI" id="2KYpxsX7X6g" role="3clFbG">
                <node concept="10Nm6u" id="2KYpxsX7XcC" role="37vLTx" />
                <node concept="37vLTw" id="2KYpxsX7Wxq" role="37vLTJ">
                  <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2KYpxsX7XFX" role="9aQIa">
            <node concept="3clFbS" id="2UHWH1pMlAi" role="9aQI4">
              <node concept="3clFbF" id="2UHWH1pMfSw" role="3cqZAp">
                <node concept="37vLTI" id="2UHWH1pMgTj" role="3clFbG">
                  <node concept="37vLTw" id="2UHWH1pMfSu" role="37vLTJ">
                    <ref role="3cqZAo" node="2UHWH1pM8_v" resolve="editorId" />
                  </node>
                  <node concept="3cpWs3" id="2UHWH1pMpfY" role="37vLTx">
                    <node concept="3cpWs3" id="2KYpxsX7fCK" role="3uHU7B">
                      <node concept="1eOMI4" id="2KYpxsX7hQE" role="3uHU7B">
                        <node concept="3K4zz7" id="2KYpxsX7jE_" role="1eOMHV">
                          <node concept="Xl_RD" id="2KYpxsX7kvw" role="3K4E3e">
                            <property role="Xl_RC" value="inspector" />
                          </node>
                          <node concept="Xl_RD" id="2KYpxsX7lIG" role="3K4GZi">
                            <property role="Xl_RC" value="main" />
                          </node>
                          <node concept="37vLTw" id="2KYpxsX7iNH" role="3K4Cdx">
                            <ref role="3cqZAo" node="2sCgtIfMg42" resolve="isInspector" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2UHWH1pMplv" role="3uHU7w">
                        <property role="Xl_RC" value=":rootNode:" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="2UHWH1pMoBQ" role="3uHU7w">
                      <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                      <ref role="37wK5l" to="qsto:5T6M7OO0vKo" resolve="serialize" />
                      <node concept="37vLTw" id="2KYpxsX7X$9" role="37wK5m">
                        <ref role="3cqZAo" node="7trMQm40j_d" resolve="rootNode" />
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
    <node concept="2tJIrI" id="7WbdMME7fFA" role="jymVt" />
    <node concept="3clFb_" id="7WbdMMEcg8T" role="jymVt">
      <property role="TrG5h" value="ctrlDownModifier" />
      <node concept="3clFbS" id="7WbdMMEcg8W" role="3clF47">
        <node concept="3cpWs6" id="7WbdMMEcnLz" role="3cqZAp">
          <node concept="3K4zz7" id="7WbdMMEcnL_" role="3cqZAk">
            <node concept="10M0yZ" id="7WbdMMEcnLA" role="3K4E3e">
              <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
              <ref role="3cqZAo" to="hyam:~InputEvent.META_DOWN_MASK" resolve="META_DOWN_MASK" />
            </node>
            <node concept="10M0yZ" id="7WbdMMEcnLB" role="3K4GZi">
              <ref role="3cqZAo" to="hyam:~InputEvent.CTRL_DOWN_MASK" resolve="CTRL_DOWN_MASK" />
              <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
            </node>
            <node concept="10M0yZ" id="7WbdMMEcnLC" role="3K4Cdx">
              <ref role="3cqZAo" to="18ew:~SystemInfo.isMac" resolve="isMac" />
              <ref role="1PxDUh" to="18ew:~SystemInfo" resolve="SystemInfo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7WbdMMEc8Bx" role="1B3o_S" />
      <node concept="10Oyi0" id="7WbdMMEcfio" role="3clF45" />
      <node concept="P$JXv" id="7WbdMMEc$CZ" role="lGtFl">
        <node concept="x79VA" id="7WbdMMEc$D2" role="3nqlJM">
          <property role="x79VB" value="META_DOWN_MASK for macOS, CTRL_DOWN_MASK otherwise" />
        </node>
        <node concept="TZ5HA" id="7WbdMMEcFw8" role="TZ5H$">
          <node concept="1dT_AC" id="7WbdMMEcFw9" role="1dT_Ay">
            <property role="1dT_AB" value="In MacOs Ctrl+click opens the context menu. The behavior we want is the same as in windows Ctrl+click so we need META_DOWN." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WbdMMEbYNs" role="jymVt" />
    <node concept="3clFb_" id="7WbdMME76M3" role="jymVt">
      <property role="TrG5h" value="openNode" />
      <node concept="3Tm6S6" id="7WbdMME76M4" role="1B3o_S" />
      <node concept="3cqZAl" id="7WbdMME7yvC" role="3clF45" />
      <node concept="37vLTG" id="7WbdMME76LY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7WbdMME7q$S" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7WbdMME76KZ" role="3clF47">
        <node concept="3cpWs8" id="7WbdMME76L3" role="3cqZAp">
          <node concept="3cpWsn" id="7WbdMME76L4" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7WbdMME76L5" role="1tU5fm" />
            <node concept="2OqwBi" id="7WbdMME76L6" role="33vP2m">
              <node concept="2OqwBi" id="7WbdMME76L7" role="2Oq$k0">
                <node concept="1rXfSq" id="7WbdMME76L8" role="2Oq$k0">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
                <node concept="liA8E" id="7WbdMME76L9" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                </node>
              </node>
              <node concept="liA8E" id="7WbdMME76La" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getSNode()" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7WbdMME76Lg" role="3cqZAp">
          <node concept="3clFbS" id="7WbdMME76Lh" role="3clFbx">
            <node concept="3clFbF" id="7WbdMME76Li" role="3cqZAp">
              <node concept="2OqwBi" id="7WbdMME76Lj" role="3clFbG">
                <node concept="1rXfSq" id="7WbdMME76Lk" role="2Oq$k0">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
                <node concept="liA8E" id="7WbdMME76Ll" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.selectNode(org.jetbrains.mps.openapi.model.SNode)" resolve="selectNode" />
                  <node concept="37vLTw" id="7WbdMME7uWh" role="37wK5m">
                    <ref role="3cqZAo" node="7WbdMME76LY" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7WbdMME76Ln" role="3clFbw">
            <node concept="2OqwBi" id="7WbdMME76Lo" role="2Oq$k0">
              <node concept="37vLTw" id="7WbdMME7ucx" role="2Oq$k0">
                <ref role="3cqZAo" node="7WbdMME76LY" resolve="node" />
              </node>
              <node concept="z$bX8" id="7WbdMME76Lq" role="2OqNvi" />
            </node>
            <node concept="3JPx81" id="7WbdMME76Lr" role="2OqNvi">
              <node concept="37vLTw" id="7WbdMME76Ls" role="25WWJ7">
                <ref role="3cqZAo" node="7WbdMME76L4" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7WbdMME76Lt" role="9aQIa">
            <node concept="3clFbS" id="7WbdMME76Lu" role="9aQI4">
              <node concept="3cpWs8" id="7WbdMME76Lv" role="3cqZAp">
                <node concept="3cpWsn" id="7WbdMME76Lw" role="3cpWs9">
                  <property role="TrG5h" value="object" />
                  <node concept="3uibUv" id="7WbdMME76Lx" role="1tU5fm">
                    <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                  </node>
                  <node concept="2ShNRf" id="7WbdMME76Ly" role="33vP2m">
                    <node concept="1pGfFk" id="7WbdMME76Lz" role="2ShVmc">
                      <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7WbdMME76L$" role="3cqZAp">
                <node concept="2OqwBi" id="7WbdMME76L_" role="3clFbG">
                  <node concept="37vLTw" id="7WbdMME76LA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WbdMME76Lw" resolve="object" />
                  </node>
                  <node concept="liA8E" id="7WbdMME76LB" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                    <node concept="Xl_RD" id="7WbdMME76LC" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="Xl_RD" id="7WbdMME76LD" role="37wK5m">
                      <property role="Xl_RC" value="opentab" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7WbdMME76LE" role="3cqZAp">
                <node concept="2OqwBi" id="7WbdMME76LF" role="3clFbG">
                  <node concept="37vLTw" id="7WbdMME76LG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WbdMME76Lw" resolve="object" />
                  </node>
                  <node concept="liA8E" id="7WbdMME76LH" role="2OqNvi">
                    <ref role="37wK5l" to="mxf6:~JSONObject.putOpt(java.lang.String,java.lang.Object)" resolve="putOpt" />
                    <node concept="Xl_RD" id="7WbdMME76LI" role="37wK5m">
                      <property role="Xl_RC" value="url" />
                    </node>
                    <node concept="3cpWs3" id="7WbdMME76LJ" role="37wK5m">
                      <node concept="Xl_RD" id="7WbdMME76LK" role="3uHU7B">
                        <property role="Xl_RC" value="nodeAsHtml?nodeRef=" />
                      </node>
                      <node concept="2YIFZM" id="7WbdMME76LL" role="3uHU7w">
                        <ref role="37wK5l" to="qsto:5T6M7OO0HkH" resolve="serialize" />
                        <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                        <node concept="2OqwBi" id="7WbdMME76LM" role="37wK5m">
                          <node concept="2JrnkZ" id="7WbdMME76LN" role="2Oq$k0">
                            <node concept="2OqwBi" id="7WbdMME76LO" role="2JrQYb">
                              <node concept="37vLTw" id="7WbdMME7vBW" role="2Oq$k0">
                                <ref role="3cqZAo" node="7WbdMME76LY" resolve="node" />
                              </node>
                              <node concept="2Rxl7S" id="7WbdMME76LQ" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7WbdMME76LR" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7WbdMME76LS" role="3cqZAp">
                <node concept="1rXfSq" id="7WbdMME76LT" role="3clFbG">
                  <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
                  <node concept="37vLTw" id="7WbdMME76LU" role="37wK5m">
                    <ref role="3cqZAo" node="7WbdMME76Lw" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7WbdMME76M6" role="Sfmx6">
        <ref role="3uigEE" to="mxf6:~JSONException" resolve="JSONException" />
      </node>
      <node concept="P$JXv" id="51Fsa9hz$wV" role="lGtFl">
        <node concept="TZ5HA" id="51Fsa9hz$wW" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hz$wX" role="1dT_Ay">
            <property role="1dT_AB" value="If the given node is in the current editor we select it otherwise we open a new tab." />
          </node>
        </node>
        <node concept="TZ5HA" id="51Fsa9hzHyM" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hzHyN" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="51Fsa9hzHyU" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hzHyV" role="1dT_Ay">
            <property role="1dT_AB" value="For checking if a node is in the current editor we check if it is a descendent of the root node." />
          </node>
        </node>
        <node concept="TZ5HA" id="51Fsa9hzHEd" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hzHEe" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="51Fsa9hzHHS" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hzHHT" role="1dT_Ay">
            <property role="1dT_AB" value="Because in Modelix any node can be the root of the editor, we use the node from the editor root cell" />
          </node>
        </node>
        <node concept="TZ5HA" id="51Fsa9hzHI7" role="TZ5H$">
          <node concept="1dT_AC" id="51Fsa9hzHI8" role="1dT_Ay">
            <property role="1dT_AB" value="as root instead of node.containingRoot." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WbdMMEdhOu" role="jymVt" />
    <node concept="3clFb_" id="7WbdMMEdzbp" role="jymVt">
      <property role="TrG5h" value="simulateMouseEvent" />
      <node concept="3clFbS" id="7WbdMMEdzbs" role="3clF47">
        <node concept="3clFbF" id="7UhBoONobpk" role="3cqZAp">
          <node concept="2YIFZM" id="7UhBoONobpl" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <node concept="1bVj0M" id="7UhBoONobpm" role="37wK5m">
              <node concept="3clFbS" id="7UhBoONobpn" role="1bW5cS">
                <node concept="3cpWs8" id="46lepK4qYH1" role="3cqZAp">
                  <node concept="3cpWsn" id="46lepK4qYH2" role="3cpWs9">
                    <property role="TrG5h" value="visibleComponent" />
                    <node concept="3uibUv" id="46lepK4qYH3" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2OqwBi" id="46lepK4qYH4" role="33vP2m">
                      <node concept="37vLTw" id="46lepK4qYH5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                      <node concept="liA8E" id="46lepK4qYH6" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7UhBoONoqsF" role="3cqZAp">
                  <node concept="3cpWsn" id="7UhBoONoqsI" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3uibUv" id="7UhBoONoqsJ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2YIFZM" id="7UhBoONoqsK" role="33vP2m">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.getDeepestComponentAt(java.awt.Component,int,int)" resolve="getDeepestComponentAt" />
                      <node concept="37vLTw" id="46lepK4r4ZC" role="37wK5m">
                        <ref role="3cqZAo" node="46lepK4qYH2" resolve="visibleComponent" />
                      </node>
                      <node concept="37vLTw" id="7UhBoONotNr" role="37wK5m">
                        <ref role="3cqZAo" node="7WbdMMEdCDN" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="7UhBoONotYY" role="37wK5m">
                        <ref role="3cqZAo" node="7WbdMMEdCDR" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4_b7d72jyPR" role="3cqZAp">
                  <property role="TyiWL" value="true" />
                  <node concept="3clFbS" id="4_b7d72jyPS" role="3clFbx">
                    <node concept="3clFbF" id="4_b7d72jyPT" role="3cqZAp">
                      <node concept="37vLTI" id="4_b7d72jyPU" role="3clFbG">
                        <node concept="37vLTw" id="46lepK4r89c" role="37vLTx">
                          <ref role="3cqZAo" node="46lepK4qYH2" resolve="visibleComponent" />
                        </node>
                        <node concept="37vLTw" id="4_b7d72jyPW" role="37vLTJ">
                          <ref role="3cqZAo" node="7UhBoONoqsI" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4_b7d72jyPX" role="3clFbw">
                    <node concept="10Nm6u" id="4_b7d72jyPY" role="3uHU7w" />
                    <node concept="37vLTw" id="4_b7d72jyPZ" role="3uHU7B">
                      <ref role="3cqZAo" node="7UhBoONoqsI" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7UhBoONo4Pd" role="3cqZAp">
                  <node concept="3cpWsn" id="7UhBoONo4Pe" role="3cpWs9">
                    <property role="TrG5h" value="event" />
                    <node concept="3uibUv" id="7UhBoONo435" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                    </node>
                    <node concept="2ShNRf" id="7UhBoONo4Pf" role="33vP2m">
                      <node concept="1pGfFk" id="7UhBoONo4Pg" role="2ShVmc">
                        <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean)" resolve="MouseEvent" />
                        <node concept="37vLTw" id="46lepK4r3MZ" role="37wK5m">
                          <ref role="3cqZAo" node="46lepK4qYH2" resolve="visibleComponent" />
                        </node>
                        <node concept="37vLTw" id="6ouH5jodcfm" role="37wK5m">
                          <ref role="3cqZAo" node="6ouH5jod098" resolve="type" />
                        </node>
                        <node concept="2YIFZM" id="7UhBoONo4Pj" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="37vLTw" id="7WbdMMEe8$d" role="37wK5m">
                          <ref role="3cqZAo" node="7WbdMMEe0rJ" resolve="modifiers" />
                        </node>
                        <node concept="37vLTw" id="7UhBoONow8e" role="37wK5m">
                          <ref role="3cqZAo" node="7WbdMMEdCDN" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="7UhBoONow$d" role="37wK5m">
                          <ref role="3cqZAo" node="7WbdMMEdCDR" resolve="y" />
                        </node>
                        <node concept="3cmrfG" id="7UhBoONo4Pn" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3clFbT" id="7UhBoONo4Po" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7UhBoONobq3" role="3cqZAp">
                  <node concept="2OqwBi" id="7UhBoONobq4" role="3clFbG">
                    <node concept="liA8E" id="7UhBoONobq6" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="7UhBoONobq7" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <node concept="37vLTw" id="46lepK4r9vb" role="37wK5m">
                          <ref role="3cqZAo" node="46lepK4qYH2" resolve="visibleComponent" />
                        </node>
                        <node concept="37vLTw" id="7UhBoONoQ2o" role="37wK5m">
                          <ref role="3cqZAo" node="7UhBoONo4Pe" resolve="event" />
                        </node>
                        <node concept="37vLTw" id="7UhBoONovlg" role="37wK5m">
                          <ref role="3cqZAo" node="7UhBoONoqsI" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="46lepK4r8_v" role="2Oq$k0">
                      <ref role="3cqZAo" node="7UhBoONoqsI" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7UhBoONscaw" role="3cqZAp" />
        <node concept="3clFbF" id="7UhBoONobr2" role="3cqZAp">
          <node concept="2OqwBi" id="7UhBoONobr3" role="3clFbG">
            <node concept="37vLTw" id="7UhBoONobr4" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
            </node>
            <node concept="liA8E" id="7UhBoONobr5" role="2OqNvi">
              <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7WbdMMEdtEU" role="1B3o_S" />
      <node concept="3cqZAl" id="7WbdMMEdy6I" role="3clF45" />
      <node concept="37vLTG" id="7WbdMMEdCDN" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7WbdMMEdCDM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7WbdMMEdCDR" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7WbdMMEdLF1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7WbdMMEe0rJ" role="3clF46">
        <property role="TrG5h" value="modifiers" />
        <node concept="10Oyi0" id="7WbdMMEe5ki" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ouH5jod098" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="10Oyi0" id="6ouH5jodamk" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7WbdMMEe8Vc" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
      <node concept="3uibUv" id="7WbdMMEemUe" role="Sfmx6">
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
                <node concept="3cpWs8" id="6JxzAvoCOzy" role="3cqZAp">
                  <node concept="3cpWsn" id="6JxzAvoCOzz" role="3cpWs9">
                    <property role="TrG5h" value="visibleComponent" />
                    <node concept="3uibUv" id="7cdWqnd98dg" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2OqwBi" id="7cdWqnd99BN" role="33vP2m">
                      <node concept="37vLTw" id="6JxzAvoCOz_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1qbCJZsJ6nI" resolve="serverEditorComponent" />
                      </node>
                      <node concept="liA8E" id="7cdWqnd9bsY" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1qbCJZsJ6nP" role="3cqZAp">
                  <node concept="3cpWsn" id="1qbCJZsJ6nQ" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3uibUv" id="1qbCJZsJ6nR" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="2YIFZM" id="1qbCJZsJ6nS" role="33vP2m">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.getDeepestComponentAt(java.awt.Component,int,int)" resolve="getDeepestComponentAt" />
                      <node concept="37vLTw" id="6JxzAvoCPK6" role="37wK5m">
                        <ref role="3cqZAo" node="6JxzAvoCOzz" resolve="visibleComponent" />
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
                <node concept="3clFbJ" id="4_b7d72jw2X" role="3cqZAp">
                  <property role="TyiWL" value="true" />
                  <node concept="3clFbS" id="4_b7d72jw2Z" role="3clFbx">
                    <node concept="3clFbF" id="4_b7d72jxwo" role="3cqZAp">
                      <node concept="37vLTI" id="4_b7d72jy4C" role="3clFbG">
                        <node concept="37vLTw" id="6JxzAvoCOzA" role="37vLTx">
                          <ref role="3cqZAo" node="6JxzAvoCOzz" resolve="visibleComponent" />
                        </node>
                        <node concept="37vLTw" id="4_b7d72jxwm" role="37vLTJ">
                          <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4_b7d72jx5C" role="3clFbw">
                    <node concept="10Nm6u" id="4_b7d72jxb1" role="3uHU7w" />
                    <node concept="37vLTw" id="4_b7d72jwx2" role="3uHU7B">
                      <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1qbCJZsJ6nW" role="3cqZAp">
                  <node concept="2OqwBi" id="1qbCJZsJ6nX" role="3clFbG">
                    <node concept="37vLTw" id="1qbCJZsJ6nY" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6nZ" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6o0" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="6JxzAvoCQww" role="37wK5m">
                          <ref role="3cqZAo" node="6JxzAvoCOzz" resolve="visibleComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6o2" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6o3" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6JxzAvoBS0e" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6o5" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6o6" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="2PDuPZLNh96" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_DOWN_MASK" resolve="BUTTON1_DOWN_MASK" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
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
                    <node concept="37vLTw" id="7cdWqnd9WJC" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6oh" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6oi" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <node concept="37vLTw" id="6JxzAvoCRfq" role="37wK5m">
                          <ref role="3cqZAo" node="6JxzAvoCOzz" resolve="visibleComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6ok" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6ol" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6JxzAvoBUoC" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6on" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6oo" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                            </node>
                            <node concept="10M0yZ" id="2PDuPZLNhxs" role="37wK5m">
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_DOWN_MASK" resolve="BUTTON1_DOWN_MASK" />
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
                    <node concept="37vLTw" id="7cdWqnd9X6S" role="2Oq$k0">
                      <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                    </node>
                    <node concept="liA8E" id="1qbCJZsJ6oz" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.dispatchEvent(java.awt.AWTEvent)" resolve="dispatchEvent" />
                      <node concept="2YIFZM" id="1qbCJZsJ6o$" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                        <ref role="37wK5l" to="dxuu:~SwingUtilities.convertMouseEvent(java.awt.Component,java.awt.event.MouseEvent,java.awt.Component)" resolve="convertMouseEvent" />
                        <node concept="37vLTw" id="6JxzAvoCRTQ" role="37wK5m">
                          <ref role="3cqZAo" node="6JxzAvoCOzz" resolve="visibleComponent" />
                        </node>
                        <node concept="2ShNRf" id="1qbCJZsJ6oA" role="37wK5m">
                          <node concept="1pGfFk" id="1qbCJZsJ6oB" role="2ShVmc">
                            <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean,int)" resolve="MouseEvent" />
                            <node concept="37vLTw" id="6JxzAvoBUKv" role="37wK5m">
                              <ref role="3cqZAo" node="1qbCJZsJ6nQ" resolve="target" />
                            </node>
                            <node concept="10M0yZ" id="1qbCJZsJ6oD" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
                            </node>
                            <node concept="2YIFZM" id="1qbCJZsJ6oE" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="10M0yZ" id="2PDuPZLNic2" role="37wK5m">
                              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                              <ref role="3cqZAo" to="hyam:~InputEvent.BUTTON1_DOWN_MASK" resolve="BUTTON1_DOWN_MASK" />
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
                          <node concept="37vLTw" id="76nlet41v1Z" role="37wK5m">
                            <ref role="3cqZAo" node="1qbCJZsJ6p4" resolve="keyCode" />
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
    <node concept="2tJIrI" id="7WbdMMEcqID" role="jymVt" />
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
                              <node concept="3clFbF" id="YSRTOetUHN" role="3cqZAp">
                                <node concept="37vLTI" id="YSRTOetYI8" role="3clFbG">
                                  <node concept="2OqwBi" id="YSRTOeu4XK" role="37vLTx">
                                    <node concept="37vLTw" id="YSRTOeu2i4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1MWbHmSoKOL" resolve="intentions" />
                                    </node>
                                    <node concept="ANE8D" id="YSRTOeu8Ea" role="2OqNvi" />
                                  </node>
                                  <node concept="37vLTw" id="YSRTOetUHL" role="37vLTJ">
                                    <ref role="3cqZAo" node="YSRTOetFhY" resolve="lastIntentions" />
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
                      <node concept="1PaTwC" id="xL$$tDoztC" role="1aUNEU">
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
                            <node concept="3J1_TO" id="1qbCJZsJ6r4" role="3cqZAp">
                              <node concept="3clFbS" id="1qbCJZsJ6r5" role="1zxBo7">
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
                              <node concept="1wplmZ" id="6zXJdJl1dT4" role="1zxBo6">
                                <node concept="3clFbS" id="1qbCJZsJ6rm" role="1wplMD">
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
                                      <node concept="3clFbF" id="1$QIqzce96D" role="3cqZAp">
                                        <node concept="2OqwBi" id="1$QIqzceeuH" role="3clFbG">
                                          <node concept="10M0yZ" id="1$QIqzcebX_" role="2Oq$k0">
                                            <ref role="3cqZAo" to="ia5i:5MA9wbc5sJL" resolve="AUTHOR" />
                                            <ref role="1PxDUh" to="ia5i:5MA9wbc5skS" resolve="AuthorOverride" />
                                          </node>
                                          <node concept="liA8E" id="1$QIqzcehBR" role="2OqNvi">
                                            <ref role="37wK5l" to="3d38:7vWAzuEE3Ye" resolve="runWith" />
                                            <node concept="37vLTw" id="1$QIqzcekEt" role="37wK5m">
                                              <ref role="3cqZAo" node="2mcPA70wyj9" resolve="user" />
                                            </node>
                                            <node concept="1bVj0M" id="1$QIqzcern3" role="37wK5m">
                                              <property role="3yWfEV" value="true" />
                                              <node concept="3clFbS" id="1$QIqzcern5" role="1bW5cS">
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
                    <node concept="3J1_TO" id="1qbCJZsJ6t1" role="3cqZAp">
                      <node concept="3clFbS" id="1qbCJZsJ6t2" role="1zxBo7">
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
                      <node concept="3uVAMA" id="1qbCJZsJ6t7" role="1zxBo5">
                        <node concept="XOnhg" id="1qbCJZsJ6t8" role="1zc67B">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="eENLH6gBSzn" role="1tU5fm">
                            <node concept="3uibUv" id="1qbCJZsJ6t9" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1qbCJZsJ6ta" role="1zc67A">
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
                <node concept="3clFbF" id="7tTb3N6VkMq" role="3cqZAp">
                  <node concept="2OqwBi" id="7tTb3N6Vohl" role="3clFbG">
                    <node concept="37vLTw" id="7tTb3N6VkMo" role="2Oq$k0">
                      <ref role="3cqZAo" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                    </node>
                    <node concept="liA8E" id="7tTb3N6VrW4" role="2OqNvi">
                      <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
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
        <node concept="3clFbJ" id="5qcwcxODnuK" role="3cqZAp">
          <node concept="3clFbS" id="5qcwcxODnuM" role="3clFbx">
            <node concept="3cpWs6" id="5qcwcxODugo" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="5qcwcxODrN3" role="3clFbw">
            <node concept="2ZW3vV" id="5qcwcxODo3D" role="3uHU7B">
              <node concept="3uibUv" id="5qcwcxODog$" role="2ZW6by">
                <ref role="3uigEE" to="fz1u:~CloseException" resolve="CloseException" />
              </node>
              <node concept="37vLTw" id="5qcwcxODnIQ" role="2ZW6bz">
                <ref role="3cqZAo" node="1qbCJZsJ6uq" resolve="exception" />
              </node>
            </node>
            <node concept="2ZW3vV" id="5qcwcxODrTX" role="3uHU7w">
              <node concept="3uibUv" id="5qcwcxODrTY" role="2ZW6by">
                <ref role="3uigEE" to="5zyv:~TimeoutException" resolve="TimeoutException" />
              </node>
              <node concept="2OqwBi" id="5qcwcxODrTZ" role="2ZW6bz">
                <node concept="37vLTw" id="5qcwcxODrU0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ6uq" resolve="exception" />
                </node>
                <node concept="liA8E" id="5qcwcxODrU1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="5Sw$pxbP8g0" role="3cqZAp">
          <property role="RRSoG" value="error" />
          <node concept="Xl_RD" id="5Sw$pxbP8g2" role="RRSoy" />
          <node concept="37vLTw" id="5Sw$pxbP8rE" role="RRSow">
            <ref role="3cqZAo" node="1qbCJZsJ6uq" resolve="exception" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2sCgtIfzqSB" role="jymVt" />
    <node concept="3clFb_" id="42vnfqppZlZ" role="jymVt">
      <property role="TrG5h" value="inspect" />
      <node concept="3clFbS" id="42vnfqppZm2" role="3clF47">
        <node concept="3clFbJ" id="2sCgtIf$jmE" role="3cqZAp">
          <node concept="3clFbS" id="2sCgtIf$jmG" role="3clFbx">
            <node concept="3cpWs6" id="2sCgtIf$kSg" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2sCgtIf$k91" role="3clFbw">
            <node concept="Xjq3P" id="2sCgtIf$jIZ" role="2Oq$k0" />
            <node concept="liA8E" id="2sCgtIf$k$5" role="2OqNvi">
              <ref role="37wK5l" node="2sCgtIf$6pJ" resolve="isInspector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2sCgtIfLmIs" role="3cqZAp">
          <node concept="3cpWsn" id="2sCgtIfLmIt" role="3cpWs9">
            <property role="TrG5h" value="inspectorSession" />
            <node concept="3uibUv" id="2sCgtIfLmI5" role="1tU5fm">
              <ref role="3uigEE" node="1qbCJZsJ66o" resolve="RenderSession" />
            </node>
            <node concept="3EllGN" id="2sCgtIfLmIu" role="33vP2m">
              <node concept="Xjq3P" id="2sCgtIfLmIv" role="3ElVtu" />
              <node concept="10M0yZ" id="2sCgtIfLmIw" role="3ElQJh">
                <ref role="3cqZAo" node="2sCgtIfKFDT" resolve="mainToInspectorMap" />
                <ref role="1PxDUh" node="6xm2RBlaf2L" resolve="RenderServer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2sCgtIfLoVC" role="3cqZAp">
          <node concept="3clFbS" id="2sCgtIfLoVO" role="3clFbx">
            <node concept="3cpWs6" id="2sCgtIfLq34" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2sCgtIfLpvD" role="3clFbw">
            <node concept="10Nm6u" id="2sCgtIfLpMo" role="3uHU7w" />
            <node concept="37vLTw" id="2sCgtIfLmIx" role="3uHU7B">
              <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42vnfqpqySP" role="3cqZAp">
          <node concept="3cpWsn" id="42vnfqpqySQ" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="42vnfqpqy0X" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="42vnfqpqySR" role="33vP2m">
              <node concept="2OqwBi" id="42vnfqpqySS" role="2Oq$k0">
                <node concept="37vLTw" id="42vnfqpqyST" role="2Oq$k0">
                  <ref role="3cqZAo" node="42vnfqpqmiV" resolve="newSelection" />
                </node>
                <node concept="liA8E" id="42vnfqpqySU" role="2OqNvi">
                  <ref role="37wK5l" to="lwvz:~Selection.getSelectedNodes()" resolve="getSelectedNodes" />
                </node>
              </node>
              <node concept="liA8E" id="42vnfqpqySV" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="42vnfqpqySW" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="42vnfqprK3b" role="3cqZAp">
          <node concept="3clFbS" id="42vnfqprK3d" role="3clFbx">
            <node concept="3clFbF" id="42vnfqpFqao" role="3cqZAp">
              <node concept="37vLTI" id="42vnfqpFu58" role="3clFbG">
                <node concept="37vLTw" id="42vnfqpFHt0" role="37vLTx">
                  <ref role="3cqZAo" node="42vnfqpqySQ" resolve="node" />
                </node>
                <node concept="2OqwBi" id="42vnfqpFqNK" role="37vLTJ">
                  <node concept="37vLTw" id="42vnfqpFqam" role="2Oq$k0">
                    <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                  </node>
                  <node concept="2OwXpG" id="2sCgtIfzJY9" role="2OqNvi">
                    <ref role="2Oxat6" node="7trMQm40j_d" resolve="rootNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="42vnfqpFk_c" role="3cqZAp">
              <node concept="3clFbS" id="42vnfqpFk_d" role="3clFbx">
                <node concept="3clFbF" id="42vnfqpFk_e" role="3cqZAp">
                  <node concept="2OqwBi" id="42vnfqpFk_f" role="3clFbG">
                    <node concept="2OqwBi" id="42vnfqpGnnR" role="2Oq$k0">
                      <node concept="37vLTw" id="42vnfqpGmKw" role="2Oq$k0">
                        <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                      </node>
                      <node concept="2OwXpG" id="2sCgtIfzSGi" role="2OqNvi">
                        <ref role="2Oxat6" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                    </node>
                    <node concept="liA8E" id="42vnfqpFk_h" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                      <node concept="37vLTw" id="42vnfqpFMyc" role="37wK5m">
                        <ref role="3cqZAo" node="42vnfqpqySQ" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="42vnfqpGpfd" role="3cqZAp">
                  <node concept="2OqwBi" id="42vnfqpGp$Q" role="3clFbG">
                    <node concept="37vLTw" id="42vnfqpGpfb" role="2Oq$k0">
                      <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                    </node>
                    <node concept="liA8E" id="2sCgtIfzT9r" role="2OqNvi">
                      <ref role="37wK5l" node="2UHWH1pO9D2" resolve="restoreEditorState" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="42vnfqpFk_l" role="3cqZAp">
                  <node concept="2OqwBi" id="42vnfqpFk_m" role="3clFbG">
                    <node concept="2OqwBi" id="42vnfqpGrFV" role="2Oq$k0">
                      <node concept="37vLTw" id="42vnfqpGrv$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                      </node>
                      <node concept="2OwXpG" id="2sCgtIfzTqh" role="2OqNvi">
                        <ref role="2Oxat6" node="7tTb3N6QEMo" resolve="imageChangeDetector" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2sCgtIfzTIB" role="2OqNvi">
                      <ref role="37wK5l" node="7tTb3N6M06W" resolve="scheduleUpdate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="42vnfqpFk_p" role="3clFbw">
                <node concept="10Nm6u" id="42vnfqpFk_q" role="3uHU7w" />
                <node concept="2OqwBi" id="42vnfqpGpHO" role="3uHU7B">
                  <node concept="37vLTw" id="2sCgtIfLsMY" role="2Oq$k0">
                    <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                  </node>
                  <node concept="2OwXpG" id="2sCgtIfzR4G" role="2OqNvi">
                    <ref role="2Oxat6" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2KYpxsX7YIu" role="3cqZAp">
              <node concept="2OqwBi" id="2KYpxsX7Z4C" role="3clFbG">
                <node concept="37vLTw" id="2KYpxsX7YIs" role="2Oq$k0">
                  <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                </node>
                <node concept="liA8E" id="2KYpxsX7ZeK" role="2OqNvi">
                  <ref role="37wK5l" node="2KYpxsX7rTj" resolve="updateEditorId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="42vnfqprO4b" role="3clFbw">
            <node concept="37vLTw" id="42vnfqprP3d" role="3uHU7w">
              <ref role="3cqZAo" node="42vnfqpqySQ" resolve="node" />
            </node>
            <node concept="2OqwBi" id="42vnfqprLQy" role="3uHU7B">
              <node concept="2OqwBi" id="42vnfqprKFA" role="2Oq$k0">
                <node concept="37vLTw" id="42vnfqprKnx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2sCgtIfLmIt" resolve="inspectorSession" />
                </node>
                <node concept="liA8E" id="2sCgtIfzHxy" role="2OqNvi">
                  <ref role="37wK5l" node="1qbCJZsJ69e" resolve="getEditorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="2sCgtIfzJyf" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="42vnfqppSOn" role="1B3o_S" />
      <node concept="3cqZAl" id="42vnfqppXcP" role="3clF45" />
      <node concept="37vLTG" id="42vnfqpqmiV" role="3clF46">
        <property role="TrG5h" value="newSelection" />
        <node concept="3uibUv" id="42vnfqpqpME" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2sCgtIfzTSg" role="jymVt" />
    <node concept="3clFb_" id="2sCgtIf$6pJ" role="jymVt">
      <property role="TrG5h" value="isInspector" />
      <node concept="3clFbS" id="2sCgtIf$6pM" role="3clF47">
        <node concept="3cpWs6" id="2sCgtIfMpA3" role="3cqZAp">
          <node concept="2OqwBi" id="2sCgtIfMvLl" role="3cqZAk">
            <node concept="Xjq3P" id="2sCgtIfMqRO" role="2Oq$k0" />
            <node concept="2OwXpG" id="2sCgtIfMAJw" role="2OqNvi">
              <ref role="2Oxat6" node="2sCgtIfMg42" resolve="isInspector" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2sCgtIfMHsr" role="1B3o_S" />
      <node concept="10P_77" id="2sCgtIf$2A$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2sCgtIfzrvE" role="jymVt" />
    <node concept="312cEu" id="5T3RZQ93ztz" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="RemoteTooltip" />
      <node concept="312cEg" id="5T3RZQ93Pzn" role="jymVt">
        <property role="TrG5h" value="timer" />
        <node concept="3Tm6S6" id="5T3RZQ93Pzo" role="1B3o_S" />
        <node concept="3uibUv" id="5T3RZQ93Rwx" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
        </node>
        <node concept="2ShNRf" id="5T3RZQ93Qr3" role="33vP2m">
          <node concept="1pGfFk" id="5T3RZQ93Qr4" role="2ShVmc">
            <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
            <node concept="3cmrfG" id="5T3RZQ93Qr5" role="37wK5m">
              <property role="3cmrfH" value="100" />
            </node>
            <node concept="1bVj0M" id="5T3RZQ93Qr6" role="37wK5m">
              <node concept="37vLTG" id="5T3RZQ93Qr7" role="1bW2Oz">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="5T3RZQ93Qr8" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="5T3RZQ93Qr9" role="1bW5cS">
                <node concept="3J1_TO" id="5T3RZQ93Qra" role="3cqZAp">
                  <node concept="3clFbS" id="5T3RZQ93Qrb" role="1zxBo7">
                    <node concept="1HWtB8" id="5T3RZQ95$FQ" role="3cqZAp">
                      <node concept="Xjq3P" id="5T3RZQ95Bys" role="1HWFw0" />
                      <node concept="3clFbS" id="5T3RZQ95$FU" role="1HWHxc">
                        <node concept="3clFbJ" id="5T3RZQ94VTn" role="3cqZAp">
                          <node concept="37vLTw" id="5T3RZQ94WjV" role="3clFbw">
                            <ref role="3cqZAo" node="5T3RZQ94GCP" resolve="myVisible" />
                          </node>
                          <node concept="3clFbS" id="5T3RZQ94VTp" role="3clFbx">
                            <node concept="3clFbJ" id="5T3RZQ954_x" role="3cqZAp">
                              <node concept="2dkUwp" id="5T3RZQ956e0" role="3clFbw">
                                <node concept="2YIFZM" id="5T3RZQ956Py" role="3uHU7w">
                                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                </node>
                                <node concept="37vLTw" id="5T3RZQ9558O" role="3uHU7B">
                                  <ref role="3cqZAo" node="5T3RZQ93WIt" resolve="myHideTime" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="5T3RZQ954_z" role="3clFbx">
                                <node concept="3clFbF" id="5T3RZQ957oW" role="3cqZAp">
                                  <node concept="1rXfSq" id="5T3RZQ957oV" role="3clFbG">
                                    <ref role="37wK5l" node="5T3RZQ94O7N" resolve="hideTooltip" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="5T3RZQ94WCH" role="9aQIa">
                            <node concept="3clFbS" id="5T3RZQ94WCI" role="9aQI4">
                              <node concept="3clFbJ" id="5T3RZQ94WWa" role="3cqZAp">
                                <node concept="1Wc70l" id="5T3RZQ94XOt" role="3clFbw">
                                  <node concept="3y3z36" id="5T3RZQ950Um" role="3uHU7B">
                                    <node concept="10Nm6u" id="5T3RZQ9515x" role="3uHU7w" />
                                    <node concept="37vLTw" id="5T3RZQ94YrY" role="3uHU7B">
                                      <ref role="3cqZAo" node="5T3RZQ94gCB" resolve="myText" />
                                    </node>
                                  </node>
                                  <node concept="2dkUwp" id="5T3RZQ952fP" role="3uHU7w">
                                    <node concept="2YIFZM" id="5T3RZQ952K5" role="3uHU7w">
                                      <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                    </node>
                                    <node concept="37vLTw" id="5T3RZQ94Xoh" role="3uHU7B">
                                      <ref role="3cqZAo" node="5T3RZQ93Z3x" resolve="myShowTime" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5T3RZQ94WWc" role="3clFbx">
                                  <node concept="3clFbF" id="5T3RZQ953IN" role="3cqZAp">
                                    <node concept="1rXfSq" id="5T3RZQ953IM" role="3clFbG">
                                      <ref role="37wK5l" node="5T3RZQ946C5" resolve="showTooltip" />
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
                  <node concept="3uVAMA" id="5T3RZQ93Qre" role="1zxBo5">
                    <node concept="XOnhg" id="5T3RZQ93Qrf" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="5T3RZQ93Qrg" role="1tU5fm">
                        <node concept="3uibUv" id="5T3RZQ93Qrh" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5T3RZQ93Qri" role="1zc67A">
                      <node concept="RRSsy" id="5T3RZQ93Qrj" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="5T3RZQ93Qrk" role="RRSoy" />
                        <node concept="37vLTw" id="5T3RZQ93Qrl" role="RRSow">
                          <ref role="3cqZAo" node="5T3RZQ93Qrf" resolve="ex" />
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
      <node concept="312cEg" id="5T3RZQ93WIt" role="jymVt">
        <property role="TrG5h" value="myHideTime" />
        <node concept="3Tm6S6" id="5T3RZQ93WIu" role="1B3o_S" />
        <node concept="3cpWsb" id="5T3RZQ94$8t" role="1tU5fm" />
        <node concept="3cmrfG" id="5T3RZQ93XZF" role="33vP2m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
      <node concept="312cEg" id="5T3RZQ93Z3x" role="jymVt">
        <property role="TrG5h" value="myShowTime" />
        <node concept="3Tm6S6" id="5T3RZQ93Z3y" role="1B3o_S" />
        <node concept="3cpWsb" id="5T3RZQ94$j9" role="1tU5fm" />
        <node concept="3cmrfG" id="5T3RZQ93ZU3" role="33vP2m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
      <node concept="312cEg" id="5T3RZQ94eo_" role="jymVt">
        <property role="TrG5h" value="myX" />
        <node concept="3Tm6S6" id="5T3RZQ94eoA" role="1B3o_S" />
        <node concept="10Oyi0" id="5T3RZQ94f0K" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5T3RZQ94f35" role="jymVt">
        <property role="TrG5h" value="myY" />
        <node concept="3Tm6S6" id="5T3RZQ94f36" role="1B3o_S" />
        <node concept="10Oyi0" id="5T3RZQ94f37" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5T3RZQ94gCB" role="jymVt">
        <property role="TrG5h" value="myText" />
        <node concept="3Tm6S6" id="5T3RZQ94gCC" role="1B3o_S" />
        <node concept="17QB3L" id="5T3RZQ94s5s" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5T3RZQ94GCP" role="jymVt">
        <property role="TrG5h" value="myVisible" />
        <node concept="3Tm6S6" id="5T3RZQ94GCQ" role="1B3o_S" />
        <node concept="10P_77" id="5T3RZQ94HQe" role="1tU5fm" />
        <node concept="3clFbT" id="5T3RZQ94I78" role="33vP2m" />
      </node>
      <node concept="2tJIrI" id="5T3RZQ957SQ" role="jymVt" />
      <node concept="3clFbW" id="5T3RZQ9596I" role="jymVt">
        <node concept="3cqZAl" id="5T3RZQ9596J" role="3clF45" />
        <node concept="3Tm1VV" id="5T3RZQ9596K" role="1B3o_S" />
        <node concept="3clFbS" id="5T3RZQ9596M" role="3clF47">
          <node concept="3clFbF" id="5T3RZQ959MS" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ95a9K" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ959MR" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93Pzn" resolve="timer" />
              </node>
              <node concept="liA8E" id="5T3RZQ95aoX" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5T3RZQ93Fgo" role="jymVt">
        <property role="TrG5h" value="mouseMove" />
        <property role="od$2w" value="true" />
        <node concept="37vLTG" id="5T3RZQ93IfI" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="5T3RZQ93Jc$" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5T3RZQ93Jix" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="5T3RZQ93Ke5" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="5T3RZQ93Fgq" role="3clF45" />
        <node concept="3Tm1VV" id="5T3RZQ93Fgr" role="1B3o_S" />
        <node concept="3clFbS" id="5T3RZQ93Fgs" role="3clF47">
          <node concept="3clFbJ" id="5T3RZQ95YIH" role="3cqZAp">
            <node concept="3clFbS" id="5T3RZQ95YIJ" role="3clFbx">
              <node concept="3clFbF" id="5T3RZQ960oW" role="3cqZAp">
                <node concept="1rXfSq" id="5T3RZQ960oU" role="3clFbG">
                  <ref role="37wK5l" node="5T3RZQ94O7N" resolve="hideTooltip" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5T3RZQ95Zgc" role="3clFbw">
              <ref role="3cqZAo" node="5T3RZQ94GCP" resolve="myVisible" />
            </node>
          </node>
          <node concept="3cpWs8" id="5T3RZQ93FVA" role="3cqZAp">
            <node concept="3cpWsn" id="5T3RZQ93FVB" role="3cpWs9">
              <property role="TrG5h" value="toolTipText" />
              <node concept="17QB3L" id="5T3RZQ93FVC" role="1tU5fm" />
              <node concept="2OqwBi" id="5T3RZQ93FVD" role="33vP2m">
                <node concept="37vLTw" id="5T3RZQ93FVE" role="2Oq$k0">
                  <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                </node>
                <node concept="liA8E" id="5T3RZQ93FVF" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getToolTipText(java.awt.event.MouseEvent)" resolve="getToolTipText" />
                  <node concept="2ShNRf" id="5T3RZQ93FVG" role="37wK5m">
                    <node concept="1pGfFk" id="5T3RZQ93FVH" role="2ShVmc">
                      <ref role="37wK5l" to="hyam:~MouseEvent.&lt;init&gt;(java.awt.Component,int,long,int,int,int,int,boolean)" resolve="MouseEvent" />
                      <node concept="37vLTw" id="5T3RZQ93FVI" role="37wK5m">
                        <ref role="3cqZAo" node="1qbCJZsJ67a" resolve="serverEditorComponent" />
                      </node>
                      <node concept="10M0yZ" id="5T3RZQ93FVJ" role="37wK5m">
                        <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_MOVED" resolve="MOUSE_MOVED" />
                        <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                      <node concept="2YIFZM" id="5T3RZQ93FVK" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                      <node concept="3cmrfG" id="5T3RZQ93FVL" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="5T3RZQ93FVM" role="37wK5m">
                        <ref role="3cqZAo" node="5T3RZQ93IfI" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="5T3RZQ93FVN" role="37wK5m">
                        <ref role="3cqZAo" node="5T3RZQ93Jix" resolve="y" />
                      </node>
                      <node concept="3cmrfG" id="5T3RZQ93FVO" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3clFbT" id="5T3RZQ93FVP" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94mUf" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94nLk" role="3clFbG">
              <node concept="3K4zz7" id="5T3RZQ95Uqh" role="37vLTx">
                <node concept="10Nm6u" id="5T3RZQ95Vk_" role="3K4E3e" />
                <node concept="37vLTw" id="5T3RZQ95VQ_" role="3K4GZi">
                  <ref role="3cqZAo" node="5T3RZQ93FVB" resolve="toolTipText" />
                </node>
                <node concept="2OqwBi" id="5T3RZQ95TPm" role="3K4Cdx">
                  <node concept="37vLTw" id="5T3RZQ94qZx" role="2Oq$k0">
                    <ref role="3cqZAo" node="5T3RZQ93FVB" resolve="toolTipText" />
                  </node>
                  <node concept="17RlXB" id="5T3RZQ95U28" role="2OqNvi" />
                </node>
              </node>
              <node concept="37vLTw" id="5T3RZQ94mUd" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94gCB" resolve="myText" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94tU4" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94uLV" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ94v0p" role="37vLTx">
                <ref role="3cqZAo" node="5T3RZQ93IfI" resolve="x" />
              </node>
              <node concept="37vLTw" id="5T3RZQ94tU2" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94eo_" resolve="myX" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94w9A" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94xlE" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ94x$8" role="37vLTx">
                <ref role="3cqZAo" node="5T3RZQ93Jix" resolve="y" />
              </node>
              <node concept="37vLTw" id="5T3RZQ94w9$" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94f35" resolve="myY" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ9413j" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ942nE" role="3clFbG">
              <node concept="3cpWs3" id="5T3RZQ94zgB" role="37vLTx">
                <node concept="1adDum" id="5T3RZQ94Fck" role="3uHU7w">
                  <property role="1adDun" value="1000L" />
                </node>
                <node concept="2YIFZM" id="5T3RZQ94ytJ" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
              </node>
              <node concept="37vLTw" id="5T3RZQ9413h" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ93Z3x" resolve="myShowTime" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5T3RZQ946C5" role="jymVt">
        <property role="TrG5h" value="showTooltip" />
        <property role="od$2w" value="true" />
        <node concept="3cqZAl" id="5T3RZQ946C7" role="3clF45" />
        <node concept="3Tm6S6" id="5T3RZQ946C8" role="1B3o_S" />
        <node concept="3clFbS" id="5T3RZQ946C9" role="3clF47">
          <node concept="3cpWs8" id="5T3RZQ93FVZ" role="3cqZAp">
            <node concept="3cpWsn" id="5T3RZQ93FW0" role="3cpWs9">
              <property role="TrG5h" value="ttMessage" />
              <node concept="3uibUv" id="5T3RZQ93FW1" role="1tU5fm">
                <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
              </node>
              <node concept="2ShNRf" id="5T3RZQ93FW2" role="33vP2m">
                <node concept="1pGfFk" id="5T3RZQ93FW3" role="2ShVmc">
                  <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ93FW4" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ93FW5" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ93FW6" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93FW0" resolve="ttMessage" />
              </node>
              <node concept="liA8E" id="5T3RZQ93FW7" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="5T3RZQ93FW8" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                </node>
                <node concept="Xl_RD" id="5T3RZQ93FW9" role="37wK5m">
                  <property role="Xl_RC" value="tooltip.show" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ93FWa" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ93FWb" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ93FWc" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93FW0" resolve="ttMessage" />
              </node>
              <node concept="liA8E" id="5T3RZQ93FWd" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,double)" resolve="put" />
                <node concept="Xl_RD" id="5T3RZQ93FWe" role="37wK5m">
                  <property role="Xl_RC" value="x" />
                </node>
                <node concept="37vLTw" id="5T3RZQ94iew" role="37wK5m">
                  <ref role="3cqZAo" node="5T3RZQ94eo_" resolve="myX" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5T3RZQ93M6C" role="3cqZAp">
            <node concept="3cpWsn" id="5T3RZQ93M6D" role="3cpWs9">
              <property role="TrG5h" value="mouseCursorHeight" />
              <node concept="10Oyi0" id="5T3RZQ93LEo" role="1tU5fm" />
              <node concept="3cmrfG" id="5T3RZQ93M6E" role="33vP2m">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ93FWg" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ93FWh" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ93FWi" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93FW0" resolve="ttMessage" />
              </node>
              <node concept="liA8E" id="5T3RZQ93FWj" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,int)" resolve="put" />
                <node concept="Xl_RD" id="5T3RZQ93FWk" role="37wK5m">
                  <property role="Xl_RC" value="y" />
                </node>
                <node concept="3cpWs3" id="5T3RZQ93FWl" role="37wK5m">
                  <node concept="37vLTw" id="5T3RZQ93M6F" role="3uHU7w">
                    <ref role="3cqZAo" node="5T3RZQ93M6D" resolve="mouseCursorHeight" />
                  </node>
                  <node concept="37vLTw" id="5T3RZQ94iMT" role="3uHU7B">
                    <ref role="3cqZAo" node="5T3RZQ94f35" resolve="myY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ93FWo" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ93FWp" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ93FWq" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93FW0" resolve="ttMessage" />
              </node>
              <node concept="liA8E" id="5T3RZQ93FWr" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="5T3RZQ93FWs" role="37wK5m">
                  <property role="Xl_RC" value="text" />
                </node>
                <node concept="37vLTw" id="5T3RZQ94jzO" role="37wK5m">
                  <ref role="3cqZAo" node="5T3RZQ94gCB" resolve="myText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ93FWu" role="3cqZAp">
            <node concept="1rXfSq" id="5T3RZQ93FWv" role="3clFbG">
              <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
              <node concept="37vLTw" id="5T3RZQ93FWw" role="37wK5m">
                <ref role="3cqZAo" node="5T3RZQ93FW0" resolve="ttMessage" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94JrF" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94KC_" role="3clFbG">
              <node concept="3clFbT" id="5T3RZQ94Lbu" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="5T3RZQ94JrD" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94GCP" resolve="myVisible" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94_xC" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94CqI" role="3clFbG">
              <node concept="3cpWs3" id="5T3RZQ94E0u" role="37vLTx">
                <node concept="1adDum" id="5T3RZQ94EIR" role="3uHU7w">
                  <property role="1adDun" value="30000L" />
                </node>
                <node concept="2YIFZM" id="5T3RZQ94DoT" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
              </node>
              <node concept="37vLTw" id="5T3RZQ94_xA" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ93WIt" resolve="myHideTime" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5T3RZQ94O7N" role="jymVt">
        <property role="TrG5h" value="hideTooltip" />
        <property role="od$2w" value="true" />
        <node concept="3cqZAl" id="5T3RZQ94O7O" role="3clF45" />
        <node concept="3Tm6S6" id="5T3RZQ94O7P" role="1B3o_S" />
        <node concept="3clFbS" id="5T3RZQ94O7Q" role="3clF47">
          <node concept="3cpWs8" id="5T3RZQ94O7R" role="3cqZAp">
            <node concept="3cpWsn" id="5T3RZQ94O7S" role="3cpWs9">
              <property role="TrG5h" value="ttMessage" />
              <node concept="3uibUv" id="5T3RZQ94O7T" role="1tU5fm">
                <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
              </node>
              <node concept="2ShNRf" id="5T3RZQ94O7U" role="33vP2m">
                <node concept="1pGfFk" id="5T3RZQ94O7V" role="2ShVmc">
                  <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94O7W" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ94O7X" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ94O7Y" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ94O7S" resolve="ttMessage" />
              </node>
              <node concept="liA8E" id="5T3RZQ94O7Z" role="2OqNvi">
                <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object)" resolve="put" />
                <node concept="Xl_RD" id="5T3RZQ94O80" role="37wK5m">
                  <property role="Xl_RC" value="type" />
                </node>
                <node concept="Xl_RD" id="5T3RZQ94O81" role="37wK5m">
                  <property role="Xl_RC" value="tooltip.hide" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94O8q" role="3cqZAp">
            <node concept="1rXfSq" id="5T3RZQ94O8r" role="3clFbG">
              <ref role="37wK5l" node="1MWbHmSlE5Z" resolve="sendMessage" />
              <node concept="37vLTw" id="5T3RZQ94O8s" role="37wK5m">
                <ref role="3cqZAo" node="5T3RZQ94O7S" resolve="ttMessage" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94O8t" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94O8u" role="3clFbG">
              <node concept="3clFbT" id="5T3RZQ94O8v" role="37vLTx" />
              <node concept="37vLTw" id="5T3RZQ94O8w" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94GCP" resolve="myVisible" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5T3RZQ94Zhy" role="3cqZAp">
            <node concept="37vLTI" id="5T3RZQ94ZY4" role="3clFbG">
              <node concept="10Nm6u" id="5T3RZQ950ah" role="37vLTx" />
              <node concept="37vLTw" id="5T3RZQ94Zhw" role="37vLTJ">
                <ref role="3cqZAo" node="5T3RZQ94gCB" resolve="myText" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5T3RZQ93TfE" role="jymVt">
        <property role="TrG5h" value="dispose" />
        <node concept="3cqZAl" id="5T3RZQ93TfG" role="3clF45" />
        <node concept="3Tm6S6" id="5T3RZQ93TfH" role="1B3o_S" />
        <node concept="3clFbS" id="5T3RZQ93TfI" role="3clF47">
          <node concept="3clFbF" id="5T3RZQ93Va1" role="3cqZAp">
            <node concept="2OqwBi" id="5T3RZQ93VtI" role="3clFbG">
              <node concept="37vLTw" id="5T3RZQ93Va0" role="2Oq$k0">
                <ref role="3cqZAo" node="5T3RZQ93Pzn" resolve="timer" />
              </node>
              <node concept="liA8E" id="5T3RZQ93VH0" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5T3RZQ93Fuz" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="7tTb3N6JZZ2">
    <property role="TrG5h" value="EditorChangeDetector" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7tTb3N6K000" role="jymVt" />
    <node concept="312cEg" id="7tTb3N6Knnf" role="jymVt">
      <property role="TrG5h" value="lastImage" />
      <node concept="3Tm6S6" id="7tTb3N6Knng" role="1B3o_S" />
      <node concept="3uibUv" id="7tTb3N6Knnh" role="1tU5fm">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
    </node>
    <node concept="312cEg" id="Cck3bm$Yo6" role="jymVt">
      <property role="TrG5h" value="visibleYRange" />
      <node concept="3Tm6S6" id="Cck3bm$Yo7" role="1B3o_S" />
      <node concept="3uibUv" id="Cck3bm_4qF" role="1tU5fm">
        <ref role="3uigEE" node="7tTb3N6N40R" resolve="EditorChangeDetector.Range" />
      </node>
      <node concept="10Nm6u" id="Cck3bm_7an" role="33vP2m" />
    </node>
    <node concept="312cEg" id="7tTb3N6Ls8q" role="jymVt">
      <property role="TrG5h" value="updateRequested" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7tTb3N6Ls8r" role="1B3o_S" />
      <node concept="3uibUv" id="7tTb3N6LWZo" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicBoolean" resolve="AtomicBoolean" />
      </node>
      <node concept="2ShNRf" id="7tTb3N6LXb0" role="33vP2m">
        <node concept="1pGfFk" id="7tTb3N6LX5K" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicBoolean.&lt;init&gt;(boolean)" resolve="AtomicBoolean" />
          <node concept="3clFbT" id="7tTb3N6LXhx" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="Cck3bmzvqu" role="jymVt">
      <property role="TrG5h" value="pendingUpdates" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="Cck3bmzvqv" role="1B3o_S" />
      <node concept="3uibUv" id="Cck3bmzI3i" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="2ShNRf" id="Cck3bmzAfe" role="33vP2m">
        <node concept="1pGfFk" id="Cck3bmz_Zx" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
          <node concept="3cmrfG" id="Cck3bm$4jc" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6R0cv" role="jymVt" />
    <node concept="3clFbW" id="7tTb3N6R1Wx" role="jymVt">
      <node concept="3cqZAl" id="7tTb3N6R1Wy" role="3clF45" />
      <node concept="3Tm1VV" id="7tTb3N6R1Wz" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6R1W_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7tTb3N6Sayb" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6RSno" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7tTb3N6Sly1" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3Tmbuc" id="7tTb3N6S6rd" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6RSns" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7tTb3N6NtsH" role="jymVt">
      <property role="TrG5h" value="handleFullChange" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7tTb3N6NtsI" role="3clF46">
        <property role="TrG5h" value="newImage" />
        <node concept="3uibUv" id="7tTb3N6NtsJ" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="3cqZAl" id="7tTb3N6NtsM" role="3clF45" />
      <node concept="3Tmbuc" id="7tTb3N6O2zf" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6NtsO" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7tTb3N6Nx9U" role="jymVt">
      <property role="TrG5h" value="handlePartialChange" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7tTb3N6Nx9V" role="3clF46">
        <property role="TrG5h" value="newImage" />
        <node concept="3uibUv" id="7tTb3N6Nx9W" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="37vLTG" id="7tTb3N6Nx9X" role="3clF46">
        <property role="TrG5h" value="offsetY" />
        <node concept="10Oyi0" id="7tTb3N6N_gH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7tTb3N6Nx9Z" role="3clF45" />
      <node concept="3Tmbuc" id="7tTb3N6O2TU" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6Nxa1" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7tTb3N6QQqT" role="jymVt" />
    <node concept="3clFb_" id="Cck3bm_drM" role="jymVt">
      <property role="TrG5h" value="setVisibleYRange" />
      <node concept="37vLTG" id="Cck3bm_q8i" role="3clF46">
        <property role="TrG5h" value="minY" />
        <node concept="10Oyi0" id="Cck3bm_scQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Cck3bm_sos" role="3clF46">
        <property role="TrG5h" value="maxY" />
        <node concept="10Oyi0" id="Cck3bm_t77" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="Cck3bm_drO" role="3clF45" />
      <node concept="3Tm1VV" id="Cck3bm_drP" role="1B3o_S" />
      <node concept="3clFbS" id="Cck3bm_drQ" role="3clF47">
        <node concept="3clFbF" id="Cck3bm_uXH" role="3cqZAp">
          <node concept="37vLTI" id="Cck3bm_vgG" role="3clFbG">
            <node concept="2ShNRf" id="Cck3bm_vzz" role="37vLTx">
              <node concept="1pGfFk" id="Cck3bm_wXi" role="2ShVmc">
                <ref role="37wK5l" node="7tTb3N6N7M6" resolve="EditorChangeDetector.Range" />
                <node concept="37vLTw" id="Cck3bm_x5j" role="37wK5m">
                  <ref role="3cqZAo" node="Cck3bm_q8i" resolve="minY" />
                </node>
                <node concept="37vLTw" id="Cck3bm_xgV" role="37wK5m">
                  <ref role="3cqZAo" node="Cck3bm_sos" resolve="maxY" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Cck3bm_uXG" role="37vLTJ">
              <ref role="3cqZAo" node="Cck3bm$Yo6" resolve="visibleYRange" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Cck3bmFaPp" role="jymVt" />
    <node concept="3clFb_" id="Cck3bmFd2D" role="jymVt">
      <property role="TrG5h" value="getVisibleYRange" />
      <node concept="3uibUv" id="Cck3bmFsWe" role="3clF45">
        <ref role="3uigEE" node="7tTb3N6N40R" resolve="EditorChangeDetector.Range" />
      </node>
      <node concept="3Tm1VV" id="Cck3bmFd2G" role="1B3o_S" />
      <node concept="3clFbS" id="Cck3bmFd2H" role="3clF47">
        <node concept="3clFbF" id="Cck3bmFvfD" role="3cqZAp">
          <node concept="37vLTw" id="Cck3bmFvfC" role="3clFbG">
            <ref role="3cqZAo" node="Cck3bm$Yo6" resolve="visibleYRange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Cck3bm_7pc" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6P_2E" role="jymVt">
      <property role="TrG5h" value="getLastImage" />
      <node concept="3uibUv" id="7tTb3N6PCnT" role="3clF45">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
      <node concept="3Tm1VV" id="7tTb3N6P_2H" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6P_2I" role="3clF47">
        <node concept="3clFbF" id="7tTb3N6PC9Y" role="3cqZAp">
          <node concept="37vLTw" id="7tTb3N6PC9W" role="3clFbG">
            <ref role="3cqZAo" node="7tTb3N6Knnf" resolve="lastImage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6PzlK" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6NlxP" role="jymVt">
      <property role="TrG5h" value="handleChange" />
      <node concept="37vLTG" id="7tTb3N6Nrdm" role="3clF46">
        <property role="TrG5h" value="newImage" />
        <node concept="3uibUv" id="7tTb3N6NrFt" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="37vLTG" id="7tTb3N6NrQ2" role="3clF46">
        <property role="TrG5h" value="changedRangeY" />
        <node concept="3uibUv" id="7tTb3N6NtmK" role="1tU5fm">
          <ref role="3uigEE" node="7tTb3N6N40R" resolve="EditorChangeDetector.Range" />
        </node>
      </node>
      <node concept="3cqZAl" id="7tTb3N6NlxR" role="3clF45" />
      <node concept="3Tmbuc" id="7tTb3N6O116" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6NlxT" role="3clF47">
        <node concept="3clFbJ" id="7tTb3N6NAW_" role="3cqZAp">
          <node concept="3clFbC" id="7tTb3N6NBlB" role="3clFbw">
            <node concept="10Nm6u" id="7tTb3N6NBuA" role="3uHU7w" />
            <node concept="37vLTw" id="7tTb3N6NB7n" role="3uHU7B">
              <ref role="3cqZAo" node="7tTb3N6NrQ2" resolve="changedRangeY" />
            </node>
          </node>
          <node concept="3clFbS" id="7tTb3N6NAWB" role="3clFbx">
            <node concept="3clFbF" id="7tTb3N6NBJT" role="3cqZAp">
              <node concept="1rXfSq" id="7tTb3N6NBJS" role="3clFbG">
                <ref role="37wK5l" node="7tTb3N6NtsH" resolve="handleFullChange" />
                <node concept="37vLTw" id="7tTb3N6NBRG" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6Nrdm" resolve="newImage" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7tTb3N6NC1k" role="9aQIa">
            <node concept="3clFbS" id="7tTb3N6NC1l" role="9aQI4">
              <node concept="3cpWs8" id="7tTb3N6NJQh" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6NJQi" role="3cpWs9">
                  <property role="TrG5h" value="partialImage" />
                  <node concept="3uibUv" id="7tTb3N6NJPv" role="1tU5fm">
                    <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                  </node>
                  <node concept="2OqwBi" id="7tTb3N6NJQj" role="33vP2m">
                    <node concept="37vLTw" id="7tTb3N6NJQk" role="2Oq$k0">
                      <ref role="3cqZAo" node="7tTb3N6Nrdm" resolve="newImage" />
                    </node>
                    <node concept="liA8E" id="7tTb3N6NJQl" role="2OqNvi">
                      <ref role="37wK5l" to="jan3:~BufferedImage.getSubimage(int,int,int,int)" resolve="getSubimage" />
                      <node concept="3cmrfG" id="7tTb3N6NJQm" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2OqwBi" id="7tTb3N6NJQn" role="37wK5m">
                        <node concept="37vLTw" id="7tTb3N6NJQo" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tTb3N6NrQ2" resolve="changedRangeY" />
                        </node>
                        <node concept="liA8E" id="7tTb3N6NJQp" role="2OqNvi">
                          <ref role="37wK5l" node="7tTb3N6N857" resolve="getStart" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7tTb3N6NJQq" role="37wK5m">
                        <node concept="37vLTw" id="7tTb3N6NJQr" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tTb3N6Nrdm" resolve="newImage" />
                        </node>
                        <node concept="liA8E" id="7tTb3N6NJQs" role="2OqNvi">
                          <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7tTb3N6NJQt" role="37wK5m">
                        <node concept="37vLTw" id="7tTb3N6NJQu" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tTb3N6NrQ2" resolve="changedRangeY" />
                        </node>
                        <node concept="liA8E" id="7tTb3N6NJQv" role="2OqNvi">
                          <ref role="37wK5l" node="7tTb3N6NGjP" resolve="getLength" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tTb3N6NCiQ" role="3cqZAp">
                <node concept="1rXfSq" id="7tTb3N6NCiP" role="3clFbG">
                  <ref role="37wK5l" node="7tTb3N6Nx9U" resolve="handlePartialChange" />
                  <node concept="37vLTw" id="7tTb3N6NKy4" role="37wK5m">
                    <ref role="3cqZAo" node="7tTb3N6NJQi" resolve="partialImage" />
                  </node>
                  <node concept="2OqwBi" id="7tTb3N6NKYf" role="37wK5m">
                    <node concept="37vLTw" id="7tTb3N6NKKS" role="2Oq$k0">
                      <ref role="3cqZAo" node="7tTb3N6NrQ2" resolve="changedRangeY" />
                    </node>
                    <node concept="liA8E" id="7tTb3N6NL8I" role="2OqNvi">
                      <ref role="37wK5l" node="7tTb3N6N857" resolve="getStart" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6LZ0u" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6M06W" role="jymVt">
      <property role="TrG5h" value="scheduleUpdate" />
      <node concept="3cqZAl" id="7tTb3N6M06Y" role="3clF45" />
      <node concept="3Tm1VV" id="7tTb3N6M06Z" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6M070" role="3clF47">
        <node concept="3clFbF" id="Cck3bmxO32" role="3cqZAp">
          <node concept="2OqwBi" id="Cck3bmxO34" role="3clFbG">
            <node concept="37vLTw" id="Cck3bmxO35" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6Ls8q" resolve="updateRequested" />
            </node>
            <node concept="liA8E" id="Cck3bmxO36" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicBoolean.set(boolean)" resolve="set" />
              <node concept="3clFbT" id="Cck3bmxO38" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Cck3bm$4wS" role="3cqZAp" />
        <node concept="3clFbF" id="7tTb3N6O7HS" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6O7HT" role="3clFbG">
            <node concept="10M0yZ" id="7tTb3N6O7HU" role="2Oq$k0">
              <ref role="3cqZAo" to="csg2:Onv88ZOFFp" resolve="FIXED" />
              <ref role="1PxDUh" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
            </node>
            <node concept="liA8E" id="7tTb3N6O7HV" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="7tTb3N6O7HW" role="37wK5m">
                <node concept="3clFbS" id="7tTb3N6O7HX" role="1bW5cS">
                  <node concept="3clFbJ" id="Cck3bm$z0R" role="3cqZAp">
                    <node concept="3clFbS" id="Cck3bm$z0T" role="3clFbx">
                      <node concept="3J1_TO" id="Cck3bm$_BM" role="3cqZAp">
                        <node concept="3clFbS" id="Cck3bm$_BO" role="1zxBo7">
                          <node concept="3clFbJ" id="Cck3bm$E5t" role="3cqZAp">
                            <node concept="3clFbS" id="Cck3bm$E5v" role="3clFbx">
                              <node concept="3clFbF" id="Cck3bm$$M5" role="3cqZAp">
                                <node concept="1rXfSq" id="Cck3bm$$M3" role="3clFbG">
                                  <ref role="37wK5l" node="Cck3bm$gmV" resolve="update" />
                                </node>
                              </node>
                            </node>
                            <node concept="2dkUwp" id="Cck3bm$HgY" role="3clFbw">
                              <node concept="2OqwBi" id="Cck3bm$Eb6" role="3uHU7B">
                                <node concept="37vLTw" id="Cck3bm$Eb7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Cck3bmzvqu" resolve="pendingUpdates" />
                                </node>
                                <node concept="liA8E" id="Cck3bm$Eb8" role="2OqNvi">
                                  <ref role="37wK5l" to="i5cy:~AtomicInteger.incrementAndGet()" resolve="incrementAndGet" />
                                </node>
                              </node>
                              <node concept="3cmrfG" id="Cck3bm$FhL" role="3uHU7w">
                                <property role="3cmrfH" value="2" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1wplmZ" id="57Mmk71ma0C" role="1zxBo6">
                          <node concept="3clFbS" id="Cck3bm$_BP" role="1wplMD">
                            <node concept="3clFbF" id="Cck3bm$BxI" role="3cqZAp">
                              <node concept="2OqwBi" id="Cck3bm$BXh" role="3clFbG">
                                <node concept="37vLTw" id="Cck3bm$BxH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Cck3bmzvqu" resolve="pendingUpdates" />
                                </node>
                                <node concept="liA8E" id="Cck3bm$CA3" role="2OqNvi">
                                  <ref role="37wK5l" to="i5cy:~AtomicInteger.decrementAndGet()" resolve="decrementAndGet" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="Cck3bm$zGG" role="3clFbw">
                      <node concept="37vLTw" id="Cck3bm$zhs" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tTb3N6Ls8q" resolve="updateRequested" />
                      </node>
                      <node concept="liA8E" id="Cck3bm$$qy" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicBoolean.get()" resolve="get" />
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
    <node concept="2tJIrI" id="7tTb3N6LslX" role="jymVt" />
    <node concept="3clFb_" id="Cck3bm$gmV" role="jymVt">
      <property role="TrG5h" value="update" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="Cck3bm$gmX" role="3clF45" />
      <node concept="3Tmbuc" id="Cck3bm$sH_" role="1B3o_S" />
      <node concept="3clFbS" id="Cck3bm$gmZ" role="3clF47">
        <node concept="3clFbJ" id="Cck3bm$xKS" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bm$xKT" role="3clFbx">
            <node concept="3clFbF" id="Cck3bm$xL0" role="3cqZAp">
              <node concept="1rXfSq" id="Cck3bm$xL1" role="3clFbG">
                <ref role="37wK5l" node="7tTb3N6K6Bm" resolve="doUpdate" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Cck3bm$xL7" role="3clFbw">
            <node concept="37vLTw" id="Cck3bm$xL8" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6Ls8q" resolve="updateRequested" />
            </node>
            <node concept="liA8E" id="Cck3bm$xL9" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicBoolean.compareAndSet(boolean,boolean)" resolve="compareAndSet" />
              <node concept="3clFbT" id="Cck3bm$xLa" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="Cck3bm$xLb" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Cck3bm$azO" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6K6Bm" role="jymVt">
      <property role="TrG5h" value="doUpdate" />
      <node concept="3cqZAl" id="7tTb3N6K6Bo" role="3clF45" />
      <node concept="3Tmbuc" id="7tTb3N6M4bO" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6K6Bq" role="3clF47">
        <node concept="3clFbJ" id="7tTb3N6KQIk" role="3cqZAp">
          <node concept="3clFbS" id="7tTb3N6KQIm" role="3clFbx">
            <node concept="YS8fn" id="7tTb3N6KS3k" role="3cqZAp">
              <node concept="2ShNRf" id="7tTb3N6KS8D" role="YScLw">
                <node concept="1pGfFk" id="7tTb3N6Lfgg" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="Xl_RD" id="7tTb3N6Lfn9" role="37wK5m">
                    <property role="Xl_RC" value="Run from a separate thread" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="7tTb3N6KRrt" role="3clFbw">
            <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3clFbH" id="Cck3bmzAL4" role="3cqZAp" />
        <node concept="3cpWs8" id="7tTb3N6Kuxr" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6Kuxs" role="3cpWs9">
            <property role="TrG5h" value="newImage" />
            <node concept="3uibUv" id="7tTb3N6KuvQ" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="10Nm6u" id="Cck3bmP9al" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6MgU_" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6MgUA" role="3cpWs9">
            <property role="TrG5h" value="oldImage" />
            <node concept="3uibUv" id="7tTb3N6MgUB" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="37vLTw" id="7tTb3N6MhA9" role="33vP2m">
              <ref role="3cqZAo" node="7tTb3N6Knnf" resolve="lastImage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Cck3bmBFwz" role="3cqZAp">
          <node concept="3cpWsn" id="Cck3bmBFw$" role="3cpWs9">
            <property role="TrG5h" value="rangeY" />
            <node concept="3uibUv" id="Cck3bmBFw_" role="1tU5fm">
              <ref role="3uigEE" node="7tTb3N6N40R" resolve="EditorChangeDetector.Range" />
            </node>
            <node concept="37vLTw" id="Cck3bmBHtn" role="33vP2m">
              <ref role="3cqZAo" node="Cck3bm$Yo6" resolve="visibleYRange" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6LgQU" role="3cqZAp">
          <node concept="2YIFZM" id="7tTb3N6LhrH" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="7tTb3N6LhCP" role="37wK5m">
              <node concept="3clFbS" id="7tTb3N6LhCQ" role="1bW5cS">
                <node concept="3clFbF" id="7tTb3N6Lnmr" role="3cqZAp">
                  <node concept="37vLTI" id="7tTb3N6LnHi" role="3clFbG">
                    <node concept="37vLTw" id="7tTb3N6Lnmq" role="37vLTJ">
                      <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                    </node>
                    <node concept="1rXfSq" id="Cck3bmyOHH" role="37vLTx">
                      <ref role="37wK5l" node="7tTb3N6Kpcl" resolve="captureImage" />
                      <node concept="37vLTw" id="Cck3bmBHIr" role="37wK5m">
                        <ref role="3cqZAo" node="Cck3bmBFw$" resolve="rangeY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Cck3bmP5kV" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmP5kX" role="3clFbx">
            <node concept="3cpWs6" id="Cck3bmP9wl" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="Cck3bmP7ul" role="3clFbw">
            <node concept="10Nm6u" id="Cck3bmP7zF" role="3uHU7w" />
            <node concept="37vLTw" id="Cck3bmP5GE" role="3uHU7B">
              <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Cck3bmP9wz" role="3cqZAp" />
        <node concept="3clFbJ" id="7tTb3N6KuJ6" role="3cqZAp">
          <node concept="3clFbS" id="7tTb3N6KuJ8" role="3clFbx">
            <node concept="3clFbF" id="7tTb3N6MuNN" role="3cqZAp">
              <node concept="37vLTI" id="7tTb3N6MuNO" role="3clFbG">
                <node concept="37vLTw" id="7tTb3N6MuNP" role="37vLTx">
                  <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                </node>
                <node concept="37vLTw" id="7tTb3N6MuNQ" role="37vLTJ">
                  <ref role="3cqZAo" node="7tTb3N6Knnf" resolve="lastImage" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7tTb3N6OzMK" role="3cqZAp">
              <node concept="1rXfSq" id="7tTb3N6OzMI" role="3clFbG">
                <ref role="37wK5l" node="7tTb3N6NlxP" resolve="handleChange" />
                <node concept="37vLTw" id="7tTb3N6OzY5" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                </node>
                <node concept="10Nm6u" id="7tTb3N6OC7F" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7tTb3N6KBHN" role="3clFbw">
            <node concept="3y3z36" id="7tTb3N6KEJP" role="3uHU7w">
              <node concept="2OqwBi" id="7tTb3N6KGbi" role="3uHU7w">
                <node concept="37vLTw" id="7tTb3N6MlgR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                </node>
                <node concept="liA8E" id="7tTb3N6KG_i" role="2OqNvi">
                  <ref role="37wK5l" to="jan3:~BufferedImage.getHeight()" resolve="getHeight" />
                </node>
              </node>
              <node concept="2OqwBi" id="7tTb3N6KCNh" role="3uHU7B">
                <node concept="37vLTw" id="7tTb3N6KBV6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                </node>
                <node concept="liA8E" id="7tTb3N6KDQE" role="2OqNvi">
                  <ref role="37wK5l" to="jan3:~BufferedImage.getHeight()" resolve="getHeight" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="7tTb3N6Kz72" role="3uHU7B">
              <node concept="3clFbC" id="7tTb3N6K$aF" role="3uHU7B">
                <node concept="10Nm6u" id="7tTb3N6K$Qc" role="3uHU7w" />
                <node concept="37vLTw" id="7tTb3N6Mk7n" role="3uHU7B">
                  <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                </node>
              </node>
              <node concept="3y3z36" id="7tTb3N6KyAs" role="3uHU7w">
                <node concept="2OqwBi" id="7tTb3N6Kxs$" role="3uHU7B">
                  <node concept="37vLTw" id="7tTb3N6KuP0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6KxLc" role="2OqNvi">
                    <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7tTb3N6KAar" role="3uHU7w">
                  <node concept="37vLTw" id="7tTb3N6MkG3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6KAXH" role="2OqNvi">
                    <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7tTb3N6KPAC" role="9aQIa">
            <node concept="3clFbS" id="7tTb3N6KPAD" role="9aQI4">
              <node concept="3cpWs8" id="7tTb3N6Nj8O" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6Nj8P" role="3cpWs9">
                  <property role="TrG5h" value="height" />
                  <node concept="10Oyi0" id="7tTb3N6Nj1Y" role="1tU5fm" />
                  <node concept="2OqwBi" id="7tTb3N6Nj8Q" role="33vP2m">
                    <node concept="37vLTw" id="7tTb3N6Nj8R" role="2Oq$k0">
                      <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                    </node>
                    <node concept="liA8E" id="7tTb3N6Nj8S" role="2OqNvi">
                      <ref role="37wK5l" to="jan3:~BufferedImage.getHeight()" resolve="getHeight" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7tTb3N6MqMK" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6MqMN" role="3cpWs9">
                  <property role="TrG5h" value="oldPixelData" />
                  <node concept="10Q1$e" id="7tTb3N6Mr0T" role="1tU5fm">
                    <node concept="10Oyi0" id="7tTb3N6MqMI" role="10Q1$1" />
                  </node>
                  <node concept="2ShNRf" id="7tTb3N6MrcT" role="33vP2m">
                    <node concept="3$_iS1" id="7tTb3N6MsxW" role="2ShVmc">
                      <node concept="3$GHV9" id="7tTb3N6MsxY" role="3$GQph">
                        <node concept="17qRlL" id="7tTb3N6Mu4p" role="3$I4v7">
                          <node concept="2OqwBi" id="7tTb3N6Mt2x" role="3uHU7B">
                            <node concept="37vLTw" id="7tTb3N6MsBQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                            </node>
                            <node concept="liA8E" id="7tTb3N6MtnH" role="2OqNvi">
                              <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="7tTb3N6MugG" role="3uHU7w">
                            <property role="3cmrfH" value="4" />
                          </node>
                        </node>
                      </node>
                      <node concept="10Oyi0" id="7tTb3N6Msq6" role="3$_nBY" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7tTb3N6MuhY" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6MuhZ" role="3cpWs9">
                  <property role="TrG5h" value="newPixelData" />
                  <node concept="10Q1$e" id="7tTb3N6Mui0" role="1tU5fm">
                    <node concept="10Oyi0" id="7tTb3N6Mui1" role="10Q1$1" />
                  </node>
                  <node concept="2ShNRf" id="7tTb3N6Mui2" role="33vP2m">
                    <node concept="3$_iS1" id="7tTb3N6Mui3" role="2ShVmc">
                      <node concept="3$GHV9" id="7tTb3N6Mui4" role="3$GQph">
                        <node concept="17qRlL" id="7tTb3N6Mui5" role="3$I4v7">
                          <node concept="2OqwBi" id="7tTb3N6Mui6" role="3uHU7B">
                            <node concept="37vLTw" id="7tTb3N6Muux" role="2Oq$k0">
                              <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                            </node>
                            <node concept="liA8E" id="7tTb3N6Mui8" role="2OqNvi">
                              <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="7tTb3N6Mui9" role="3uHU7w">
                            <property role="3cmrfH" value="4" />
                          </node>
                        </node>
                      </node>
                      <node concept="10Oyi0" id="7tTb3N6Muia" role="3$_nBY" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7tTb3N6MuBn" role="3cqZAp" />
              <node concept="3cpWs8" id="7tTb3N6MFlk" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6MFln" role="3cpWs9">
                  <property role="TrG5h" value="minChangedY" />
                  <node concept="10Oyi0" id="7tTb3N6MFli" role="1tU5fm" />
                  <node concept="3cpWsd" id="7tTb3N6NgSr" role="33vP2m">
                    <node concept="3cmrfG" id="7tTb3N6NgXH" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="7tTb3N6MHYf" role="3uHU7B">
                      <node concept="37vLTw" id="7tTb3N6MHEJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                      </node>
                      <node concept="liA8E" id="7tTb3N6MIal" role="2OqNvi">
                        <ref role="37wK5l" to="jan3:~BufferedImage.getHeight()" resolve="getHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7tTb3N6MIJf" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6MIJi" role="3cpWs9">
                  <property role="TrG5h" value="maxChangedY" />
                  <node concept="10Oyi0" id="7tTb3N6MIJd" role="1tU5fm" />
                  <node concept="3cmrfG" id="7tTb3N6MJlc" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7tTb3N6MQYO" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6MQYR" role="3cpWs9">
                  <property role="TrG5h" value="anyChange" />
                  <node concept="10P_77" id="7tTb3N6MQYM" role="1tU5fm" />
                  <node concept="3clFbT" id="7tTb3N6MTUj" role="33vP2m" />
                </node>
              </node>
              <node concept="3cpWs8" id="7tTb3N6OLll" role="3cqZAp">
                <node concept="3cpWsn" id="7tTb3N6OLlo" role="3cpWs9">
                  <property role="TrG5h" value="allChanged" />
                  <node concept="10P_77" id="7tTb3N6OLlj" role="1tU5fm" />
                  <node concept="3clFbT" id="7tTb3N6OMhN" role="33vP2m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="7tTb3N6Mxi1" role="3cqZAp">
                <node concept="3clFbS" id="7tTb3N6Mxi3" role="2LFqv$">
                  <node concept="3clFbF" id="7tTb3N6M$lg" role="3cqZAp">
                    <node concept="2OqwBi" id="7tTb3N6M$X2" role="3clFbG">
                      <node concept="2OqwBi" id="7tTb3N6M$v4" role="2Oq$k0">
                        <node concept="37vLTw" id="7tTb3N6M$le" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                        </node>
                        <node concept="liA8E" id="7tTb3N6M$Ow" role="2OqNvi">
                          <ref role="37wK5l" to="jan3:~BufferedImage.getRaster()" resolve="getRaster" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7tTb3N6M_8W" role="2OqNvi">
                        <ref role="37wK5l" to="jan3:~Raster.getPixels(int,int,int,int,int[])" resolve="getPixels" />
                        <node concept="3cmrfG" id="7tTb3N6MA5L" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7tTb3N6MAf8" role="37wK5m">
                          <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                        </node>
                        <node concept="2OqwBi" id="7tTb3N6MARB" role="37wK5m">
                          <node concept="37vLTw" id="7tTb3N6MACx" role="2Oq$k0">
                            <ref role="3cqZAo" node="7tTb3N6MgUA" resolve="oldImage" />
                          </node>
                          <node concept="liA8E" id="7tTb3N6MB1l" role="2OqNvi">
                            <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="7tTb3N6MAv3" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7tTb3N6MBoZ" role="37wK5m">
                          <ref role="3cqZAo" node="7tTb3N6MqMN" resolve="oldPixelData" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7tTb3N6MBwC" role="3cqZAp">
                    <node concept="2OqwBi" id="7tTb3N6MBwD" role="3clFbG">
                      <node concept="2OqwBi" id="7tTb3N6MBwE" role="2Oq$k0">
                        <node concept="37vLTw" id="7tTb3N6MBJ$" role="2Oq$k0">
                          <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                        </node>
                        <node concept="liA8E" id="7tTb3N6MBwG" role="2OqNvi">
                          <ref role="37wK5l" to="jan3:~BufferedImage.getRaster()" resolve="getRaster" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7tTb3N6MBwH" role="2OqNvi">
                        <ref role="37wK5l" to="jan3:~Raster.getPixels(int,int,int,int,int[])" resolve="getPixels" />
                        <node concept="3cmrfG" id="7tTb3N6MBwI" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7tTb3N6MBwJ" role="37wK5m">
                          <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                        </node>
                        <node concept="2OqwBi" id="7tTb3N6MBwK" role="37wK5m">
                          <node concept="37vLTw" id="7tTb3N6MBZN" role="2Oq$k0">
                            <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                          </node>
                          <node concept="liA8E" id="7tTb3N6MBwM" role="2OqNvi">
                            <ref role="37wK5l" to="jan3:~BufferedImage.getWidth()" resolve="getWidth" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="7tTb3N6MBwN" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7tTb3N6Wr_j" role="37wK5m">
                          <ref role="3cqZAo" node="7tTb3N6MuhZ" resolve="newPixelData" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7tTb3N6MG5W" role="3cqZAp">
                    <node concept="3cpWsn" id="7tTb3N6MG5Z" role="3cpWs9">
                      <property role="TrG5h" value="lineChanged" />
                      <node concept="10P_77" id="7tTb3N6MG5U" role="1tU5fm" />
                      <node concept="3fqX7Q" id="7tTb3N6MGUw" role="33vP2m">
                        <node concept="2YIFZM" id="7tTb3N6MGUy" role="3fr31v">
                          <ref role="37wK5l" to="33ny:~Arrays.equals(int[],int[])" resolve="equals" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="37vLTw" id="7tTb3N6MGUz" role="37wK5m">
                            <ref role="3cqZAo" node="7tTb3N6MqMN" resolve="oldPixelData" />
                          </node>
                          <node concept="37vLTw" id="7tTb3N6MGU$" role="37wK5m">
                            <ref role="3cqZAo" node="7tTb3N6MuhZ" resolve="newPixelData" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7tTb3N6MJu1" role="3cqZAp">
                    <node concept="3clFbS" id="7tTb3N6MJu3" role="3clFbx">
                      <node concept="3clFbF" id="7tTb3N6MSXR" role="3cqZAp">
                        <node concept="37vLTI" id="7tTb3N6MTFp" role="3clFbG">
                          <node concept="3clFbT" id="7tTb3N6MTOF" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="7tTb3N6MSXP" role="37vLTJ">
                            <ref role="3cqZAo" node="7tTb3N6MQYR" resolve="anyChange" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7tTb3N6MKdJ" role="3cqZAp">
                        <node concept="37vLTI" id="7tTb3N6ML7Y" role="3clFbG">
                          <node concept="2YIFZM" id="7tTb3N6MLmT" role="37vLTx">
                            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                            <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                            <node concept="37vLTw" id="7tTb3N6ML_X" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6MFln" resolve="minChangedY" />
                            </node>
                            <node concept="37vLTw" id="7tTb3N6MMt6" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7tTb3N6MKdH" role="37vLTJ">
                            <ref role="3cqZAo" node="7tTb3N6MFln" resolve="minChangedY" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7tTb3N6MNeS" role="3cqZAp">
                        <node concept="37vLTI" id="7tTb3N6MOlx" role="3clFbG">
                          <node concept="2YIFZM" id="7tTb3N6MOT3" role="37vLTx">
                            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                            <node concept="37vLTw" id="7tTb3N6MP8$" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6MIJi" resolve="maxChangedY" />
                            </node>
                            <node concept="37vLTw" id="7tTb3N6MPQT" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7tTb3N6MNeQ" role="37vLTJ">
                            <ref role="3cqZAo" node="7tTb3N6MIJi" resolve="maxChangedY" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7tTb3N6MJWx" role="3clFbw">
                      <ref role="3cqZAo" node="7tTb3N6MG5Z" resolve="lineChanged" />
                    </node>
                    <node concept="9aQIb" id="7tTb3N6OMqD" role="9aQIa">
                      <node concept="3clFbS" id="7tTb3N6OMqE" role="9aQI4">
                        <node concept="3clFbF" id="7tTb3N6ON1J" role="3cqZAp">
                          <node concept="37vLTI" id="7tTb3N6ONpb" role="3clFbG">
                            <node concept="3clFbT" id="7tTb3N6ONuE" role="37vLTx" />
                            <node concept="37vLTw" id="7tTb3N6ON1I" role="37vLTJ">
                              <ref role="3cqZAo" node="7tTb3N6OLlo" resolve="allChanged" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="7tTb3N6Mxi4" role="1Duv9x">
                  <property role="TrG5h" value="y" />
                  <node concept="10Oyi0" id="7tTb3N6MxsR" role="1tU5fm" />
                  <node concept="3K4zz7" id="Cck3bmBOmk" role="33vP2m">
                    <node concept="3cmrfG" id="Cck3bmBPne" role="3K4E3e">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1rXfSq" id="Cck3bmCOyv" role="3K4GZi">
                      <ref role="37wK5l" node="Cck3bmAgkj" resolve="limitValue" />
                      <node concept="2OqwBi" id="Cck3bmBRFY" role="37wK5m">
                        <node concept="37vLTw" id="Cck3bmBQmw" role="2Oq$k0">
                          <ref role="3cqZAo" node="Cck3bmBFw$" resolve="rangeY" />
                        </node>
                        <node concept="liA8E" id="Cck3bmBSI7" role="2OqNvi">
                          <ref role="37wK5l" node="7tTb3N6N857" resolve="getStart" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="Cck3bmCQVV" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cpWsd" id="Cck3bmCU2X" role="37wK5m">
                        <node concept="3cmrfG" id="Cck3bmCU8f" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="Cck3bmCRXe" role="3uHU7B">
                          <ref role="3cqZAo" node="7tTb3N6Nj8P" resolve="height" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="Cck3bmBMg4" role="3K4Cdx">
                      <node concept="10Nm6u" id="Cck3bmBNn1" role="3uHU7w" />
                      <node concept="37vLTw" id="Cck3bmBL8G" role="3uHU7B">
                        <ref role="3cqZAo" node="Cck3bmBFw$" resolve="rangeY" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="7tTb3N6Mz7A" role="1Dwp0S">
                  <node concept="37vLTw" id="7tTb3N6Mzd$" role="3uHU7B">
                    <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                  </node>
                  <node concept="1eOMI4" id="Cck3bmC4Ui" role="3uHU7w">
                    <node concept="3K4zz7" id="Cck3bmBVJ$" role="1eOMHV">
                      <node concept="37vLTw" id="Cck3bmBWLe" role="3K4E3e">
                        <ref role="3cqZAo" node="7tTb3N6Nj8P" resolve="height" />
                      </node>
                      <node concept="1rXfSq" id="Cck3bmCr2r" role="3K4GZi">
                        <ref role="37wK5l" node="Cck3bmAgkj" resolve="limitValue" />
                        <node concept="3cpWs3" id="Cck3bmC1WM" role="37wK5m">
                          <node concept="3cmrfG" id="Cck3bmC224" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="Cck3bmBZ9g" role="3uHU7B">
                            <node concept="37vLTw" id="Cck3bmBXWy" role="2Oq$k0">
                              <ref role="3cqZAo" node="Cck3bmBFw$" resolve="rangeY" />
                            </node>
                            <node concept="liA8E" id="Cck3bmC0cE" role="2OqNvi">
                              <ref role="37wK5l" node="7tTb3N6N84Z" resolve="getEnd" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cmrfG" id="Cck3bmCu4z" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="Cck3bmCvYw" role="37wK5m">
                          <ref role="3cqZAo" node="7tTb3N6Nj8P" resolve="height" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="Cck3bmBUCI" role="3K4Cdx">
                        <node concept="10Nm6u" id="Cck3bmBUI9" role="3uHU7w" />
                        <node concept="37vLTw" id="Cck3bmBTmD" role="3uHU7B">
                          <ref role="3cqZAo" node="Cck3bmBFw$" resolve="rangeY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uNrnE" id="7tTb3N6Mz1L" role="1Dwrff">
                  <node concept="37vLTw" id="7tTb3N6Mz1N" role="2$L3a6">
                    <ref role="3cqZAo" node="7tTb3N6Mxi4" resolve="y" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7tTb3N6MUYY" role="3cqZAp">
                <node concept="3clFbS" id="7tTb3N6MUZ0" role="3clFbx">
                  <node concept="3clFbF" id="7tTb3N6Mwo9" role="3cqZAp">
                    <node concept="37vLTI" id="7tTb3N6MwGa" role="3clFbG">
                      <node concept="37vLTw" id="7tTb3N6MwQr" role="37vLTx">
                        <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                      </node>
                      <node concept="37vLTw" id="7tTb3N6Mwo7" role="37vLTJ">
                        <ref role="3cqZAo" node="7tTb3N6Knnf" resolve="lastImage" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7tTb3N6OAtI" role="3cqZAp">
                    <node concept="1rXfSq" id="7tTb3N6OAtG" role="3clFbG">
                      <ref role="37wK5l" node="7tTb3N6NlxP" resolve="handleChange" />
                      <node concept="37vLTw" id="7tTb3N6OGx5" role="37wK5m">
                        <ref role="3cqZAo" node="7tTb3N6Kuxs" resolve="newImage" />
                      </node>
                      <node concept="3K4zz7" id="7tTb3N6OP4X" role="37wK5m">
                        <node concept="10Nm6u" id="7tTb3N6OPb3" role="3K4E3e" />
                        <node concept="37vLTw" id="7tTb3N6OO6j" role="3K4Cdx">
                          <ref role="3cqZAo" node="7tTb3N6OLlo" resolve="allChanged" />
                        </node>
                        <node concept="2ShNRf" id="7tTb3N6OIgc" role="3K4GZi">
                          <node concept="1pGfFk" id="7tTb3N6OIgd" role="2ShVmc">
                            <ref role="37wK5l" node="7tTb3N6N7M6" resolve="EditorChangeDetector.Range" />
                            <node concept="37vLTw" id="7tTb3N6OIge" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6MFln" resolve="minChangedY" />
                            </node>
                            <node concept="37vLTw" id="7tTb3N6OIgf" role="37wK5m">
                              <ref role="3cqZAo" node="7tTb3N6MIJi" resolve="maxChangedY" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7tTb3N6MVZ$" role="3clFbw">
                  <ref role="3cqZAo" node="7tTb3N6MQYR" resolve="anyChange" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6K7U3" role="jymVt" />
    <node concept="3clFb_" id="7tTb3N6Kpcl" role="jymVt">
      <property role="TrG5h" value="captureImage" />
      <node concept="37vLTG" id="Cck3bmBuBp" role="3clF46">
        <property role="TrG5h" value="clipRangeY" />
        <node concept="3uibUv" id="Cck3bmBwV6" role="1tU5fm">
          <ref role="3uigEE" node="7tTb3N6N40R" resolve="EditorChangeDetector.Range" />
        </node>
      </node>
      <node concept="3uibUv" id="7tTb3N6Kst$" role="3clF45">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
      <node concept="3Tmbuc" id="7tTb3N6M59I" role="1B3o_S" />
      <node concept="3clFbS" id="7tTb3N6Kpcp" role="3clF47">
        <node concept="3cpWs8" id="7tTb3N6Sh8A" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6Sh8B" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <node concept="3uibUv" id="7tTb3N6SjTH" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="1rXfSq" id="7tTb3N6Sh8C" role="33vP2m">
              <ref role="37wK5l" node="7tTb3N6RSno" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Cck3bmOPlS" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmOPlU" role="3clFbx">
            <node concept="3cpWs6" id="Cck3bmOS03" role="3cqZAp">
              <node concept="10Nm6u" id="Cck3bmOS5x" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="Cck3bmORmD" role="3clFbw">
            <node concept="10Nm6u" id="Cck3bmORrZ" role="3uHU7w" />
            <node concept="37vLTw" id="Cck3bmOPYO" role="3uHU7B">
              <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Cck3bmOUqa" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmOUqc" role="3clFbx">
            <node concept="3cpWs6" id="Cck3bmOYPS" role="3cqZAp">
              <node concept="10Nm6u" id="Cck3bmOYVw" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="Cck3bmP0CJ" role="3clFbw">
            <node concept="10Nm6u" id="Cck3bmP1Hy" role="3uHU7w" />
            <node concept="2OqwBi" id="Cck3bmOWrr" role="3uHU7B">
              <node concept="37vLTw" id="Cck3bmOVcX" role="2Oq$k0">
                <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
              </node>
              <node concept="liA8E" id="Cck3bmOYjw" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6Swkn" role="3cqZAp" />
        <node concept="1X3_iC" id="6JxzAvo$Vrp" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="7tTb3N6SyJn" role="8Wnug">
            <node concept="3cpWsn" id="7tTb3N6SyJo" role="3cpWs9">
              <property role="TrG5h" value="preferredSize" />
              <node concept="3uibUv" id="7tTb3N6SyAq" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
              </node>
              <node concept="2OqwBi" id="7tTb3N6SyJp" role="33vP2m">
                <node concept="liA8E" id="7tTb3N6SyJq" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
                <node concept="37vLTw" id="7tTb3N6SIRV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="6JxzAvo$Vrq" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="7tTb3N6S_hy" role="8Wnug">
            <node concept="3clFbS" id="7tTb3N6S_h$" role="3clFbx">
              <node concept="3clFbF" id="7tTb3N6SxRr" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6SxRs" role="3clFbG">
                  <node concept="37vLTw" id="7tTb3N6SJe1" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6SxRu" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
                    <node concept="37vLTw" id="7tTb3N6SyJs" role="37wK5m">
                      <ref role="3cqZAo" node="7tTb3N6SyJo" resolve="preferredSize" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tTb3N6SxRy" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6SxRz" role="3clFbG">
                  <node concept="liA8E" id="7tTb3N6SxR$" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
                  </node>
                  <node concept="37vLTw" id="7tTb3N6SJoV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17QLQc" id="7tTb3N6SC_n" role="3clFbw">
              <node concept="2OqwBi" id="7tTb3N6SEWJ" role="3uHU7w">
                <node concept="37vLTw" id="7tTb3N6SJ4j" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                </node>
                <node concept="liA8E" id="7tTb3N6SGXg" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                </node>
              </node>
              <node concept="37vLTw" id="7tTb3N6SAGf" role="3uHU7B">
                <ref role="3cqZAo" node="7tTb3N6SyJo" resolve="preferredSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6JxzAvoAtg5" role="3cqZAp">
          <node concept="3cpWsn" id="6JxzAvoAtg6" role="3cpWs9">
            <property role="TrG5h" value="window" />
            <node concept="3uibUv" id="6JxzAvoAseO" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
            </node>
            <node concept="2YIFZM" id="6JxzAvoAtg7" role="33vP2m">
              <ref role="37wK5l" to="dxuu:~SwingUtilities.getWindowAncestor(java.awt.Component)" resolve="getWindowAncestor" />
              <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
              <node concept="37vLTw" id="6JxzAvoAtg8" role="37wK5m">
                <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JxzAvo_6KH" role="3cqZAp">
          <node concept="2OqwBi" id="6JxzAvo_9rk" role="3clFbG">
            <node concept="37vLTw" id="6JxzAvoAtg9" role="2Oq$k0">
              <ref role="3cqZAo" node="6JxzAvoAtg6" resolve="window" />
            </node>
            <node concept="liA8E" id="6JxzAvo_ars" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6Swnu" role="3cqZAp" />
        <node concept="3cpWs8" id="YrAPzEqIK4" role="3cqZAp">
          <node concept="3cpWsn" id="YrAPzEqIK5" role="3cpWs9">
            <property role="TrG5h" value="paintedComponent" />
            <node concept="3uibUv" id="YrAPzEqEjk" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="2OqwBi" id="YrAPzEqIK6" role="33vP2m">
              <node concept="37vLTw" id="YrAPzEqIK7" role="2Oq$k0">
                <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
              </node>
              <node concept="liA8E" id="YrAPzEqIK8" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6KpQY" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6KpQZ" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="3uibUv" id="7tTb3N6KpR0" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
            </node>
            <node concept="3K4zz7" id="7tTb3N6RjjZ" role="33vP2m">
              <node concept="2ShNRf" id="7tTb3N6RljG" role="3K4E3e">
                <node concept="1pGfFk" id="7tTb3N6RoaM" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="7tTb3N6RpNd" role="37wK5m">
                    <property role="3cmrfH" value="100" />
                  </node>
                  <node concept="3cmrfG" id="7tTb3N6Rs19" role="37wK5m">
                    <property role="3cmrfH" value="40" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7tTb3N6Rh$J" role="3K4Cdx">
                <node concept="10Nm6u" id="7tTb3N6RhE5" role="3uHU7w" />
                <node concept="37vLTw" id="7tTb3N6Rfmr" role="3uHU7B">
                  <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                </node>
              </node>
              <node concept="2OqwBi" id="7tTb3N6KpR1" role="3K4GZi">
                <node concept="37vLTw" id="YrAPzEqIK9" role="2Oq$k0">
                  <ref role="3cqZAo" node="YrAPzEqIK5" resolve="paintedComponent" />
                </node>
                <node concept="liA8E" id="6JxzAvo_wgH" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Cck3bmy7Ls" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmy7Lu" role="3clFbx">
            <node concept="3clFbF" id="Cck3bmyeCl" role="3cqZAp">
              <node concept="37vLTI" id="Cck3bmygbN" role="3clFbG">
                <node concept="3cmrfG" id="Cck3bmygl4" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="Cck3bmyeVz" role="37vLTJ">
                  <node concept="37vLTw" id="Cck3bmyeCj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="Cck3bmyfei" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="Cck3bmybk8" role="3clFbw">
            <node concept="2OqwBi" id="Cck3bmy9G1" role="3uHU7B">
              <node concept="37vLTw" id="Cck3bmy96V" role="2Oq$k0">
                <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
              </node>
              <node concept="2OwXpG" id="Cck3bmyapW" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
              </node>
            </node>
            <node concept="3cmrfG" id="Cck3bmybGv" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Cck3bmyhEW" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmyhEY" role="3clFbx">
            <node concept="3clFbF" id="Cck3bmylNx" role="3cqZAp">
              <node concept="37vLTI" id="Cck3bmyno9" role="3clFbG">
                <node concept="3cmrfG" id="Cck3bmynxq" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="Cck3bmym6J" role="37vLTJ">
                  <node concept="37vLTw" id="Cck3bmylNv" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="Cck3bmympw" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="Cck3bmylee" role="3clFbw">
            <node concept="3cmrfG" id="Cck3bmylAL" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="Cck3bmyjB5" role="3uHU7B">
              <node concept="37vLTw" id="Cck3bmyj1U" role="2Oq$k0">
                <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
              </node>
              <node concept="2OwXpG" id="Cck3bmyk6O" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="YrAPzEqj5_" role="3cqZAp">
          <node concept="3cpWsn" id="YrAPzEqj5A" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="YrAPzEqj5B" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="YrAPzEqkO0" role="33vP2m">
              <node concept="1pGfFk" id="YrAPzEqkIN" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                <node concept="3cmrfG" id="YrAPzEqkTK" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="YrAPzEqm79" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="YrAPzEqwRG" role="37wK5m">
                  <node concept="37vLTw" id="YrAPzEqwwp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="YrAPzEqxc7" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                  </node>
                </node>
                <node concept="2OqwBi" id="YrAPzEqxOw" role="37wK5m">
                  <node concept="37vLTw" id="YrAPzEqxnS" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpQZ" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="YrAPzEqyeO" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="YrAPzEq$cT" role="3cqZAp">
          <node concept="2GrKxI" id="YrAPzEq$cV" role="2Gsz3X">
            <property role="TrG5h" value="owned" />
          </node>
          <node concept="2OqwBi" id="YrAPzEslqm" role="2GsD0m">
            <node concept="2OqwBi" id="YrAPzEsjRM" role="2Oq$k0">
              <node concept="2OqwBi" id="YrAPzEqC8Q" role="2Oq$k0">
                <node concept="2YIFZM" id="YrAPzEqATA" role="2Oq$k0">
                  <ref role="37wK5l" to="dxuu:~SwingUtilities.getWindowAncestor(java.awt.Component)" resolve="getWindowAncestor" />
                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                  <node concept="37vLTw" id="YrAPzEqBFA" role="37wK5m">
                    <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                  </node>
                </node>
                <node concept="liA8E" id="YrAPzEqDbZ" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Window.getOwnedWindows()" resolve="getOwnedWindows" />
                </node>
              </node>
              <node concept="39bAoz" id="YrAPzEsl19" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="YrAPzEsmFG" role="2OqNvi">
              <node concept="1bVj0M" id="YrAPzEsmFI" role="23t8la">
                <node concept="3clFbS" id="YrAPzEsmFJ" role="1bW5cS">
                  <node concept="3clFbF" id="YrAPzEsmTc" role="3cqZAp">
                    <node concept="2OqwBi" id="YrAPzEsny8" role="3clFbG">
                      <node concept="37vLTw" id="YrAPzEsmTb" role="2Oq$k0">
                        <ref role="3cqZAo" node="YrAPzEsmFK" resolve="it" />
                      </node>
                      <node concept="liA8E" id="YrAPzEso8F" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Window.isShowing()" resolve="isShowing" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="YrAPzEsmFK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="YrAPzEsmFL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="YrAPzEq$cZ" role="2LFqv$">
            <node concept="3cpWs8" id="92VPpUXoTP" role="3cqZAp">
              <node concept="3cpWsn" id="92VPpUXoTQ" role="3cpWs9">
                <property role="TrG5h" value="imageOffset" />
                <node concept="3uibUv" id="92VPpUXoTR" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
                <node concept="2OqwBi" id="92VPpUXpzk" role="33vP2m">
                  <node concept="liA8E" id="92VPpUXpIC" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getLocationOnScreen()" resolve="getLocationOnScreen" />
                  </node>
                  <node concept="37vLTw" id="92VPpUYlpj" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqIK5" resolve="paintedComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="92VPpUXnSl" role="3cqZAp">
              <node concept="3cpWsn" id="92VPpUXnSm" role="3cpWs9">
                <property role="TrG5h" value="ownedOffset" />
                <node concept="3uibUv" id="92VPpUXnIR" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
                <node concept="2OqwBi" id="92VPpUXnSn" role="33vP2m">
                  <node concept="2GrUjf" id="92VPpUXnSo" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="YrAPzEq$cV" resolve="owned" />
                  </node>
                  <node concept="liA8E" id="92VPpUXnSp" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getLocationOnScreen()" resolve="getLocationOnScreen" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="92VPpUXr_$" role="3cqZAp">
              <node concept="2OqwBi" id="92VPpUXrXQ" role="3clFbG">
                <node concept="37vLTw" id="92VPpUXssP" role="2Oq$k0">
                  <ref role="3cqZAo" node="92VPpUXnSm" resolve="ownedOffset" />
                </node>
                <node concept="liA8E" id="92VPpUXsgO" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                  <node concept="1ZRNhn" id="92VPpUXxWv" role="37wK5m">
                    <node concept="2OqwBi" id="92VPpUXtap" role="2$L3a6">
                      <node concept="37vLTw" id="92VPpUXsIm" role="2Oq$k0">
                        <ref role="3cqZAo" node="92VPpUXoTQ" resolve="imageOffset" />
                      </node>
                      <node concept="2OwXpG" id="92VPpUXxAV" role="2OqNvi">
                        <ref role="2Oxat6" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                  <node concept="1ZRNhn" id="92VPpUXybi" role="37wK5m">
                    <node concept="2OqwBi" id="92VPpUXu6k" role="2$L3a6">
                      <node concept="37vLTw" id="92VPpUXtIa" role="2Oq$k0">
                        <ref role="3cqZAo" node="92VPpUXoTQ" resolve="imageOffset" />
                      </node>
                      <node concept="2OwXpG" id="92VPpUXxNP" role="2OqNvi">
                        <ref role="2Oxat6" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="YrAPzEqFNh" role="3cqZAp">
              <node concept="3cpWsn" id="YrAPzEqFNi" role="3cpWs9">
                <property role="TrG5h" value="ownedBounds" />
                <node concept="3uibUv" id="YrAPzEqFNj" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                </node>
                <node concept="2ShNRf" id="YrAPzEqGhn" role="33vP2m">
                  <node concept="1pGfFk" id="YrAPzEqGbQ" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="2OqwBi" id="YrAPzEqOZB" role="37wK5m">
                      <node concept="37vLTw" id="YrAPzEqODC" role="2Oq$k0">
                        <ref role="3cqZAo" node="92VPpUXnSm" resolve="ownedOffset" />
                      </node>
                      <node concept="2OwXpG" id="YrAPzEqPi_" role="2OqNvi">
                        <ref role="2Oxat6" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YrAPzEqQrP" role="37wK5m">
                      <node concept="37vLTw" id="YrAPzEqPYK" role="2Oq$k0">
                        <ref role="3cqZAo" node="92VPpUXnSm" resolve="ownedOffset" />
                      </node>
                      <node concept="2OwXpG" id="YrAPzEqQMI" role="2OqNvi">
                        <ref role="2Oxat6" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YrAPzEqRxI" role="37wK5m">
                      <node concept="2GrUjf" id="YrAPzEqQZE" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="YrAPzEq$cV" resolve="owned" />
                      </node>
                      <node concept="liA8E" id="YrAPzEqS$7" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="YrAPzEqTvy" role="37wK5m">
                      <node concept="2GrUjf" id="YrAPzEqSWn" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="YrAPzEq$cV" resolve="owned" />
                      </node>
                      <node concept="liA8E" id="YrAPzEqUDN" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="YrAPzEqnZG" role="3cqZAp">
              <node concept="37vLTI" id="YrAPzEr4K7" role="3clFbG">
                <node concept="37vLTw" id="YrAPzEr3OC" role="37vLTJ">
                  <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                </node>
                <node concept="2OqwBi" id="YrAPzEqpo3" role="37vLTx">
                  <node concept="37vLTw" id="YrAPzEqnZE" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="YrAPzEqqPt" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Rectangle.union(java.awt.Rectangle)" resolve="union" />
                    <node concept="37vLTw" id="YrAPzEqVt1" role="37wK5m">
                      <ref role="3cqZAo" node="YrAPzEqFNi" resolve="ownedBounds" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="YrAPzEqtYO" role="3cqZAp" />
        <node concept="3clFbH" id="YrAPzEquZL" role="3cqZAp" />
        <node concept="3cpWs8" id="7tTb3N6KpR4" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6KpR5" role="3cpWs9">
            <property role="TrG5h" value="img" />
            <node concept="3uibUv" id="7tTb3N6KpR6" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="2ShNRf" id="7tTb3N6KpR7" role="33vP2m">
              <node concept="1pGfFk" id="7tTb3N6KpR8" role="2ShVmc">
                <ref role="37wK5l" to="jan3:~BufferedImage.&lt;init&gt;(int,int,int)" resolve="BufferedImage" />
                <node concept="2OqwBi" id="7tTb3N6KpR9" role="37wK5m">
                  <node concept="37vLTw" id="YrAPzEr5Pq" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="7tTb3N6KpRb" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Rectangle.width" resolve="width" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7tTb3N6KpRc" role="37wK5m">
                  <node concept="37vLTw" id="YrAPzEr7xw" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="7tTb3N6KpRe" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Rectangle.height" resolve="height" />
                  </node>
                </node>
                <node concept="10M0yZ" id="7tTb3N6KpRf" role="37wK5m">
                  <ref role="1PxDUh" to="jan3:~BufferedImage" resolve="BufferedImage" />
                  <ref role="3cqZAo" to="jan3:~BufferedImage.TYPE_INT_ARGB" resolve="TYPE_INT_ARGB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tTb3N6KpRi" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6KpRj" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="7tTb3N6KpRk" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="2OqwBi" id="7tTb3N6KpRl" role="33vP2m">
              <node concept="37vLTw" id="7tTb3N6KpRm" role="2Oq$k0">
                <ref role="3cqZAo" node="7tTb3N6KpR5" resolve="img" />
              </node>
              <node concept="liA8E" id="7tTb3N6KpRn" role="2OqNvi">
                <ref role="37wK5l" to="jan3:~BufferedImage.createGraphics()" resolve="createGraphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="YrAPzErOPo" role="3cqZAp">
          <node concept="2OqwBi" id="YrAPzErPW8" role="3clFbG">
            <node concept="37vLTw" id="YrAPzErOPm" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
            </node>
            <node concept="liA8E" id="YrAPzErQV_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.translate(int,int)" resolve="translate" />
              <node concept="1ZRNhn" id="YrAPzErS3Y" role="37wK5m">
                <node concept="2OqwBi" id="YrAPzErRvI" role="2$L3a6">
                  <node concept="37vLTw" id="YrAPzErR1w" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="YrAPzErRSC" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Rectangle.x" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="1ZRNhn" id="YrAPzErSLA" role="37wK5m">
                <node concept="2OqwBi" id="YrAPzErTET" role="2$L3a6">
                  <node concept="37vLTw" id="YrAPzErSYS" role="2Oq$k0">
                    <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="YrAPzErUdj" role="2OqNvi">
                    <ref role="2Oxat6" to="z60i:~Rectangle.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6KpRo" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6KpRp" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6KpRq" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
            </node>
            <node concept="liA8E" id="7tTb3N6KpRr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="7tTb3N6KpRs" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_TEXT_ANTIALIASING" resolve="KEY_TEXT_ANTIALIASING" />
              </node>
              <node concept="10M0yZ" id="7tTb3N6KpRt" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_TEXT_ANTIALIAS_ON" resolve="VALUE_TEXT_ANTIALIAS_ON" />
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6KpRy" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6KpRz" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6KpR$" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
            </node>
            <node concept="liA8E" id="7tTb3N6KpR_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="7tTb3N6KpRA" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
              </node>
              <node concept="10M0yZ" id="7tTb3N6KpRB" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tTb3N6KpRG" role="3cqZAp">
          <node concept="2OqwBi" id="7tTb3N6KpRH" role="3clFbG">
            <node concept="37vLTw" id="7tTb3N6KpRI" role="2Oq$k0">
              <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
            </node>
            <node concept="liA8E" id="7tTb3N6KpRJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="7tTb3N6KpRK" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_RENDERING" resolve="KEY_RENDERING" />
              </node>
              <node concept="10M0yZ" id="7tTb3N6KpRL" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_RENDER_QUALITY" resolve="VALUE_RENDER_QUALITY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6KpRQ" role="3cqZAp" />
        <node concept="3clFbJ" id="Cck3bm_F9X" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bm_F9Z" role="3clFbx">
            <node concept="3clFbF" id="Cck3bm_IzV" role="3cqZAp">
              <node concept="2OqwBi" id="Cck3bm_IGc" role="3clFbG">
                <node concept="37vLTw" id="Cck3bm_IzT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                </node>
                <node concept="liA8E" id="Cck3bm_IQO" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setClip(int,int,int,int)" resolve="setClip" />
                  <node concept="3cmrfG" id="Cck3bm_JQ3" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1rXfSq" id="Cck3bmAvUh" role="37wK5m">
                    <ref role="37wK5l" node="Cck3bmAgkj" resolve="limitValue" />
                    <node concept="2OqwBi" id="Cck3bm_Jhk" role="37wK5m">
                      <node concept="37vLTw" id="Cck3bmBy2U" role="2Oq$k0">
                        <ref role="3cqZAo" node="Cck3bmBuBp" resolve="clipRangeY" />
                      </node>
                      <node concept="liA8E" id="Cck3bm_Jxp" role="2OqNvi">
                        <ref role="37wK5l" node="7tTb3N6N857" resolve="getStart" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="Cck3bmAwUW" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cpWsd" id="Cck3bmAz1q" role="37wK5m">
                      <node concept="3cmrfG" id="Cck3bmAz6G" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="Cck3bmAxxg" role="3uHU7B">
                        <node concept="37vLTw" id="YrAPzErgiN" role="2Oq$k0">
                          <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                        </node>
                        <node concept="2OwXpG" id="Cck3bmAxW3" role="2OqNvi">
                          <ref role="2Oxat6" to="z60i:~Rectangle.height" resolve="height" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="Cck3bm_LGU" role="37wK5m">
                    <node concept="37vLTw" id="YrAPzErrTx" role="2Oq$k0">
                      <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="Cck3bm_Nnd" role="2OqNvi">
                      <ref role="2Oxat6" to="z60i:~Rectangle.width" resolve="width" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="Cck3bmAzFH" role="37wK5m">
                    <ref role="37wK5l" node="Cck3bmAgkj" resolve="limitValue" />
                    <node concept="2OqwBi" id="Cck3bm_MFn" role="37wK5m">
                      <node concept="37vLTw" id="Cck3bmBymI" role="2Oq$k0">
                        <ref role="3cqZAo" node="Cck3bmBuBp" resolve="clipRangeY" />
                      </node>
                      <node concept="liA8E" id="Cck3bm_MQN" role="2OqNvi">
                        <ref role="37wK5l" node="7tTb3N6NGjP" resolve="getLength" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="Cck3bmA$Hq" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cpWsd" id="Cck3bmAB41" role="37wK5m">
                      <node concept="2OqwBi" id="Cck3bmABIQ" role="3uHU7w">
                        <node concept="37vLTw" id="Cck3bmByEA" role="2Oq$k0">
                          <ref role="3cqZAo" node="Cck3bmBuBp" resolve="clipRangeY" />
                        </node>
                        <node concept="liA8E" id="Cck3bmAC0e" role="2OqNvi">
                          <ref role="37wK5l" node="7tTb3N6N857" resolve="getStart" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="Cck3bmA_BG" role="3uHU7B">
                        <node concept="37vLTw" id="YrAPzErseM" role="2Oq$k0">
                          <ref role="3cqZAo" node="YrAPzEqj5A" resolve="bounds" />
                        </node>
                        <node concept="2OwXpG" id="Cck3bmAA2x" role="2OqNvi">
                          <ref role="2Oxat6" to="z60i:~Rectangle.height" resolve="height" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="Cck3bm_HXq" role="3clFbw">
            <node concept="10Nm6u" id="Cck3bm_InR" role="3uHU7w" />
            <node concept="37vLTw" id="Cck3bmBxOD" role="3uHU7B">
              <ref role="3cqZAo" node="Cck3bmBuBp" resolve="clipRangeY" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Cck3bm_D5B" role="3cqZAp" />
        <node concept="3clFbJ" id="7tTb3N6Ruaz" role="3cqZAp">
          <node concept="3clFbS" id="7tTb3N6Rua_" role="3clFbx">
            <node concept="3clFbF" id="7tTb3N6KpRR" role="3cqZAp">
              <node concept="2YIFZM" id="7tTb3N6KpRS" role="3clFbG">
                <ref role="37wK5l" to="vyue:1me6Uesqf38" resolve="paintEditor" />
                <ref role="1Pybhc" to="vyue:6xm2RBl62ji" resolve="EditorToImage" />
                <node concept="37vLTw" id="7tTb3N6KpRT" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
                </node>
                <node concept="37vLTw" id="7tTb3N6KpRU" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7tTb3N6Rye2" role="3clFbw">
            <node concept="10Nm6u" id="7tTb3N6RzP1" role="3uHU7w" />
            <node concept="37vLTw" id="7tTb3N6RvNL" role="3uHU7B">
              <ref role="3cqZAo" node="7tTb3N6Sh8B" resolve="editor" />
            </node>
          </node>
          <node concept="9aQIb" id="7tTb3N6R_S4" role="9aQIa">
            <node concept="3clFbS" id="7tTb3N6R_S5" role="9aQI4">
              <node concept="3clFbF" id="7tTb3N6RBZN" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6RCag" role="3clFbG">
                  <node concept="37vLTw" id="7tTb3N6RBZL" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6RCiZ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
                    <node concept="2ShNRf" id="7tTb3N6RCoQ" role="37wK5m">
                      <node concept="1pGfFk" id="7tTb3N6RDJy" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                        <node concept="2$xPTn" id="7tTb3N6REbY" role="37wK5m">
                          <property role="2$xPTl" value="2.0f" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tTb3N6REns" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6RExD" role="3clFbG">
                  <node concept="37vLTw" id="7tTb3N6REnq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6REEx" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                    <node concept="10M0yZ" id="7tTb3N6RELW" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Color.RED" resolve="RED" />
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tTb3N6RBzI" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6RBFZ" role="3clFbG">
                  <node concept="37vLTw" id="7tTb3N6RBzH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6RBQf" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                    <node concept="3cmrfG" id="7tTb3N6RESL" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RFGf" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RFOk" role="37wK5m">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RG2l" role="37wK5m">
                      <property role="3cmrfH" value="40" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7tTb3N6RG9I" role="3cqZAp">
                <node concept="2OqwBi" id="7tTb3N6RG9J" role="3clFbG">
                  <node concept="37vLTw" id="7tTb3N6RG9K" role="2Oq$k0">
                    <ref role="3cqZAo" node="7tTb3N6KpRj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6RG9L" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                    <node concept="3cmrfG" id="7tTb3N6RG9M" role="37wK5m">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RG9N" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RG9O" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7tTb3N6RG9P" role="37wK5m">
                      <property role="3cmrfH" value="40" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6KwhD" role="3cqZAp" />
        <node concept="3cpWs6" id="7tTb3N6KtEa" role="3cqZAp">
          <node concept="37vLTw" id="7tTb3N6KtOk" role="3cqZAk">
            <ref role="3cqZAo" node="7tTb3N6KpR5" resolve="img" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tTb3N6N2jY" role="jymVt" />
    <node concept="2YIFZL" id="Cck3bmAgkj" role="jymVt">
      <property role="TrG5h" value="limitValue" />
      <node concept="37vLTG" id="Cck3bmAmHY" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10Oyi0" id="Cck3bmAmWv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Cck3bmAn6D" role="3clF46">
        <property role="TrG5h" value="min" />
        <node concept="10Oyi0" id="Cck3bmAnlc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Cck3bmAnsS" role="3clF46">
        <property role="TrG5h" value="max" />
        <node concept="10Oyi0" id="Cck3bmAnFt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="Cck3bm_WkJ" role="3clF47">
        <node concept="3clFbF" id="Cck3bmAsPS" role="3cqZAp">
          <node concept="2YIFZM" id="Cck3bmAtpX" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
            <node concept="2YIFZM" id="Cck3bmAoBk" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="37vLTw" id="Cck3bmAp9l" role="37wK5m">
                <ref role="3cqZAo" node="Cck3bmAmHY" resolve="value" />
              </node>
              <node concept="37vLTw" id="Cck3bmAquC" role="37wK5m">
                <ref role="3cqZAo" node="Cck3bmAnsS" resolve="max" />
              </node>
            </node>
            <node concept="37vLTw" id="Cck3bmAv0U" role="37wK5m">
              <ref role="3cqZAo" node="Cck3bmAn6D" resolve="min" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="Cck3bmAmAJ" role="3clF45" />
      <node concept="3Tm6S6" id="Cck3bmAmq_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="Cck3bm_R55" role="jymVt" />
    <node concept="312cEu" id="7tTb3N6N40R" role="jymVt">
      <property role="TrG5h" value="Range" />
      <node concept="312cEg" id="7tTb3N6N7BT" role="jymVt">
        <property role="TrG5h" value="start" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7tTb3N6N7BU" role="1B3o_S" />
        <node concept="10Oyi0" id="7tTb3N6N7Jw" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="7tTb3N6N7JT" role="jymVt">
        <property role="TrG5h" value="end" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7tTb3N6N7JU" role="1B3o_S" />
        <node concept="10Oyi0" id="7tTb3N6N7JV" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="7tTb3N6N7L4" role="jymVt" />
      <node concept="3Tm1VV" id="Cck3bmFvot" role="1B3o_S" />
      <node concept="3clFbW" id="7tTb3N6N7M6" role="jymVt">
        <node concept="3cqZAl" id="7tTb3N6N7M7" role="3clF45" />
        <node concept="3Tm1VV" id="7tTb3N6N7M8" role="1B3o_S" />
        <node concept="3clFbS" id="7tTb3N6N7Ma" role="3clF47">
          <node concept="1gVbGN" id="7tTb3N6NF8$" role="3cqZAp">
            <node concept="2dkUwp" id="7tTb3N6NG06" role="1gVkn0">
              <node concept="37vLTw" id="7tTb3N6NGb3" role="3uHU7w">
                <ref role="3cqZAo" node="7tTb3N6N7Md" resolve="end" />
              </node>
              <node concept="37vLTw" id="7tTb3N6NFzI" role="3uHU7B">
                <ref role="3cqZAo" node="7tTb3N6N7Mp" resolve="start" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7tTb3N6N7Mq" role="3cqZAp">
            <node concept="37vLTI" id="7tTb3N6N7Ms" role="3clFbG">
              <node concept="2OqwBi" id="7tTb3N6N7Mw" role="37vLTJ">
                <node concept="Xjq3P" id="7tTb3N6N7Mx" role="2Oq$k0" />
                <node concept="2OwXpG" id="7tTb3N6N7My" role="2OqNvi">
                  <ref role="2Oxat6" node="7tTb3N6N7BT" resolve="start" />
                </node>
              </node>
              <node concept="37vLTw" id="7tTb3N6N7Mz" role="37vLTx">
                <ref role="3cqZAo" node="7tTb3N6N7Mp" resolve="start" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7tTb3N6N7Me" role="3cqZAp">
            <node concept="37vLTI" id="7tTb3N6N7Mg" role="3clFbG">
              <node concept="2OqwBi" id="7tTb3N6N7Mk" role="37vLTJ">
                <node concept="Xjq3P" id="7tTb3N6N7Ml" role="2Oq$k0" />
                <node concept="2OwXpG" id="7tTb3N6N7Mm" role="2OqNvi">
                  <ref role="2Oxat6" node="7tTb3N6N7JT" resolve="end" />
                </node>
              </node>
              <node concept="37vLTw" id="7tTb3N6N7Mn" role="37vLTx">
                <ref role="3cqZAo" node="7tTb3N6N7Md" resolve="end" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7tTb3N6N7Mp" role="3clF46">
          <property role="TrG5h" value="start" />
          <node concept="10Oyi0" id="7tTb3N6N7Mo" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7tTb3N6N7Md" role="3clF46">
          <property role="TrG5h" value="end" />
          <node concept="10Oyi0" id="7tTb3N6N7Mc" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="7tTb3N6N82m" role="jymVt" />
      <node concept="3clFb_" id="7tTb3N6N857" role="jymVt">
        <property role="TrG5h" value="getStart" />
        <node concept="10Oyi0" id="7tTb3N6N858" role="3clF45" />
        <node concept="3Tm1VV" id="7tTb3N6N859" role="1B3o_S" />
        <node concept="3clFbS" id="7tTb3N6N85a" role="3clF47">
          <node concept="3clFbF" id="7tTb3N6N85b" role="3cqZAp">
            <node concept="2OqwBi" id="7tTb3N6N854" role="3clFbG">
              <node concept="Xjq3P" id="7tTb3N6N855" role="2Oq$k0" />
              <node concept="2OwXpG" id="7tTb3N6N856" role="2OqNvi">
                <ref role="2Oxat6" node="7tTb3N6N7BT" resolve="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7tTb3N6N82N" role="jymVt" />
      <node concept="3clFb_" id="7tTb3N6N84Z" role="jymVt">
        <property role="TrG5h" value="getEnd" />
        <node concept="10Oyi0" id="7tTb3N6N850" role="3clF45" />
        <node concept="3Tm1VV" id="7tTb3N6N851" role="1B3o_S" />
        <node concept="3clFbS" id="7tTb3N6N852" role="3clF47">
          <node concept="3clFbF" id="7tTb3N6N853" role="3cqZAp">
            <node concept="2OqwBi" id="7tTb3N6N84W" role="3clFbG">
              <node concept="Xjq3P" id="7tTb3N6N84X" role="2Oq$k0" />
              <node concept="2OwXpG" id="7tTb3N6N84Y" role="2OqNvi">
                <ref role="2Oxat6" node="7tTb3N6N7JT" resolve="end" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7tTb3N6NGbA" role="jymVt" />
      <node concept="3clFb_" id="7tTb3N6NGjP" role="jymVt">
        <property role="TrG5h" value="getLength" />
        <node concept="10Oyi0" id="7tTb3N6NI7w" role="3clF45" />
        <node concept="3Tm1VV" id="7tTb3N6NGjS" role="1B3o_S" />
        <node concept="3clFbS" id="7tTb3N6NGjT" role="3clF47">
          <node concept="3clFbF" id="7tTb3N6NH2Z" role="3cqZAp">
            <node concept="3cpWs3" id="7tTb3N6WCPW" role="3clFbG">
              <node concept="3cmrfG" id="7tTb3N6WD0r" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cpWsd" id="7tTb3N6NHse" role="3uHU7B">
                <node concept="37vLTw" id="7tTb3N6NH2Y" role="3uHU7B">
                  <ref role="3cqZAo" node="7tTb3N6N7JT" resolve="end" />
                </node>
                <node concept="37vLTw" id="7tTb3N6NHRa" role="3uHU7w">
                  <ref role="3cqZAo" node="7tTb3N6N7BT" resolve="start" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7tTb3N6JZZ3" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="Cck3bmyBZh">
    <property role="TrG5h" value="Stopwatch" />
    <node concept="2YIFZL" id="Cck3bmyC96" role="jymVt">
      <property role="TrG5h" value="measure" />
      <node concept="37vLTG" id="Cck3bmyCfD" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="Cck3bmyCmI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Cck3bmyCpb" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="Cck3bmyCUr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="Cck3bmyC6T" role="3clF47">
        <node concept="3cpWs8" id="Cck3bmyDoE" role="3cqZAp">
          <node concept="3cpWsn" id="Cck3bmyDoH" role="3cpWs9">
            <property role="TrG5h" value="start" />
            <node concept="3cpWsb" id="Cck3bmyDoD" role="1tU5fm" />
            <node concept="2YIFZM" id="Cck3bmyDR2" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="Cck3bmyE_t" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmyE_v" role="1zxBo7">
            <node concept="3clFbF" id="Cck3bmyE3K" role="3cqZAp">
              <node concept="2OqwBi" id="Cck3bmyE9H" role="3clFbG">
                <node concept="37vLTw" id="Cck3bmyE3I" role="2Oq$k0">
                  <ref role="3cqZAo" node="Cck3bmyCpb" resolve="r" />
                </node>
                <node concept="liA8E" id="Cck3bmyEh9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="57Mmk71qk5Q" role="1zxBo6">
            <node concept="3clFbS" id="Cck3bmyE_w" role="1wplMD">
              <node concept="3cpWs8" id="Cck3bmyDDX" role="3cqZAp">
                <node concept="3cpWsn" id="Cck3bmyDE0" role="3cpWs9">
                  <property role="TrG5h" value="end" />
                  <node concept="3cpWsb" id="Cck3bmyDDV" role="1tU5fm" />
                  <node concept="2YIFZM" id="Cck3bmyDTf" role="33vP2m">
                    <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  </node>
                </node>
              </node>
              <node concept="RRSsy" id="Cck3bmyJ8W" role="3cqZAp">
                <node concept="3cpWs3" id="Cck3bmyJmv" role="RRSoy">
                  <node concept="Xl_RD" id="Cck3bmyJmw" role="3uHU7w">
                    <property role="Xl_RC" value=" ms" />
                  </node>
                  <node concept="3cpWs3" id="Cck3bmyJmx" role="3uHU7B">
                    <node concept="3cpWs3" id="Cck3bmyJmy" role="3uHU7B">
                      <node concept="37vLTw" id="Cck3bmyJmz" role="3uHU7B">
                        <ref role="3cqZAo" node="Cck3bmyCfD" resolve="text" />
                      </node>
                      <node concept="Xl_RD" id="Cck3bmyJm$" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="Cck3bmyJm_" role="3uHU7w">
                      <node concept="3cpWsd" id="Cck3bmyJmA" role="1eOMHV">
                        <node concept="37vLTw" id="Cck3bmyJmB" role="3uHU7w">
                          <ref role="3cqZAo" node="Cck3bmyDoH" resolve="start" />
                        </node>
                        <node concept="37vLTw" id="Cck3bmyJmC" role="3uHU7B">
                          <ref role="3cqZAo" node="Cck3bmyDE0" resolve="end" />
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
      <node concept="3cqZAl" id="Cck3bmyC6R" role="3clF45" />
      <node concept="3Tm1VV" id="Cck3bmyC6S" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="Cck3bmyJBz" role="jymVt">
      <property role="TrG5h" value="measure" />
      <node concept="37vLTG" id="Cck3bmyJB$" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="Cck3bmyJB_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Cck3bmyJBA" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="Cck3bmyKnc" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="Cck3bmyLj0" role="11_B2D">
            <ref role="16sUi3" node="Cck3bmyKHF" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="Cck3bmyJBC" role="3clF47">
        <node concept="3cpWs8" id="Cck3bmyJBD" role="3cqZAp">
          <node concept="3cpWsn" id="Cck3bmyJBE" role="3cpWs9">
            <property role="TrG5h" value="start" />
            <node concept="3cpWsb" id="Cck3bmyJBF" role="1tU5fm" />
            <node concept="2YIFZM" id="Cck3bmyJBG" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="Cck3bmyJBH" role="3cqZAp">
          <node concept="3clFbS" id="Cck3bmyJBI" role="1zxBo7">
            <node concept="3cpWs6" id="Cck3bmyLyr" role="3cqZAp">
              <node concept="2OqwBi" id="Cck3bmyM3v" role="3cqZAk">
                <node concept="37vLTw" id="Cck3bmyLC3" role="2Oq$k0">
                  <ref role="3cqZAo" node="Cck3bmyJBA" resolve="r" />
                </node>
                <node concept="liA8E" id="Cck3bmyMp5" role="2OqNvi">
                  <ref role="37wK5l" to="18ew:~Computable.compute()" resolve="compute" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="57Mmk71qu0m" role="1zxBo6">
            <node concept="3clFbS" id="Cck3bmyJBN" role="1wplMD">
              <node concept="3cpWs8" id="Cck3bmyJBO" role="3cqZAp">
                <node concept="3cpWsn" id="Cck3bmyJBP" role="3cpWs9">
                  <property role="TrG5h" value="end" />
                  <node concept="3cpWsb" id="Cck3bmyJBQ" role="1tU5fm" />
                  <node concept="2YIFZM" id="Cck3bmyJBR" role="33vP2m">
                    <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  </node>
                </node>
              </node>
              <node concept="RRSsy" id="Cck3bmyJBS" role="3cqZAp">
                <node concept="3cpWs3" id="Cck3bmyJBT" role="RRSoy">
                  <node concept="Xl_RD" id="Cck3bmyJBU" role="3uHU7w">
                    <property role="Xl_RC" value=" ms" />
                  </node>
                  <node concept="3cpWs3" id="Cck3bmyJBV" role="3uHU7B">
                    <node concept="3cpWs3" id="Cck3bmyJBW" role="3uHU7B">
                      <node concept="37vLTw" id="Cck3bmyJBX" role="3uHU7B">
                        <ref role="3cqZAo" node="Cck3bmyJB$" resolve="text" />
                      </node>
                      <node concept="Xl_RD" id="Cck3bmyJBY" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="Cck3bmyJBZ" role="3uHU7w">
                      <node concept="3cpWsd" id="Cck3bmyJC0" role="1eOMHV">
                        <node concept="37vLTw" id="Cck3bmyJC1" role="3uHU7w">
                          <ref role="3cqZAo" node="Cck3bmyJBE" resolve="start" />
                        </node>
                        <node concept="37vLTw" id="Cck3bmyJC2" role="3uHU7B">
                          <ref role="3cqZAo" node="Cck3bmyJBP" resolve="end" />
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
      <node concept="16syzq" id="Cck3bmyKWK" role="3clF45">
        <ref role="16sUi3" node="Cck3bmyKHF" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="Cck3bmyJC4" role="1B3o_S" />
      <node concept="16euLQ" id="Cck3bmyKHF" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="Cck3bmyBZi" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4CmvvxIWTNK">
    <property role="TrG5h" value="ServerInspectorEditorComponent" />
    <node concept="2tJIrI" id="4CmvvxIX7kb" role="jymVt" />
    <node concept="3clFbW" id="4OOltvpOJWv" role="jymVt">
      <node concept="3cqZAl" id="4OOltvpOJWw" role="3clF45" />
      <node concept="3Tm1VV" id="4OOltvpOJWx" role="1B3o_S" />
      <node concept="3clFbS" id="4OOltvpOJWy" role="3clF47">
        <node concept="XkiVB" id="4OOltvpOJWz" role="3cqZAp">
          <ref role="37wK5l" node="6xm2RBlmxP4" resolve="ServerEditorComponent" />
          <node concept="37vLTw" id="4OOltvpOT6e" role="37wK5m">
            <ref role="3cqZAo" node="4OOltvpOJZi" resolve="node" />
          </node>
          <node concept="37vLTw" id="4OOltvpOUAg" role="37wK5m">
            <ref role="3cqZAo" node="4OOltvpOJZk" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4OOltvpOJZi" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4OOltvpOJZj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4OOltvpOJZk" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4OOltvpOJZl" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OOltvpQgXJ" role="jymVt" />
    <node concept="3clFb_" id="4OOltvpQgJ9" role="jymVt">
      <property role="TrG5h" value="createEditorContext" />
      <node concept="3Tmbuc" id="4OOltvpQgJa" role="1B3o_S" />
      <node concept="2AHcQZ" id="4OOltvpQgJc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="4OOltvpQgJd" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorContext" resolve="EditorContext" />
      </node>
      <node concept="37vLTG" id="4OOltvpQgJe" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4OOltvpQgJf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="4OOltvpQgJg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="4OOltvpQgJh" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4OOltvpQgJi" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="2AHcQZ" id="4OOltvpQgJj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4OOltvpQgJl" role="3clF47">
        <node concept="3cpWs6" id="4OOltvpQlKF" role="3cqZAp">
          <node concept="2ShNRf" id="4OOltvpQncM" role="3cqZAk">
            <node concept="1pGfFk" id="4OOltvpQr0a" role="2ShVmc">
              <ref role="37wK5l" node="4OOltvpQioy" resolve="ServerInspectorEditorComponent.ServerInspectorEditorContext" />
              <node concept="Xjq3P" id="4OOltvpQrPb" role="37wK5m" />
              <node concept="37vLTw" id="4OOltvpQsF6" role="37wK5m">
                <ref role="3cqZAo" node="4OOltvpQgJe" resolve="model" />
              </node>
              <node concept="37vLTw" id="4OOltvpQtAB" role="37wK5m">
                <ref role="3cqZAo" node="4OOltvpQgJh" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OOltvpQgJm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OOltvpQh37" role="jymVt" />
    <node concept="312cEu" id="4OOltvpQhrl" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ServerInspectorEditorContext" />
      <node concept="3Tm6S6" id="4OOltvpQhxC" role="1B3o_S" />
      <node concept="3uibUv" id="4OOltvpQikO" role="1zkMxy">
        <ref role="3uigEE" to="exr9:~EditorContext" resolve="EditorContext" />
      </node>
      <node concept="3clFbW" id="4OOltvpQioy" role="jymVt">
        <property role="TrG5h" value="EditorContext" />
        <node concept="3cqZAl" id="4OOltvpQioz" role="3clF45" />
        <node concept="3Tm1VV" id="4OOltvpQio$" role="1B3o_S" />
        <node concept="37vLTG" id="4OOltvpQioA" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="4OOltvpQioB" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="4OOltvpQioC" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4OOltvpQioD" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="4OOltvpQioE" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
          <node concept="2AHcQZ" id="4OOltvpQioF" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="4OOltvpQioG" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="4OOltvpQioH" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2AHcQZ" id="4OOltvpQioI" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4OOltvpQioJ" role="3clF47">
          <node concept="XkiVB" id="4OOltvpQioN" role="3cqZAp">
            <ref role="37wK5l" to="exr9:~EditorContext.&lt;init&gt;(jetbrains.mps.nodeEditor.EditorComponent,org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.module.SRepository)" resolve="EditorContext" />
            <node concept="37vLTw" id="4OOltvpQioK" role="37wK5m">
              <ref role="3cqZAo" node="4OOltvpQioA" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="4OOltvpQioL" role="37wK5m">
              <ref role="3cqZAo" node="4OOltvpQioD" resolve="model" />
            </node>
            <node concept="37vLTw" id="4OOltvpQioM" role="37wK5m">
              <ref role="3cqZAo" node="4OOltvpQioG" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4OOltvpQi$f" role="jymVt">
        <property role="TrG5h" value="isInspector" />
        <node concept="3Tm1VV" id="4OOltvpQi$g" role="1B3o_S" />
        <node concept="10P_77" id="4OOltvpQi$i" role="3clF45" />
        <node concept="3clFbS" id="4OOltvpQi$j" role="3clF47">
          <node concept="3cpWs6" id="4OOltvpQjGp" role="3cqZAp">
            <node concept="3clFbT" id="4OOltvpQkOf" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4OOltvpQi$k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4CmvvxIWTNL" role="1B3o_S" />
    <node concept="3uibUv" id="4CmvvxIWUbl" role="1zkMxy">
      <ref role="3uigEE" node="6xm2RBlmxIu" resolve="ServerEditorComponent" />
    </node>
  </node>
</model>

