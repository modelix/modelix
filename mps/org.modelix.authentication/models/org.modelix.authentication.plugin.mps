<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d08664e2-1f34-4206-af22-5f6ebb6628cd(org.modelix.authentication.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
  </languages>
  <imports>
    <import index="4h87" ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)" />
    <import index="9xw8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.handler.codec.http(MPS.IDEA/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="wy2b" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.google.gson(org.modelix.lib/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="iwnc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.io(MPS.IDEA/)" />
    <import index="iil0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.buffer(MPS.IDEA/)" />
    <import index="ap92" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.util(MPS.IDEA/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="y2et" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.apache.commons.codec.binary(org.modelix.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765275063380" name="de.slisson.mps.reflection.structure.ReflectionFieldAccess" flags="ng" index="1PnCL0">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210676907584" name="afterReadBlock" index="3xXSXp" />
        <child id="1210676918600" name="beforeWriteBlock" index="3xXVxh" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210676672555" name="jetbrains.mps.lang.plugin.structure.OnBeforeWriteBlock" flags="in" index="3xWZ$M" />
      <concept id="1210676879526" name="jetbrains.mps.lang.plugin.structure.OnAfterReadBlock" flags="in" index="3xXM6Z" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
      </concept>
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
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
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat6" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
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
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
      <concept id="5573986434797765074" name="jetbrains.mps.ide.httpsupport.structure.HttpRequestParameter" flags="ng" index="pFkrN" />
      <concept id="5573986434797590400" name="jetbrains.mps.ide.httpsupport.structure.RequestHandler" flags="ng" index="pFx2x">
        <child id="5573986434797811183" name="handleFunction" index="pCJbe" />
        <child id="6040064942661848825" name="queryPrefix" index="std7D" />
        <child id="2332657309400291202" name="queryParameters" index="3_QDjO" />
      </concept>
      <concept id="6040064942661848791" name="jetbrains.mps.ide.httpsupport.structure.QueryPath" flags="ng" index="std77">
        <child id="6040064942661848818" name="segmetns" index="std7y" />
      </concept>
      <concept id="6040064942661848792" name="jetbrains.mps.ide.httpsupport.structure.QuerySegment" flags="ng" index="std78">
        <property id="6040064942662280271" name="segment" index="svBHv" />
      </concept>
      <concept id="2332657309400452757" name="jetbrains.mps.ide.httpsupport.structure.QueryParameterReference" flags="ng" index="3_PKRz">
        <reference id="2332657309400452758" name="queryParameter" index="3_PKRw" />
      </concept>
      <concept id="2332657309400282169" name="jetbrains.mps.ide.httpsupport.structure.QueryParameter" flags="ng" index="3_QJtf">
        <child id="5111696079053634063" name="parameterConverter" index="1TjXUf" />
      </concept>
      <concept id="5111696079053507374" name="jetbrains.mps.ide.httpsupport.structure.DefaultParameterConverter" flags="ng" index="1TjqYI">
        <child id="5111696079053507400" name="parameterType" index="1TjqZ8" />
      </concept>
      <concept id="6886330673564897217" name="jetbrains.mps.ide.httpsupport.structure.ResponseSendOperation" flags="ng" index="1W9Qq2">
        <property id="6886330673564897341" name="type" index="1W9R_Y" />
        <child id="6886330673564897343" name="buffer" index="1W9R_W" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="1yokyoYyZSz">
    <property role="TrG5h" value="AuthenticationService" />
    <node concept="2uRRBj" id="1yokyoYyZS$" role="2uRRBE">
      <node concept="3clFbS" id="1yokyoYyZS_" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="1yokyoYyZSK">
    <property role="TrG5h" value="AuthenticationManager" />
    <node concept="2tJIrI" id="7f6_nf_ukTf" role="jymVt" />
    <node concept="Wx3nA" id="7$Qv9nHSu2h" role="jymVt">
      <property role="TrG5h" value="processes" />
      <node concept="3rvAFt" id="7$Qv9nHSu2k" role="1tU5fm">
        <node concept="17QB3L" id="7$Qv9nHSu2l" role="3rvQeY" />
        <node concept="3uibUv" id="7$Qv9nHSu2m" role="3rvSg0">
          <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
        </node>
      </node>
      <node concept="2ShNRf" id="7$Qv9nHSu2n" role="33vP2m">
        <node concept="3rGOSV" id="7$Qv9nHSu2o" role="2ShVmc">
          <node concept="17QB3L" id="7$Qv9nHSu2p" role="3rHrn6" />
          <node concept="3uibUv" id="7$Qv9nHSu2q" role="3rHtpV">
            <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7$Qv9nHSu2j" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7$Qv9nHSrb3" role="jymVt" />
    <node concept="2YIFZL" id="7$Qv9nHSpOT" role="jymVt">
      <property role="TrG5h" value="getAuthenticationProcess" />
      <node concept="3clFbS" id="7$Qv9nHSpOW" role="3clF47">
        <node concept="3clFbJ" id="7$Qv9nHStLr" role="3cqZAp">
          <node concept="3fqX7Q" id="7$Qv9nHStPL" role="3clFbw">
            <node concept="2OqwBi" id="7$Qv9nHSuZd" role="3fr31v">
              <node concept="37vLTw" id="7$Qv9nHSu_f" role="2Oq$k0">
                <ref role="3cqZAo" node="7$Qv9nHSu2h" resolve="processes" />
              </node>
              <node concept="2Nt0df" id="7$Qv9nHSvxZ" role="2OqNvi">
                <node concept="37vLTw" id="7$Qv9nHSvF6" role="38cxEo">
                  <ref role="3cqZAo" node="7$Qv9nHSqzP" resolve="modelServerURL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7$Qv9nHStLt" role="3clFbx">
            <node concept="3clFbF" id="7$Qv9nHSvVK" role="3cqZAp">
              <node concept="37vLTI" id="7$Qv9nHSwwH" role="3clFbG">
                <node concept="2ShNRf" id="7$Qv9nHSwFp" role="37vLTx">
                  <node concept="1pGfFk" id="7$Qv9nHSwBm" role="2ShVmc">
                    <ref role="37wK5l" node="7$Qv9nHSnmr" resolve="AuthenticationProcess" />
                    <node concept="37vLTw" id="7$Qv9nHSwOs" role="37wK5m">
                      <ref role="3cqZAo" node="7$Qv9nHSqzP" resolve="modelServerURL" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="7$Qv9nHSwfP" role="37vLTJ">
                  <node concept="37vLTw" id="7$Qv9nHSwqk" role="3ElVtu">
                    <ref role="3cqZAo" node="7$Qv9nHSqzP" resolve="modelServerURL" />
                  </node>
                  <node concept="37vLTw" id="7$Qv9nHSvVJ" role="3ElQJh">
                    <ref role="3cqZAo" node="7$Qv9nHSu2h" resolve="processes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7$Qv9nHSwYh" role="3cqZAp">
          <node concept="3EllGN" id="7$Qv9nHSwZ5" role="3cqZAk">
            <node concept="37vLTw" id="7$Qv9nHSwZ6" role="3ElVtu">
              <ref role="3cqZAo" node="7$Qv9nHSqzP" resolve="modelServerURL" />
            </node>
            <node concept="37vLTw" id="7$Qv9nHSwZb" role="3ElQJh">
              <ref role="3cqZAo" node="7$Qv9nHSu2h" resolve="processes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7$Qv9nHSpnO" role="1B3o_S" />
      <node concept="3uibUv" id="7$Qv9nHSqtn" role="3clF45">
        <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
      </node>
      <node concept="37vLTG" id="7$Qv9nHSqzP" role="3clF46">
        <property role="TrG5h" value="modelServerURL" />
        <node concept="17QB3L" id="7$Qv9nHSqzO" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7hml1DJ4C6U" role="jymVt" />
    <node concept="2YIFZL" id="7hml1DJ4Enp" role="jymVt">
      <property role="TrG5h" value="fragmentExtractor" />
      <node concept="3clFbS" id="7hml1DJ4Ens" role="3clF47">
        <node concept="3SKdUt" id="7hml1DJ4EM9" role="3cqZAp">
          <node concept="1PaTwC" id="7hml1DJ4EMa" role="1aUNEU">
            <node concept="3oM_SD" id="7hml1DJ4EMb" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMc" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMd" role="1PaTwD">
              <property role="3oM_SC" value="receive" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMe" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMf" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMg" role="1PaTwD">
              <property role="3oM_SC" value="token" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMh" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMi" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMj" role="1PaTwD">
              <property role="3oM_SC" value="fragment," />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMk" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMl" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMm" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMn" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMo" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMq" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMr" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMs" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMt" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMu" role="1PaTwD">
              <property role="3oM_SC" value="browser." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7hml1DJ4EMv" role="3cqZAp">
          <node concept="1PaTwC" id="7hml1DJ4EMw" role="1aUNEU">
            <node concept="3oM_SD" id="7hml1DJ4EMx" role="1PaTwD">
              <property role="3oM_SC" value="For" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMy" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMz" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EM$" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EM_" role="1PaTwD">
              <property role="3oM_SC" value="send" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMA" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMB" role="1PaTwD">
              <property role="3oM_SC" value="JS" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMC" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMD" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EME" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMF" role="1PaTwD">
              <property role="3oM_SC" value="executed" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMH" role="1PaTwD">
              <property role="3oM_SC" value="extract" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMJ" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMK" role="1PaTwD">
              <property role="3oM_SC" value="token" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EML" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMM" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMN" role="1PaTwD">
              <property role="3oM_SC" value="fragment" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMO" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMP" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7hml1DJ4EMQ" role="3cqZAp">
          <node concept="1PaTwC" id="7hml1DJ4EMR" role="1aUNEU">
            <node concept="3oM_SD" id="7hml1DJ4EMS" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMT" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMU" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMW" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMX" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMY" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EMZ" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN0" role="1PaTwD">
              <property role="3oM_SC" value="route" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN1" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN2" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN3" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN4" role="1PaTwD">
              <property role="3oM_SC" value="receive" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN5" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN6" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN7" role="1PaTwD">
              <property role="3oM_SC" value="store" />
            </node>
            <node concept="3oM_SD" id="7hml1DJ4EN8" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7hml1DJ4EN9" role="3cqZAp">
          <node concept="3cpWsn" id="7hml1DJ4ENa" role="3cpWs9">
            <property role="TrG5h" value="jsCode" />
            <node concept="17QB3L" id="7hml1DJ4ENb" role="1tU5fm" />
            <node concept="3cpWs3" id="7hml1DJ4ENc" role="33vP2m">
              <node concept="Xl_RD" id="7hml1DJ4ENd" role="3uHU7w">
                <property role="Xl_RC" value="; fetch(url).then(data =&gt; console.log(\&quot;sent token to \&quot; + url)).catch(error =&gt; console.error(error)).finally(() =&gt; {  });" />
              </node>
              <node concept="3cpWs3" id="7hml1DJ4ENi" role="3uHU7B">
                <node concept="3cpWs3" id="7hml1DJ4ENj" role="3uHU7B">
                  <node concept="Xl_RD" id="7hml1DJ4ENk" role="3uHU7B">
                    <property role="Xl_RC" value="let url = \&quot;http://localhost:" />
                  </node>
                  <node concept="2YIFZM" id="7hml1DJ4ENl" role="3uHU7w">
                    <ref role="37wK5l" to="rfhd:~Registry.intValue(java.lang.String)" resolve="intValue" />
                    <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                    <node concept="Xl_RD" id="7hml1DJ4ENm" role="37wK5m">
                      <property role="Xl_RC" value="ide.httpsupport.internalPort" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7hml1DJ4ENn" role="3uHU7w">
                  <property role="Xl_RC" value="/modelixauthfragment?\&quot;+window.location.hash.substr(1)" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7hml1DJ4ENo" role="3cqZAp">
          <node concept="3cpWsn" id="7hml1DJ4ENp" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7hml1DJ4ENq" role="1tU5fm" />
            <node concept="Xl_RD" id="7hml1DJ4ENr" role="33vP2m">
              <property role="Xl_RC" value="&lt;html&gt;" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4ENs" role="3cqZAp">
          <node concept="d57v9" id="7hml1DJ4ENt" role="3clFbG">
            <node concept="Xl_RD" id="7hml1DJ4ENu" role="37vLTx">
              <property role="Xl_RC" value="&lt;script&gt;" />
            </node>
            <node concept="37vLTw" id="7hml1DJ4ENv" role="37vLTJ">
              <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4ENw" role="3cqZAp">
          <node concept="d57v9" id="7hml1DJ4ENx" role="3clFbG">
            <node concept="37vLTw" id="7hml1DJ4ENy" role="37vLTx">
              <ref role="3cqZAo" node="7hml1DJ4ENa" resolve="jsCode" />
            </node>
            <node concept="37vLTw" id="7hml1DJ4ENz" role="37vLTJ">
              <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4EN$" role="3cqZAp">
          <node concept="d57v9" id="7hml1DJ4EN_" role="3clFbG">
            <node concept="Xl_RD" id="7hml1DJ4ENA" role="37vLTx">
              <property role="Xl_RC" value="&lt;/script&gt;" />
            </node>
            <node concept="37vLTw" id="7hml1DJ4ENB" role="37vLTJ">
              <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3j2lthEAoV0" role="3cqZAp">
          <node concept="d57v9" id="3j2lthEApAB" role="3clFbG">
            <node concept="Xl_RD" id="3j2lthEApI4" role="37vLTx">
              <property role="Xl_RC" value="&lt;p&gt;Extraction of fragment information... we should be good&lt;/p&gt;" />
            </node>
            <node concept="37vLTw" id="3j2lthEAoUY" role="37vLTJ">
              <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4ENC" role="3cqZAp">
          <node concept="d57v9" id="7hml1DJ4END" role="3clFbG">
            <node concept="Xl_RD" id="7hml1DJ4ENE" role="37vLTx">
              <property role="Xl_RC" value="&lt;/html&gt;" />
            </node>
            <node concept="37vLTw" id="7hml1DJ4ENF" role="37vLTJ">
              <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7hml1DJ4ENG" role="3cqZAp">
          <node concept="3cpWsn" id="7hml1DJ4ENH" role="3cpWs9">
            <property role="TrG5h" value="response" />
            <node concept="3uibUv" id="7hml1DJ4ENI" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~FullHttpResponse" resolve="FullHttpResponse" />
            </node>
            <node concept="2YIFZM" id="7hml1DJ4ENJ" role="33vP2m">
              <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
              <ref role="37wK5l" to="iwnc:~Responses.response(java.lang.String,io.netty.buffer.ByteBuf)" resolve="response" />
              <node concept="Xl_RD" id="7hml1DJ4ENK" role="37wK5m">
                <property role="Xl_RC" value="text/html" />
              </node>
              <node concept="2YIFZM" id="7hml1DJ4ENL" role="37wK5m">
                <ref role="1Pybhc" to="iil0:~Unpooled" resolve="Unpooled" />
                <ref role="37wK5l" to="iil0:~Unpooled.copiedBuffer(java.lang.CharSequence,java.nio.charset.Charset)" resolve="copiedBuffer" />
                <node concept="37vLTw" id="7hml1DJ4ENM" role="37wK5m">
                  <ref role="3cqZAo" node="7hml1DJ4ENp" resolve="text" />
                </node>
                <node concept="10M0yZ" id="7hml1DJ4ENN" role="37wK5m">
                  <ref role="3cqZAo" to="ap92:~CharsetUtil.UTF_8" resolve="UTF_8" />
                  <ref role="1PxDUh" to="ap92:~CharsetUtil" resolve="CharsetUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4ENR" role="3cqZAp">
          <node concept="2OqwBi" id="7hml1DJ4ENS" role="3clFbG">
            <node concept="37vLTw" id="7hml1DJ4ENT" role="2Oq$k0">
              <ref role="3cqZAo" node="7hml1DJ4ENH" resolve="response" />
            </node>
            <node concept="liA8E" id="7hml1DJ4ENU" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~FullHttpResponse.setStatus(io.netty.handler.codec.http.HttpResponseStatus)" resolve="setStatus" />
              <node concept="10M0yZ" id="7hml1DJ4ENV" role="37wK5m">
                <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
                <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.OK" resolve="OK" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hml1DJ4ENZ" role="3cqZAp">
          <node concept="2YIFZM" id="7hml1DJ4EO0" role="3clFbG">
            <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
            <ref role="37wK5l" to="iwnc:~Responses.send(io.netty.handler.codec.http.HttpResponse,io.netty.channel.Channel,io.netty.handler.codec.http.HttpRequest)" resolve="send" />
            <node concept="37vLTw" id="7hml1DJ4EO1" role="37wK5m">
              <ref role="3cqZAo" node="7hml1DJ4ENH" resolve="response" />
            </node>
            <node concept="2OqwBi" id="7hml1DJ4EO2" role="37wK5m">
              <node concept="37vLTw" id="7hml1DJ4EO3" role="2Oq$k0">
                <ref role="3cqZAo" node="7hml1DJ4Ey_" resolve="request" />
              </node>
              <node concept="1PnCL0" id="7hml1DJ4EO4" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:5dkEk59WCkE" resolve="channel" />
              </node>
            </node>
            <node concept="2OqwBi" id="7hml1DJ4EO5" role="37wK5m">
              <node concept="37vLTw" id="7hml1DJ4EO6" role="2Oq$k0">
                <ref role="3cqZAo" node="7hml1DJ4Ey_" resolve="request" />
              </node>
              <node concept="1PnCL0" id="7hml1DJ4EO7" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:6GArDv5I22B" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7hml1DJ4Ce8" role="1B3o_S" />
      <node concept="3cqZAl" id="7hml1DJ4EmV" role="3clF45" />
      <node concept="37vLTG" id="7hml1DJ4Ey_" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="7hml1DJ4Ey$" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_ukTW" role="jymVt" />
    <node concept="3Tm1VV" id="1yokyoYyZSL" role="1B3o_S" />
    <node concept="3UR2Jj" id="1ln$sNEa0se" role="lGtFl">
      <node concept="TZ5HA" id="1ln$sNEa0sf" role="TZ5H$">
        <node concept="1dT_AC" id="1ln$sNEa0sg" role="1dT_Ay">
          <property role="1dT_AB" value="This class just tracks the ongoing authentication processes. " />
        </node>
      </node>
      <node concept="TZ5HA" id="1ln$sNEa1kd" role="TZ5H$">
        <node concept="1dT_AC" id="1ln$sNEa1ke" role="1dT_Ay">
          <property role="1dT_AB" value="We may have one per model server." />
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="70oIz4akzr4" />
  <node concept="pFx2x" id="1yokyoYz5xr">
    <property role="TrG5h" value="AuthenticationRequestHandler" />
    <property role="3GE5qa" value="routes" />
    <node concept="3_QJtf" id="1Hg6LmJlwjN" role="3_QDjO">
      <property role="TrG5h" value="state" />
      <node concept="1TjqYI" id="1Hg6LmJlxzi" role="1TjXUf">
        <node concept="17QB3L" id="1Hg6LmJlxBw" role="1TjqZ8" />
      </node>
    </node>
    <node concept="std77" id="1yokyoYz5xs" role="std7D">
      <node concept="std78" id="1yokyoYz5$3" role="std7y">
        <property role="svBHv" value="modelixauthtoken" />
      </node>
    </node>
    <node concept="pF8on" id="1yokyoYz5xt" role="pCJbe">
      <node concept="3clFbS" id="1yokyoYz5xu" role="2VODD2">
        <node concept="3SKdUt" id="3lhpBbDa7x" role="3cqZAp">
          <node concept="1PaTwC" id="3lhpBbDa7y" role="1aUNEU">
            <node concept="3oM_SD" id="3lhpBbDa7z" role="1PaTwD">
              <property role="3oM_SC" value="Ideally" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7$" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7_" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7A" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7B" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7C" role="1PaTwD">
              <property role="3oM_SC" value="modelServerURL" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7D" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7E" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7F" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7G" role="1PaTwD">
              <property role="3oM_SC" value="parameter," />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7H" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7I" role="1PaTwD">
              <property role="3oM_SC" value="unfortunately" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7J" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7K" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7L" role="1PaTwD">
              <property role="3oM_SC" value="require" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3lhpBbDa7M" role="3cqZAp">
          <node concept="1PaTwC" id="3lhpBbDa7N" role="1aUNEU">
            <node concept="3oM_SD" id="3lhpBbDa7O" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7P" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7Q" role="1PaTwD">
              <property role="3oM_SC" value="appear" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7R" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7S" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7T" role="1PaTwD">
              <property role="3oM_SC" value="authorized" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7U" role="1PaTwD">
              <property role="3oM_SC" value="redirection" />
            </node>
            <node concept="3oM_SD" id="3lhpBbDa7V" role="1PaTwD">
              <property role="3oM_SC" value="URI" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Hg6LmJly2$" role="3cqZAp">
          <node concept="3clFbS" id="1Hg6LmJly2A" role="3clFbx">
            <node concept="3clFbH" id="7hml1DJ4_LQ" role="3cqZAp" />
            <node concept="3SKdUt" id="7hml1DJ4Aaq" role="3cqZAp">
              <node concept="1PaTwC" id="7hml1DJ4Aar" role="1aUNEU">
                <node concept="3oM_SD" id="7hml1DJ4Aas" role="1PaTwD">
                  <property role="3oM_SC" value="We" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Abq" role="1PaTwD">
                  <property role="3oM_SC" value="did" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Abv" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Ab_" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4AbO" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4AbW" role="1PaTwD">
                  <property role="3oM_SC" value="state" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Ac5" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Acf" role="1PaTwD">
                  <property role="3oM_SC" value="query" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Acq" role="1PaTwD">
                  <property role="3oM_SC" value="parameter" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Ad6" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Adz" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4AfO" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Agb" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Agz" role="1PaTwD">
                  <property role="3oM_SC" value="received" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4AgW" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Ahe" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4AhL" role="1PaTwD">
                  <property role="3oM_SC" value="fragment" />
                </node>
                <node concept="3oM_SD" id="7hml1DJ4Ai5" role="1PaTwD">
                  <property role="3oM_SC" value="instead" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7hml1DJ4_MO" role="3cqZAp" />
            <node concept="1X3_iC" id="7hml1DJ4C1_" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="1Hg6LmJlATO" role="8Wnug">
                <node concept="2OqwBi" id="1Hg6LmJlAZG" role="3clFbG">
                  <node concept="pFkrN" id="1Hg6LmJlATN" role="2Oq$k0" />
                  <node concept="liA8E" id="1Hg6LmJlB9s" role="2OqNvi">
                    <ref role="37wK5l" to="4h87:5YhakczIvRr" resolve="sendText" />
                    <node concept="10M0yZ" id="1Hg6LmJlMgY" role="37wK5m">
                      <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.BAD_REQUEST" resolve="BAD_REQUEST" />
                      <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
                    </node>
                    <node concept="Xl_RD" id="1Hg6LmJlMiZ" role="37wK5m">
                      <property role="Xl_RC" value="State missing or invalid (we need state to get the modelServerURL)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7hml1DJ4FLS" role="3cqZAp">
              <node concept="2YIFZM" id="7hml1DJ4FGV" role="3clFbG">
                <ref role="37wK5l" node="7hml1DJ4Enp" resolve="fragmentExtractor" />
                <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
                <node concept="pFkrN" id="7hml1DJ4FJl" role="37wK5m" />
              </node>
            </node>
            <node concept="3cpWs6" id="7hml1DJ4FSG" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="1Hg6LmJl$dj" role="3clFbw">
            <node concept="3clFbC" id="1Hg6LmJl$cg" role="3uHU7B">
              <node concept="3_PKRz" id="1Hg6LmJlzEN" role="3uHU7B">
                <ref role="3_PKRw" node="1Hg6LmJlwjN" resolve="state" />
              </node>
              <node concept="10Nm6u" id="1Hg6LmJl$aV" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="1Hg6LmJl$f$" role="3uHU7w">
              <node concept="2OqwBi" id="1Hg6LmJl$fA" role="3fr31v">
                <node concept="3_PKRz" id="1Hg6LmJl$fB" role="2Oq$k0">
                  <ref role="3_PKRw" node="1Hg6LmJlwjN" resolve="state" />
                </node>
                <node concept="liA8E" id="1Hg6LmJl$fC" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="1Hg6LmJl$fD" role="37wK5m">
                    <property role="Xl_RC" value="step1_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lhpBbDacp" role="3cqZAp">
          <node concept="3cpWsn" id="3lhpBbDacs" role="3cpWs9">
            <property role="TrG5h" value="modelServerURL" />
            <node concept="17QB3L" id="3lhpBbDacn" role="1tU5fm" />
            <node concept="2OqwBi" id="1Hg6LmJlNjo" role="33vP2m">
              <node concept="3_PKRz" id="1Hg6LmJlN5n" role="2Oq$k0">
                <ref role="3_PKRw" node="1Hg6LmJlwjN" resolve="state" />
              </node>
              <node concept="liA8E" id="1Hg6LmJlNKk" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="2OqwBi" id="1Hg6LmJlOo1" role="37wK5m">
                  <node concept="Xl_RD" id="1Hg6LmJlNPL" role="2Oq$k0">
                    <property role="Xl_RC" value="step_1" />
                  </node>
                  <node concept="liA8E" id="1Hg6LmJlOL$" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4fpU1SJfRT8" role="3cqZAp">
          <node concept="2OqwBi" id="4fpU1SJfWRV" role="3clFbG">
            <node concept="2YIFZM" id="7$Qv9nHS_n_" role="2Oq$k0">
              <ref role="37wK5l" node="7$Qv9nHSpOT" resolve="getAuthenticationProcess" />
              <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
              <node concept="37vLTw" id="3lhpBbDakJ" role="37wK5m">
                <ref role="3cqZAo" node="3lhpBbDacs" resolve="modelServerURL" />
              </node>
            </node>
            <node concept="liA8E" id="4fpU1SJfX0z" role="2OqNvi">
              <ref role="37wK5l" node="3poOr4tqniY" resolve="processResponse" />
              <node concept="pFkrN" id="3poOr4trapy" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3poOr4tmimi" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7xblg8lmms7">
    <property role="TrG5h" value="ModelixAuthenticationConfigurationComponent" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="configuration" />
    <node concept="2tJIrI" id="5oXgFRIQhti" role="jymVt" />
    <node concept="Wx3nA" id="5oXgFRIQkD7" role="jymVt">
      <property role="TrG5h" value="CODE_FOR_AUTHORIZATION_FLOW" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5oXgFRIQhWi" role="1B3o_S" />
      <node concept="Xl_RD" id="5oXgFRIQt7g" role="33vP2m">
        <property role="Xl_RC" value="authorizationCode" />
      </node>
      <node concept="17QB3L" id="5oXgFRIQl4c" role="1tU5fm" />
    </node>
    <node concept="Wx3nA" id="5oXgFRIQuV9" role="jymVt">
      <property role="TrG5h" value="CODE_FOR_AUTHORIZATION_PKCE_FLOW" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5oXgFRIQuVa" role="1B3o_S" />
      <node concept="Xl_RD" id="5oXgFRIQuVb" role="33vP2m">
        <property role="Xl_RC" value="authorizationCodePKCE" />
      </node>
      <node concept="17QB3L" id="5oXgFRIQuVc" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3ljvbPN8Pfg" role="jymVt" />
    <node concept="Qs71p" id="3ljvbPN8R$Z" role="jymVt">
      <property role="TrG5h" value="AuthenticationStrategyType" />
      <node concept="3Tm1VV" id="3ljvbPN8Qur" role="1B3o_S" />
      <node concept="QsSxf" id="3ljvbPN8SG7" role="Qtgdg">
        <property role="TrG5h" value="AUTHORIZATION_FLOW" />
        <ref role="37wK5l" node="3ljvbPN8WDU" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
        <node concept="Xl_RD" id="3ljvbPN94Uv" role="37wK5m">
          <property role="Xl_RC" value="authorizationCode" />
        </node>
      </node>
      <node concept="QsSxf" id="3ljvbPN8SUL" role="Qtgdg">
        <property role="TrG5h" value="AUTHORIZATION_PKCE_FLOW" />
        <ref role="37wK5l" node="3ljvbPN8WDU" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
        <node concept="Xl_RD" id="3ljvbPN94VV" role="37wK5m">
          <property role="Xl_RC" value="authorizationCodePKCE" />
        </node>
      </node>
      <node concept="312cEg" id="3ljvbPN927P" role="jymVt">
        <property role="TrG5h" value="code" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="3ljvbPN9225" role="1tU5fm" />
        <node concept="3Tm6S6" id="3ljvbPN92cg" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3ljvbPN92kR" role="jymVt" />
      <node concept="3clFbW" id="3ljvbPN8WDU" role="jymVt">
        <node concept="3cqZAl" id="3ljvbPN8WDW" role="3clF45" />
        <node concept="3clFbS" id="3ljvbPN8WDX" role="3clF47">
          <node concept="3clFbF" id="3ljvbPN92SK" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPN93Up" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPN94nU" role="37vLTx">
                <ref role="3cqZAo" node="3ljvbPN8X9r" resolve="code" />
              </node>
              <node concept="2OqwBi" id="3ljvbPN939r" role="37vLTJ">
                <node concept="Xjq3P" id="3ljvbPN92SJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3ljvbPN93BG" role="2OqNvi">
                  <ref role="2Oxat6" node="3ljvbPN927P" resolve="code" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3ljvbPN8X9r" role="3clF46">
          <property role="TrG5h" value="code" />
          <node concept="17QB3L" id="3ljvbPN8X9q" role="1tU5fm" />
        </node>
        <node concept="3Tm6S6" id="3ljvbPN92dC" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3ljvbPN9$PL" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPN9_Er" role="jymVt">
        <property role="TrG5h" value="getCode" />
        <node concept="3clFbS" id="3ljvbPN9_Eu" role="3clF47">
          <node concept="3cpWs6" id="3ljvbPN9AB$" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPN9BL6" role="3cqZAk">
              <node concept="Xjq3P" id="3ljvbPN9B3Y" role="2Oq$k0" />
              <node concept="2OwXpG" id="3ljvbPN9Cfv" role="2OqNvi">
                <ref role="2Oxat6" node="3ljvbPN927P" resolve="code" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3ljvbPN9_fl" role="1B3o_S" />
        <node concept="17QB3L" id="3ljvbPN9A6A" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="3ljvbPN973j" role="jymVt" />
      <node concept="2YIFZL" id="3ljvbPN9a4x" role="jymVt">
        <property role="TrG5h" value="findByCode" />
        <node concept="3clFbS" id="3ljvbPN9a4$" role="3clF47">
          <node concept="3cpWs6" id="3ljvbPN9aW3" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPN9fQy" role="3cqZAk">
              <node concept="2OqwBi" id="3ljvbPN9fib" role="2Oq$k0">
                <node concept="uiWXb" id="3ljvbPN9f6B" role="2Oq$k0">
                  <ref role="uiZuM" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                </node>
                <node concept="39bAoz" id="3ljvbPN9fz2" role="2OqNvi" />
              </node>
              <node concept="1z4cxt" id="3ljvbPN9jvY" role="2OqNvi">
                <node concept="1bVj0M" id="3ljvbPN9jw0" role="23t8la">
                  <node concept="3clFbS" id="3ljvbPN9jw1" role="1bW5cS">
                    <node concept="3clFbF" id="3ljvbPN9jw2" role="3cqZAp">
                      <node concept="17R0WA" id="3ljvbPN9jw3" role="3clFbG">
                        <node concept="37vLTw" id="3ljvbPN9jw4" role="3uHU7w">
                          <ref role="3cqZAo" node="3ljvbPN9an8" resolve="code" />
                        </node>
                        <node concept="2OqwBi" id="3ljvbPN9jw5" role="3uHU7B">
                          <node concept="37vLTw" id="3ljvbPN9jw6" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPN9jw8" resolve="it" />
                          </node>
                          <node concept="2OwXpG" id="3ljvbPN9jw7" role="2OqNvi">
                            <ref role="2Oxat6" node="3ljvbPN927P" resolve="code" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3ljvbPN9jw8" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3ljvbPN9jw9" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3ljvbPN98Mn" role="1B3o_S" />
        <node concept="3uibUv" id="3ljvbPN99YY" role="3clF45">
          <ref role="3uigEE" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
        </node>
        <node concept="37vLTG" id="3ljvbPN9an8" role="3clF46">
          <property role="TrG5h" value="code" />
          <node concept="17QB3L" id="3ljvbPN9an7" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa5G1$" role="jymVt" />
    <node concept="312cEu" id="55JU2Sa5HU_" role="jymVt">
      <property role="TrG5h" value="StrategyConfiguration" />
      <node concept="312cEg" id="55JU2Sa91d4" role="jymVt">
        <property role="TrG5h" value="type" />
        <node concept="3Tm1VV" id="55JU2SaabiC" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa91cw" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlA" role="jymVt">
        <property role="TrG5h" value="baseURL" />
        <node concept="3Tm1VV" id="55JU2SaabZV" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlD" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlE" role="jymVt">
        <property role="TrG5h" value="clientId" />
        <node concept="3Tm1VV" id="55JU2Saac46" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlH" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlI" role="jymVt">
        <property role="TrG5h" value="scope" />
        <node concept="3Tm1VV" id="55JU2Saac7n" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlL" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlM" role="jymVt">
        <property role="TrG5h" value="tokenVerificationURL" />
        <node concept="3Tm1VV" id="55JU2SaaI4U" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlP" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="55JU2Sa91Sz" role="jymVt" />
      <node concept="3clFb_" id="55JU2Sa922L" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="55JU2Sa922M" role="1B3o_S" />
        <node concept="10Oyi0" id="55JU2Sa922P" role="3clF45" />
        <node concept="3clFbS" id="55JU2Sa922Q" role="3clF47">
          <node concept="3cpWs8" id="55JU2Sa93z1" role="3cqZAp">
            <node concept="3cpWsn" id="55JU2Sa93z2" role="3cpWs9">
              <property role="TrG5h" value="hc" />
              <node concept="10Oyi0" id="55JU2Sa93z3" role="1tU5fm" />
              <node concept="3cmrfG" id="55JU2Sa93z4" role="33vP2m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa93z5" role="3cqZAp">
            <node concept="d57v9" id="55JU2Sa93z6" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa93z7" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa93z2" resolve="hc" />
              </node>
              <node concept="17qRlL" id="55JU2Sa93z8" role="37vLTx">
                <node concept="2OqwBi" id="55JU2Sa93z9" role="3uHU7w">
                  <node concept="37vLTw" id="55JU2Sa94dj" role="2Oq$k0">
                    <ref role="3cqZAo" node="55JU2Sa91d4" resolve="type" />
                  </node>
                  <node concept="liA8E" id="55JU2Sa93zb" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="55JU2Sa93zc" role="3uHU7B">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa94mT" role="3cqZAp">
            <node concept="d57v9" id="55JU2Sa94mU" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa94mV" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa93z2" resolve="hc" />
              </node>
              <node concept="17qRlL" id="55JU2Sa94mW" role="37vLTx">
                <node concept="2OqwBi" id="55JU2Sa94mX" role="3uHU7w">
                  <node concept="37vLTw" id="55JU2Sa9590" role="2Oq$k0">
                    <ref role="3cqZAo" node="55JU2Sa5UlA" resolve="baseURL" />
                  </node>
                  <node concept="liA8E" id="55JU2Sa94mZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="55JU2Sa94n0" role="3uHU7B">
                  <property role="3cmrfH" value="5" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPNcGfq" role="3cqZAp">
            <node concept="d57v9" id="3ljvbPNcGfr" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPNcGfs" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa93z2" resolve="hc" />
              </node>
              <node concept="17qRlL" id="3ljvbPNcGft" role="37vLTx">
                <node concept="2OqwBi" id="3ljvbPNcGfu" role="3uHU7w">
                  <node concept="37vLTw" id="3ljvbPNcHGI" role="2Oq$k0">
                    <ref role="3cqZAo" node="55JU2Sa5UlE" resolve="clientId" />
                  </node>
                  <node concept="liA8E" id="3ljvbPNcGfw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3ljvbPNcGfx" role="3uHU7B">
                  <property role="3cmrfH" value="7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPNcGg2" role="3cqZAp">
            <node concept="d57v9" id="3ljvbPNcGg3" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPNcGg4" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa93z2" resolve="hc" />
              </node>
              <node concept="17qRlL" id="3ljvbPNcGg5" role="37vLTx">
                <node concept="2OqwBi" id="3ljvbPNcGg6" role="3uHU7w">
                  <node concept="37vLTw" id="3ljvbPNcIpP" role="2Oq$k0">
                    <ref role="3cqZAo" node="55JU2Sa5UlI" resolve="scope" />
                  </node>
                  <node concept="liA8E" id="3ljvbPNcGg8" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3ljvbPNcGg9" role="3uHU7B">
                  <property role="3cmrfH" value="11" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="55JU2Sa93zd" role="3cqZAp">
            <node concept="37vLTw" id="55JU2Sa93ze" role="3cqZAk">
              <ref role="3cqZAo" node="55JU2Sa93z2" resolve="hc" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="55JU2Sa922R" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPNa8Bp" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPNab_x" role="jymVt">
        <property role="TrG5h" value="loadStrategyTypeByCode" />
        <node concept="3clFbS" id="3ljvbPNab_$" role="3clF47">
          <node concept="3cpWs8" id="3ljvbPNae73" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPNae74" role="3cpWs9">
              <property role="TrG5h" value="strategyType" />
              <node concept="3uibUv" id="3ljvbPNae75" role="1tU5fm">
                <ref role="3uigEE" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
              </node>
              <node concept="2YIFZM" id="3ljvbPNaklN" role="33vP2m">
                <ref role="37wK5l" node="3ljvbPN9a4x" resolve="findByCode" />
                <ref role="1Pybhc" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                <node concept="2OqwBi" id="3ljvbPNamfq" role="37wK5m">
                  <node concept="Xjq3P" id="3ljvbPNal8N" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3ljvbPNanyK" role="2OqNvi">
                    <ref role="2Oxat6" node="55JU2Sa91d4" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3ljvbPNaeE_" role="3cqZAp">
            <node concept="3clFbS" id="3ljvbPNaeEB" role="3clFbx">
              <node concept="YS8fn" id="3ljvbPNacCg" role="3cqZAp">
                <node concept="2ShNRf" id="3ljvbPNacCh" role="YScLw">
                  <node concept="1pGfFk" id="3ljvbPNacCi" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="3ljvbPNacCj" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPNacCk" role="3uHU7w">
                        <node concept="2OqwBi" id="3ljvbPNacCl" role="2Oq$k0">
                          <node concept="2OqwBi" id="3ljvbPNacCm" role="2Oq$k0">
                            <node concept="uiWXb" id="3ljvbPNacCn" role="2Oq$k0">
                              <ref role="uiZuM" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                            </node>
                            <node concept="39bAoz" id="3ljvbPNacCo" role="2OqNvi" />
                          </node>
                          <node concept="3$u5V9" id="3ljvbPNacCp" role="2OqNvi">
                            <node concept="1bVj0M" id="3ljvbPNacCq" role="23t8la">
                              <node concept="3clFbS" id="3ljvbPNacCr" role="1bW5cS">
                                <node concept="3clFbF" id="3ljvbPNacCs" role="3cqZAp">
                                  <node concept="2OqwBi" id="3ljvbPNacCt" role="3clFbG">
                                    <node concept="37vLTw" id="3ljvbPNacCu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3ljvbPNacCw" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="3ljvbPNacCv" role="2OqNvi">
                                      <ref role="37wK5l" node="3ljvbPN9_Er" resolve="getCode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3ljvbPNacCw" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="3ljvbPNacCx" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uJxvA" id="3ljvbPNacCy" role="2OqNvi">
                          <node concept="Xl_RD" id="3ljvbPNacCz" role="3uJOhx">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="3ljvbPNacC$" role="3uHU7B">
                        <node concept="3cpWs3" id="3ljvbPNacC_" role="3uHU7B">
                          <node concept="Xl_RD" id="3ljvbPNacCA" role="3uHU7B">
                            <property role="Xl_RC" value="The configuration refers to an unexisting strategy type: " />
                          </node>
                          <node concept="2OqwBi" id="3ljvbPNacCB" role="3uHU7w">
                            <node concept="Xjq3P" id="3ljvbPNadiR" role="2Oq$k0" />
                            <node concept="2OwXpG" id="3ljvbPNacCF" role="2OqNvi">
                              <ref role="2Oxat6" node="55JU2Sa91d4" resolve="type" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3ljvbPNacCG" role="3uHU7w">
                          <property role="Xl_RC" value=". Valid values are: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3ljvbPNafAe" role="3clFbw">
              <node concept="10Nm6u" id="3ljvbPNafVN" role="3uHU7w" />
              <node concept="37vLTw" id="3ljvbPNaf5s" role="3uHU7B">
                <ref role="3cqZAo" node="3ljvbPNae74" resolve="strategyType" />
              </node>
            </node>
            <node concept="9aQIb" id="3ljvbPNagtX" role="9aQIa">
              <node concept="3clFbS" id="3ljvbPNagtY" role="9aQI4">
                <node concept="3cpWs6" id="3ljvbPNagKL" role="3cqZAp">
                  <node concept="37vLTw" id="3ljvbPNah6r" role="3cqZAk">
                    <ref role="3cqZAo" node="3ljvbPNae74" resolve="strategyType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3ljvbPNaaot" role="1B3o_S" />
        <node concept="3uibUv" id="3ljvbPNaio_" role="3clF45">
          <ref role="3uigEE" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPNa9Fc" role="jymVt" />
      <node concept="3clFb_" id="55JU2Sa922U" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="55JU2Sa922V" role="1B3o_S" />
        <node concept="10P_77" id="55JU2Sa922X" role="3clF45" />
        <node concept="37vLTG" id="55JU2Sa922Y" role="3clF46">
          <property role="TrG5h" value="obj" />
          <node concept="3uibUv" id="55JU2Sa922Z" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="55JU2Sa9230" role="3clF47">
          <node concept="3clFbJ" id="55JU2Sa967r" role="3cqZAp">
            <node concept="3clFbS" id="55JU2Sa967s" role="3clFbx">
              <node concept="3cpWs8" id="55JU2Sa967t" role="3cqZAp">
                <node concept="3cpWsn" id="55JU2Sa967u" role="3cpWs9">
                  <property role="TrG5h" value="other" />
                  <node concept="3uibUv" id="55JU2Sa98ar" role="1tU5fm">
                    <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
                  </node>
                  <node concept="1eOMI4" id="55JU2Sa967w" role="33vP2m">
                    <node concept="10QFUN" id="55JU2Sa967x" role="1eOMHV">
                      <node concept="3uibUv" id="55JU2Sa97PS" role="10QFUM">
                        <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
                      </node>
                      <node concept="37vLTw" id="55JU2Sa967z" role="10QFUP">
                        <ref role="3cqZAo" node="55JU2Sa922Y" resolve="obj" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="55JU2Sa967$" role="3cqZAp">
                <node concept="3clFbS" id="55JU2Sa967_" role="3clFbx">
                  <node concept="3cpWs6" id="55JU2Sa967A" role="3cqZAp">
                    <node concept="3clFbT" id="55JU2Sa967B" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="55JU2Sa967C" role="3clFbw">
                  <node concept="2OqwBi" id="55JU2Sa967D" role="3uHU7w">
                    <node concept="37vLTw" id="55JU2Sa967E" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa967u" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="55JU2Sa98qt" role="2OqNvi">
                      <ref role="2Oxat6" node="55JU2Sa91d4" resolve="type" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="55JU2Sa976L" role="3uHU7B">
                    <ref role="3cqZAo" node="55JU2Sa91d4" resolve="type" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="55JU2Sa98x1" role="3cqZAp">
                <node concept="3clFbS" id="55JU2Sa98x2" role="3clFbx">
                  <node concept="3cpWs6" id="55JU2Sa98x3" role="3cqZAp">
                    <node concept="3clFbT" id="55JU2Sa98x4" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="55JU2Sa98x5" role="3clFbw">
                  <node concept="2OqwBi" id="55JU2Sa98x6" role="3uHU7w">
                    <node concept="37vLTw" id="55JU2Sa98x7" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa967u" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="55JU2Sa99Yo" role="2OqNvi">
                      <ref role="2Oxat6" node="55JU2Sa5UlA" resolve="baseURL" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="55JU2Sa99O0" role="3uHU7B">
                    <ref role="3cqZAo" node="55JU2Sa5UlA" resolve="baseURL" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="55JU2Sa990W" role="3cqZAp">
                <node concept="3clFbS" id="55JU2Sa990X" role="3clFbx">
                  <node concept="3cpWs6" id="55JU2Sa990Y" role="3cqZAp">
                    <node concept="3clFbT" id="55JU2Sa990Z" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="55JU2Sa9910" role="3clFbw">
                  <node concept="2OqwBi" id="55JU2Sa9911" role="3uHU7w">
                    <node concept="37vLTw" id="55JU2Sa9912" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa967u" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="55JU2Sa9aoy" role="2OqNvi">
                      <ref role="2Oxat6" node="55JU2Sa5UlE" resolve="clientId" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="55JU2Sa9ado" role="3uHU7B">
                    <ref role="3cqZAo" node="55JU2Sa5UlE" resolve="clientId" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="55JU2Sa991O" role="3cqZAp">
                <node concept="3clFbS" id="55JU2Sa991P" role="3clFbx">
                  <node concept="3cpWs6" id="55JU2Sa991Q" role="3cqZAp">
                    <node concept="3clFbT" id="55JU2Sa991R" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="55JU2Sa991S" role="3clFbw">
                  <node concept="2OqwBi" id="55JU2Sa991T" role="3uHU7w">
                    <node concept="37vLTw" id="55JU2Sa991U" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa967u" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="55JU2Sa9aFA" role="2OqNvi">
                      <ref role="2Oxat6" node="55JU2Sa5UlI" resolve="scope" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="55JU2Sa9aBy" role="3uHU7B">
                    <ref role="3cqZAo" node="55JU2Sa5UlI" resolve="scope" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="55JU2Sa99lT" role="3cqZAp">
                <node concept="3clFbS" id="55JU2Sa99lU" role="3clFbx">
                  <node concept="3cpWs6" id="55JU2Sa99lV" role="3cqZAp">
                    <node concept="3clFbT" id="55JU2Sa99lW" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="55JU2Sa99lX" role="3clFbw">
                  <node concept="2OqwBi" id="55JU2Sa99lY" role="3uHU7w">
                    <node concept="37vLTw" id="55JU2Sa99lZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa967u" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="55JU2Sa9ch$" role="2OqNvi">
                      <ref role="2Oxat6" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="55JU2Sa9c78" role="3uHU7B">
                    <ref role="3cqZAo" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="55JU2Sa967H" role="3cqZAp">
                <node concept="3clFbT" id="55JU2Sa967I" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="55JU2Sa967J" role="3clFbw">
              <node concept="3uibUv" id="55JU2Sa97zd" role="2ZW6by">
                <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
              </node>
              <node concept="37vLTw" id="55JU2Sa967L" role="2ZW6bz">
                <ref role="3cqZAo" node="55JU2Sa922Y" resolve="obj" />
              </node>
            </node>
            <node concept="9aQIb" id="55JU2Sa967M" role="9aQIa">
              <node concept="3clFbS" id="55JU2Sa967N" role="9aQI4">
                <node concept="3cpWs6" id="55JU2Sa967O" role="3cqZAp">
                  <node concept="3clFbT" id="55JU2Sa967P" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="55JU2Sa9231" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="55JU2SaabGs" role="1B3o_S" />
      <node concept="3clFb_" id="2$HTiPw4r70" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="2$HTiPw4r71" role="1B3o_S" />
        <node concept="3uibUv" id="2$HTiPw4r73" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="2$HTiPw4r74" role="3clF47">
          <node concept="3cpWs6" id="2$HTiPw4sgg" role="3cqZAp">
            <node concept="3cpWs3" id="2$HTiPw4Enw" role="3cqZAk">
              <node concept="Xl_RD" id="2$HTiPw4Eze" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
              <node concept="3cpWs3" id="2$HTiPw4CYL" role="3uHU7B">
                <node concept="3cpWs3" id="2$HTiPw4B8u" role="3uHU7B">
                  <node concept="3cpWs3" id="2$HTiPw4Aez" role="3uHU7B">
                    <node concept="3cpWs3" id="2$HTiPw4$qG" role="3uHU7B">
                      <node concept="3cpWs3" id="2$HTiPw4z2Z" role="3uHU7B">
                        <node concept="3cpWs3" id="2$HTiPw4xqU" role="3uHU7B">
                          <node concept="3cpWs3" id="2$HTiPw4who" role="3uHU7B">
                            <node concept="3cpWs3" id="2$HTiPw4uJb" role="3uHU7B">
                              <node concept="3cpWs3" id="2$HTiPw4u3r" role="3uHU7B">
                                <node concept="Xl_RD" id="2$HTiPw4stn" role="3uHU7B">
                                  <property role="Xl_RC" value="StrategyConfiguration(type " />
                                </node>
                                <node concept="37vLTw" id="2$HTiPw4ufd" role="3uHU7w">
                                  <ref role="3cqZAo" node="55JU2Sa91d4" resolve="type" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="2$HTiPw4uUT" role="3uHU7w">
                                <property role="Xl_RC" value=", baseURL " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2$HTiPw4wXg" role="3uHU7w">
                              <ref role="3cqZAo" node="55JU2Sa5UlA" resolve="baseURL" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2$HTiPw4xAC" role="3uHU7w">
                            <property role="Xl_RC" value=", clientID " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2$HTiPw4zGH" role="3uHU7w">
                          <ref role="3cqZAo" node="55JU2Sa5UlE" resolve="clientId" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2$HTiPw4$Aq" role="3uHU7w">
                        <property role="Xl_RC" value=", scope " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2$HTiPw4AqI" role="3uHU7w">
                      <ref role="3cqZAo" node="55JU2Sa5UlI" resolve="scope" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2$HTiPw4Bkc" role="3uHU7w">
                    <property role="Xl_RC" value=", verifURL " />
                  </node>
                </node>
                <node concept="37vLTw" id="2$HTiPw4DGc" role="3uHU7w">
                  <ref role="3cqZAo" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2$HTiPw4r75" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="3ljvbPNcKDx" role="lGtFl">
        <node concept="TZ5HA" id="3ljvbPNcKDy" role="TZ5H$">
          <node concept="1dT_AC" id="3ljvbPNcKDz" role="1dT_Ay">
            <property role="1dT_AB" value="This is the OAuth configuration for a single model server/proxy" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ljvbPMOQsn" role="jymVt" />
    <node concept="312cEu" id="3ljvbPMOSXA" role="jymVt">
      <property role="TrG5h" value="AuthenticationConfigurationEntry" />
      <node concept="312cEg" id="3ljvbPMOVUp" role="jymVt">
        <property role="TrG5h" value="modelServerURL" />
        <node concept="3Tm1VV" id="3ljvbPMOTK3" role="1B3o_S" />
        <node concept="17QB3L" id="3ljvbPMOVQp" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3ljvbPMOSXB" role="1B3o_S" />
      <node concept="312cEg" id="7xblg8lmo$P" role="jymVt">
        <property role="TrG5h" value="strategyConfiguration" />
        <node concept="3Tm1VV" id="7xblg8lmona" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa5KQT" role="1tU5fm">
          <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
        </node>
      </node>
      <node concept="2tJIrI" id="6UFKywMPP1b" role="jymVt" />
      <node concept="3clFbW" id="6UFKywMPPmk" role="jymVt">
        <node concept="3cqZAl" id="6UFKywMPPmm" role="3clF45" />
        <node concept="3clFbS" id="6UFKywMPPmn" role="3clF47">
          <node concept="3clFbF" id="3ljvbPMP0lH" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMP0NL" role="3clFbG">
              <node concept="10Nm6u" id="3ljvbPMP13z" role="37vLTx" />
              <node concept="37vLTw" id="3ljvbPMP0lF" role="37vLTJ">
                <ref role="3cqZAo" node="3ljvbPMOVUp" resolve="modelServerURL" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6UFKywMPQ4w" role="3cqZAp">
            <node concept="37vLTI" id="6UFKywMPQVh" role="3clFbG">
              <node concept="10Nm6u" id="7f6_nf_yNLj" role="37vLTx" />
              <node concept="37vLTw" id="7f6Tb6nwLo7" role="37vLTJ">
                <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3ljvbPMUMHZ" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3ljvbPMUMN0" role="jymVt" />
      <node concept="3clFbW" id="3ljvbPMUNXk" role="jymVt">
        <node concept="3cqZAl" id="3ljvbPMUNXm" role="3clF45" />
        <node concept="3Tm1VV" id="3ljvbPMUNXn" role="1B3o_S" />
        <node concept="3clFbS" id="3ljvbPMUNXo" role="3clF47">
          <node concept="3clFbF" id="3ljvbPMUP7V" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMUP7W" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMUPXl" role="37vLTx">
                <ref role="3cqZAo" node="3ljvbPMUP37" resolve="modelServerURL" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMUQUm" role="37vLTJ">
                <node concept="Xjq3P" id="3ljvbPMUQvL" role="2Oq$k0" />
                <node concept="2OwXpG" id="3ljvbPMUR27" role="2OqNvi">
                  <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMUP7Z" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMUP80" role="3clFbG">
              <node concept="10Nm6u" id="3ljvbPMUP81" role="37vLTx" />
              <node concept="37vLTw" id="3ljvbPMUP82" role="37vLTJ">
                <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3ljvbPMUP37" role="3clF46">
          <property role="TrG5h" value="modelServerURL" />
          <node concept="17QB3L" id="3ljvbPMUP36" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPNa5Z6" role="jymVt" />
      <node concept="3clFb_" id="6UFKywMPZTt" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="6UFKywMPZTu" role="1B3o_S" />
        <node concept="10Oyi0" id="6UFKywMPZTx" role="3clF45" />
        <node concept="3clFbS" id="6UFKywMPZTy" role="3clF47">
          <node concept="3cpWs8" id="6UFKywMQ262" role="3cqZAp">
            <node concept="3cpWsn" id="6UFKywMQ265" role="3cpWs9">
              <property role="TrG5h" value="hc" />
              <node concept="10Oyi0" id="6UFKywMQ260" role="1tU5fm" />
              <node concept="3cmrfG" id="6UFKywMQ2CL" role="33vP2m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMP14L" role="3cqZAp">
            <node concept="d57v9" id="3ljvbPMP14M" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMP14N" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
              <node concept="17qRlL" id="3ljvbPMP14O" role="37vLTx">
                <node concept="2OqwBi" id="3ljvbPMP14P" role="3uHU7w">
                  <node concept="37vLTw" id="3ljvbPMP2tT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ljvbPMOVUp" resolve="modelServerURL" />
                  </node>
                  <node concept="liA8E" id="3ljvbPMP14R" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3ljvbPMP14S" role="3uHU7B">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6UFKywMQ5Wc" role="3cqZAp">
            <node concept="d57v9" id="6UFKywMQ9cY" role="3clFbG">
              <node concept="37vLTw" id="6UFKywMQ8gX" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
              <node concept="17qRlL" id="6UFKywMQbZB" role="37vLTx">
                <node concept="2OqwBi" id="6UFKywMQd8D" role="3uHU7w">
                  <node concept="37vLTw" id="6UFKywMQcvH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                  </node>
                  <node concept="liA8E" id="6UFKywMQdxO" role="2OqNvi">
                    <ref role="37wK5l" node="55JU2Sa922L" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6UFKywMQaD5" role="3uHU7B">
                  <property role="3cmrfH" value="7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6UFKywMQ2Wu" role="3cqZAp">
            <node concept="37vLTw" id="6UFKywMQ3cu" role="3cqZAk">
              <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6UFKywMPZTz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6UFKywMPZTA" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="6UFKywMPZTB" role="1B3o_S" />
        <node concept="10P_77" id="6UFKywMPZTD" role="3clF45" />
        <node concept="37vLTG" id="6UFKywMPZTE" role="3clF46">
          <property role="TrG5h" value="obj" />
          <node concept="3uibUv" id="6UFKywMPZTF" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="6UFKywMPZTG" role="3clF47">
          <node concept="3clFbJ" id="6UFKywMQmEv" role="3cqZAp">
            <node concept="3clFbS" id="6UFKywMQmEx" role="3clFbx">
              <node concept="3cpWs8" id="6UFKywMQpgh" role="3cqZAp">
                <node concept="3cpWsn" id="6UFKywMQpgi" role="3cpWs9">
                  <property role="TrG5h" value="other" />
                  <node concept="3uibUv" id="3ljvbPMP3js" role="1tU5fm">
                    <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
                  </node>
                  <node concept="1eOMI4" id="6UFKywMQpKu" role="33vP2m">
                    <node concept="10QFUN" id="6UFKywMQpKr" role="1eOMHV">
                      <node concept="3uibUv" id="3ljvbPMP31H" role="10QFUM">
                        <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
                      </node>
                      <node concept="37vLTw" id="6UFKywMQpKx" role="10QFUP">
                        <ref role="3cqZAo" node="6UFKywMPZTE" resolve="obj" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6UFKywMQuQg" role="3cqZAp">
                <node concept="3clFbS" id="6UFKywMQuQh" role="3clFbx">
                  <node concept="3cpWs6" id="6UFKywMQuQi" role="3cqZAp">
                    <node concept="3clFbT" id="6UFKywMQuQj" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="6UFKywMQuQk" role="3clFbw">
                  <node concept="2OqwBi" id="6UFKywMQuQl" role="3uHU7w">
                    <node concept="37vLTw" id="6UFKywMQuQm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="3ljvbPMP4D_" role="2OqNvi">
                      <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ljvbPMP5co" role="3uHU7B">
                    <ref role="3cqZAo" node="3ljvbPMOVUp" resolve="modelServerURL" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3ljvbPMP3Rh" role="3cqZAp">
                <node concept="3clFbS" id="3ljvbPMP3Ri" role="3clFbx">
                  <node concept="3cpWs6" id="3ljvbPMP3Rj" role="3cqZAp">
                    <node concept="3clFbT" id="3ljvbPMP3Rk" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="3ljvbPMP3Rl" role="3clFbw">
                  <node concept="2OqwBi" id="3ljvbPMP3Rm" role="3uHU7w">
                    <node concept="37vLTw" id="3ljvbPMP3Rn" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="3ljvbPMP3Ro" role="2OqNvi">
                      <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ljvbPMP3Rp" role="3uHU7B">
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6UFKywMQucn" role="3cqZAp">
                <node concept="3clFbT" id="6UFKywMQusz" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6UFKywMQnoO" role="3clFbw">
              <node concept="3uibUv" id="3ljvbPMP3zc" role="2ZW6by">
                <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
              </node>
              <node concept="37vLTw" id="6UFKywMQn2_" role="2ZW6bz">
                <ref role="3cqZAo" node="6UFKywMPZTE" resolve="obj" />
              </node>
            </node>
            <node concept="9aQIb" id="6UFKywMQo8Z" role="9aQIa">
              <node concept="3clFbS" id="6UFKywMQo90" role="9aQI4">
                <node concept="3cpWs6" id="6UFKywMQosB" role="3cqZAp">
                  <node concept="3clFbT" id="6UFKywMQoGy" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6UFKywMPZTH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="cJDksuusD8" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="cJDksuusD9" role="1B3o_S" />
        <node concept="3uibUv" id="cJDksuusDb" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="cJDksuusDc" role="3clF47">
          <node concept="3cpWs6" id="cJDksuuttZ" role="3cqZAp">
            <node concept="3cpWs3" id="4fpU1SJgkTn" role="3cqZAk">
              <node concept="Xl_RD" id="7f6Tb6nwPc$" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
              <node concept="3cpWs3" id="cJDksuuxKY" role="3uHU7B">
                <node concept="3cpWs3" id="3ljvbPMP5WJ" role="3uHU7B">
                  <node concept="Xl_RD" id="3ljvbPMP6m_" role="3uHU7w">
                    <property role="Xl_RC" value=", strategyConfiguration" />
                  </node>
                  <node concept="3cpWs3" id="3ljvbPMP7Kq" role="3uHU7B">
                    <node concept="37vLTw" id="3ljvbPMP8Gx" role="3uHU7w">
                      <ref role="3cqZAo" node="3ljvbPMOVUp" resolve="modelServerURL" />
                    </node>
                    <node concept="Xl_RD" id="cJDksuuu46" role="3uHU7B">
                      <property role="Xl_RC" value="AuthenticationConfigurationEntry(modelServerURL: " />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7f6Tb6nwNwG" role="3uHU7w">
                  <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cJDksuusDd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="3ljvbPNcLAJ" role="lGtFl">
        <node concept="TZ5HA" id="3ljvbPNcLAK" role="TZ5H$">
          <node concept="1dT_AC" id="3ljvbPNcLAL" role="1dT_Ay">
            <property role="1dT_AB" value="This associate the OAuth strategy with the modelServerURL for which it should be used." />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7xblg8lmnwf" role="jymVt">
      <property role="TrG5h" value="State" />
      <node concept="312cEg" id="3ljvbPMPaKF" role="jymVt">
        <property role="TrG5h" value="entries" />
        <node concept="3Tm1VV" id="3ljvbPMPa03" role="1B3o_S" />
        <node concept="_YKpA" id="3ljvbPMPanz" role="1tU5fm">
          <node concept="3uibUv" id="3ljvbPMPaD$" role="_ZDj9">
            <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
          </node>
        </node>
        <node concept="2ShNRf" id="3ljvbPMPbKB" role="33vP2m">
          <node concept="2Jqq0_" id="3ljvbPMPb$U" role="2ShVmc">
            <node concept="3uibUv" id="3ljvbPMPb$V" role="HW$YZ">
              <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPMPbT8" role="jymVt" />
      <node concept="2tJIrI" id="3ljvbPMPcxP" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPMPcxQ" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="3ljvbPMPcxR" role="1B3o_S" />
        <node concept="10Oyi0" id="3ljvbPMPcxS" role="3clF45" />
        <node concept="3clFbS" id="3ljvbPMPcxT" role="3clF47">
          <node concept="3cpWs8" id="3ljvbPMPcxU" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPMPcxV" role="3cpWs9">
              <property role="TrG5h" value="hc" />
              <node concept="10Oyi0" id="3ljvbPMPcxW" role="1tU5fm" />
              <node concept="3cmrfG" id="3ljvbPMPcxX" role="33vP2m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMPcxY" role="3cqZAp">
            <node concept="d57v9" id="3ljvbPMPcxZ" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMPcy0" role="37vLTJ">
                <ref role="3cqZAo" node="3ljvbPMPcxV" resolve="hc" />
              </node>
              <node concept="17qRlL" id="3ljvbPMPcy1" role="37vLTx">
                <node concept="2OqwBi" id="3ljvbPMPkzI" role="3uHU7w">
                  <node concept="1eOMI4" id="3ljvbPMPjWG" role="2Oq$k0">
                    <node concept="10QFUN" id="3ljvbPMPjWD" role="1eOMHV">
                      <node concept="3uibUv" id="3ljvbPMPkh_" role="10QFUM">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTw" id="3ljvbPMPjWI" role="10QFUP">
                        <ref role="3cqZAo" node="3ljvbPMPaKF" resolve="entries" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3ljvbPMPkWd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3ljvbPMPcy5" role="3uHU7B">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3ljvbPMPcye" role="3cqZAp">
            <node concept="37vLTw" id="3ljvbPMPcyf" role="3cqZAk">
              <ref role="3cqZAo" node="3ljvbPMPcxV" resolve="hc" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3ljvbPMPcyg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3ljvbPMPcyh" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="3ljvbPMPcyi" role="1B3o_S" />
        <node concept="10P_77" id="3ljvbPMPcyj" role="3clF45" />
        <node concept="37vLTG" id="3ljvbPMPcyk" role="3clF46">
          <property role="TrG5h" value="obj" />
          <node concept="3uibUv" id="3ljvbPMPcyl" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="3ljvbPMPcym" role="3clF47">
          <node concept="3clFbJ" id="3ljvbPMPcyn" role="3cqZAp">
            <node concept="3clFbS" id="3ljvbPMPcyo" role="3clFbx">
              <node concept="3cpWs8" id="3ljvbPMPcyp" role="3cqZAp">
                <node concept="3cpWsn" id="3ljvbPMPcyq" role="3cpWs9">
                  <property role="TrG5h" value="other" />
                  <node concept="3uibUv" id="3ljvbPMPfHB" role="1tU5fm">
                    <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
                  </node>
                  <node concept="1eOMI4" id="3ljvbPMPcys" role="33vP2m">
                    <node concept="10QFUN" id="3ljvbPMPcyt" role="1eOMHV">
                      <node concept="3uibUv" id="3ljvbPMPg5_" role="10QFUM">
                        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
                      </node>
                      <node concept="37vLTw" id="3ljvbPMPcyv" role="10QFUP">
                        <ref role="3cqZAo" node="3ljvbPMPcyk" resolve="obj" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3ljvbPMPcyw" role="3cqZAp">
                <node concept="3clFbS" id="3ljvbPMPcyx" role="3clFbx">
                  <node concept="3cpWs6" id="3ljvbPMPcyy" role="3cqZAp">
                    <node concept="3clFbT" id="3ljvbPMPcyz" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="3ljvbPMPcy$" role="3clFbw">
                  <node concept="2OqwBi" id="3ljvbPMPcy_" role="3uHU7w">
                    <node concept="37vLTw" id="3ljvbPMPcyA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ljvbPMPcyq" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="3ljvbPMPhpd" role="2OqNvi">
                      <ref role="2Oxat6" node="3ljvbPMPaKF" resolve="entries" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ljvbPMPgDz" role="3uHU7B">
                    <ref role="3cqZAo" node="3ljvbPMPaKF" resolve="entries" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3ljvbPMPcyM" role="3cqZAp">
                <node concept="3clFbT" id="3ljvbPMPcyN" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3ljvbPMPcyO" role="3clFbw">
              <node concept="3uibUv" id="3ljvbPMPeYA" role="2ZW6by">
                <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
              </node>
              <node concept="37vLTw" id="3ljvbPMPcyQ" role="2ZW6bz">
                <ref role="3cqZAo" node="3ljvbPMPcyk" resolve="obj" />
              </node>
            </node>
            <node concept="9aQIb" id="3ljvbPMPcyR" role="9aQIa">
              <node concept="3clFbS" id="3ljvbPMPcyS" role="9aQI4">
                <node concept="3cpWs6" id="3ljvbPMPcyT" role="3cqZAp">
                  <node concept="3clFbT" id="3ljvbPMPcyU" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3ljvbPMPcyV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3ljvbPMPcyW" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="3ljvbPMPcyX" role="1B3o_S" />
        <node concept="3uibUv" id="3ljvbPMPcyY" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="3ljvbPMPcyZ" role="3clF47">
          <node concept="3cpWs6" id="3ljvbPMPcz0" role="3cqZAp">
            <node concept="3cpWs3" id="3ljvbPMPcz1" role="3cqZAk">
              <node concept="Xl_RD" id="3ljvbPMPcz2" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
              <node concept="3cpWs3" id="3ljvbPMPcz6" role="3uHU7B">
                <node concept="37vLTw" id="3ljvbPMPn$q" role="3uHU7w">
                  <ref role="3cqZAo" node="3ljvbPMPaKF" resolve="entries" />
                </node>
                <node concept="Xl_RD" id="3ljvbPMPcz8" role="3uHU7B">
                  <property role="Xl_RC" value="State(entries: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3ljvbPMPcza" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPMPbTh" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="55JU2Sa5MZQ" role="jymVt" />
    <node concept="3clFbW" id="6UFKywMOfG2" role="jymVt">
      <node concept="3cqZAl" id="6UFKywMOfG4" role="3clF45" />
      <node concept="3Tm1VV" id="6UFKywMOfG5" role="1B3o_S" />
      <node concept="3clFbS" id="6UFKywMOfG6" role="3clF47" />
    </node>
    <node concept="312cEg" id="7xblg8lmpx_" role="jymVt">
      <property role="TrG5h" value="state" />
      <node concept="3Tm6S6" id="7xblg8lmpgN" role="1B3o_S" />
      <node concept="3uibUv" id="7xblg8lmpx$" role="1tU5fm">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
      </node>
      <node concept="2ShNRf" id="7xblg8lmpK5" role="33vP2m">
        <node concept="HV5vD" id="3ljvbPMPFO9" role="2ShVmc">
          <ref role="HV5vE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7xblg8lmne7" role="jymVt" />
    <node concept="3Tm1VV" id="7xblg8lmms8" role="1B3o_S" />
    <node concept="3uibUv" id="7xblg8lmmtu" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="7xblg8lmnM0" role="11_B2D">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
      </node>
    </node>
    <node concept="3clFb_" id="7xblg8lmnRn" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="7xblg8lmnRo" role="1B3o_S" />
      <node concept="2AHcQZ" id="7xblg8lmnRq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7xblg8lmnRs" role="3clF45">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
      </node>
      <node concept="3clFbS" id="7xblg8lmnRt" role="3clF47">
        <node concept="3cpWs6" id="7xblg8lmrGH" role="3cqZAp">
          <node concept="37vLTw" id="7xblg8lmrRj" role="3cqZAk">
            <ref role="3cqZAo" node="7xblg8lmpx_" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7xblg8lmnRu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ljvbPMTHLy" role="jymVt" />
    <node concept="3clFb_" id="3ljvbPMTJbq" role="jymVt">
      <property role="TrG5h" value="getEntry" />
      <node concept="3clFbS" id="3ljvbPMTJbt" role="3clF47">
        <node concept="3cpWs6" id="3ljvbPMTRXb" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMTONJ" role="3cqZAk">
            <node concept="2OqwBi" id="3ljvbPMTNRj" role="2Oq$k0">
              <node concept="1rXfSq" id="3ljvbPMTNJF" role="2Oq$k0">
                <ref role="37wK5l" node="7xblg8lmnRn" resolve="getState" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMTO3s" role="2OqNvi">
                <ref role="2Oxat6" node="3ljvbPMPaKF" resolve="entries" />
              </node>
            </node>
            <node concept="1z4cxt" id="3ljvbPMTPPC" role="2OqNvi">
              <node concept="1bVj0M" id="3ljvbPMTPPE" role="23t8la">
                <node concept="3clFbS" id="3ljvbPMTPPF" role="1bW5cS">
                  <node concept="3clFbF" id="3ljvbPMTQ6a" role="3cqZAp">
                    <node concept="17R0WA" id="3ljvbPMTQYD" role="3clFbG">
                      <node concept="37vLTw" id="3ljvbPMTRuA" role="3uHU7w">
                        <ref role="3cqZAo" node="3ljvbPMTMQx" resolve="modelServerURL" />
                      </node>
                      <node concept="2OqwBi" id="3ljvbPMTQfo" role="3uHU7B">
                        <node concept="37vLTw" id="3ljvbPMTQ69" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ljvbPMTPPG" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPMTQqe" role="2OqNvi">
                          <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3ljvbPMTPPG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3ljvbPMTPPH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3ljvbPMTID4" role="1B3o_S" />
      <node concept="3uibUv" id="3ljvbPMTMgj" role="3clF45">
        <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
      </node>
      <node concept="37vLTG" id="3ljvbPMTMQx" role="3clF46">
        <property role="TrG5h" value="modelServerURL" />
        <node concept="17QB3L" id="3ljvbPMTMQw" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="3ljvbPNcPLc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ljvbPMTHXb" role="jymVt" />
    <node concept="3clFb_" id="7xblg8lmnRv" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3Tm1VV" id="7xblg8lmnRw" role="1B3o_S" />
      <node concept="3cqZAl" id="7xblg8lmnRy" role="3clF45" />
      <node concept="37vLTG" id="7xblg8lmnRz" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="7xblg8lmnRA" role="1tU5fm">
          <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
        </node>
        <node concept="2AHcQZ" id="7xblg8lmnR_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7xblg8lmnRB" role="3clF47">
        <node concept="3clFbF" id="7xblg8lms9X" role="3cqZAp">
          <node concept="37vLTI" id="7xblg8lmsTL" role="3clFbG">
            <node concept="37vLTw" id="7xblg8lmt5m" role="37vLTx">
              <ref role="3cqZAo" node="7xblg8lmnRz" resolve="state" />
            </node>
            <node concept="2OqwBi" id="7xblg8lmsvU" role="37vLTJ">
              <node concept="Xjq3P" id="7xblg8lms9W" role="2Oq$k0" />
              <node concept="2OwXpG" id="7xblg8lmsIK" role="2OqNvi">
                <ref role="2Oxat6" node="7xblg8lmpx_" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7xblg8lmnRC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2AHcQZ" id="7xblg8lmKGT" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~Service" resolve="Service" />
    </node>
    <node concept="2AHcQZ" id="7xblg8lmtrD" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="7xblg8lmt$$" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="7xblg8lmtJj" role="2B70Vg">
          <property role="Xl_RC" value="ModelixAuthentication" />
        </node>
      </node>
      <node concept="2B6LJw" id="7xblg8lmtUN" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="7xblg8lmvYG" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="7xblg8lr0G1" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.file()" resolve="file" />
            <node concept="Xl_RD" id="7xblg8lr0Rv" role="2B70Vg">
              <property role="Xl_RC" value="modelixAuthentication.xml" />
            </node>
          </node>
          <node concept="2B6LJw" id="7xblg8lmwaQ" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="Xl_RD" id="7xblg8lmwbF" role="2B70Vg">
              <property role="Xl_RC" value="modelixAuthentication.xml" />
            </node>
          </node>
          <node concept="2B6LJw" id="7xblg8lnA7M" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.roamingType()" resolve="roamingType" />
            <node concept="Rm8GO" id="7xblg8lnAGt" role="2B70Vg">
              <ref role="1Px2BO" to="1m72:~RoamingType" resolve="RoamingType" />
              <ref role="Rm8GQ" to="1m72:~RoamingType.DISABLED" resolve="DISABLED" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2B6LJw" id="7xblg8lmtJR" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.reloadable()" resolve="reloadable" />
        <node concept="3clFbT" id="7xblg8lmtUH" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="6UFKywMPMal" role="lGtFl">
      <node concept="TZ5HA" id="6UFKywMPMam" role="TZ5H$">
        <node concept="1dT_AC" id="6UFKywMPMan" role="1dT_Ay">
          <property role="1dT_AB" value="This component handles the storage of the OAuth configuration." />
        </node>
      </node>
      <node concept="TZ5HA" id="3ljvbPN8DR$" role="TZ5H$">
        <node concept="1dT_AC" id="3ljvbPN8DR_" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3ljvbPN8DRK" role="TZ5H$">
        <node concept="1dT_AC" id="3ljvbPN8DRL" role="1dT_Ay">
          <property role="1dT_AB" value="The configuration is specific for single Model Server, and they are identified by the URL of the Model Server" />
        </node>
      </node>
      <node concept="TZ5HA" id="3ljvbPN8DS_" role="TZ5H$">
        <node concept="1dT_AC" id="3ljvbPN8DSA" role="1dT_Ay">
          <property role="1dT_AB" value="(or better the proxy used to reach the Model Server)." />
        </node>
      </node>
      <node concept="TZ5HA" id="nP6bhxMG6p" role="TZ5H$">
        <node concept="1dT_AC" id="nP6bhxMG6q" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3ljvbPN8DQN" role="TZ5H$">
        <node concept="1dT_AC" id="3ljvbPN8DQO" role="1dT_Ay">
          <property role="1dT_AB" value="For information about component persistence refer to " />
        </node>
      </node>
      <node concept="TZ5HA" id="3ljvbPN8DQ4" role="TZ5H$">
        <node concept="1dT_AC" id="3ljvbPN8DQ5" role="1dT_Ay">
          <property role="1dT_AB" value="https://jetbrains.org/intellij/sdk/docs/basics/persisting_state_of_components.html" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3poOr4tpiEG">
    <property role="TrG5h" value="OAuthAuthenticationFlow" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="strategies" />
    <node concept="312cEg" id="3poOr4tplet" role="jymVt">
      <property role="TrG5h" value="baseURL" />
      <node concept="3Tmbuc" id="3poOr4tpleJ" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tplev" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3poOr4tpnos" role="jymVt">
      <property role="TrG5h" value="clientId" />
      <node concept="3Tmbuc" id="3poOr4tpnij" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tpnoj" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3poOr4tpnAk" role="jymVt">
      <property role="TrG5h" value="scope" />
      <node concept="3Tmbuc" id="3poOr4tpnw8" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tpnAb" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7$Qv9nHSDom" role="jymVt">
      <property role="TrG5h" value="authenticationProcess" />
      <node concept="3Tmbuc" id="7$Qv9nHSDuJ" role="1B3o_S" />
      <node concept="3uibUv" id="7$Qv9nHSDop" role="1tU5fm">
        <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tpleX" role="jymVt" />
    <node concept="3clFbW" id="3poOr4tplpy" role="jymVt">
      <node concept="37vLTG" id="7$Qv9nHSDvz" role="3clF46">
        <property role="TrG5h" value="authenticationProcess" />
        <node concept="3uibUv" id="7$Qv9nHSDv$" role="1tU5fm">
          <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
        </node>
      </node>
      <node concept="37vLTG" id="3poOr4tplq0" role="3clF46">
        <property role="TrG5h" value="baseURL" />
        <node concept="17QB3L" id="3poOr4tplq2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3poOr4tpnCH" role="3clF46">
        <property role="TrG5h" value="clientId" />
        <node concept="17QB3L" id="3poOr4tpnCJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3poOr4tpnDq" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="17QB3L" id="3poOr4tpnDs" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3poOr4tplp$" role="3clF45" />
      <node concept="3Tm1VV" id="3poOr4tplp_" role="1B3o_S" />
      <node concept="3clFbS" id="3poOr4tplpA" role="3clF47">
        <node concept="3clFbF" id="7$Qv9nHSDFB" role="3cqZAp">
          <node concept="37vLTI" id="7$Qv9nHSE3l" role="3clFbG">
            <node concept="37vLTw" id="7$Qv9nHSEdA" role="37vLTx">
              <ref role="3cqZAo" node="7$Qv9nHSDvz" resolve="authenticationProcess" />
            </node>
            <node concept="2OqwBi" id="7$Qv9nHSDLy" role="37vLTJ">
              <node concept="Xjq3P" id="7$Qv9nHSDF_" role="2Oq$k0" />
              <node concept="2OwXpG" id="7$Qv9nHSDUB" role="2OqNvi">
                <ref role="2Oxat6" node="7$Qv9nHSDom" resolve="authenticationProcess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tplxy" role="3cqZAp">
          <node concept="37vLTI" id="3poOr4tplWQ" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tpm6m" role="37vLTx">
              <ref role="3cqZAo" node="3poOr4tplq0" resolve="baseURL" />
            </node>
            <node concept="2OqwBi" id="3poOr4tpl_P" role="37vLTJ">
              <node concept="Xjq3P" id="3poOr4tplxx" role="2Oq$k0" />
              <node concept="2OwXpG" id="3poOr4tplHd" role="2OqNvi">
                <ref role="2Oxat6" node="3poOr4tplet" resolve="baseURL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tpnQK" role="3cqZAp">
          <node concept="37vLTI" id="3poOr4tpoj1" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tporJ" role="37vLTx">
              <ref role="3cqZAo" node="3poOr4tpnCH" resolve="clientId" />
            </node>
            <node concept="2OqwBi" id="3poOr4tpnW8" role="37vLTJ">
              <node concept="Xjq3P" id="3poOr4tpnQI" role="2Oq$k0" />
              <node concept="2OwXpG" id="3poOr4tpo4j" role="2OqNvi">
                <ref role="2Oxat6" node="3poOr4tpnos" resolve="clientId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tpo_U" role="3cqZAp">
          <node concept="37vLTI" id="3poOr4tpp2$" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tppfx" role="37vLTx">
              <ref role="3cqZAo" node="3poOr4tpnDq" resolve="scope" />
            </node>
            <node concept="2OqwBi" id="3poOr4tpoF_" role="37vLTJ">
              <node concept="Xjq3P" id="3poOr4tpo_S" role="2Oq$k0" />
              <node concept="2OwXpG" id="3poOr4tpoNQ" role="2OqNvi">
                <ref role="2Oxat6" node="3poOr4tpnAk" resolve="scope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tppA4" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tppxY" role="jymVt">
      <property role="TrG5h" value="startURL" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="3poOr4tppxZ" role="3clF47" />
      <node concept="3Tm1VV" id="3poOr4tppy0" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tq6pS" role="3clF45" />
      <node concept="37vLTG" id="3poOr4tppMa" role="3clF46">
        <property role="TrG5h" value="executor" />
        <node concept="3uibUv" id="3poOr4tppM9" role="1tU5fm">
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tqhjm" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tqhWx" role="jymVt">
      <property role="TrG5h" value="processStartResponse" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3poOr4tqi6C" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="579DpELgOO$" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
      <node concept="3cqZAl" id="579DpELggDM" role="3clF45" />
      <node concept="3Tm1VV" id="3poOr4tqhW$" role="1B3o_S" />
      <node concept="3clFbS" id="3poOr4tqhW_" role="3clF47" />
    </node>
    <node concept="3clFb_" id="579DpELdX20" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="verifyAccessToken" />
      <node concept="3clFbS" id="579DpELdX23" role="3clF47" />
      <node concept="3Tm1VV" id="579DpELdWKm" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELe0KK" role="3clF45">
        <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
      </node>
      <node concept="37vLTG" id="579DpELdXak" role="3clF46">
        <property role="TrG5h" value="accessToken" />
        <node concept="17QB3L" id="579DpELdXaj" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="579DpELdXd4" role="lGtFl">
        <node concept="TZ5HA" id="579DpELdXd5" role="TZ5H$">
          <node concept="1dT_AC" id="579DpELdXd6" role="1dT_Ay">
            <property role="1dT_AB" value="Return the user if the token is valid, otherwise it returns null" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELfUjD" role="jymVt" />
    <node concept="3clFb_" id="579DpELfUmP" role="jymVt">
      <property role="TrG5h" value="codeVerifier" />
      <node concept="3clFbS" id="579DpELfUmQ" role="3clF47">
        <node concept="3cpWs8" id="579DpELfUmR" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELfUmS" role="3cpWs9">
            <property role="TrG5h" value="sr" />
            <node concept="2ShNRf" id="579DpELfUmT" role="33vP2m">
              <node concept="1pGfFk" id="579DpELfUmU" role="2ShVmc">
                <ref role="37wK5l" to="jgjw:~SecureRandom.&lt;init&gt;()" resolve="SecureRandom" />
              </node>
            </node>
            <node concept="3uibUv" id="579DpELfUmV" role="1tU5fm">
              <ref role="3uigEE" to="jgjw:~SecureRandom" resolve="SecureRandom" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELfUmW" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELfUmX" role="3cpWs9">
            <property role="TrG5h" value="code" />
            <node concept="10Q1$e" id="579DpELfUmY" role="1tU5fm">
              <node concept="10PrrI" id="579DpELfUmZ" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="579DpELfUn0" role="33vP2m">
              <node concept="3$_iS1" id="579DpELfUn1" role="2ShVmc">
                <node concept="3$GHV9" id="579DpELfUn2" role="3$GQph">
                  <node concept="3cmrfG" id="579DpELfUn3" role="3$I4v7">
                    <property role="3cmrfH" value="32" />
                  </node>
                </node>
                <node concept="10PrrI" id="579DpELfUn4" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELfUn5" role="3cqZAp">
          <node concept="2OqwBi" id="579DpELfUn6" role="3clFbG">
            <node concept="37vLTw" id="579DpELfUn7" role="2Oq$k0">
              <ref role="3cqZAo" node="579DpELfUmS" resolve="sr" />
            </node>
            <node concept="liA8E" id="579DpELfUn8" role="2OqNvi">
              <ref role="37wK5l" to="jgjw:~SecureRandom.nextBytes(byte[])" resolve="nextBytes" />
              <node concept="37vLTw" id="579DpELfUn9" role="37wK5m">
                <ref role="3cqZAo" node="579DpELfUmX" resolve="code" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELfUna" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELfUnb" role="3cpWs9">
            <property role="TrG5h" value="verifier" />
            <node concept="17QB3L" id="579DpELfUnc" role="1tU5fm" />
            <node concept="2OqwBi" id="579DpELfUnd" role="33vP2m">
              <node concept="2OqwBi" id="579DpELfUne" role="2Oq$k0">
                <node concept="2YIFZM" id="579DpELfUnf" role="2Oq$k0">
                  <ref role="37wK5l" to="33ny:~Base64.getUrlEncoder()" resolve="getUrlEncoder" />
                  <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                </node>
                <node concept="liA8E" id="579DpELfUng" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Base64$Encoder.withoutPadding()" resolve="withoutPadding" />
                </node>
              </node>
              <node concept="liA8E" id="579DpELfUnh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Base64$Encoder.encodeToString(byte[])" resolve="encodeToString" />
                <node concept="37vLTw" id="579DpELfUni" role="37wK5m">
                  <ref role="3cqZAo" node="579DpELfUmX" resolve="code" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="579DpELfUnj" role="3cqZAp">
          <node concept="37vLTw" id="579DpELfUnk" role="3cqZAk">
            <ref role="3cqZAo" node="579DpELfUnb" resolve="verifier" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="579DpELfUFq" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELfUnm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="579DpELfUnn" role="jymVt" />
    <node concept="3clFb_" id="579DpELfUno" role="jymVt">
      <property role="TrG5h" value="codeChallenge" />
      <node concept="3clFbS" id="579DpELfUnp" role="3clF47">
        <node concept="3J1_TO" id="579DpELfUnq" role="3cqZAp">
          <node concept="3uVAMA" id="579DpELfUnr" role="1zxBo5">
            <node concept="XOnhg" id="579DpELfUns" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="579DpELfUnt" role="1tU5fm">
                <node concept="3uibUv" id="579DpELfUnu" role="nSUat">
                  <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="579DpELfUnv" role="1zc67A">
              <node concept="YS8fn" id="579DpELfUnw" role="3cqZAp">
                <node concept="2ShNRf" id="579DpELfUnx" role="YScLw">
                  <node concept="1pGfFk" id="579DpELfUny" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="579DpELfUnz" role="37wK5m">
                      <property role="Xl_RC" value="Algorithm not supported" />
                    </node>
                    <node concept="37vLTw" id="579DpELfUn$" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELfUns" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="579DpELfUn_" role="1zxBo7">
            <node concept="3cpWs8" id="579DpELfUnA" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELfUnB" role="3cpWs9">
                <property role="TrG5h" value="bytes" />
                <node concept="10Q1$e" id="579DpELfUnC" role="1tU5fm">
                  <node concept="10PrrI" id="579DpELfUnD" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="579DpELfUnE" role="33vP2m">
                  <node concept="37vLTw" id="579DpELfUnF" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELfUod" resolve="codeVerifier" />
                  </node>
                  <node concept="liA8E" id="579DpELfUnG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                    <node concept="2YIFZM" id="579DpELfUnH" role="37wK5m">
                      <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
                      <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String)" resolve="forName" />
                      <node concept="Xl_RD" id="579DpELfUnI" role="37wK5m">
                        <property role="Xl_RC" value="US-ASCII" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELfUnJ" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELfUnK" role="3cpWs9">
                <property role="TrG5h" value="md" />
                <node concept="3uibUv" id="579DpELfUnL" role="1tU5fm">
                  <ref role="3uigEE" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                </node>
                <node concept="2YIFZM" id="579DpELfUnM" role="33vP2m">
                  <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                  <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
                  <node concept="Xl_RD" id="579DpELfUnN" role="37wK5m">
                    <property role="Xl_RC" value="SHA-256" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELfUnO" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELfUnP" role="3clFbG">
                <node concept="37vLTw" id="579DpELfUnQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELfUnK" resolve="md" />
                </node>
                <node concept="liA8E" id="579DpELfUnR" role="2OqNvi">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte[],int,int)" resolve="update" />
                  <node concept="37vLTw" id="579DpELfUnS" role="37wK5m">
                    <ref role="3cqZAo" node="579DpELfUnB" resolve="bytes" />
                  </node>
                  <node concept="3cmrfG" id="579DpELfUnT" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="579DpELfUnU" role="37wK5m">
                    <node concept="37vLTw" id="579DpELfUnV" role="2Oq$k0">
                      <ref role="3cqZAo" node="579DpELfUnB" resolve="bytes" />
                    </node>
                    <node concept="1Rwk04" id="579DpELfUnW" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELfUnX" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELfUnY" role="3cpWs9">
                <property role="TrG5h" value="digest" />
                <node concept="10Q1$e" id="579DpELfUnZ" role="1tU5fm">
                  <node concept="10PrrI" id="579DpELfUo0" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="579DpELfUo1" role="33vP2m">
                  <node concept="37vLTw" id="579DpELfUo2" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELfUnK" resolve="md" />
                  </node>
                  <node concept="liA8E" id="579DpELfUo3" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.digest()" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELfUo4" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELfUo5" role="3cpWs9">
                <property role="TrG5h" value="challenge" />
                <node concept="17QB3L" id="579DpELfUo6" role="1tU5fm" />
                <node concept="2YIFZM" id="3ljvbPNbu05" role="33vP2m">
                  <ref role="37wK5l" to="y2et:~Base64.encodeBase64URLSafeString(byte[])" resolve="encodeBase64URLSafeString" />
                  <ref role="1Pybhc" to="y2et:~Base64" resolve="Base64" />
                  <node concept="37vLTw" id="3ljvbPNbu06" role="37wK5m">
                    <ref role="3cqZAo" node="579DpELfUnY" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="579DpELfUo9" role="3cqZAp">
              <node concept="37vLTw" id="579DpELfUoa" role="3cqZAk">
                <ref role="3cqZAo" node="579DpELfUo5" resolve="challenge" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="579DpELfUKO" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELfUoc" role="3clF45" />
      <node concept="37vLTG" id="579DpELfUod" role="3clF46">
        <property role="TrG5h" value="codeVerifier" />
        <node concept="17QB3L" id="579DpELfUoe" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ln$sNE9PSk" role="jymVt" />
    <node concept="3clFb_" id="1ln$sNE9ShL" role="jymVt">
      <property role="TrG5h" value="sendBody" />
      <node concept="3clFbS" id="1ln$sNE9ShO" role="3clF47">
        <node concept="3clFbF" id="1ln$sNE9SxX" role="3cqZAp">
          <node concept="2OqwBi" id="1ln$sNE9SxY" role="3clFbG">
            <node concept="37vLTw" id="1ln$sNE9SxZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1ln$sNE9SPc" resolve="connection" />
            </node>
            <node concept="liA8E" id="1ln$sNE9Sy0" role="2OqNvi">
              <ref role="37wK5l" to="zf81:~URLConnection.setDoOutput(boolean)" resolve="setDoOutput" />
              <node concept="3clFbT" id="1ln$sNE9Sy1" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ln$sNE9Sy2" role="3cqZAp">
          <node concept="3cpWsn" id="1ln$sNE9Sy3" role="3cpWs9">
            <property role="TrG5h" value="osw" />
            <node concept="3uibUv" id="1ln$sNE9Sy4" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~OutputStreamWriter" resolve="OutputStreamWriter" />
            </node>
            <node concept="2ShNRf" id="1ln$sNE9Sy5" role="33vP2m">
              <node concept="1pGfFk" id="1ln$sNE9Sy6" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~OutputStreamWriter.&lt;init&gt;(java.io.OutputStream,java.lang.String)" resolve="OutputStreamWriter" />
                <node concept="2OqwBi" id="1ln$sNE9Sy7" role="37wK5m">
                  <node concept="37vLTw" id="1ln$sNE9Sy8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ln$sNE9SPc" resolve="connection" />
                  </node>
                  <node concept="liA8E" id="1ln$sNE9Sy9" role="2OqNvi">
                    <ref role="37wK5l" to="zf81:~URLConnection.getOutputStream()" resolve="getOutputStream" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1ln$sNE9Sya" role="37wK5m">
                  <property role="Xl_RC" value="UTF-8" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ln$sNE9Syb" role="3cqZAp">
          <node concept="2OqwBi" id="1ln$sNE9Syc" role="3clFbG">
            <node concept="37vLTw" id="1ln$sNE9Syd" role="2Oq$k0">
              <ref role="3cqZAo" node="1ln$sNE9Sy3" resolve="osw" />
            </node>
            <node concept="liA8E" id="1ln$sNE9Sye" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~Writer.write(java.lang.String)" resolve="write" />
              <node concept="37vLTw" id="1ln$sNE9Syf" role="37wK5m">
                <ref role="3cqZAo" node="1ln$sNE9Srz" resolve="body" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ln$sNE9Syg" role="3cqZAp">
          <node concept="2OqwBi" id="1ln$sNE9Syh" role="3clFbG">
            <node concept="37vLTw" id="1ln$sNE9Syi" role="2Oq$k0">
              <ref role="3cqZAo" node="1ln$sNE9Sy3" resolve="osw" />
            </node>
            <node concept="liA8E" id="1ln$sNE9Syj" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStreamWriter.flush()" resolve="flush" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ln$sNE9Syk" role="3cqZAp">
          <node concept="2OqwBi" id="1ln$sNE9Syl" role="3clFbG">
            <node concept="37vLTw" id="1ln$sNE9Sym" role="2Oq$k0">
              <ref role="3cqZAo" node="1ln$sNE9Sy3" resolve="osw" />
            </node>
            <node concept="liA8E" id="1ln$sNE9Syn" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStreamWriter.close()" resolve="close" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1ln$sNE9Q7f" role="1B3o_S" />
      <node concept="3cqZAl" id="1ln$sNE9Sh0" role="3clF45" />
      <node concept="37vLTG" id="1ln$sNE9SPc" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="1ln$sNE9T8h" role="1tU5fm">
          <ref role="3uigEE" to="zf81:~HttpURLConnection" resolve="HttpURLConnection" />
        </node>
      </node>
      <node concept="37vLTG" id="1ln$sNE9Srz" role="3clF46">
        <property role="TrG5h" value="body" />
        <node concept="17QB3L" id="1ln$sNE9Sry" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1ln$sNE9UlR" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELfUkC" role="jymVt" />
    <node concept="3Tm1VV" id="3poOr4tpiEH" role="1B3o_S" />
    <node concept="3UR2Jj" id="1ln$sNE9diu" role="lGtFl">
      <node concept="TZ5HA" id="1ln$sNE9div" role="TZ5H$">
        <node concept="1dT_AC" id="1ln$sNE9diw" role="1dT_Ay">
          <property role="1dT_AB" value="OAuth can work based on different flows" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3poOr4tpiGC">
    <property role="3GE5qa" value="strategies" />
    <property role="TrG5h" value="AuthorizationCodeFlow" />
    <node concept="312cEg" id="579DpELebqq" role="jymVt">
      <property role="TrG5h" value="tokenVerificationURL" />
      <node concept="3Tm6S6" id="579DpELebqr" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELebqt" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="579DpELeaEM" role="jymVt" />
    <node concept="3clFbW" id="3poOr4tpmF$" role="jymVt">
      <node concept="37vLTG" id="7$Qv9nHTst7" role="3clF46">
        <property role="TrG5h" value="authenticationProcess" />
        <node concept="3uibUv" id="7$Qv9nHTst8" role="1tU5fm">
          <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
        </node>
      </node>
      <node concept="37vLTG" id="3poOr4tpmG6" role="3clF46">
        <property role="TrG5h" value="baseURL" />
        <node concept="17QB3L" id="3poOr4tpmG8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3poOr4tpplp" role="3clF46">
        <property role="TrG5h" value="clientId" />
        <node concept="17QB3L" id="3poOr4tpplq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3poOr4tpplr" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="17QB3L" id="3poOr4tppls" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="579DpELe5E6" role="3clF46">
        <property role="TrG5h" value="tokenVerificationURL" />
        <node concept="17QB3L" id="579DpELe5NB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3poOr4tpmFA" role="3clF45" />
      <node concept="3Tm1VV" id="3poOr4tpmFB" role="1B3o_S" />
      <node concept="3clFbS" id="3poOr4tpmFC" role="3clF47">
        <node concept="XkiVB" id="3poOr4tpmUK" role="3cqZAp">
          <ref role="37wK5l" node="3poOr4tplpy" resolve="OAuthAuthenticationFlow" />
          <node concept="37vLTw" id="7$Qv9nHTsHi" role="37wK5m">
            <ref role="3cqZAo" node="7$Qv9nHTst7" resolve="authenticationProcess" />
          </node>
          <node concept="37vLTw" id="3poOr4tpn2Z" role="37wK5m">
            <ref role="3cqZAo" node="3poOr4tpmG6" resolve="baseURL" />
          </node>
          <node concept="37vLTw" id="3poOr4tppqY" role="37wK5m">
            <ref role="3cqZAo" node="3poOr4tpplp" resolve="clientId" />
          </node>
          <node concept="37vLTw" id="3poOr4tppvK" role="37wK5m">
            <ref role="3cqZAo" node="3poOr4tpplr" resolve="scope" />
          </node>
        </node>
        <node concept="3clFbF" id="579DpELecur" role="3cqZAp">
          <node concept="37vLTI" id="579DpELed8c" role="3clFbG">
            <node concept="37vLTw" id="579DpELedl4" role="37vLTx">
              <ref role="3cqZAo" node="579DpELe5E6" resolve="tokenVerificationURL" />
            </node>
            <node concept="2OqwBi" id="579DpELecD8" role="37vLTJ">
              <node concept="Xjq3P" id="579DpELecup" role="2Oq$k0" />
              <node concept="2OwXpG" id="579DpELecOW" role="2OqNvi">
                <ref role="2Oxat6" node="579DpELebqq" resolve="tokenVerificationURL" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tpmx2" role="jymVt" />
    <node concept="3Tm1VV" id="3poOr4tpiGD" role="1B3o_S" />
    <node concept="3uibUv" id="3poOr4tpiLU" role="1zkMxy">
      <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationFlow" />
    </node>
    <node concept="3UR2Jj" id="3poOr4tpiM7" role="lGtFl">
      <node concept="TZ5HA" id="3poOr4tpiM8" role="TZ5H$">
        <node concept="1dT_AC" id="3poOr4tpiM9" role="1dT_Ay">
          <property role="1dT_AB" value="This permits to get directly an access token." />
        </node>
      </node>
      <node concept="TZ5HA" id="3poOr4tpiMp" role="TZ5H$">
        <node concept="1dT_AC" id="3poOr4tpiMq" role="1dT_Ay">
          <property role="1dT_AB" value="This is a strategy we can use with Google, for example" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3poOr4tppSi" role="jymVt">
      <property role="TrG5h" value="startURL" />
      <node concept="3Tm1VV" id="3poOr4tppSk" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tq78u" role="3clF45" />
      <node concept="37vLTG" id="3poOr4tppSm" role="3clF46">
        <property role="TrG5h" value="executor" />
        <node concept="3uibUv" id="3poOr4tppSn" role="1tU5fm">
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
        </node>
      </node>
      <node concept="3clFbS" id="3poOr4tppSo" role="3clF47">
        <node concept="3cpWs8" id="3poOr4tpqlO" role="3cqZAp">
          <node concept="3cpWsn" id="3poOr4tpqlR" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="3poOr4tpqlN" role="1tU5fm" />
            <node concept="37vLTw" id="3poOr4tpquj" role="33vP2m">
              <ref role="3cqZAo" node="3poOr4tplet" resolve="baseURL" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tprVS" role="3cqZAp">
          <node concept="d57v9" id="3poOr4tpsrn" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tprVQ" role="37vLTJ">
              <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
            </node>
            <node concept="3cpWs3" id="3poOr4tpssV" role="37vLTx">
              <node concept="37vLTw" id="3poOr4tps_b" role="3uHU7w">
                <ref role="3cqZAo" node="3poOr4tpnos" resolve="clientId" />
              </node>
              <node concept="Xl_RD" id="3poOr4tpsrG" role="3uHU7B">
                <property role="Xl_RC" value="?client_id=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tpsPJ" role="3cqZAp">
          <node concept="d57v9" id="3poOr4tpt82" role="3clFbG">
            <node concept="3cpWs3" id="3poOr4tpt$9" role="37vLTx">
              <node concept="2OqwBi" id="3poOr4tptQf" role="3uHU7w">
                <node concept="37vLTw" id="3poOr4tptGp" role="2Oq$k0">
                  <ref role="3cqZAo" node="3poOr4tppSm" resolve="executor" />
                </node>
                <node concept="liA8E" id="3poOr4tptZ$" role="2OqNvi">
                  <ref role="37wK5l" node="3poOr4tptjT" resolve="getRedirectURI" />
                </node>
              </node>
              <node concept="Xl_RD" id="3poOr4tptcj" role="3uHU7B">
                <property role="Xl_RC" value="&amp;redirect_uri=" />
              </node>
            </node>
            <node concept="37vLTw" id="3poOr4tpsPH" role="37vLTJ">
              <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tpuds" role="3cqZAp">
          <node concept="d57v9" id="3poOr4tpuEp" role="3clFbG">
            <node concept="3cpWs3" id="3poOr4tpuZ2" role="37vLTx">
              <node concept="Xl_RD" id="3poOr4tpv3m" role="3uHU7w">
                <property role="Xl_RC" value="token" />
              </node>
              <node concept="Xl_RD" id="3poOr4tpuJd" role="3uHU7B">
                <property role="Xl_RC" value="&amp;response_type=" />
              </node>
            </node>
            <node concept="37vLTw" id="3poOr4tpuws" role="37vLTJ">
              <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4tpvm2" role="3cqZAp">
          <node concept="d57v9" id="3poOr4tpvDr" role="3clFbG">
            <node concept="3cpWs3" id="3poOr4tpvKb" role="37vLTx">
              <node concept="37vLTw" id="3poOr4tpvOv" role="3uHU7w">
                <ref role="3cqZAo" node="3poOr4tpnAk" resolve="scope" />
              </node>
              <node concept="Xl_RD" id="3poOr4tpvIf" role="3uHU7B">
                <property role="Xl_RC" value="&amp;scope=" />
              </node>
            </node>
            <node concept="37vLTw" id="3poOr4tpvm0" role="37vLTJ">
              <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ln$sNEdRQz" role="3cqZAp">
          <node concept="d57v9" id="1ln$sNEdRQ$" role="3clFbG">
            <node concept="3cpWs3" id="1ln$sNEdRQ_" role="37vLTx">
              <node concept="Xl_RD" id="1ln$sNEdRQA" role="3uHU7B">
                <property role="Xl_RC" value="&amp;state=" />
              </node>
              <node concept="2YIFZM" id="1ln$sNEdRQB" role="3uHU7w">
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <node concept="3cpWs3" id="1ln$sNEdRQC" role="37wK5m">
                  <node concept="2OqwBi" id="1ln$sNEdRQD" role="3uHU7w">
                    <node concept="37vLTw" id="1ln$sNEdRQE" role="2Oq$k0">
                      <ref role="3cqZAo" node="7$Qv9nHSDom" resolve="authenticationProcess" />
                    </node>
                    <node concept="liA8E" id="1ln$sNEdRQF" role="2OqNvi">
                      <ref role="37wK5l" node="6Sm20WMoFu6" resolve="getModelServerURL" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1ln$sNEdRQG" role="3uHU7B">
                    <property role="Xl_RC" value="step1_" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ln$sNEdRQH" role="37vLTJ">
              <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3poOr4tq6Hk" role="3cqZAp">
          <node concept="37vLTw" id="3poOr4tq6LP" role="3cqZAk">
            <ref role="3cqZAo" node="3poOr4tpqlR" resolve="url" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3poOr4tppSp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ln$sNE9uj3" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tqiDf" role="jymVt">
      <property role="TrG5h" value="processStartResponse" />
      <node concept="37vLTG" id="3poOr4tqiDg" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="579DpELgV0c" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
      <node concept="3cqZAl" id="3poOr4tqiDi" role="3clF45" />
      <node concept="3Tm1VV" id="3poOr4tqiDj" role="1B3o_S" />
      <node concept="3clFbS" id="3poOr4tqiDl" role="3clF47">
        <node concept="3SKdUt" id="1ln$sNE9Noz" role="3cqZAp">
          <node concept="1PaTwC" id="1ln$sNE9No$" role="1aUNEU">
            <node concept="3oM_SD" id="1ln$sNE9No_" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NtI" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NtL" role="1PaTwD">
              <property role="3oM_SC" value="receive" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nu5" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nuq" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nuw" role="1PaTwD">
              <property role="3oM_SC" value="token" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NuB" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NuJ" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nv0" role="1PaTwD">
              <property role="3oM_SC" value="fragment," />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nva" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nvl" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nvx" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NvI" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NvW" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nwb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nwr" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NwO" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nx6" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Nxp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9NxH" role="1PaTwD">
              <property role="3oM_SC" value="browser." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ln$sNE9O48" role="3cqZAp">
          <node concept="1PaTwC" id="1ln$sNE9O49" role="1aUNEU">
            <node concept="3oM_SD" id="1ln$sNE9Oc4" role="1PaTwD">
              <property role="3oM_SC" value="For" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Ovn" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Ovq" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OvA" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OvF" role="1PaTwD">
              <property role="3oM_SC" value="send" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OvL" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Ow0" role="1PaTwD">
              <property role="3oM_SC" value="JS" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Owg" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Owx" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OwF" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OwY" role="1PaTwD">
              <property role="3oM_SC" value="executed" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Oxa" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Oxv" role="1PaTwD">
              <property role="3oM_SC" value="extract" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OxP" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Oy4" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Oyk" role="1PaTwD">
              <property role="3oM_SC" value="token" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OyH" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OyZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Ozi" role="1PaTwD">
              <property role="3oM_SC" value="fragment" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9OzI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9O$b" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ln$sNE9P6Y" role="3cqZAp">
          <node concept="1PaTwC" id="1ln$sNE9P6Z" role="1aUNEU">
            <node concept="3oM_SD" id="1ln$sNE9P70" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Pyv" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Pyy" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PyA" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PyF" role="1PaTwD">
              <property role="3oM_SC" value="query" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PyL" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Pz8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9Pzg" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PzL" role="1PaTwD">
              <property role="3oM_SC" value="route" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PzV" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9P$e" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9P$y" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9P$J" role="1PaTwD">
              <property role="3oM_SC" value="receive" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9P_d" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9P_$" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PAR" role="1PaTwD">
              <property role="3oM_SC" value="store" />
            </node>
            <node concept="3oM_SD" id="1ln$sNE9PB8" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3poOr4trBNK" role="3cqZAp">
          <node concept="3cpWsn" id="3poOr4trBNN" role="3cpWs9">
            <property role="TrG5h" value="jsCode" />
            <node concept="17QB3L" id="3poOr4trBNI" role="1tU5fm" />
            <node concept="3cpWs3" id="1ln$sNE9Bcb" role="33vP2m">
              <node concept="Xl_RD" id="1ln$sNE9Bhm" role="3uHU7w">
                <property role="Xl_RC" value="; fetch(url).then(data =&gt; console.log(\&quot;sent token to \&quot; + url)).catch(error =&gt; console.error(error)).finally(() =&gt; {  });" />
              </node>
              <node concept="3cpWs3" id="1ln$sNE9BkA" role="3uHU7B">
                <node concept="2OqwBi" id="1ln$sNE9BYC" role="3uHU7w">
                  <node concept="37vLTw" id="1ln$sNE9BJZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7$Qv9nHSDom" resolve="authenticationProcess" />
                  </node>
                  <node concept="liA8E" id="1ln$sNE9Cc5" role="2OqNvi">
                    <ref role="37wK5l" node="6Sm20WMoFu6" resolve="getModelServerURL" />
                  </node>
                </node>
                <node concept="3cpWs3" id="1ln$sNE9s4v" role="3uHU7B">
                  <node concept="3cpWs3" id="1ln$sNE9s3u" role="3uHU7B">
                    <node concept="Xl_RD" id="3poOr4trCxc" role="3uHU7B">
                      <property role="Xl_RC" value="let url = \&quot;http://localhost:" />
                    </node>
                    <node concept="2YIFZM" id="1ln$sNE9uhd" role="3uHU7w">
                      <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                      <ref role="37wK5l" to="rfhd:~Registry.intValue(java.lang.String)" resolve="intValue" />
                      <node concept="Xl_RD" id="1ln$sNE9uhe" role="37wK5m">
                        <property role="Xl_RC" value="ide.httpsupport.internalPort" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1ln$sNE9ri2" role="3uHU7w">
                    <property role="Xl_RC" value="/modelixauthfragment?\&quot;+window.location.hash.substr(1)+\&quot;&amp;modelServerURL=\&quot;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ay_X8dLv0K" role="3cqZAp">
          <node concept="3cpWsn" id="3ay_X8dLv0N" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="3ay_X8dLv0I" role="1tU5fm" />
            <node concept="Xl_RD" id="3ay_X8dLv26" role="33vP2m">
              <property role="Xl_RC" value="&lt;html&gt;" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4trATh" role="3cqZAp">
          <node concept="d57v9" id="3poOr4trBdI" role="3clFbG">
            <node concept="Xl_RD" id="3poOr4trBew" role="37vLTx">
              <property role="Xl_RC" value="&lt;script&gt;" />
            </node>
            <node concept="37vLTw" id="3poOr4trBc4" role="37vLTJ">
              <ref role="3cqZAo" node="3ay_X8dLv0N" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4trBUj" role="3cqZAp">
          <node concept="d57v9" id="3poOr4trC8U" role="3clFbG">
            <node concept="37vLTw" id="3poOr4trC9I" role="37vLTx">
              <ref role="3cqZAo" node="3poOr4trBNN" resolve="jsCode" />
            </node>
            <node concept="37vLTw" id="3poOr4trBUh" role="37vLTJ">
              <ref role="3cqZAo" node="3ay_X8dLv0N" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4trCev" role="3cqZAp">
          <node concept="d57v9" id="3poOr4trCuQ" role="3clFbG">
            <node concept="Xl_RD" id="3poOr4trCvC" role="37vLTx">
              <property role="Xl_RC" value="&lt;/script&gt;" />
            </node>
            <node concept="37vLTw" id="3poOr4trCtc" role="37vLTJ">
              <ref role="3cqZAo" node="3ay_X8dLv0N" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3poOr4trAr6" role="3cqZAp">
          <node concept="d57v9" id="3poOr4trANB" role="3clFbG">
            <node concept="Xl_RD" id="3poOr4trAOp" role="37vLTx">
              <property role="Xl_RC" value="&lt;/html&gt;" />
            </node>
            <node concept="37vLTw" id="3poOr4trADz" role="37vLTJ">
              <ref role="3cqZAo" node="3ay_X8dLv0N" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FAyHK_C47b" role="3cqZAp">
          <node concept="3cpWsn" id="5FAyHK_C47c" role="3cpWs9">
            <property role="TrG5h" value="response" />
            <node concept="3uibUv" id="5FAyHK_C47d" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~FullHttpResponse" resolve="FullHttpResponse" />
            </node>
            <node concept="2YIFZM" id="5FAyHK_C4aP" role="33vP2m">
              <ref role="37wK5l" to="iwnc:~Responses.response(java.lang.String,io.netty.buffer.ByteBuf)" resolve="response" />
              <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
              <node concept="Xl_RD" id="579DpELgzbH" role="37wK5m">
                <property role="Xl_RC" value="text/html" />
              </node>
              <node concept="2YIFZM" id="5YhakczIl4G" role="37wK5m">
                <ref role="1Pybhc" to="iil0:~Unpooled" resolve="Unpooled" />
                <ref role="37wK5l" to="iil0:~Unpooled.copiedBuffer(java.lang.CharSequence,java.nio.charset.Charset)" resolve="copiedBuffer" />
                <node concept="37vLTw" id="579DpELg$DN" role="37wK5m">
                  <ref role="3cqZAo" node="3ay_X8dLv0N" resolve="text" />
                </node>
                <node concept="10M0yZ" id="5YhakczIl4N" role="37wK5m">
                  <ref role="3cqZAo" to="ap92:~CharsetUtil.UTF_8" resolve="UTF_8" />
                  <ref role="1PxDUh" to="ap92:~CharsetUtil" resolve="CharsetUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FAyHK_C4Mp" role="3cqZAp">
          <node concept="2OqwBi" id="5FAyHK_C59D" role="3clFbG">
            <node concept="37vLTw" id="5FAyHK_C4Mn" role="2Oq$k0">
              <ref role="3cqZAo" node="5FAyHK_C47c" resolve="response" />
            </node>
            <node concept="liA8E" id="5FAyHK_C6rb" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~FullHttpResponse.setStatus(io.netty.handler.codec.http.HttpResponseStatus)" resolve="setStatus" />
              <node concept="10M0yZ" id="579DpELg_dy" role="37wK5m">
                <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.OK" resolve="OK" />
                <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FAyHK_C6Bx" role="3cqZAp">
          <node concept="2YIFZM" id="5FAyHK_C6Dm" role="3clFbG">
            <ref role="37wK5l" to="iwnc:~Responses.send(io.netty.handler.codec.http.HttpResponse,io.netty.channel.Channel,io.netty.handler.codec.http.HttpRequest)" resolve="send" />
            <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
            <node concept="37vLTw" id="5FAyHK_C6FB" role="37wK5m">
              <ref role="3cqZAo" node="5FAyHK_C47c" resolve="response" />
            </node>
            <node concept="2OqwBi" id="579DpELgBCt" role="37wK5m">
              <node concept="37vLTw" id="579DpELgBv9" role="2Oq$k0">
                <ref role="3cqZAo" node="3poOr4tqiDg" resolve="request" />
              </node>
              <node concept="1PnCL0" id="579DpELgV9N" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:5dkEk59WCkE" resolve="channel" />
              </node>
            </node>
            <node concept="2OqwBi" id="579DpELgVgA" role="37wK5m">
              <node concept="37vLTw" id="5FAyHK_C6WV" role="2Oq$k0">
                <ref role="3cqZAo" node="3poOr4tqiDg" resolve="request" />
              </node>
              <node concept="1PnCL0" id="579DpELgVqc" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:6GArDv5I22B" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3poOr4tqiDm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ln$sNE9vSr" role="jymVt" />
    <node concept="3clFb_" id="579DpELdXIg" role="jymVt">
      <property role="TrG5h" value="verifyAccessToken" />
      <node concept="3Tm1VV" id="579DpELdXIi" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELe18Z" role="3clF45">
        <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
      </node>
      <node concept="37vLTG" id="579DpELdXIk" role="3clF46">
        <property role="TrG5h" value="accessToken" />
        <node concept="17QB3L" id="579DpELdXIl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="579DpELdXIp" role="3clF47">
        <node concept="3J1_TO" id="579DpELee3r" role="3cqZAp">
          <node concept="3clFbS" id="579DpELee3s" role="1zxBo7">
            <node concept="3cpWs8" id="579DpELe551" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELe552" role="3cpWs9">
                <property role="TrG5h" value="url" />
                <node concept="3uibUv" id="579DpELe553" role="1tU5fm">
                  <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                </node>
                <node concept="2ShNRf" id="579DpELe554" role="33vP2m">
                  <node concept="1pGfFk" id="579DpELe555" role="2ShVmc">
                    <ref role="37wK5l" to="zf81:~URL.&lt;init&gt;(java.lang.String)" resolve="URL" />
                    <node concept="37vLTw" id="579DpELedyL" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELebqq" resolve="tokenVerificationURL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELe557" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELe558" role="3cpWs9">
                <property role="TrG5h" value="connection" />
                <node concept="3uibUv" id="579DpELe559" role="1tU5fm">
                  <ref role="3uigEE" to="zf81:~HttpURLConnection" resolve="HttpURLConnection" />
                </node>
                <node concept="1eOMI4" id="579DpELe55a" role="33vP2m">
                  <node concept="10QFUN" id="579DpELe55b" role="1eOMHV">
                    <node concept="3uibUv" id="579DpELe55c" role="10QFUM">
                      <ref role="3uigEE" to="zf81:~HttpURLConnection" resolve="HttpURLConnection" />
                    </node>
                    <node concept="2OqwBi" id="579DpELe55d" role="10QFUP">
                      <node concept="37vLTw" id="579DpELe55e" role="2Oq$k0">
                        <ref role="3cqZAo" node="579DpELe552" resolve="url" />
                      </node>
                      <node concept="liA8E" id="579DpELe55f" role="2OqNvi">
                        <ref role="37wK5l" to="zf81:~URL.openConnection()" resolve="openConnection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELeMoY" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELeMoZ" role="3clFbG">
                <node concept="37vLTw" id="579DpELeMp0" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELe558" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELeMp1" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URLConnection.setRequestProperty(java.lang.String,java.lang.String)" resolve="setRequestProperty" />
                  <node concept="Xl_RD" id="579DpELeMp2" role="37wK5m">
                    <property role="Xl_RC" value="Authorization" />
                  </node>
                  <node concept="3cpWs3" id="579DpELeMPG" role="37wK5m">
                    <node concept="37vLTw" id="579DpELeN0U" role="3uHU7w">
                      <ref role="3cqZAo" node="579DpELdXIk" resolve="accessToken" />
                    </node>
                    <node concept="Xl_RD" id="579DpELeMp3" role="3uHU7B">
                      <property role="Xl_RC" value="Bearer " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELeMp4" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELeMp5" role="3clFbG">
                <node concept="37vLTw" id="579DpELeMp6" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELe558" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELeMp7" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~HttpURLConnection.setRequestMethod(java.lang.String)" resolve="setRequestMethod" />
                  <node concept="Xl_RD" id="579DpELeMp8" role="37wK5m">
                    <property role="Xl_RC" value="GET" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELe55r" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELe55s" role="3clFbG">
                <node concept="37vLTw" id="579DpELe55t" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELe558" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELeJNX" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URLConnection.connect()" resolve="connect" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELeSxr" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELeSxs" role="3cpWs9">
                <property role="TrG5h" value="br" />
                <node concept="3uibUv" id="579DpELeSxt" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="579DpELeT0A" role="33vP2m">
                  <node concept="1pGfFk" id="579DpELeT0B" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="579DpELeT0C" role="37wK5m">
                      <node concept="1pGfFk" id="579DpELeT0D" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="579DpELeT0E" role="37wK5m">
                          <node concept="37vLTw" id="579DpELeT0F" role="2Oq$k0">
                            <ref role="3cqZAo" node="579DpELe558" resolve="connection" />
                          </node>
                          <node concept="liA8E" id="579DpELeT0G" role="2OqNvi">
                            <ref role="37wK5l" to="zf81:~URLConnection.getInputStream()" resolve="getInputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELeQs6" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELeQs7" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="579DpELeQs8" role="1tU5fm" />
                <node concept="2OqwBi" id="579DpELeQs9" role="33vP2m">
                  <node concept="2OqwBi" id="579DpELeQsa" role="2Oq$k0">
                    <node concept="37vLTw" id="579DpELeTPM" role="2Oq$k0">
                      <ref role="3cqZAo" node="579DpELeSxs" resolve="br" />
                    </node>
                    <node concept="liA8E" id="579DpELeQsc" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~BufferedReader.lines()" resolve="lines" />
                    </node>
                  </node>
                  <node concept="liA8E" id="579DpELeQsd" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                    <node concept="2YIFZM" id="579DpELeQse" role="37wK5m">
                      <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                      <ref role="37wK5l" to="1ctc:~Collectors.joining(java.lang.CharSequence)" resolve="joining" />
                      <node concept="Xl_RD" id="579DpELeQsf" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELfaj_" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELfajA" role="3cpWs9">
                <property role="TrG5h" value="jo" />
                <node concept="3uibUv" id="579DpELfajB" role="1tU5fm">
                  <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                </node>
                <node concept="2OqwBi" id="579DpELfcWA" role="33vP2m">
                  <node concept="2YIFZM" id="579DpELfcAF" role="2Oq$k0">
                    <ref role="37wK5l" to="wy2b:~JsonParser.parseString(java.lang.String)" resolve="parseString" />
                    <ref role="1Pybhc" to="wy2b:~JsonParser" resolve="JsonParser" />
                    <node concept="37vLTw" id="579DpELfcK6" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELeQs7" resolve="result" />
                    </node>
                  </node>
                  <node concept="liA8E" id="579DpELfdbS" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="579DpELfdo3" role="3cqZAp">
              <node concept="2ShNRf" id="579DpELfdt8" role="3cqZAk">
                <node concept="1pGfFk" id="579DpELfjEI" role="2ShVmc">
                  <ref role="37wK5l" node="579DpELfgMV" resolve="User" />
                  <node concept="2OqwBi" id="579DpELfn1M" role="37wK5m">
                    <node concept="2OqwBi" id="579DpELfkmA" role="2Oq$k0">
                      <node concept="37vLTw" id="579DpELfjEH" role="2Oq$k0">
                        <ref role="3cqZAo" node="579DpELfajA" resolve="jo" />
                      </node>
                      <node concept="liA8E" id="579DpELfl82" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                        <node concept="Xl_RD" id="579DpELflHg" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="579DpELfnJu" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="579DpELfoJY" role="37wK5m">
                    <node concept="2OqwBi" id="579DpELfoJZ" role="2Oq$k0">
                      <node concept="37vLTw" id="579DpELfoK0" role="2Oq$k0">
                        <ref role="3cqZAo" node="579DpELfajA" resolve="jo" />
                      </node>
                      <node concept="liA8E" id="579DpELfoK1" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                        <node concept="Xl_RD" id="579DpELfoK2" role="37wK5m">
                          <property role="Xl_RC" value="email" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="579DpELfoK3" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="579DpELee3u" role="1zxBo5">
            <node concept="3clFbS" id="579DpELee3v" role="1zc67A">
              <node concept="YS8fn" id="579DpELefBk" role="3cqZAp">
                <node concept="2ShNRf" id="579DpELefFq" role="YScLw">
                  <node concept="1pGfFk" id="579DpELeJc$" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="579DpELeJkn" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELee3w" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="579DpELee3w" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="579DpELee3x" role="1tU5fm">
                <node concept="3uibUv" id="579DpELee3t" role="nSUat">
                  <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="579DpELefaf" role="1zxBo5">
            <node concept="XOnhg" id="579DpELefag" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="579DpELefah" role="1tU5fm">
                <node concept="3uibUv" id="579DpELefoP" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="579DpELefai" role="1zc67A">
              <node concept="YS8fn" id="579DpELeJsS" role="3cqZAp">
                <node concept="2ShNRf" id="579DpELeJsT" role="YScLw">
                  <node concept="1pGfFk" id="579DpELeJsU" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="579DpELeJsV" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELefag" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="579DpELdXIq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="3poOr4tppwe">
    <property role="3GE5qa" value="strategies" />
    <property role="TrG5h" value="AuthenticationFlowExecutor" />
    <node concept="3clFb_" id="3poOr4tptjT" role="jymVt">
      <property role="TrG5h" value="getRedirectURI" />
      <node concept="3clFbS" id="3poOr4tptjW" role="3clF47" />
      <node concept="3Tm1VV" id="3poOr4tptjX" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tptjG" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3poOr4tppwf" role="1B3o_S" />
    <node concept="3UR2Jj" id="1ln$sNE9cQ4" role="lGtFl">
      <node concept="TZ5HA" id="1ln$sNE9cQ5" role="TZ5H$">
        <node concept="1dT_AC" id="1ln$sNE9cQ6" role="1dT_Ay">
          <property role="1dT_AB" value="Context in which the OAuth Authentication Flow is executed." />
        </node>
      </node>
    </node>
  </node>
  <node concept="pFx2x" id="3poOr4trDva">
    <property role="TrG5h" value="AuthenticationFragmentRequestHandler" />
    <property role="3GE5qa" value="routes" />
    <node concept="3_QJtf" id="3poOr4trFoT" role="3_QDjO">
      <property role="TrG5h" value="access_token" />
      <node concept="1TjqYI" id="3poOr4trFps" role="1TjXUf">
        <node concept="17QB3L" id="3poOr4trFwU" role="1TjqZ8" />
      </node>
    </node>
    <node concept="3_QJtf" id="1ln$sNE9$6J" role="3_QDjO">
      <property role="TrG5h" value="modelServerURL" />
      <node concept="1TjqYI" id="1ln$sNE9$7j" role="1TjXUf">
        <node concept="17QB3L" id="1ln$sNE9_Dd" role="1TjqZ8" />
      </node>
    </node>
    <node concept="3_QJtf" id="7hml1DJ4R5e" role="3_QDjO">
      <property role="TrG5h" value="state" />
      <node concept="1TjqYI" id="7hml1DJ4R5O" role="1TjXUf">
        <node concept="17QB3L" id="7hml1DJ4Ra0" role="1TjqZ8" />
      </node>
    </node>
    <node concept="std77" id="3poOr4trDvb" role="std7D">
      <node concept="std78" id="3poOr4trDvc" role="std7y">
        <property role="svBHv" value="modelixauthfragment" />
      </node>
    </node>
    <node concept="pF8on" id="3poOr4trDvd" role="pCJbe">
      <node concept="3clFbS" id="3poOr4trDve" role="2VODD2">
        <node concept="3J1_TO" id="B4G5MXsynX" role="3cqZAp">
          <node concept="3uVAMA" id="B4G5MXsy_h" role="1zxBo5">
            <node concept="XOnhg" id="B4G5MXsy_i" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="B4G5MXsy_j" role="1tU5fm">
                <node concept="3uibUv" id="B4G5MXsyIb" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="B4G5MXsy_k" role="1zc67A">
              <node concept="3clFbF" id="B4G5MXuSqI" role="3cqZAp">
                <node concept="2OqwBi" id="B4G5MXuSxD" role="3clFbG">
                  <node concept="37vLTw" id="B4G5MXuSqG" role="2Oq$k0">
                    <ref role="3cqZAo" node="B4G5MXsy_i" resolve="t" />
                  </node>
                  <node concept="liA8E" id="B4G5MXuSIs" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="B4G5MXuFgW" role="3cqZAp">
                <node concept="2OqwBi" id="B4G5MXuFnF" role="3clFbG">
                  <node concept="pFkrN" id="B4G5MXuFgV" role="2Oq$k0" />
                  <node concept="liA8E" id="B4G5MXuFyh" role="2OqNvi">
                    <ref role="37wK5l" to="4h87:5YhakczIim2" resolve="sendErrorResponse" />
                    <node concept="10M0yZ" id="B4G5MXuHgr" role="37wK5m">
                      <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.INTERNAL_SERVER_ERROR" resolve="INTERNAL_SERVER_ERROR" />
                      <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
                    </node>
                    <node concept="Xl_RD" id="B4G5MXuSe$" role="37wK5m">
                      <property role="Xl_RC" value="Internal Failure" />
                    </node>
                    <node concept="37vLTw" id="B4G5MXuSjc" role="37wK5m">
                      <ref role="3cqZAo" node="B4G5MXsy_i" resolve="t" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="B4G5MXsyOr" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="B4G5MXsynZ" role="1zxBo7">
            <node concept="3clFbH" id="B4G5MXsynY" role="3cqZAp" />
            <node concept="3SKdUt" id="1ln$sNE9Kon" role="3cqZAp">
              <node concept="1PaTwC" id="1ln$sNE9Kr$" role="1aUNEU">
                <node concept="3oM_SD" id="1ln$sNE9Kr_" role="1PaTwD">
                  <property role="3oM_SC" value="When" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KsD" role="1PaTwD">
                  <property role="3oM_SC" value="answering" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KsI" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KsW" role="1PaTwD">
                  <property role="3oM_SC" value="request" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kt3" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Ktb" role="1PaTwD">
                  <property role="3oM_SC" value="receive" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kt$" role="1PaTwD">
                  <property role="3oM_SC" value="data" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KtI" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Ku9" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kul" role="1PaTwD">
                  <property role="3oM_SC" value="browser," />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kuy" role="1PaTwD">
                  <property role="3oM_SC" value="through" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kv0" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9Kvf" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KvB" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KvS" role="1PaTwD">
                  <property role="3oM_SC" value="fragments." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1ln$sNE9K$P" role="3cqZAp">
              <node concept="1PaTwC" id="1ln$sNE9K$Q" role="1aUNEU">
                <node concept="3oM_SD" id="1ln$sNE9KA8" role="1PaTwD">
                  <property role="3oM_SC" value="Given" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KAu" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KAF" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KAL" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KB0" role="1PaTwD">
                  <property role="3oM_SC" value="data" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KBg" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KBp" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KBF" role="1PaTwD">
                  <property role="3oM_SC" value="server," />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KBQ" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KC2" role="1PaTwD">
                  <property role="3oM_SC" value="answer" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KCn" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KC_" role="1PaTwD">
                  <property role="3oM_SC" value="request" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KD4" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KDk" role="1PaTwD">
                  <property role="3oM_SC" value="JS" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KDH" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KDZ" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KEi" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KFe" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KFz" role="1PaTwD">
                  <property role="3oM_SC" value="data" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KFT" role="1PaTwD">
                  <property role="3oM_SC" value="out" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KGo" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KGS" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KHh" role="1PaTwD">
                  <property role="3oM_SC" value="fragment" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1ln$sNE9KMB" role="3cqZAp">
              <node concept="1PaTwC" id="1ln$sNE9KMC" role="1aUNEU">
                <node concept="3oM_SD" id="1ln$sNE9KMD" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KOk" role="1PaTwD">
                  <property role="3oM_SC" value="pass" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KOp" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KOB" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KOQ" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KPe" role="1PaTwD">
                  <property role="3oM_SC" value="route," />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KPB" role="1PaTwD">
                  <property role="3oM_SC" value="where" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KPL" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KPW" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KQ8" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KQl" role="1PaTwD">
                  <property role="3oM_SC" value="access_token" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KQN" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KR2" role="1PaTwD">
                  <property role="3oM_SC" value="save" />
                </node>
                <node concept="3oM_SD" id="1ln$sNE9KRq" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7hml1DJ4UxR" role="3cqZAp">
              <node concept="3cpWsn" id="7hml1DJ4UxU" role="3cpWs9">
                <property role="TrG5h" value="msurl" />
                <node concept="17QB3L" id="7hml1DJ4UxP" role="1tU5fm" />
                <node concept="3_PKRz" id="7hml1DJ4UAa" role="33vP2m">
                  <ref role="3_PKRw" node="1ln$sNE9$6J" resolve="modelServerURL" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7hml1DJ4RfW" role="3cqZAp">
              <node concept="3clFbS" id="7hml1DJ4RfY" role="3clFbx">
                <node concept="3clFbJ" id="7hml1DJ4SGj" role="3cqZAp">
                  <node concept="3clFbS" id="7hml1DJ4SGl" role="3clFbx">
                    <node concept="3clFbF" id="7hml1DJ4U7I" role="3cqZAp">
                      <node concept="37vLTI" id="7hml1DJ4UlB" role="3clFbG">
                        <node concept="2OqwBi" id="7hml1DJ4Vcu" role="37vLTx">
                          <node concept="3_PKRz" id="7hml1DJ4VaS" role="2Oq$k0">
                            <ref role="3_PKRw" node="7hml1DJ4R5e" resolve="state" />
                          </node>
                          <node concept="liA8E" id="7hml1DJ4W2r" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                            <node concept="2OqwBi" id="7hml1DJ4Wq1" role="37wK5m">
                              <node concept="Xl_RD" id="7hml1DJ4W65" role="2Oq$k0">
                                <property role="Xl_RC" value="step1_" />
                              </node>
                              <node concept="liA8E" id="7hml1DJ4Wvz" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7hml1DJ4UL0" role="37vLTJ">
                          <ref role="3cqZAo" node="7hml1DJ4UxU" resolve="msurl" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="7hml1DJ4Td6" role="3clFbw">
                    <node concept="2OqwBi" id="7hml1DJ4Tw1" role="3uHU7w">
                      <node concept="3_PKRz" id="7hml1DJ4TdS" role="2Oq$k0">
                        <ref role="3_PKRw" node="7hml1DJ4R5e" resolve="state" />
                      </node>
                      <node concept="liA8E" id="7hml1DJ4TXg" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                        <node concept="Xl_RD" id="7hml1DJ4TYp" role="37wK5m">
                          <property role="Xl_RC" value="step1_" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="7hml1DJ4SZk" role="3uHU7B">
                      <node concept="3_PKRz" id="7hml1DJ4SGG" role="3uHU7B">
                        <ref role="3_PKRw" node="7hml1DJ4R5e" resolve="state" />
                      </node>
                      <node concept="10Nm6u" id="7hml1DJ4Tcv" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="7hml1DJ4WyI" role="9aQIa">
                    <node concept="3clFbS" id="7hml1DJ4WyJ" role="9aQI4">
                      <node concept="3clFbF" id="7hml1DJ5bpn" role="3cqZAp">
                        <node concept="2OqwBi" id="7hml1DJ5bpo" role="3clFbG">
                          <node concept="pFkrN" id="7hml1DJ5bpp" role="2Oq$k0" />
                          <node concept="liA8E" id="7hml1DJ5bC9" role="2OqNvi">
                            <ref role="37wK5l" to="4h87:5YhakczIvRr" resolve="sendText" />
                            <node concept="10M0yZ" id="7hml1DJ5bDT" role="37wK5m">
                              <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.BAD_REQUEST" resolve="BAD_REQUEST" />
                              <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
                            </node>
                            <node concept="Xl_RD" id="7hml1DJ5bF5" role="37wK5m">
                              <property role="Xl_RC" value="no way to figure out modelServerURL" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="7hml1DJ4RRi" role="3clFbw">
                <node concept="2OqwBi" id="7hml1DJ4Sbd" role="3uHU7w">
                  <node concept="3_PKRz" id="7hml1DJ4RSw" role="2Oq$k0">
                    <ref role="3_PKRw" node="1ln$sNE9$6J" resolve="modelServerURL" />
                  </node>
                  <node concept="17RlXB" id="7hml1DJ4SBW" role="2OqNvi" />
                </node>
                <node concept="3clFbC" id="7hml1DJ4RBn" role="3uHU7B">
                  <node concept="3_PKRz" id="7hml1DJ4RkW" role="3uHU7B">
                    <ref role="3_PKRw" node="1ln$sNE9$6J" resolve="modelServerURL" />
                  </node>
                  <node concept="10Nm6u" id="7hml1DJ4ROY" role="3uHU7w" />
                </node>
              </node>
              <node concept="9aQIb" id="7hml1DJ4UMv" role="9aQIa">
                <node concept="3clFbS" id="7hml1DJ4UMw" role="9aQI4">
                  <node concept="3clFbF" id="7hml1DJ4USa" role="3cqZAp">
                    <node concept="37vLTI" id="7hml1DJ4Va6" role="3clFbG">
                      <node concept="3_PKRz" id="7hml1DJ4Vax" role="37vLTx">
                        <ref role="3_PKRw" node="1ln$sNE9$6J" resolve="modelServerURL" />
                      </node>
                      <node concept="37vLTw" id="7hml1DJ4US9" role="37vLTJ">
                        <ref role="3cqZAo" node="7hml1DJ4UxU" resolve="msurl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELdEj0" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELdEoS" role="3clFbG">
                <node concept="2YIFZM" id="7$Qv9nHS$$t" role="2Oq$k0">
                  <ref role="37wK5l" node="7$Qv9nHSpOT" resolve="getAuthenticationProcess" />
                  <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
                  <node concept="37vLTw" id="7hml1DJ5mZ0" role="37wK5m">
                    <ref role="3cqZAo" node="7hml1DJ4UxU" resolve="msurl" />
                  </node>
                </node>
                <node concept="liA8E" id="579DpELeYwI" role="2OqNvi">
                  <ref role="37wK5l" node="579DpELdLxi" resolve="receiveAccessToken" />
                  <node concept="3_PKRz" id="579DpELeYxH" role="37wK5m">
                    <ref role="3_PKRw" node="3poOr4trFoT" resolve="access_token" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3poOr4trDvI" role="3cqZAp">
              <node concept="2OqwBi" id="3poOr4trDvJ" role="3clFbG">
                <node concept="pFkrN" id="3poOr4trDvK" role="2Oq$k0" />
                <node concept="1W9Qq2" id="3poOr4trDvL" role="2OqNvi">
                  <property role="1W9R_Y" value="text/plain" />
                  <node concept="Xl_RD" id="3poOr4trDBD" role="1W9R_W">
                    <property role="Xl_RC" value="OK" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3poOr4trDvN" role="3cqZAp" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="579DpELe0nI">
    <property role="TrG5h" value="User" />
    <node concept="312cEg" id="579DpELe0yW" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm1VV" id="579DpELe0tq" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELe0yL" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="579DpELe0zd" role="jymVt">
      <property role="TrG5h" value="email" />
      <node concept="3Tm1VV" id="579DpELe0ze" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELe0zf" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="579DpELfgCq" role="jymVt" />
    <node concept="3clFbW" id="579DpELfgMV" role="jymVt">
      <node concept="37vLTG" id="579DpELfgNs" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="579DpELfgNu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="579DpELfgNv" role="3clF46">
        <property role="TrG5h" value="email" />
        <node concept="17QB3L" id="579DpELfgNx" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="579DpELfgMX" role="3clF45" />
      <node concept="3Tm1VV" id="579DpELfgMY" role="1B3o_S" />
      <node concept="3clFbS" id="579DpELfgMZ" role="3clF47">
        <node concept="3clFbF" id="579DpELfgV5" role="3cqZAp">
          <node concept="37vLTI" id="579DpELfhrO" role="3clFbG">
            <node concept="37vLTw" id="579DpELfhwd" role="37vLTx">
              <ref role="3cqZAo" node="579DpELfgNs" resolve="name" />
            </node>
            <node concept="2OqwBi" id="579DpELfh4M" role="37vLTJ">
              <node concept="Xjq3P" id="579DpELfgV4" role="2Oq$k0" />
              <node concept="2OwXpG" id="579DpELfhcb" role="2OqNvi">
                <ref role="2Oxat6" node="579DpELe0yW" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELfhCF" role="3cqZAp">
          <node concept="37vLTI" id="579DpELfi4z" role="3clFbG">
            <node concept="37vLTw" id="579DpELfi9k" role="37vLTx">
              <ref role="3cqZAo" node="579DpELfgNv" resolve="email" />
            </node>
            <node concept="2OqwBi" id="579DpELfhI0" role="37vLTJ">
              <node concept="Xjq3P" id="579DpELfhCD" role="2Oq$k0" />
              <node concept="2OwXpG" id="579DpELfhPz" role="2OqNvi">
                <ref role="2Oxat6" node="579DpELe0zd" resolve="email" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELfun9" role="jymVt" />
    <node concept="3Tm1VV" id="579DpELe0nJ" role="1B3o_S" />
    <node concept="3clFb_" id="579DpELfup7" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="579DpELfup8" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELfupa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="579DpELfupb" role="3clF47">
        <node concept="3cpWs6" id="579DpELfuAV" role="3cqZAp">
          <node concept="3cpWs3" id="579DpELfw4T" role="3cqZAk">
            <node concept="Xl_RD" id="579DpELfw8S" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="579DpELfvAg" role="3uHU7B">
              <node concept="3cpWs3" id="579DpELfvkv" role="3uHU7B">
                <node concept="3cpWs3" id="579DpELfuWJ" role="3uHU7B">
                  <node concept="Xl_RD" id="579DpELfuEX" role="3uHU7B">
                    <property role="Xl_RC" value="User(" />
                  </node>
                  <node concept="37vLTw" id="579DpELfv0M" role="3uHU7w">
                    <ref role="3cqZAo" node="579DpELe0yW" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="579DpELfvxk" role="3uHU7w">
                  <property role="Xl_RC" value=", " />
                </node>
              </node>
              <node concept="37vLTw" id="579DpELfvKP" role="3uHU7w">
                <ref role="3cqZAo" node="579DpELe0zd" resolve="email" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="579DpELfupc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="579DpELfJcW">
    <property role="3GE5qa" value="strategies" />
    <property role="TrG5h" value="AuthorizationCodePKCEFlow" />
    <node concept="312cEg" id="4fpU1SJfPdj" role="jymVt">
      <property role="TrG5h" value="lastCodeVerifier" />
      <node concept="3Tm6S6" id="4fpU1SJfNl4" role="1B3o_S" />
      <node concept="17QB3L" id="4fpU1SJfPaR" role="1tU5fm" />
      <node concept="10Nm6u" id="4fpU1SJfPxH" role="33vP2m" />
    </node>
    <node concept="312cEg" id="579DpELh98P" role="jymVt">
      <property role="TrG5h" value="lastExecutor" />
      <node concept="3Tm6S6" id="579DpELh8ow" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELh94N" role="1tU5fm">
        <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
      </node>
      <node concept="10Nm6u" id="579DpELh9ID" role="33vP2m" />
    </node>
    <node concept="312cEg" id="579DpELhbPX" role="jymVt">
      <property role="TrG5h" value="secondStepURL" />
      <node concept="3Tm6S6" id="579DpELhbPY" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELhbQ0" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2uDeeSDFKVg" role="jymVt" />
    <node concept="3Tm1VV" id="579DpELfJcX" role="1B3o_S" />
    <node concept="3uibUv" id="579DpELfK6c" role="1zkMxy">
      <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationFlow" />
    </node>
    <node concept="3clFbW" id="579DpELfKrO" role="jymVt">
      <node concept="37vLTG" id="7$Qv9nHSCGA" role="3clF46">
        <property role="TrG5h" value="authenticationProcess" />
        <node concept="3uibUv" id="7$Qv9nHSCXo" role="1tU5fm">
          <ref role="3uigEE" node="7$Qv9nHSkdM" resolve="AuthenticationProcess" />
        </node>
      </node>
      <node concept="37vLTG" id="579DpELfKrP" role="3clF46">
        <property role="TrG5h" value="baseURL" />
        <node concept="17QB3L" id="579DpELfKrQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="579DpELfKrR" role="3clF46">
        <property role="TrG5h" value="clientId" />
        <node concept="17QB3L" id="579DpELfKrS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="579DpELfKrT" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="17QB3L" id="579DpELfKrU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="579DpELhbq1" role="3clF46">
        <property role="TrG5h" value="secondStepURL" />
        <node concept="17QB3L" id="579DpELhb$1" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="579DpELfKrV" role="3clF45" />
      <node concept="3Tm1VV" id="579DpELfKrW" role="1B3o_S" />
      <node concept="3clFbS" id="579DpELfKsg" role="3clF47">
        <node concept="XkiVB" id="579DpELfKsh" role="3cqZAp">
          <ref role="37wK5l" node="3poOr4tplpy" resolve="OAuthAuthenticationFlow" />
          <node concept="37vLTw" id="7$Qv9nHSF83" role="37wK5m">
            <ref role="3cqZAo" node="7$Qv9nHSCGA" resolve="authenticationProcess" />
          </node>
          <node concept="37vLTw" id="579DpELfKsi" role="37wK5m">
            <ref role="3cqZAo" node="579DpELfKrP" resolve="baseURL" />
          </node>
          <node concept="37vLTw" id="579DpELfKsj" role="37wK5m">
            <ref role="3cqZAo" node="579DpELfKrR" resolve="clientId" />
          </node>
          <node concept="37vLTw" id="579DpELfKsk" role="37wK5m">
            <ref role="3cqZAo" node="579DpELfKrT" resolve="scope" />
          </node>
        </node>
        <node concept="3clFbF" id="579DpELhcwa" role="3cqZAp">
          <node concept="37vLTI" id="579DpELhd2V" role="3clFbG">
            <node concept="37vLTw" id="579DpELhdfR" role="37vLTx">
              <ref role="3cqZAo" node="579DpELhbq1" resolve="secondStepURL" />
            </node>
            <node concept="2OqwBi" id="579DpELhcAG" role="37vLTJ">
              <node concept="Xjq3P" id="579DpELhcw8" role="2Oq$k0" />
              <node concept="2OwXpG" id="579DpELhcN8" role="2OqNvi">
                <ref role="2Oxat6" node="579DpELhbPX" resolve="secondStepURL" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELhdO3" role="jymVt" />
    <node concept="3clFb_" id="579DpELfK78" role="jymVt">
      <property role="TrG5h" value="startURL" />
      <node concept="3Tm1VV" id="579DpELfK7a" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELfK7b" role="3clF45" />
      <node concept="37vLTG" id="579DpELfK7c" role="3clF46">
        <property role="TrG5h" value="executor" />
        <node concept="3uibUv" id="579DpELfK7d" role="1tU5fm">
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
        </node>
      </node>
      <node concept="3clFbS" id="579DpELfK7e" role="3clF47">
        <node concept="3clFbF" id="579DpELg6TF" role="3cqZAp">
          <node concept="37vLTI" id="579DpELg7j9" role="3clFbG">
            <node concept="1rXfSq" id="579DpELg7DA" role="37vLTx">
              <ref role="37wK5l" node="579DpELfUmP" resolve="codeVerifier" />
            </node>
            <node concept="37vLTw" id="579DpELg6TD" role="37vLTJ">
              <ref role="3cqZAo" node="4fpU1SJfPdj" resolve="lastCodeVerifier" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELhach" role="3cqZAp">
          <node concept="37vLTI" id="579DpELhaLi" role="3clFbG">
            <node concept="37vLTw" id="579DpELhb5z" role="37vLTx">
              <ref role="3cqZAo" node="579DpELfK7c" resolve="executor" />
            </node>
            <node concept="37vLTw" id="579DpELhacf" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh98P" resolve="lastExecutor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELg52O" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELg52P" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="579DpELg52Q" role="1tU5fm" />
            <node concept="37vLTw" id="579DpELg52R" role="33vP2m">
              <ref role="3cqZAo" node="3poOr4tplet" resolve="baseURL" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg5or" role="3cqZAp">
          <node concept="d57v9" id="579DpELg5KN" role="3clFbG">
            <node concept="Xl_RD" id="579DpELg5PR" role="37vLTx">
              <property role="Xl_RC" value="?response_type=code" />
            </node>
            <node concept="37vLTw" id="579DpELg5op" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg52S" role="3cqZAp">
          <node concept="d57v9" id="579DpELg52T" role="3clFbG">
            <node concept="37vLTw" id="579DpELg52U" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
            <node concept="3cpWs3" id="579DpELg52V" role="37vLTx">
              <node concept="37vLTw" id="579DpELg52W" role="3uHU7w">
                <ref role="3cqZAo" node="3poOr4tpnos" resolve="clientId" />
              </node>
              <node concept="Xl_RD" id="579DpELg52X" role="3uHU7B">
                <property role="Xl_RC" value="&amp;client_id=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg69f" role="3cqZAp">
          <node concept="d57v9" id="579DpELg69g" role="3clFbG">
            <node concept="37vLTw" id="579DpELg69h" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
            <node concept="3cpWs3" id="579DpELg69i" role="37vLTx">
              <node concept="Xl_RD" id="579DpELg69k" role="3uHU7B">
                <property role="Xl_RC" value="&amp;code_challenge=" />
              </node>
              <node concept="2YIFZM" id="579DpELgFi5" role="3uHU7w">
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <node concept="1rXfSq" id="579DpELg6uP" role="37wK5m">
                  <ref role="37wK5l" node="579DpELfUno" resolve="codeChallenge" />
                  <node concept="37vLTw" id="579DpELg7Qv" role="37wK5m">
                    <ref role="3cqZAo" node="4fpU1SJfPdj" resolve="lastCodeVerifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg7Zp" role="3cqZAp">
          <node concept="d57v9" id="579DpELg7Zq" role="3clFbG">
            <node concept="37vLTw" id="579DpELg7Zr" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
            <node concept="Xl_RD" id="579DpELg7Zt" role="37vLTx">
              <property role="Xl_RC" value="&amp;code_challenge_method=S256" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg52Y" role="3cqZAp">
          <node concept="d57v9" id="579DpELg52Z" role="3clFbG">
            <node concept="3cpWs3" id="579DpELg530" role="37vLTx">
              <node concept="Xl_RD" id="579DpELg534" role="3uHU7B">
                <property role="Xl_RC" value="&amp;redirect_uri=" />
              </node>
              <node concept="2YIFZM" id="579DpELgE5C" role="3uHU7w">
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <node concept="2OqwBi" id="579DpELg531" role="37wK5m">
                  <node concept="37vLTw" id="579DpELg532" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELfK7c" resolve="executor" />
                  </node>
                  <node concept="liA8E" id="579DpELg533" role="2OqNvi">
                    <ref role="37wK5l" node="3poOr4tptjT" resolve="getRedirectURI" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="579DpELg535" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg536" role="3cqZAp">
          <node concept="d57v9" id="579DpELg537" role="3clFbG">
            <node concept="3cpWs3" id="579DpELg538" role="37vLTx">
              <node concept="Xl_RD" id="579DpELg539" role="3uHU7w">
                <property role="Xl_RC" value="token" />
              </node>
              <node concept="Xl_RD" id="579DpELg53a" role="3uHU7B">
                <property role="Xl_RC" value="&amp;response_type=" />
              </node>
            </node>
            <node concept="37vLTw" id="579DpELg53b" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELg53c" role="3cqZAp">
          <node concept="d57v9" id="579DpELg53d" role="3clFbG">
            <node concept="3cpWs3" id="579DpELg53e" role="37vLTx">
              <node concept="Xl_RD" id="579DpELg53g" role="3uHU7B">
                <property role="Xl_RC" value="&amp;scope=" />
              </node>
              <node concept="2YIFZM" id="579DpELgFsa" role="3uHU7w">
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <node concept="37vLTw" id="579DpELgF_N" role="37wK5m">
                  <ref role="3cqZAo" node="3poOr4tpnAk" resolve="scope" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="579DpELg53h" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pYhtK4PVMA" role="3cqZAp">
          <node concept="d57v9" id="3pYhtK4PVMB" role="3clFbG">
            <node concept="3cpWs3" id="3pYhtK4PVMC" role="37vLTx">
              <node concept="Xl_RD" id="3pYhtK4PVMD" role="3uHU7B">
                <property role="Xl_RC" value="&amp;state=" />
              </node>
              <node concept="2YIFZM" id="3pYhtK4PVME" role="3uHU7w">
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <node concept="3cpWs3" id="3pYhtK4PY0l" role="37wK5m">
                  <node concept="2OqwBi" id="3pYhtK4PYnV" role="3uHU7w">
                    <node concept="37vLTw" id="3pYhtK4PY9h" role="2Oq$k0">
                      <ref role="3cqZAo" node="7$Qv9nHSDom" resolve="authenticationProcess" />
                    </node>
                    <node concept="liA8E" id="3pYhtK4PYNx" role="2OqNvi">
                      <ref role="37wK5l" node="6Sm20WMoFu6" resolve="getModelServerURL" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3pYhtK4PXEx" role="3uHU7B">
                    <property role="Xl_RC" value="step1_" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3pYhtK4PVMI" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="579DpELg53i" role="3cqZAp">
          <node concept="37vLTw" id="579DpELg53j" role="3cqZAk">
            <ref role="3cqZAo" node="579DpELg52P" resolve="url" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="579DpELfK7f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="579DpELfKge" role="jymVt">
      <property role="TrG5h" value="processStartResponse" />
      <node concept="37vLTG" id="579DpELfKgf" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="579DpELgNIc" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
      <node concept="3cqZAl" id="579DpELfKgh" role="3clF45" />
      <node concept="3Tm1VV" id="579DpELfKgi" role="1B3o_S" />
      <node concept="3clFbS" id="579DpELfKgk" role="3clF47">
        <node concept="3clFbH" id="579DpELgXql" role="3cqZAp" />
        <node concept="3cpWs8" id="579DpELgYv4" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELgYv7" role="3cpWs9">
            <property role="TrG5h" value="authorizationCode" />
            <node concept="17QB3L" id="579DpELgYv2" role="1tU5fm" />
            <node concept="2OqwBi" id="579DpELh0xp" role="33vP2m">
              <node concept="2OqwBi" id="579DpELgZ2F" role="2Oq$k0">
                <node concept="37vLTw" id="579DpELgYWY" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELfKgf" resolve="request" />
                </node>
                <node concept="liA8E" id="579DpELgZ8z" role="2OqNvi">
                  <ref role="37wK5l" to="4h87:6GArDv5I6qD" resolve="getParameterValue" />
                  <node concept="Xl_RD" id="579DpELgZm8" role="37wK5m">
                    <property role="Xl_RC" value="code" />
                  </node>
                </node>
              </node>
              <node concept="34jXtK" id="579DpELh1BP" role="2OqNvi">
                <node concept="3cmrfG" id="579DpELh1Sl" role="25WWJ7">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="579DpELgXre" role="3cqZAp" />
        <node concept="3cpWs8" id="579DpELgHG_" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELgHGC" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="579DpELgHGz" role="1tU5fm" />
            <node concept="Xl_RD" id="579DpELgI61" role="33vP2m">
              <property role="Xl_RC" value="OK" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELgHnL" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELgHnM" role="3cpWs9">
            <property role="TrG5h" value="response" />
            <node concept="3uibUv" id="579DpELgHnN" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~FullHttpResponse" resolve="FullHttpResponse" />
            </node>
            <node concept="2YIFZM" id="579DpELgHnO" role="33vP2m">
              <ref role="37wK5l" to="iwnc:~Responses.response(java.lang.String,io.netty.buffer.ByteBuf)" resolve="response" />
              <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
              <node concept="Xl_RD" id="579DpELgHnP" role="37wK5m">
                <property role="Xl_RC" value="text/html" />
              </node>
              <node concept="2YIFZM" id="579DpELgHnQ" role="37wK5m">
                <ref role="37wK5l" to="iil0:~Unpooled.copiedBuffer(java.lang.CharSequence,java.nio.charset.Charset)" resolve="copiedBuffer" />
                <ref role="1Pybhc" to="iil0:~Unpooled" resolve="Unpooled" />
                <node concept="37vLTw" id="579DpELgLnA" role="37wK5m">
                  <ref role="3cqZAo" node="579DpELgHGC" resolve="text" />
                </node>
                <node concept="10M0yZ" id="579DpELgHnS" role="37wK5m">
                  <ref role="3cqZAo" to="ap92:~CharsetUtil.UTF_8" resolve="UTF_8" />
                  <ref role="1PxDUh" to="ap92:~CharsetUtil" resolve="CharsetUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELgHnZ" role="3cqZAp">
          <node concept="2OqwBi" id="579DpELgHo0" role="3clFbG">
            <node concept="37vLTw" id="579DpELgHo1" role="2Oq$k0">
              <ref role="3cqZAo" node="579DpELgHnM" resolve="response" />
            </node>
            <node concept="liA8E" id="579DpELgHo2" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~FullHttpResponse.setStatus(io.netty.handler.codec.http.HttpResponseStatus)" resolve="setStatus" />
              <node concept="10M0yZ" id="579DpELgHo3" role="37wK5m">
                <ref role="3cqZAo" to="9xw8:~HttpResponseStatus.OK" resolve="OK" />
                <ref role="1PxDUh" to="9xw8:~HttpResponseStatus" resolve="HttpResponseStatus" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELgHoa" role="3cqZAp">
          <node concept="2YIFZM" id="579DpELgHob" role="3clFbG">
            <ref role="1Pybhc" to="iwnc:~Responses" resolve="Responses" />
            <ref role="37wK5l" to="iwnc:~Responses.send(io.netty.handler.codec.http.HttpResponse,io.netty.channel.Channel,io.netty.handler.codec.http.HttpRequest)" resolve="send" />
            <node concept="37vLTw" id="579DpELgHoc" role="37wK5m">
              <ref role="3cqZAo" node="579DpELgHnM" resolve="response" />
            </node>
            <node concept="2OqwBi" id="579DpELgHod" role="37wK5m">
              <node concept="37vLTw" id="579DpELgNRJ" role="2Oq$k0">
                <ref role="3cqZAo" node="579DpELfKgf" resolve="request" />
              </node>
              <node concept="1PnCL0" id="579DpELgHof" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:5dkEk59WCkE" resolve="channel" />
              </node>
            </node>
            <node concept="2OqwBi" id="579DpELgO4o" role="37wK5m">
              <node concept="37vLTw" id="579DpELgHog" role="2Oq$k0">
                <ref role="3cqZAo" node="579DpELfKgf" resolve="request" />
              </node>
              <node concept="1PnCL0" id="579DpELgOcj" role="2OqNvi">
                <ref role="2Oxat5" to="4h87:6GArDv5I22B" resolve="request" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="579DpELh3$e" role="3cqZAp" />
        <node concept="3cpWs8" id="579DpELh435" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELh438" role="3cpWs9">
            <property role="TrG5h" value="body" />
            <node concept="17QB3L" id="579DpELh433" role="1tU5fm" />
            <node concept="Xl_RD" id="579DpELh4uA" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELh4B4" role="3cqZAp">
          <node concept="d57v9" id="579DpELh5bu" role="3clFbG">
            <node concept="Xl_RD" id="579DpELh5ki" role="37vLTx">
              <property role="Xl_RC" value="grant_type=authorization_code" />
            </node>
            <node concept="37vLTw" id="579DpELh4B2" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh438" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELh5m6" role="3cqZAp">
          <node concept="d57v9" id="579DpELh5m7" role="3clFbG">
            <node concept="3cpWs3" id="579DpELh5Sz" role="37vLTx">
              <node concept="37vLTw" id="579DpELh61b" role="3uHU7w">
                <ref role="3cqZAo" node="3poOr4tpnos" resolve="clientId" />
              </node>
              <node concept="Xl_RD" id="579DpELh5m8" role="3uHU7B">
                <property role="Xl_RC" value="&amp;client_id=" />
              </node>
            </node>
            <node concept="37vLTw" id="579DpELh5m9" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh438" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELh66g" role="3cqZAp">
          <node concept="d57v9" id="579DpELh66h" role="3clFbG">
            <node concept="3cpWs3" id="579DpELh66i" role="37vLTx">
              <node concept="37vLTw" id="579DpELh6Fj" role="3uHU7w">
                <ref role="3cqZAo" node="4fpU1SJfPdj" resolve="lastCodeVerifier" />
              </node>
              <node concept="Xl_RD" id="579DpELh66k" role="3uHU7B">
                <property role="Xl_RC" value="&amp;code_verifier=" />
              </node>
            </node>
            <node concept="37vLTw" id="579DpELh66l" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh438" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELh78v" role="3cqZAp">
          <node concept="d57v9" id="579DpELh78w" role="3clFbG">
            <node concept="3cpWs3" id="579DpELh78x" role="37vLTx">
              <node concept="Xl_RD" id="579DpELh78z" role="3uHU7B">
                <property role="Xl_RC" value="&amp;code=" />
              </node>
              <node concept="37vLTw" id="579DpELh7LE" role="3uHU7w">
                <ref role="3cqZAo" node="579DpELgYv7" resolve="authorizationCode" />
              </node>
            </node>
            <node concept="37vLTw" id="579DpELh78$" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh438" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELh7Nx" role="3cqZAp">
          <node concept="d57v9" id="579DpELh7Ny" role="3clFbG">
            <node concept="3cpWs3" id="579DpELh7Nz" role="37vLTx">
              <node concept="Xl_RD" id="579DpELh7N$" role="3uHU7B">
                <property role="Xl_RC" value="&amp;redirect_uri=" />
              </node>
              <node concept="2YIFZM" id="579DpELh8dh" role="3uHU7w">
                <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String)" resolve="encode" />
                <node concept="2OqwBi" id="579DpELh8di" role="37wK5m">
                  <node concept="37vLTw" id="579DpELhbjU" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELh98P" resolve="lastExecutor" />
                  </node>
                  <node concept="liA8E" id="579DpELh8dk" role="2OqNvi">
                    <ref role="37wK5l" node="3poOr4tptjT" resolve="getRedirectURI" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="579DpELh7NA" role="37vLTJ">
              <ref role="3cqZAo" node="579DpELh438" resolve="body" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="579DpELhe6t" role="3cqZAp">
          <node concept="3uVAMA" id="579DpELhe6u" role="1zxBo5">
            <node concept="XOnhg" id="579DpELhe6v" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="579DpELhe6w" role="1tU5fm">
                <node concept="3uibUv" id="579DpELhe6x" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="579DpELhe6y" role="1zc67A">
              <node concept="3clFbF" id="579DpELhe6z" role="3cqZAp">
                <node concept="2OqwBi" id="579DpELhe6$" role="3clFbG">
                  <node concept="37vLTw" id="579DpELhe6_" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELhe6v" resolve="e" />
                  </node>
                  <node concept="liA8E" id="579DpELhe6A" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="579DpELhe6B" role="1zxBo7">
            <node concept="3cpWs8" id="579DpELhe6C" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELhe6D" role="3cpWs9">
                <property role="TrG5h" value="url" />
                <node concept="3uibUv" id="579DpELhe6E" role="1tU5fm">
                  <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                </node>
                <node concept="2ShNRf" id="579DpELhe6F" role="33vP2m">
                  <node concept="1pGfFk" id="579DpELhe6G" role="2ShVmc">
                    <ref role="37wK5l" to="zf81:~URL.&lt;init&gt;(java.lang.String)" resolve="URL" />
                    <node concept="37vLTw" id="579DpELhfJ4" role="37wK5m">
                      <ref role="3cqZAo" node="579DpELhbPX" resolve="secondStepURL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELhe6I" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELhe6J" role="3cpWs9">
                <property role="TrG5h" value="connection" />
                <node concept="3uibUv" id="579DpELhe6K" role="1tU5fm">
                  <ref role="3uigEE" to="zf81:~HttpURLConnection" resolve="HttpURLConnection" />
                </node>
                <node concept="1eOMI4" id="579DpELhe6L" role="33vP2m">
                  <node concept="10QFUN" id="579DpELhe6M" role="1eOMHV">
                    <node concept="3uibUv" id="579DpELhe6N" role="10QFUM">
                      <ref role="3uigEE" to="zf81:~HttpURLConnection" resolve="HttpURLConnection" />
                    </node>
                    <node concept="2OqwBi" id="579DpELhe6O" role="10QFUP">
                      <node concept="37vLTw" id="579DpELhe6P" role="2Oq$k0">
                        <ref role="3cqZAo" node="579DpELhe6D" resolve="url" />
                      </node>
                      <node concept="liA8E" id="579DpELhe6Q" role="2OqNvi">
                        <ref role="37wK5l" to="zf81:~URL.openConnection()" resolve="openConnection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe6R" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe6S" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe6T" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELhe6U" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URLConnection.setRequestProperty(java.lang.String,java.lang.String)" resolve="setRequestProperty" />
                  <node concept="Xl_RD" id="579DpELhe6V" role="37wK5m">
                    <property role="Xl_RC" value="content-type" />
                  </node>
                  <node concept="Xl_RD" id="579DpELhe6W" role="37wK5m">
                    <property role="Xl_RC" value="application/x-www-form-urlencoded" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe6X" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe6Y" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe6Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELhe70" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~HttpURLConnection.setRequestMethod(java.lang.String)" resolve="setRequestMethod" />
                  <node concept="Xl_RD" id="579DpELhe71" role="37wK5m">
                    <property role="Xl_RC" value="POST" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1ln$sNE9Xne" role="3cqZAp">
              <node concept="1rXfSq" id="1ln$sNE9Xnc" role="3clFbG">
                <ref role="37wK5l" node="1ln$sNE9ShL" resolve="sendBody" />
                <node concept="37vLTw" id="1ln$sNE9Yh$" role="37wK5m">
                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                </node>
                <node concept="37vLTw" id="1ln$sNE9YrX" role="37wK5m">
                  <ref role="3cqZAo" node="579DpELh438" resolve="body" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe7t" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe7u" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe7v" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELhe7w" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URLConnection.connect()" resolve="connect" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELhe7x" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELhe7y" role="3cpWs9">
                <property role="TrG5h" value="br" />
                <node concept="3uibUv" id="579DpELhe7z" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="579DpELhe7$" role="3cqZAp" />
            <node concept="3cpWs8" id="579DpELhe7_" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELhe7A" role="3cpWs9">
                <property role="TrG5h" value="responsesCode" />
                <node concept="10Oyi0" id="579DpELhe7B" role="1tU5fm" />
                <node concept="2OqwBi" id="579DpELhe7C" role="33vP2m">
                  <node concept="37vLTw" id="579DpELhe7D" role="2Oq$k0">
                    <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                  </node>
                  <node concept="liA8E" id="579DpELhe7E" role="2OqNvi">
                    <ref role="37wK5l" to="zf81:~HttpURLConnection.getResponseCode()" resolve="getResponseCode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="579DpELhe7I" role="3cqZAp" />
            <node concept="3clFbJ" id="579DpELhe7J" role="3cqZAp">
              <node concept="1Wc70l" id="579DpELhe7K" role="3clFbw">
                <node concept="2dkUwp" id="579DpELhe7L" role="3uHU7B">
                  <node concept="3cmrfG" id="579DpELhe7M" role="3uHU7B">
                    <property role="3cmrfH" value="100" />
                  </node>
                  <node concept="37vLTw" id="579DpELhe7N" role="3uHU7w">
                    <ref role="3cqZAo" node="579DpELhe7A" resolve="responsesCode" />
                  </node>
                </node>
                <node concept="2dkUwp" id="579DpELhe7O" role="3uHU7w">
                  <node concept="3cmrfG" id="579DpELhe7P" role="3uHU7w">
                    <property role="3cmrfH" value="399" />
                  </node>
                  <node concept="37vLTw" id="579DpELhe7Q" role="3uHU7B">
                    <ref role="3cqZAo" node="579DpELhe7A" resolve="responsesCode" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="579DpELhe7R" role="9aQIa">
                <node concept="3clFbS" id="579DpELhe7S" role="9aQI4">
                  <node concept="3clFbF" id="579DpELhe7T" role="3cqZAp">
                    <node concept="37vLTI" id="579DpELhe7U" role="3clFbG">
                      <node concept="37vLTw" id="579DpELhe7V" role="37vLTJ">
                        <ref role="3cqZAo" node="579DpELhe7y" resolve="br" />
                      </node>
                      <node concept="2ShNRf" id="579DpELhe7W" role="37vLTx">
                        <node concept="1pGfFk" id="579DpELhe7X" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                          <node concept="2ShNRf" id="579DpELhe7Y" role="37wK5m">
                            <node concept="1pGfFk" id="579DpELhe7Z" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                              <node concept="2OqwBi" id="579DpELhe80" role="37wK5m">
                                <node concept="37vLTw" id="579DpELhe81" role="2Oq$k0">
                                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                                </node>
                                <node concept="liA8E" id="579DpELhe82" role="2OqNvi">
                                  <ref role="37wK5l" to="zf81:~HttpURLConnection.getErrorStream()" resolve="getErrorStream" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="579DpELhe83" role="3cqZAp">
                    <node concept="3cpWsn" id="579DpELhe84" role="3cpWs9">
                      <property role="TrG5h" value="error" />
                      <property role="3TUv4t" value="true" />
                      <node concept="17QB3L" id="579DpELhe85" role="1tU5fm" />
                      <node concept="2OqwBi" id="579DpELhe86" role="33vP2m">
                        <node concept="2OqwBi" id="579DpELhe87" role="2Oq$k0">
                          <node concept="37vLTw" id="579DpELhe88" role="2Oq$k0">
                            <ref role="3cqZAo" node="579DpELhe7y" resolve="br" />
                          </node>
                          <node concept="liA8E" id="579DpELhe89" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~BufferedReader.lines()" resolve="lines" />
                          </node>
                        </node>
                        <node concept="liA8E" id="579DpELhe8a" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="579DpELhe8b" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.joining(java.lang.CharSequence)" resolve="joining" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="Xl_RD" id="579DpELhe8c" role="37wK5m">
                              <property role="Xl_RC" value="\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="RRSsy" id="1ln$sNE9nIJ" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="1ln$sNE9oOH" role="RRSoy">
                      <node concept="37vLTw" id="1ln$sNE9oSz" role="3uHU7w">
                        <ref role="3cqZAo" node="579DpELhe84" resolve="error" />
                      </node>
                      <node concept="Xl_RD" id="1ln$sNE9nIL" role="3uHU7B">
                        <property role="Xl_RC" value="Failure during authentication: " />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="579DpELhe8t" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="579DpELhe8u" role="3clFbx">
                <node concept="3clFbF" id="579DpELhe8v" role="3cqZAp">
                  <node concept="37vLTI" id="579DpELhe8w" role="3clFbG">
                    <node concept="37vLTw" id="579DpELhe8x" role="37vLTJ">
                      <ref role="3cqZAo" node="579DpELhe7y" resolve="br" />
                    </node>
                    <node concept="2ShNRf" id="579DpELhe8y" role="37vLTx">
                      <node concept="1pGfFk" id="579DpELhe8z" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                        <node concept="2ShNRf" id="579DpELhe8$" role="37wK5m">
                          <node concept="1pGfFk" id="579DpELhe8_" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                            <node concept="2OqwBi" id="579DpELhe8A" role="37wK5m">
                              <node concept="37vLTw" id="579DpELhe8B" role="2Oq$k0">
                                <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                              </node>
                              <node concept="liA8E" id="579DpELhe8C" role="2OqNvi">
                                <ref role="37wK5l" to="zf81:~URLConnection.getInputStream()" resolve="getInputStream" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="579DpELhe8D" role="3cqZAp">
                  <node concept="3cpWsn" id="579DpELhe8E" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="17QB3L" id="579DpELhe8F" role="1tU5fm" />
                    <node concept="2OqwBi" id="579DpELhe8G" role="33vP2m">
                      <node concept="2OqwBi" id="579DpELhe8H" role="2Oq$k0">
                        <node concept="37vLTw" id="579DpELhe8I" role="2Oq$k0">
                          <ref role="3cqZAo" node="579DpELhe7y" resolve="br" />
                        </node>
                        <node concept="liA8E" id="579DpELhe8J" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~BufferedReader.lines()" resolve="lines" />
                        </node>
                      </node>
                      <node concept="liA8E" id="579DpELhe8K" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="579DpELhe8L" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.joining(java.lang.CharSequence)" resolve="joining" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="Xl_RD" id="579DpELhe8M" role="37wK5m">
                            <property role="Xl_RC" value="\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="579DpELhgyn" role="3cqZAp">
                  <node concept="3cpWsn" id="579DpELhgyq" role="3cpWs9">
                    <property role="TrG5h" value="accessToken" />
                    <node concept="17QB3L" id="579DpELhgyl" role="1tU5fm" />
                    <node concept="2OqwBi" id="579DpELhgLv" role="33vP2m">
                      <node concept="2OqwBi" id="579DpELhgLw" role="2Oq$k0">
                        <node concept="2OqwBi" id="579DpELhgLx" role="2Oq$k0">
                          <node concept="2YIFZM" id="579DpELhgLy" role="2Oq$k0">
                            <ref role="1Pybhc" to="wy2b:~JsonParser" resolve="JsonParser" />
                            <ref role="37wK5l" to="wy2b:~JsonParser.parseString(java.lang.String)" resolve="parseString" />
                            <node concept="37vLTw" id="579DpELhgLz" role="37wK5m">
                              <ref role="3cqZAo" node="579DpELhe8E" resolve="result" />
                            </node>
                          </node>
                          <node concept="liA8E" id="579DpELhgL$" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="579DpELhgL_" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                          <node concept="Xl_RD" id="579DpELhgLA" role="37wK5m">
                            <property role="Xl_RC" value="access_token" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="579DpELhgLB" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="579DpELhknZ" role="3cqZAp">
                  <node concept="2OqwBi" id="579DpELhko1" role="3clFbG">
                    <node concept="37vLTw" id="7$Qv9nHSFRe" role="2Oq$k0">
                      <ref role="3cqZAo" node="7$Qv9nHSDom" resolve="authenticationProcess" />
                    </node>
                    <node concept="liA8E" id="579DpELhko3" role="2OqNvi">
                      <ref role="37wK5l" node="579DpELdLxi" resolve="receiveAccessToken" />
                      <node concept="37vLTw" id="579DpELhkJy" role="37wK5m">
                        <ref role="3cqZAo" node="579DpELhgyq" resolve="accessToken" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="579DpELhe8Z" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="579DpELh6Kw" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="579DpELfKgl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="579DpELfKgm" role="jymVt">
      <property role="TrG5h" value="verifyAccessToken" />
      <node concept="3Tm1VV" id="579DpELfKgo" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELfKgp" role="3clF45">
        <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
      </node>
      <node concept="37vLTG" id="579DpELfKgq" role="3clF46">
        <property role="TrG5h" value="accessToken" />
        <node concept="17QB3L" id="579DpELfKgr" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="579DpELfKgv" role="3clF47">
        <node concept="3cpWs6" id="4WFLoHfctXJ" role="3cqZAp">
          <node concept="10Nm6u" id="4WFLoHfculh" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="579DpELfKgw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELg0w8" role="jymVt" />
    <node concept="2tJIrI" id="579DpELg0wR" role="jymVt" />
    <node concept="3UR2Jj" id="1ln$sNE9w_w" role="lGtFl">
      <node concept="TZ5HA" id="1ln$sNE9w_x" role="TZ5H$">
        <node concept="1dT_AC" id="1ln$sNE9w_y" role="1dT_Ay">
          <property role="1dT_AB" value="This is what we use with the IdentityServer, for example" />
        </node>
      </node>
    </node>
  </node>
  <node concept="34j2dQ" id="55JU2Sa6lsJ">
    <property role="TrG5h" value="ModelixAuthenticationPreferences" />
    <property role="3GE5qa" value="configuration.ui" />
    <node concept="3yqqq6" id="55JU2Sa6lsK" role="3yq$HY">
      <property role="TrG5h" value="ModelixOAuthConfiguration" />
      <node concept="3B8pKI" id="55JU2Sa6lsM" role="3B8L_j">
        <node concept="3clFbS" id="55JU2Sa6lsN" role="2VODD2">
          <node concept="3clFbF" id="5oXgFRIPtUP" role="3cqZAp">
            <node concept="2OqwBi" id="5oXgFRIPtUR" role="3clFbG">
              <node concept="liA8E" id="5oXgFRIPtUS" role="2OqNvi">
                <ref role="37wK5l" node="2$HTiPw3d5F" resolve="isModified" />
              </node>
              <node concept="1eOMI4" id="5oXgFRIPtUT" role="2Oq$k0">
                <node concept="10QFUN" id="5oXgFRIPtUU" role="1eOMHV">
                  <node concept="3uibUv" id="5oXgFRIPtUV" role="10QFUM">
                    <ref role="3uigEE" node="55JU2Sa6lKE" resolve="PreferencesUI" />
                  </node>
                  <node concept="3yMSdA" id="5oXgFRIPtUW" role="10QFUP" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="55JU2Sa6lsO" role="3y$9q5">
        <node concept="3clFbS" id="55JU2Sa6lsP" role="2VODD2">
          <node concept="3clFbF" id="2$HTiPw3jbr" role="3cqZAp">
            <node concept="2OqwBi" id="2$HTiPw3jNp" role="3clFbG">
              <node concept="1eOMI4" id="2$HTiPw3jbp" role="2Oq$k0">
                <node concept="10QFUN" id="2$HTiPw3jbm" role="1eOMHV">
                  <node concept="3uibUv" id="2$HTiPw3jiQ" role="10QFUM">
                    <ref role="3uigEE" node="55JU2Sa6lKE" resolve="PreferencesUI" />
                  </node>
                  <node concept="3yMSdA" id="2$HTiPw3jrf" role="10QFUP" />
                </node>
              </node>
              <node concept="liA8E" id="2$HTiPw3lFP" role="2OqNvi">
                <ref role="37wK5l" node="55JU2Sa8$Di" resolve="reload" />
                <node concept="2xqhHp" id="2$HTiPw3meQ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="55JU2Sa6lsQ" role="3y$ekZ">
        <node concept="3clFbS" id="55JU2Sa6lsR" role="2VODD2">
          <node concept="3clFbF" id="55JU2Sa8GE0" role="3cqZAp">
            <node concept="2OqwBi" id="55JU2Sa8GE1" role="3clFbG">
              <node concept="liA8E" id="55JU2Sa8GO6" role="2OqNvi">
                <ref role="37wK5l" node="55JU2Sa8EL9" resolve="save" />
                <node concept="2xqhHp" id="55JU2Sa8N9W" role="37wK5m" />
              </node>
              <node concept="1eOMI4" id="2$HTiPw3mj9" role="2Oq$k0">
                <node concept="10QFUN" id="2$HTiPw3mja" role="1eOMHV">
                  <node concept="3uibUv" id="2$HTiPw3mjb" role="10QFUM">
                    <ref role="3uigEE" node="55JU2Sa6lKE" resolve="PreferencesUI" />
                  </node>
                  <node concept="3yMSdA" id="2$HTiPw3mjc" role="10QFUP" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="55JU2Sa6njp" role="3yzNdQ">
        <ref role="37wK5l" node="55JU2Sa6mf8" resolve="getComponent" />
        <ref role="1Pybhc" node="55JU2Sa6lKE" resolve="PreferencesUI" />
      </node>
    </node>
    <node concept="3xXM6Z" id="55JU2Sa82oo" role="3xXSXp">
      <node concept="3clFbS" id="55JU2Sa82op" role="2VODD2">
        <node concept="3clFbF" id="55JU2Sa8N6Y" role="3cqZAp">
          <node concept="2OqwBi" id="55JU2Sa8N6Z" role="3clFbG">
            <node concept="2YIFZM" id="55JU2Sa8N70" role="2Oq$k0">
              <ref role="37wK5l" node="55JU2Sa6mf8" resolve="getComponent" />
              <ref role="1Pybhc" node="55JU2Sa6lKE" resolve="PreferencesUI" />
            </node>
            <node concept="liA8E" id="55JU2Sa8N71" role="2OqNvi">
              <ref role="37wK5l" node="55JU2Sa8$Di" resolve="reload" />
              <node concept="2YIFZM" id="55JU2Sa9cHY" role="37wK5m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="1KvdUw" id="55JU2Sa9cJ1" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3xWZ$M" id="55JU2Sa82tl" role="3xXVxh">
      <node concept="3clFbS" id="55JU2Sa82tm" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="55JU2Sa6lKE">
    <property role="TrG5h" value="PreferencesUI" />
    <property role="3GE5qa" value="configuration.ui" />
    <node concept="2tJIrI" id="55JU2Sa7nwi" role="jymVt" />
    <node concept="312cEu" id="3ljvbPMPPzH" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="EntryPanel" />
      <node concept="312cEg" id="3ljvbPMV77A" role="jymVt">
        <property role="TrG5h" value="proxyURL" />
        <node concept="3Tm6S6" id="3ljvbPMV4eN" role="1B3o_S" />
        <node concept="3uibUv" id="3ljvbPMV775" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3ljvbPMPOxt" role="1B3o_S" />
      <node concept="3uibUv" id="3ljvbPMPSi$" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="312cEg" id="55JU2Sa9lds" role="jymVt">
        <property role="TrG5h" value="baseURL" />
        <node concept="3Tm6S6" id="55JU2Sa9iWg" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9kWJ" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9I3_" role="jymVt">
        <property role="TrG5h" value="clientID" />
        <node concept="3Tm6S6" id="55JU2Sa9I3A" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9I3B" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9I9U" role="jymVt">
        <property role="TrG5h" value="scope" />
        <node concept="3Tm6S6" id="55JU2Sa9I9V" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9I9W" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9IC9" role="jymVt">
        <property role="TrG5h" value="tokenVerificationURL" />
        <node concept="3Tm6S6" id="55JU2Sa9ICa" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9ICb" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9OTe" role="jymVt">
        <property role="TrG5h" value="none" />
        <node concept="3Tm6S6" id="55JU2Sa9OTf" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9OTh" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JRadioButton" resolve="JRadioButton" />
        </node>
        <node concept="2ShNRf" id="55JU2Sa9OTi" role="33vP2m">
          <node concept="1pGfFk" id="55JU2Sa9OTj" role="2ShVmc">
            <ref role="37wK5l" to="dxuu:~JRadioButton.&lt;init&gt;(java.lang.String)" resolve="JRadioButton" />
            <node concept="Xl_RD" id="55JU2Sa9OTk" role="37wK5m">
              <property role="Xl_RC" value="None" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9OTl" role="jymVt">
        <property role="TrG5h" value="authorizationCode" />
        <node concept="3Tm6S6" id="55JU2Sa9OTm" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9OTo" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JRadioButton" resolve="JRadioButton" />
        </node>
        <node concept="2ShNRf" id="55JU2Sa9OTp" role="33vP2m">
          <node concept="1pGfFk" id="55JU2Sa9OTq" role="2ShVmc">
            <ref role="37wK5l" to="dxuu:~JRadioButton.&lt;init&gt;(java.lang.String)" resolve="JRadioButton" />
            <node concept="Xl_RD" id="55JU2Sa9OTr" role="37wK5m">
              <property role="Xl_RC" value="AuthorizationCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="55JU2Sa9OTs" role="jymVt">
        <property role="TrG5h" value="authorizationCodePKCE" />
        <node concept="3Tm6S6" id="55JU2Sa9OTt" role="1B3o_S" />
        <node concept="3uibUv" id="55JU2Sa9OTv" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JRadioButton" resolve="JRadioButton" />
        </node>
        <node concept="2ShNRf" id="55JU2Sa9OTw" role="33vP2m">
          <node concept="1pGfFk" id="55JU2Sa9OTx" role="2ShVmc">
            <ref role="37wK5l" to="dxuu:~JRadioButton.&lt;init&gt;(java.lang.String)" resolve="JRadioButton" />
            <node concept="Xl_RD" id="55JU2Sa9OTy" role="37wK5m">
              <property role="Xl_RC" value="AuthorizationCodePKCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="55JU2Sa8dZg" role="jymVt">
        <property role="TrG5h" value="createLabel" />
        <node concept="3clFbS" id="55JU2Sa8dZs" role="3clF47">
          <node concept="3cpWs8" id="55JU2Sa8dZt" role="3cqZAp">
            <node concept="3cpWsn" id="55JU2Sa8dZu" role="3cpWs9">
              <property role="TrG5h" value="label" />
              <node concept="3uibUv" id="55JU2Sa8dZv" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
              </node>
              <node concept="2ShNRf" id="55JU2Sa8dZw" role="33vP2m">
                <node concept="1pGfFk" id="55JU2Sa8dZx" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="37vLTw" id="55JU2Sa8dZy" role="37wK5m">
                    <ref role="3cqZAo" node="55JU2Sa8dZi" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8dZz" role="3cqZAp">
            <node concept="2OqwBi" id="55JU2Sa8dZ$" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8dZ_" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8dZu" resolve="label" />
              </node>
              <node concept="liA8E" id="55JU2Sa8dZA" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                <node concept="10M0yZ" id="55JU2Sa8dZB" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.LEFT" resolve="LEFT" />
                  <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8dZC" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8dZD" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8dZE" role="37vLTx">
                <ref role="3cqZAo" node="55JU2Sa8dZk" resolve="x" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8dZF" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8dZG" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8dZH" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8dZI" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8dZJ" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8dZK" role="37vLTx">
                <ref role="3cqZAo" node="55JU2Sa8dZm" resolve="y" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8dZL" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8dZM" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8dZN" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8dZO" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8dZP" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8dZQ" role="37vLTx">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8dZR" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8dZS" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8dZT" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8dZU" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8dZV" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8dZW" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8dZX" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8dZY" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8dZZ" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8e00" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8e01" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8e02" role="37vLTx">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8e03" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8e04" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8e05" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8e06" role="3cqZAp">
            <node concept="2OqwBi" id="55JU2Sa8e07" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8e08" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8dZq" resolve="panel" />
              </node>
              <node concept="liA8E" id="55JU2Sa8e09" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="55JU2Sa8e0a" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa8dZu" resolve="label" />
                </node>
                <node concept="37vLTw" id="55JU2Sa8e0b" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa8dZo" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="55JU2Sa8e0c" role="3clF45" />
        <node concept="37vLTG" id="55JU2Sa8dZi" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="55JU2Sa8dZj" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8dZk" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="55JU2Sa8dZl" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8dZm" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="55JU2Sa8dZn" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8dZo" role="3clF46">
          <property role="TrG5h" value="c" />
          <node concept="3uibUv" id="55JU2Sa8dZp" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
          </node>
        </node>
        <node concept="37vLTG" id="55JU2Sa8dZq" role="3clF46">
          <property role="TrG5h" value="panel" />
          <node concept="3uibUv" id="55JU2Sa8dZr" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
          </node>
        </node>
        <node concept="3Tm6S6" id="55JU2Sa8e0d" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="55JU2Sa8d6v" role="jymVt">
        <property role="TrG5h" value="createTextField" />
        <node concept="3clFbS" id="55JU2Sa8d6F" role="3clF47">
          <node concept="3cpWs8" id="55JU2Sa8d6G" role="3cqZAp">
            <node concept="3cpWsn" id="55JU2Sa8d6H" role="3cpWs9">
              <property role="TrG5h" value="textField" />
              <node concept="3uibUv" id="55JU2Sa8d6I" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
              </node>
              <node concept="2ShNRf" id="55JU2Sa8d6J" role="33vP2m">
                <node concept="1pGfFk" id="55JU2Sa8d6K" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;(java.lang.String)" resolve="JTextField" />
                  <node concept="37vLTw" id="55JU2Sa8d6L" role="37wK5m">
                    <ref role="3cqZAo" node="55JU2Sa8d6x" resolve="initialText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d6M" role="3cqZAp">
            <node concept="2OqwBi" id="55JU2Sa8d6N" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8d6O" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8d6H" resolve="textField" />
              </node>
              <node concept="liA8E" id="55JU2Sa8d6P" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTextField.setColumns(int)" resolve="setColumns" />
                <node concept="3cmrfG" id="55JU2Sa8d6Q" role="37wK5m">
                  <property role="3cmrfH" value="50" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d6R" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8d6S" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8d6T" role="37vLTx">
                <ref role="3cqZAo" node="55JU2Sa8d6z" resolve="x" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8d6U" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8d6V" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8d6W" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d6X" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8d6Y" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8d6Z" role="37vLTx">
                <ref role="3cqZAo" node="55JU2Sa8d6_" resolve="y" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8d70" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8d71" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8d72" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d73" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8d74" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8d75" role="37vLTx">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8d76" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8d77" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8d78" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d79" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8d7a" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8d7b" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8d7c" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8d7d" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8d7e" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d7f" role="3cqZAp">
            <node concept="37vLTI" id="55JU2Sa8d7g" role="3clFbG">
              <node concept="3cmrfG" id="55JU2Sa8d7h" role="37vLTx">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="55JU2Sa8d7i" role="37vLTJ">
                <node concept="37vLTw" id="55JU2Sa8d7j" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa8d7k" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55JU2Sa8d7l" role="3cqZAp">
            <node concept="2OqwBi" id="55JU2Sa8d7m" role="3clFbG">
              <node concept="37vLTw" id="55JU2Sa8d7n" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8d6D" resolve="panel" />
              </node>
              <node concept="liA8E" id="55JU2Sa8d7o" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="55JU2Sa8d7p" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa8d6H" resolve="textField" />
                </node>
                <node concept="37vLTw" id="55JU2Sa8d7q" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa8d6B" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="55JU2Sa9gJR" role="3cqZAp">
            <node concept="37vLTw" id="55JU2Sa9hBg" role="3cqZAk">
              <ref role="3cqZAo" node="55JU2Sa8d6H" resolve="textField" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="55JU2Sa9frR" role="3clF45">
          <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8d6x" role="3clF46">
          <property role="TrG5h" value="initialText" />
          <node concept="17QB3L" id="55JU2Sa8d6y" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8d6z" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="55JU2Sa8d6$" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8d6_" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="55JU2Sa8d6A" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="55JU2Sa8d6B" role="3clF46">
          <property role="TrG5h" value="c" />
          <node concept="3uibUv" id="55JU2Sa8d6C" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
          </node>
        </node>
        <node concept="37vLTG" id="55JU2Sa8d6D" role="3clF46">
          <property role="TrG5h" value="panel" />
          <node concept="3uibUv" id="55JU2Sa8d6E" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
          </node>
        </node>
        <node concept="3Tm6S6" id="55JU2Sa8d7s" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="3ljvbPMQ2nd" role="jymVt">
        <node concept="37vLTG" id="3ljvbPMRwJ6" role="3clF46">
          <property role="TrG5h" value="entry" />
          <node concept="3uibUv" id="3ljvbPMRxPe" role="1tU5fm">
            <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
          </node>
        </node>
        <node concept="3cqZAl" id="3ljvbPMQ2nf" role="3clF45" />
        <node concept="3Tm1VV" id="3ljvbPMQ2ng" role="1B3o_S" />
        <node concept="3clFbS" id="3ljvbPMQ2nh" role="3clF47">
          <node concept="XkiVB" id="3ljvbPMQ2Wk" role="3cqZAp">
            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
            <node concept="2ShNRf" id="3ljvbPMQ2Wl" role="37wK5m">
              <node concept="1pGfFk" id="3ljvbPMQ2Wm" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3ljvbPMQ2Wn" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPMQ2Wo" role="3cpWs9">
              <property role="TrG5h" value="panel" />
              <node concept="3uibUv" id="3ljvbPMQ2Wp" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="Xjq3P" id="3ljvbPMQ2Wq" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMZsHv" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMZub_" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMZsHt" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
              <node concept="liA8E" id="3ljvbPMZvv0" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2YIFZM" id="3ljvbPMZ$NJ" role="37wK5m">
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createLineBorder(java.awt.Color)" resolve="createLineBorder" />
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <node concept="10M0yZ" id="3ljvbPMZDjS" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3ljvbPMQ2Wr" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPMQ2Ws" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="3ljvbPMQ2Wt" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
              </node>
              <node concept="2ShNRf" id="3ljvbPMQ2Wu" role="33vP2m">
                <node concept="1pGfFk" id="3ljvbPMQ2Wv" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMQ2Ww" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPMVcvA" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMVcvB" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMVcvC" role="37wK5m">
                <property role="Xl_RC" value="Proxy URL" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMVcvD" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMVcvE" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3ljvbPMVcvF" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMVcvG" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMVfnu" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMY_Ne" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMYCFN" role="37vLTJ">
                <ref role="3cqZAo" node="3ljvbPMV77A" resolve="proxyURL" />
              </node>
              <node concept="1rXfSq" id="3ljvbPMVfns" role="37vLTx">
                <ref role="37wK5l" node="55JU2Sa8d6v" resolve="createTextField" />
                <node concept="2OqwBi" id="3ljvbPMVhFw" role="37wK5m">
                  <node concept="37vLTw" id="3ljvbPMVgP1" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ljvbPMRwJ6" resolve="entry" />
                  </node>
                  <node concept="2OwXpG" id="3ljvbPMVhW_" role="2OqNvi">
                    <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3ljvbPMVqvV" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMVjMg" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3ljvbPMVkqN" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="37vLTw" id="3ljvbPMVljK" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMVbAs" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPMQ2Wx" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMQ2Wy" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMQ2Wz" role="37wK5m">
                <property role="Xl_RC" value="Flow type" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2W$" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2W_" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2WA" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2WB" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMQ2WC" role="3cqZAp" />
          <node concept="3cpWs8" id="3ljvbPMQ2WD" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPMQ2WE" role="3cpWs9">
              <property role="TrG5h" value="bg" />
              <node concept="3uibUv" id="3ljvbPMQ2WF" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~ButtonGroup" resolve="ButtonGroup" />
              </node>
              <node concept="2ShNRf" id="3ljvbPMQ2WG" role="33vP2m">
                <node concept="1pGfFk" id="3ljvbPMQ2WH" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~ButtonGroup.&lt;init&gt;()" resolve="ButtonGroup" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2WI" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2WJ" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2WK" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2WE" resolve="bg" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2WL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~ButtonGroup.add(javax.swing.AbstractButton)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2WM" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTe" resolve="none" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2WN" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2WO" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2WP" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2WE" resolve="bg" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2WQ" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~ButtonGroup.add(javax.swing.AbstractButton)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2WR" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTl" resolve="authorizationCode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2WS" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2WT" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2WU" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2WE" resolve="bg" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2WV" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~ButtonGroup.add(javax.swing.AbstractButton)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2WW" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTs" resolve="authorizationCodePKCE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMQ2WX" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPMQ2WY" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2WZ" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2X0" role="37vLTx">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2X1" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2X2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2X3" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2X4" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2X5" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2X6" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2X7" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2X8" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2X9" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Xa" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Xb" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2Xc" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2Xd" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2Xe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2Xf" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Xg" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2Xh" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2Xi" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2Xj" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2Xk" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTe" resolve="none" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Xl" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Xm" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Xn" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2Xo" role="37vLTx">
                <property role="3cmrfH" value="6" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2Xp" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2Xq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2Xr" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Xs" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Xt" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2Xu" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2Xv" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2Xw" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2Xx" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Xy" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Xz" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2X$" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2X_" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2XA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2XB" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2XC" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2XD" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2XE" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2XF" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2XG" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTl" resolve="authorizationCode" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2XH" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2XI" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2XJ" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2XK" role="37vLTx">
                <property role="3cmrfH" value="7" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2XL" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2XM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2XN" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2XO" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2XP" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2XQ" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2XR" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2XS" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2XT" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2XU" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2XV" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPMQ2XW" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3ljvbPMQ2XX" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPMQ2XY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPMQ2XZ" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Y0" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQ2Y1" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2Y2" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
              <node concept="liA8E" id="3ljvbPMQ2Y3" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPMQ2Y4" role="37wK5m">
                  <ref role="3cqZAo" node="55JU2Sa9OTs" resolve="authorizationCodePKCE" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Y5" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMQ2Y6" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPMQ2Y7" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMQ2Y8" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMQ2Y9" role="37wK5m">
                <property role="Xl_RC" value="Base URL" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2Ya" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2Yb" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2Yc" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2Yd" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Ye" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Yf" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2Yg" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa9lds" resolve="baseURL" />
              </node>
              <node concept="1rXfSq" id="3ljvbPMQ2Yh" role="37vLTx">
                <ref role="37wK5l" node="55JU2Sa8d6v" resolve="createTextField" />
                <node concept="Xl_RD" id="3ljvbPMQ2Yi" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Yj" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Yk" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Yl" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Ym" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Yn" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMQ2Yo" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMQ2Yp" role="37wK5m">
                <property role="Xl_RC" value="Client ID" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2Yq" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2Yr" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2Ys" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2Yt" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2Yu" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2Yv" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2Yw" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa9I3_" resolve="clientID" />
              </node>
              <node concept="1rXfSq" id="3ljvbPMQ2Yx" role="37vLTx">
                <ref role="37wK5l" node="55JU2Sa8d6v" resolve="createTextField" />
                <node concept="Xl_RD" id="3ljvbPMQ2Yy" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Yz" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Y$" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Y_" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2YA" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2YB" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMQ2YC" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMQ2YD" role="37wK5m">
                <property role="Xl_RC" value="Scope" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2YE" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2YF" role="37wK5m">
                <property role="3cmrfH" value="4" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2YG" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2YH" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2YI" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2YJ" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2YK" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa9I9U" resolve="scope" />
              </node>
              <node concept="1rXfSq" id="3ljvbPMQ2YL" role="37vLTx">
                <ref role="37wK5l" node="55JU2Sa8d6v" resolve="createTextField" />
                <node concept="Xl_RD" id="3ljvbPMQ2YM" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2YN" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2YO" role="37wK5m">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2YP" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2YQ" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2YR" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMQ2YS" role="3clFbG">
              <ref role="37wK5l" node="55JU2Sa8dZg" resolve="createLabel" />
              <node concept="Xl_RD" id="3ljvbPMQ2YT" role="37wK5m">
                <property role="Xl_RC" value="Token Verification URL" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMQ2YU" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3ljvbPMVwRh" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2YW" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
              </node>
              <node concept="37vLTw" id="3ljvbPMQ2YX" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQ2YY" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPMQ2YZ" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQ2Z0" role="37vLTJ">
                <ref role="3cqZAo" node="55JU2Sa9IC9" resolve="tokenVerificationURL" />
              </node>
              <node concept="1rXfSq" id="3ljvbPMQ2Z1" role="37vLTx">
                <ref role="37wK5l" node="55JU2Sa8d6v" resolve="createTextField" />
                <node concept="Xl_RD" id="3ljvbPMQ2Z2" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Z3" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMQ2Z4" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Z5" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="37vLTw" id="3ljvbPMQ2Z6" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPN0FvZ" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPN0Lwo" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPN0NRh" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPN0Qyc" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3ljvbPN0Mcx" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPN0Lwm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPN0N2m" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPN0GWB" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPN0Jfq" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPN0KHX" role="37vLTx">
                <property role="3cmrfH" value="6" />
              </node>
              <node concept="2OqwBi" id="3ljvbPN0H$C" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPN0GW_" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPN0Iqn" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPN0RkH" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPN0TzG" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPN0UTv" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3ljvbPN0RWI" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPN0RkF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPN0SID" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPN0Woz" role="3cqZAp">
            <node concept="37vLTI" id="3ljvbPN0YBC" role="3clFbG">
              <node concept="3cmrfG" id="3ljvbPN0ZAu" role="37vLTx">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3ljvbPN0X0$" role="37vLTJ">
                <node concept="37vLTw" id="3ljvbPN0Wox" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
                <node concept="2OwXpG" id="3ljvbPN0XM_" role="2OqNvi">
                  <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3ljvbPN1dd_" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPN1ddA" role="3cpWs9">
              <property role="TrG5h" value="removeMe" />
              <node concept="3uibUv" id="3ljvbPN1ddB" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
              </node>
              <node concept="2ShNRf" id="3ljvbPN1f$n" role="33vP2m">
                <node concept="1pGfFk" id="3ljvbPN1eYb" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                  <node concept="Xl_RD" id="3ljvbPN1gn9" role="37wK5m">
                    <property role="Xl_RC" value="Remove me" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPN1s_a" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPN1ukh" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPN1s_8" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPN1ddA" resolve="removeMe" />
              </node>
              <node concept="liA8E" id="3ljvbPN1wqg" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                <node concept="2ShNRf" id="3ljvbPN1xQS" role="37wK5m">
                  <node concept="YeOm9" id="3ljvbPN1_Lo" role="2ShVmc">
                    <node concept="1Y3b0j" id="3ljvbPN1_Lr" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="3ljvbPN1_Ls" role="1B3o_S" />
                      <node concept="3clFb_" id="3ljvbPN1_Lx" role="jymVt">
                        <property role="TrG5h" value="actionPerformed" />
                        <node concept="3Tm1VV" id="3ljvbPN1_Ly" role="1B3o_S" />
                        <node concept="3cqZAl" id="3ljvbPN1_L$" role="3clF45" />
                        <node concept="37vLTG" id="3ljvbPN1_L_" role="3clF46">
                          <property role="TrG5h" value="event" />
                          <node concept="3uibUv" id="3ljvbPN1_LA" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3ljvbPN1_LB" role="3clF47">
                          <node concept="3cpWs8" id="3ljvbPN1Pf6" role="3cqZAp">
                            <node concept="3cpWsn" id="3ljvbPN1Pf7" role="3cpWs9">
                              <property role="TrG5h" value="parent" />
                              <node concept="3uibUv" id="3ljvbPN20rv" role="1tU5fm">
                                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                              </node>
                              <node concept="1eOMI4" id="3ljvbPN2abw" role="33vP2m">
                                <node concept="10QFUN" id="3ljvbPN2abt" role="1eOMHV">
                                  <node concept="3uibUv" id="3ljvbPN2aby" role="10QFUM">
                                    <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                                  </node>
                                  <node concept="2OqwBi" id="3ljvbPN1F3h" role="10QFUP">
                                    <node concept="Xjq3P" id="3ljvbPN1E_E" role="2Oq$k0">
                                      <ref role="1HBi2w" node="3ljvbPMPPzH" resolve="PreferencesUI.EntryPanel" />
                                    </node>
                                    <node concept="liA8E" id="3ljvbPN1Jw$" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3ljvbPN1WIi" role="3cqZAp">
                            <node concept="2OqwBi" id="3ljvbPN1Zw7" role="3clFbG">
                              <node concept="37vLTw" id="3ljvbPN1YAU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ljvbPN1Pf7" resolve="parent" />
                              </node>
                              <node concept="liA8E" id="3ljvbPN2fLD" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                                <node concept="Xjq3P" id="3ljvbPN2kJX" role="37wK5m">
                                  <ref role="1HBi2w" node="3ljvbPMPPzH" resolve="PreferencesUI.EntryPanel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3ljvbPN2pCa" role="3cqZAp">
                            <node concept="2OqwBi" id="3ljvbPN2qMR" role="3clFbG">
                              <node concept="37vLTw" id="3ljvbPN2pC8" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ljvbPN1Pf7" resolve="parent" />
                              </node>
                              <node concept="liA8E" id="3ljvbPN2rGI" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Container.validate()" resolve="validate" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3ljvbPN2u4b" role="3cqZAp">
                            <node concept="2OqwBi" id="3ljvbPN2vfb" role="3clFbG">
                              <node concept="37vLTw" id="3ljvbPN2u49" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ljvbPN1Pf7" resolve="parent" />
                              </node>
                              <node concept="liA8E" id="3ljvbPN2yFH" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3ljvbPN1_LD" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPN11kv" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPN12T_" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPN11kt" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMQ2Wo" resolve="panel" />
              </node>
              <node concept="liA8E" id="3ljvbPN14hm" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="3ljvbPN1i3h" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPN1ddA" resolve="removeMe" />
                </node>
                <node concept="37vLTw" id="3ljvbPN1iR3" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPMQ2Ws" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3ljvbPMRGrn" role="3cqZAp" />
          <node concept="3clFbF" id="3ljvbPMRIpS" role="3cqZAp">
            <node concept="1rXfSq" id="3ljvbPMRIpQ" role="3clFbG">
              <ref role="37wK5l" node="3ljvbPMR_mY" resolve="setEntry" />
              <node concept="37vLTw" id="3ljvbPMRJ2V" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMRwJ6" resolve="entry" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPMRz2A" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPMR_mY" role="jymVt">
        <property role="TrG5h" value="setEntry" />
        <node concept="3clFbS" id="3ljvbPMR_n1" role="3clF47">
          <node concept="3clFbF" id="3ljvbPMV$zs" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMV_OX" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMV$zq" role="2Oq$k0">
                <ref role="3cqZAo" node="3ljvbPMV77A" resolve="proxyURL" />
              </node>
              <node concept="liA8E" id="3ljvbPMVBUI" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                <node concept="2OqwBi" id="3ljvbPMVFhG" role="37wK5m">
                  <node concept="37vLTw" id="3ljvbPMVEaK" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                  </node>
                  <node concept="2OwXpG" id="3ljvbPMVFEn" role="2OqNvi">
                    <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="55JU2Sa9UXY" role="3cqZAp">
            <node concept="3clFbS" id="55JU2Sa9UY0" role="3clFbx">
              <node concept="3clFbF" id="55JU2SaaqXX" role="3cqZAp">
                <node concept="1rXfSq" id="55JU2SaaqXW" role="3clFbG">
                  <ref role="37wK5l" node="3ljvbPMQMT6" resolve="setNone" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="55JU2Sa9VWF" role="3clFbw">
              <node concept="10Nm6u" id="55JU2Sa9WgW" role="3uHU7w" />
              <node concept="2OqwBi" id="55JU2Sa9VGA" role="3uHU7B">
                <node concept="37vLTw" id="3ljvbPMRPom" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                </node>
                <node concept="2OwXpG" id="55JU2Sa9VOK" role="2OqNvi">
                  <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="55JU2Sa9WBx" role="9aQIa">
              <node concept="3clFbS" id="55JU2Sa9WBy" role="9aQI4">
                <node concept="3cpWs8" id="3ljvbPNa2Ey" role="3cqZAp">
                  <node concept="3cpWsn" id="3ljvbPNa2Ez" role="3cpWs9">
                    <property role="TrG5h" value="strategyType" />
                    <node concept="3uibUv" id="3ljvbPNa2E$" role="1tU5fm">
                      <ref role="3uigEE" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                    </node>
                    <node concept="2OqwBi" id="3ljvbPNaxFe" role="33vP2m">
                      <node concept="2OqwBi" id="3ljvbPNa56r" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPNa56s" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPNa56t" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3ljvbPNaxY0" role="2OqNvi">
                        <ref role="37wK5l" node="3ljvbPNab_x" resolve="loadStrategyTypeByCode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3KaCP$" id="3ljvbPNaFel" role="3cqZAp">
                  <node concept="37vLTw" id="3ljvbPNaFem" role="3KbGdf">
                    <ref role="3cqZAo" node="3ljvbPNa2Ez" resolve="strategyType" />
                  </node>
                  <node concept="3KbdKl" id="3ljvbPNaFen" role="3KbHQx">
                    <node concept="Rm8GO" id="3ljvbPNaFeo" role="3Kbmr1">
                      <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                      <ref role="Rm8GQ" node="3ljvbPN8SG7" resolve="AUTHORIZATION_FLOW" />
                    </node>
                    <node concept="3clFbS" id="3ljvbPNaFep" role="3Kbo56">
                      <node concept="3clFbF" id="3ljvbPNaLYN" role="3cqZAp">
                        <node concept="2OqwBi" id="3ljvbPNaLYO" role="3clFbG">
                          <node concept="37vLTw" id="3ljvbPNaLYP" role="2Oq$k0">
                            <ref role="3cqZAo" node="55JU2Sa9OTl" resolve="authorizationCode" />
                          </node>
                          <node concept="liA8E" id="3ljvbPNaLYQ" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                            <node concept="3clFbT" id="3ljvbPNaLYR" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zACq4" id="3ljvbPNaPtG" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3KbdKl" id="3ljvbPNaFeM" role="3KbHQx">
                    <node concept="Rm8GO" id="3ljvbPNaFeN" role="3Kbmr1">
                      <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                      <ref role="Rm8GQ" node="3ljvbPN8SUL" resolve="AUTHORIZATION_PKCE_FLOW" />
                    </node>
                    <node concept="3clFbS" id="3ljvbPNaFeO" role="3Kbo56">
                      <node concept="3clFbF" id="3ljvbPNaWs0" role="3cqZAp">
                        <node concept="2OqwBi" id="3ljvbPNaWs1" role="3clFbG">
                          <node concept="37vLTw" id="3ljvbPNaWs2" role="2Oq$k0">
                            <ref role="3cqZAo" node="55JU2Sa9OTs" resolve="authorizationCodePKCE" />
                          </node>
                          <node concept="liA8E" id="3ljvbPNaWs3" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                            <node concept="3clFbT" id="3ljvbPNaWs4" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zACq4" id="3ljvbPNaXO0" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3ljvbPNaFfd" role="3Kb1Dw">
                    <node concept="YS8fn" id="3ljvbPNaFfe" role="3cqZAp">
                      <node concept="2ShNRf" id="3ljvbPNaFff" role="YScLw">
                        <node concept="1pGfFk" id="3ljvbPNaFfg" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                          <node concept="3cpWs3" id="3ljvbPNaFfh" role="37wK5m">
                            <node concept="Xl_RD" id="3ljvbPNaFfi" role="3uHU7w">
                              <property role="Xl_RC" value=" is not" />
                            </node>
                            <node concept="3cpWs3" id="3ljvbPNaFfj" role="3uHU7B">
                              <node concept="Xl_RD" id="3ljvbPNaFfk" role="3uHU7B">
                                <property role="Xl_RC" value="This is unexpected: all strategy types should be handled, but " />
                              </node>
                              <node concept="37vLTw" id="3ljvbPNaFfl" role="3uHU7w">
                                <ref role="3cqZAo" node="3ljvbPNa2Ez" resolve="strategyType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="55JU2SaayaW" role="3cqZAp">
                  <node concept="2OqwBi" id="55JU2Saa_mt" role="3clFbG">
                    <node concept="37vLTw" id="55JU2SaayaU" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa9lds" resolve="baseURL" />
                    </node>
                    <node concept="liA8E" id="55JU2SaaBiX" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                      <node concept="2OqwBi" id="55JU2SaaDu9" role="37wK5m">
                        <node concept="2OqwBi" id="55JU2SaaCRs" role="2Oq$k0">
                          <node concept="37vLTw" id="3ljvbPMRRpz" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="55JU2SaaCRu" role="2OqNvi">
                            <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="55JU2SaaDI0" role="2OqNvi">
                          <ref role="2Oxat6" node="55JU2Sa5UlA" resolve="baseURL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="55JU2SaaDNg" role="3cqZAp">
                  <node concept="2OqwBi" id="55JU2SaaDNh" role="3clFbG">
                    <node concept="37vLTw" id="55JU2SaaGpz" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa9I3_" resolve="clientID" />
                    </node>
                    <node concept="liA8E" id="55JU2SaaDNj" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                      <node concept="2OqwBi" id="55JU2SaaDNk" role="37wK5m">
                        <node concept="2OqwBi" id="55JU2SaaDNl" role="2Oq$k0">
                          <node concept="37vLTw" id="3ljvbPMRSk8" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="55JU2SaaDNn" role="2OqNvi">
                            <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="55JU2SaaFcV" role="2OqNvi">
                          <ref role="2Oxat6" node="55JU2Sa5UlE" resolve="clientId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="55JU2SaaDZS" role="3cqZAp">
                  <node concept="2OqwBi" id="55JU2SaaDZT" role="3clFbG">
                    <node concept="37vLTw" id="55JU2SaaGSP" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa9I9U" resolve="scope" />
                    </node>
                    <node concept="liA8E" id="55JU2SaaDZV" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                      <node concept="2OqwBi" id="55JU2SaaDZW" role="37wK5m">
                        <node concept="2OqwBi" id="55JU2SaaDZX" role="2Oq$k0">
                          <node concept="37vLTw" id="3ljvbPMRTaA" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="55JU2SaaDZZ" role="2OqNvi">
                            <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="55JU2SaaFzp" role="2OqNvi">
                          <ref role="2Oxat6" node="55JU2Sa5UlI" resolve="scope" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="55JU2SaaE1r" role="3cqZAp">
                  <node concept="2OqwBi" id="55JU2SaaE1s" role="3clFbG">
                    <node concept="37vLTw" id="55JU2SaaHOT" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa9IC9" resolve="tokenVerificationURL" />
                    </node>
                    <node concept="liA8E" id="55JU2SaaE1u" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                      <node concept="2OqwBi" id="55JU2SaaE1v" role="37wK5m">
                        <node concept="2OqwBi" id="55JU2SaaE1w" role="2Oq$k0">
                          <node concept="37vLTw" id="3ljvbPMRTVt" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPMRC7V" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="55JU2SaaE1y" role="2OqNvi">
                            <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="55JU2SaaLg5" role="2OqNvi">
                          <ref role="2Oxat6" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3ljvbPMRE6o" role="1B3o_S" />
        <node concept="3cqZAl" id="3ljvbPMR_k$" role="3clF45" />
        <node concept="37vLTG" id="3ljvbPMRC7V" role="3clF46">
          <property role="TrG5h" value="entry" />
          <node concept="3uibUv" id="3ljvbPMRC7U" role="1tU5fm">
            <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3ljvbPMQKLo" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPMQMT6" role="jymVt">
        <property role="TrG5h" value="setNone" />
        <node concept="3clFbS" id="3ljvbPMQMT7" role="3clF47">
          <node concept="3clFbF" id="3ljvbPMQMT8" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQMT9" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQMTa" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9OTe" resolve="none" />
              </node>
              <node concept="liA8E" id="3ljvbPMQMTb" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                <node concept="3clFbT" id="3ljvbPMQMTc" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQMTd" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQMTe" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQMTf" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9lds" resolve="baseURL" />
              </node>
              <node concept="liA8E" id="3ljvbPMQMTg" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                <node concept="Xl_RD" id="3ljvbPMQMTh" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQMTi" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQMTj" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQMTk" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9I3_" resolve="clientID" />
              </node>
              <node concept="liA8E" id="3ljvbPMQMTl" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                <node concept="Xl_RD" id="3ljvbPMQMTm" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQMTn" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQMTo" role="3clFbG">
              <node concept="liA8E" id="3ljvbPMQMTp" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                <node concept="Xl_RD" id="3ljvbPMQMTq" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
              <node concept="37vLTw" id="3ljvbPMQMTr" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9I9U" resolve="scope" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ljvbPMQMTs" role="3cqZAp">
            <node concept="2OqwBi" id="3ljvbPMQMTt" role="3clFbG">
              <node concept="37vLTw" id="3ljvbPMQMTu" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9IC9" resolve="tokenVerificationURL" />
              </node>
              <node concept="liA8E" id="3ljvbPMQMTv" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
                <node concept="Xl_RD" id="3ljvbPMQMTw" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3ljvbPMQMTx" role="1B3o_S" />
        <node concept="3cqZAl" id="3ljvbPMQMTy" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="3ljvbPMVFSo" role="jymVt" />
      <node concept="3clFb_" id="3ljvbPMRUd4" role="jymVt">
        <property role="TrG5h" value="currentlyDisplayed" />
        <node concept="3clFbS" id="3ljvbPMRUd5" role="3clF47">
          <node concept="3cpWs8" id="3ljvbPMRUd6" role="3cqZAp">
            <node concept="3cpWsn" id="3ljvbPMRUd7" role="3cpWs9">
              <property role="TrG5h" value="entry" />
              <node concept="3uibUv" id="3ljvbPMS8hL" role="1tU5fm">
                <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
              </node>
              <node concept="2ShNRf" id="3ljvbPMRUd9" role="33vP2m">
                <node concept="1pGfFk" id="3ljvbPMRUda" role="2ShVmc">
                  <ref role="37wK5l" node="6UFKywMPPmk" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1ln$sNEdq9Q" role="3cqZAp">
            <node concept="37vLTI" id="1ln$sNEdvD5" role="3clFbG">
              <node concept="2OqwBi" id="1ln$sNEdywZ" role="37vLTx">
                <node concept="37vLTw" id="1ln$sNEdxa2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMV77A" resolve="proxyURL" />
                </node>
                <node concept="liA8E" id="1ln$sNEdzPP" role="2OqNvi">
                  <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                </node>
              </node>
              <node concept="2OqwBi" id="1ln$sNEdrFO" role="37vLTJ">
                <node concept="37vLTw" id="1ln$sNEdq9O" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ljvbPMRUd7" resolve="entry" />
                </node>
                <node concept="2OwXpG" id="1ln$sNEdvjB" role="2OqNvi">
                  <ref role="2Oxat6" node="3ljvbPMOVUp" resolve="modelServerURL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3ljvbPMRUdb" role="3cqZAp">
            <node concept="3clFbS" id="3ljvbPMRUdc" role="3clFbx">
              <node concept="3clFbF" id="3ljvbPMRUdd" role="3cqZAp">
                <node concept="37vLTI" id="3ljvbPMRUde" role="3clFbG">
                  <node concept="10Nm6u" id="3ljvbPMRUdf" role="37vLTx" />
                  <node concept="2OqwBi" id="3ljvbPMRUdg" role="37vLTJ">
                    <node concept="37vLTw" id="3ljvbPMRUdh" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ljvbPMRUd7" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="3ljvbPMSgaK" role="2OqNvi">
                      <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3ljvbPMRUdj" role="3clFbw">
              <node concept="37vLTw" id="3ljvbPMRUdk" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa9OTe" resolve="none" />
              </node>
              <node concept="liA8E" id="3ljvbPMRUdl" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
            </node>
            <node concept="9aQIb" id="3ljvbPMRUdm" role="9aQIa">
              <node concept="3clFbS" id="3ljvbPMRUdn" role="9aQI4">
                <node concept="3cpWs8" id="3ljvbPMRUdo" role="3cqZAp">
                  <node concept="3cpWsn" id="3ljvbPMRUdp" role="3cpWs9">
                    <property role="TrG5h" value="sc" />
                    <node concept="3uibUv" id="3ljvbPMRUdq" role="1tU5fm">
                      <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
                    </node>
                    <node concept="2ShNRf" id="3ljvbPMRUdr" role="33vP2m">
                      <node concept="HV5vD" id="3ljvbPMRUds" role="2ShVmc">
                        <ref role="HV5vE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3ljvbPMRUdt" role="3cqZAp">
                  <node concept="3clFbS" id="3ljvbPMRUdu" role="3clFbx">
                    <node concept="3clFbF" id="3ljvbPMRUdv" role="3cqZAp">
                      <node concept="37vLTI" id="3ljvbPMRUdw" role="3clFbG">
                        <node concept="2OqwBi" id="3ljvbPMRUdx" role="37vLTJ">
                          <node concept="37vLTw" id="3ljvbPMRUdy" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                          </node>
                          <node concept="2OwXpG" id="3ljvbPMRUdz" role="2OqNvi">
                            <ref role="2Oxat6" node="55JU2Sa91d4" resolve="type" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3ljvbPNbfwX" role="37vLTx">
                          <node concept="Rm8GO" id="3ljvbPNbfeK" role="2Oq$k0">
                            <ref role="Rm8GQ" node="3ljvbPN8SG7" resolve="AUTHORIZATION_FLOW" />
                            <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                          </node>
                          <node concept="liA8E" id="3ljvbPNbg5j" role="2OqNvi">
                            <ref role="37wK5l" node="3ljvbPN9_Er" resolve="getCode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3ljvbPMRUd_" role="3clFbw">
                    <node concept="37vLTw" id="3ljvbPMRUdA" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JU2Sa9OTl" resolve="authorizationCode" />
                    </node>
                    <node concept="liA8E" id="3ljvbPMRUdB" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="3eNFk2" id="3ljvbPMRUdC" role="3eNLev">
                    <node concept="2OqwBi" id="3ljvbPMRUdD" role="3eO9$A">
                      <node concept="37vLTw" id="3ljvbPMRUdE" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa9OTs" resolve="authorizationCodePKCE" />
                      </node>
                      <node concept="liA8E" id="3ljvbPMRUdF" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3ljvbPMRUdG" role="3eOfB_">
                      <node concept="3clFbF" id="3ljvbPMRUdH" role="3cqZAp">
                        <node concept="37vLTI" id="3ljvbPMRUdI" role="3clFbG">
                          <node concept="2OqwBi" id="3ljvbPMRUdJ" role="37vLTJ">
                            <node concept="37vLTw" id="3ljvbPMRUdK" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                            </node>
                            <node concept="2OwXpG" id="3ljvbPMRUdL" role="2OqNvi">
                              <ref role="2Oxat6" node="55JU2Sa91d4" resolve="type" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3ljvbPNbg7u" role="37vLTx">
                            <node concept="Rm8GO" id="3ljvbPNbg_K" role="2Oq$k0">
                              <ref role="Rm8GQ" node="3ljvbPN8SUL" resolve="AUTHORIZATION_PKCE_FLOW" />
                              <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
                            </node>
                            <node concept="liA8E" id="3ljvbPNbg7w" role="2OqNvi">
                              <ref role="37wK5l" node="3ljvbPN9_Er" resolve="getCode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="3ljvbPMRUdN" role="9aQIa">
                    <node concept="3clFbS" id="3ljvbPMRUdO" role="9aQI4">
                      <node concept="YS8fn" id="3ljvbPMRUdP" role="3cqZAp">
                        <node concept="2ShNRf" id="3ljvbPMRUdQ" role="YScLw">
                          <node concept="1pGfFk" id="3ljvbPMRUdR" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMRUdS" role="3cqZAp">
                  <node concept="37vLTI" id="3ljvbPMRUdT" role="3clFbG">
                    <node concept="2OqwBi" id="3ljvbPMRUdU" role="37vLTx">
                      <node concept="37vLTw" id="3ljvbPMRUdV" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa9lds" resolve="baseURL" />
                      </node>
                      <node concept="liA8E" id="3ljvbPMRUdW" role="2OqNvi">
                        <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPMRUdX" role="37vLTJ">
                      <node concept="37vLTw" id="3ljvbPMRUdY" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMRUdZ" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlA" resolve="baseURL" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMRUe0" role="3cqZAp">
                  <node concept="37vLTI" id="3ljvbPMRUe1" role="3clFbG">
                    <node concept="2OqwBi" id="3ljvbPMRUe2" role="37vLTx">
                      <node concept="37vLTw" id="3ljvbPMRUe3" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa9I3_" resolve="clientID" />
                      </node>
                      <node concept="liA8E" id="3ljvbPMRUe4" role="2OqNvi">
                        <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPMRUe5" role="37vLTJ">
                      <node concept="37vLTw" id="3ljvbPMRUe6" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMRUe7" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlE" resolve="clientId" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMRUe8" role="3cqZAp">
                  <node concept="37vLTI" id="3ljvbPMRUe9" role="3clFbG">
                    <node concept="2OqwBi" id="3ljvbPMRUea" role="37vLTx">
                      <node concept="37vLTw" id="3ljvbPMRUeb" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa9I9U" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="3ljvbPMRUec" role="2OqNvi">
                        <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPMRUed" role="37vLTJ">
                      <node concept="37vLTw" id="3ljvbPMRUee" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMRUef" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlI" resolve="scope" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMRUeg" role="3cqZAp">
                  <node concept="37vLTI" id="3ljvbPMRUeh" role="3clFbG">
                    <node concept="2OqwBi" id="3ljvbPMRUei" role="37vLTx">
                      <node concept="37vLTw" id="3ljvbPMRUej" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa9IC9" resolve="tokenVerificationURL" />
                      </node>
                      <node concept="liA8E" id="3ljvbPMRUek" role="2OqNvi">
                        <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPMRUel" role="37vLTJ">
                      <node concept="37vLTw" id="3ljvbPMRUem" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMRUen" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMRUeo" role="3cqZAp">
                  <node concept="37vLTI" id="3ljvbPMRUep" role="3clFbG">
                    <node concept="37vLTw" id="3ljvbPMRUeq" role="37vLTx">
                      <ref role="3cqZAo" node="3ljvbPMRUdp" resolve="sc" />
                    </node>
                    <node concept="2OqwBi" id="3ljvbPMRUer" role="37vLTJ">
                      <node concept="37vLTw" id="3ljvbPMRUes" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ljvbPMRUd7" resolve="entry" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMSgfp" role="2OqNvi">
                        <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3ljvbPMRUeu" role="3cqZAp">
            <node concept="37vLTw" id="3ljvbPMRUev" role="3cqZAk">
              <ref role="3cqZAo" node="3ljvbPMRUd7" resolve="entry" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3ljvbPMSghN" role="1B3o_S" />
        <node concept="3uibUv" id="3ljvbPMS41u" role="3clF45">
          <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ljvbPMPLII" role="jymVt" />
    <node concept="Wx3nA" id="55JU2Sa86fy" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="55JU2Sa85zj" role="1B3o_S" />
      <node concept="10Nm6u" id="55JU2Sa872x" role="33vP2m" />
      <node concept="3uibUv" id="55JU2Sa86Qw" role="1tU5fm">
        <ref role="3uigEE" node="55JU2Sa6lKE" resolve="PreferencesUI" />
      </node>
    </node>
    <node concept="312cEg" id="2$HTiPw3Hbh" role="jymVt">
      <property role="TrG5h" value="lastSetState" />
      <node concept="3Tm6S6" id="2$HTiPw3F46" role="1B3o_S" />
      <node concept="3uibUv" id="2$HTiPw3KR3" role="1tU5fm">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
      </node>
    </node>
    <node concept="312cEg" id="3ljvbPMQfor" role="jymVt">
      <property role="TrG5h" value="entriesList" />
      <node concept="3Tm6S6" id="3ljvbPMQbMl" role="1B3o_S" />
      <node concept="3uibUv" id="3ljvbPMQdr9" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa85gP" role="jymVt" />
    <node concept="3clFbW" id="55JU2Sa8ajR" role="jymVt">
      <node concept="3cqZAl" id="55JU2Sa8ajU" role="3clF45" />
      <node concept="3Tm6S6" id="55JU2Sa8b79" role="1B3o_S" />
      <node concept="3clFbS" id="55JU2Sa8ajW" role="3clF47">
        <node concept="XkiVB" id="55JU2Sa8nss" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="55JU2Sa8ot2" role="37wK5m">
            <node concept="1pGfFk" id="55JU2Sa8r54" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55JU2Sa6N37" role="3cqZAp">
          <node concept="3cpWsn" id="55JU2Sa6N38" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="55JU2Sa6N39" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
            <node concept="2ShNRf" id="55JU2Sa6Nc3" role="33vP2m">
              <node concept="1pGfFk" id="55JU2Sa6N86" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ljvbPN0lwG" role="3cqZAp">
          <node concept="3cpWsn" id="3ljvbPN0lwH" role="3cpWs9">
            <property role="TrG5h" value="entriesLayout" />
            <node concept="3uibUv" id="3ljvbPN0lwI" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GridLayout" resolve="GridLayout" />
            </node>
            <node concept="2ShNRf" id="3ljvbPMZ2pt" role="33vP2m">
              <node concept="1pGfFk" id="3ljvbPMZ4Ky" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int)" resolve="GridLayout" />
                <node concept="3cmrfG" id="3ljvbPMZe9q" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="3cmrfG" id="3ljvbPMZeEv" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPN0s3m" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPN0sKi" role="3clFbG">
            <node concept="37vLTw" id="3ljvbPN0s3k" role="2Oq$k0">
              <ref role="3cqZAo" node="3ljvbPN0lwH" resolve="entriesLayout" />
            </node>
            <node concept="liA8E" id="3ljvbPN0u86" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~GridLayout.setVgap(int)" resolve="setVgap" />
              <node concept="3cmrfG" id="3ljvbPN0usA" role="37wK5m">
                <property role="3cmrfH" value="10" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQino" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQj8R" role="3clFbG">
            <node concept="2ShNRf" id="3ljvbPMQjPb" role="37vLTx">
              <node concept="1pGfFk" id="3ljvbPMQjxu" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="37vLTw" id="3ljvbPN0oMq" role="37wK5m">
                  <ref role="3cqZAo" node="3ljvbPN0lwH" resolve="entriesLayout" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3ljvbPMQinm" role="37vLTJ">
              <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQugK" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQxhZ" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMQuup" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQugI" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQwH0" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="3ljvbPMQAmG" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQyyj" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQzZ1" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQ$yy" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQySZ" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQyyh" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQzp0" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQAIB" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQBJb" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQCi0" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQB5j" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQAI_" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQB$w" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQDhG" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQEIX" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMQDZt" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQDhE" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQE$q" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
              </node>
            </node>
            <node concept="3cmrfG" id="3ljvbPMQF_P" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQFXW" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQHg5" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQHLi" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQGkC" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQFXU" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQGJJ" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQHZe" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQHZf" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQHZg" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQHZh" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQHZi" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQICt" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.weighty" resolve="weighty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQp$B" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMQq4s" role="3clFbG">
            <node concept="Xjq3P" id="3ljvbPMQp$_" role="2Oq$k0" />
            <node concept="liA8E" id="3ljvbPMQqTB" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="3ljvbPMZKJ1" role="37wK5m">
                <node concept="1pGfFk" id="3ljvbPMZNVw" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component,int,int)" resolve="JScrollPane" />
                  <node concept="37vLTw" id="3ljvbPMZPsQ" role="37wK5m">
                    <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
                  </node>
                  <node concept="10M0yZ" id="3ljvbPMZZis" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                    <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED" resolve="VERTICAL_SCROLLBAR_AS_NEEDED" />
                  </node>
                  <node concept="10M0yZ" id="3ljvbPN00xp" role="37wK5m">
                    <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED" resolve="HORIZONTAL_SCROLLBAR_AS_NEEDED" />
                    <ref role="1PxDUh" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3ljvbPMQtCc" role="37wK5m">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ljvbPMQU1N" role="3cqZAp">
          <node concept="3cpWsn" id="3ljvbPMQU1O" role="3cpWs9">
            <property role="TrG5h" value="addEntry" />
            <node concept="3uibUv" id="3ljvbPMQU1P" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
            </node>
            <node concept="2ShNRf" id="3ljvbPMQUJi" role="33vP2m">
              <node concept="1pGfFk" id="3ljvbPMQUrp" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                <node concept="Xl_RD" id="3ljvbPMQV3l" role="37wK5m">
                  <property role="Xl_RC" value="Add entry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVKv" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKw" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMQVKx" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVKy" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVKz" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="3ljvbPMQVK$" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVK_" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKA" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQVKB" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQVKC" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVKD" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVKE" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVKF" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKG" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQVKH" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQVKI" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVKJ" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVKK" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridwidth" resolve="gridwidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVKL" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKM" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMQVKN" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVKO" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVKP" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.gridheight" resolve="gridheight" />
              </node>
            </node>
            <node concept="3cmrfG" id="3ljvbPMQVKQ" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVKR" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKS" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQVKT" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQVKU" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVKV" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVKW" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQVKX" role="3cqZAp">
          <node concept="37vLTI" id="3ljvbPMQVKY" role="3clFbG">
            <node concept="3cmrfG" id="3ljvbPMQVKZ" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3ljvbPMQVL0" role="37vLTJ">
              <node concept="37vLTw" id="3ljvbPMQVL1" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMQVL2" role="2OqNvi">
                <ref role="2Oxat6" to="z60i:~GridBagConstraints.weighty" resolve="weighty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMUow4" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMUpGJ" role="3clFbG">
            <node concept="37vLTw" id="3ljvbPMUow2" role="2Oq$k0">
              <ref role="3cqZAo" node="3ljvbPMQU1O" resolve="addEntry" />
            </node>
            <node concept="liA8E" id="3ljvbPMUr6l" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
              <node concept="2ShNRf" id="3ljvbPMUrq3" role="37wK5m">
                <node concept="YeOm9" id="3ljvbPMUuF7" role="2ShVmc">
                  <node concept="1Y3b0j" id="3ljvbPMUuFa" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3ljvbPMUuFb" role="1B3o_S" />
                    <node concept="3clFb_" id="3ljvbPMUuFg" role="jymVt">
                      <property role="TrG5h" value="actionPerformed" />
                      <node concept="3Tm1VV" id="3ljvbPMUuFh" role="1B3o_S" />
                      <node concept="3cqZAl" id="3ljvbPMUuFj" role="3clF45" />
                      <node concept="37vLTG" id="3ljvbPMUuFk" role="3clF46">
                        <property role="TrG5h" value="event" />
                        <node concept="3uibUv" id="3ljvbPMUuFl" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3ljvbPMUuFm" role="3clF47">
                        <node concept="3J1_TO" id="3ljvbPMY4n5" role="3cqZAp">
                          <node concept="3uVAMA" id="3ljvbPMY4GL" role="1zxBo5">
                            <node concept="XOnhg" id="3ljvbPMY4GM" role="1zc67B">
                              <property role="TrG5h" value="e" />
                              <node concept="nSUau" id="3ljvbPMY4GN" role="1tU5fm">
                                <node concept="3uibUv" id="3ljvbPMY5zO" role="nSUat">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="3ljvbPMY4GO" role="1zc67A">
                              <node concept="3clFbF" id="3ljvbPMY63z" role="3cqZAp">
                                <node concept="2OqwBi" id="3ljvbPMY6cK" role="3clFbG">
                                  <node concept="37vLTw" id="3ljvbPMY63y" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3ljvbPMY4GM" resolve="e" />
                                  </node>
                                  <node concept="liA8E" id="3ljvbPMY6t1" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3ljvbPMY4n7" role="1zxBo7">
                            <node concept="3clFbF" id="3ljvbPMU$op" role="3cqZAp">
                              <node concept="2OqwBi" id="3ljvbPMU_e3" role="3clFbG">
                                <node concept="37vLTw" id="3ljvbPMU$ok" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
                                </node>
                                <node concept="liA8E" id="3ljvbPMUAjM" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                                  <node concept="2ShNRf" id="3ljvbPMUAVh" role="37wK5m">
                                    <node concept="1pGfFk" id="3ljvbPMUFXg" role="2ShVmc">
                                      <ref role="37wK5l" node="3ljvbPMQ2nd" resolve="PreferencesUI.EntryPanel" />
                                      <node concept="2ShNRf" id="3ljvbPMUH5w" role="37wK5m">
                                        <node concept="1pGfFk" id="3ljvbPMV1uP" role="2ShVmc">
                                          <ref role="37wK5l" node="3ljvbPMUNXk" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
                                          <node concept="Xl_RD" id="3ljvbPMV2es" role="37wK5m">
                                            <property role="Xl_RC" value="http://mynewproxy.com" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3ljvbPMW3nD" role="3cqZAp">
                              <node concept="2OqwBi" id="3ljvbPMW5xv" role="3clFbG">
                                <node concept="37vLTw" id="3ljvbPMWvEl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
                                </node>
                                <node concept="liA8E" id="3ljvbPMWQ3v" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Container.validate()" resolve="validate" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3ljvbPMWXDf" role="3cqZAp">
                              <node concept="2OqwBi" id="3ljvbPMWXDg" role="3clFbG">
                                <node concept="37vLTw" id="3ljvbPMWXDh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
                                </node>
                                <node concept="liA8E" id="3ljvbPMX2u2" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3ljvbPMXihq" role="3cqZAp">
                              <node concept="2OqwBi" id="3ljvbPMXihr" role="3clFbG">
                                <node concept="Xjq3P" id="3ljvbPMXn1V" role="2Oq$k0">
                                  <ref role="1HBi2w" node="55JU2Sa6lKE" resolve="PreferencesUI" />
                                </node>
                                <node concept="liA8E" id="3ljvbPMXiht" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Container.validate()" resolve="validate" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3ljvbPMXihu" role="3cqZAp">
                              <node concept="2OqwBi" id="3ljvbPMXihv" role="3clFbG">
                                <node concept="liA8E" id="3ljvbPMXihx" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                                </node>
                                <node concept="Xjq3P" id="3ljvbPMXqSU" role="2Oq$k0">
                                  <ref role="1HBi2w" node="55JU2Sa6lKE" resolve="PreferencesUI" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3ljvbPMUuFo" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMQYv$" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMQZ4J" role="3clFbG">
            <node concept="Xjq3P" id="3ljvbPMQYvy" role="2Oq$k0" />
            <node concept="liA8E" id="3ljvbPMR0qN" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3ljvbPMR28Y" role="37wK5m">
                <ref role="3cqZAo" node="3ljvbPMQU1O" resolve="addEntry" />
              </node>
              <node concept="37vLTw" id="3ljvbPMR41F" role="37wK5m">
                <ref role="3cqZAo" node="55JU2Sa6N38" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa88p1" role="jymVt" />
    <node concept="2YIFZL" id="55JU2Sa6mf8" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3clFbS" id="55JU2Sa6mfb" role="3clF47">
        <node concept="3clFbJ" id="55JU2Sa8h4W" role="3cqZAp">
          <node concept="3clFbC" id="55JU2Sa8igJ" role="3clFbw">
            <node concept="10Nm6u" id="55JU2Sa8i_d" role="3uHU7w" />
            <node concept="37vLTw" id="55JU2Sa8hr9" role="3uHU7B">
              <ref role="3cqZAo" node="55JU2Sa86fy" resolve="INSTANCE" />
            </node>
          </node>
          <node concept="3clFbS" id="55JU2Sa8h4Y" role="3clFbx">
            <node concept="3clFbF" id="55JU2Sa8jlp" role="3cqZAp">
              <node concept="37vLTI" id="55JU2Sa8k3l" role="3clFbG">
                <node concept="2ShNRf" id="55JU2Sa8kHD" role="37vLTx">
                  <node concept="1pGfFk" id="55JU2Sa8kpR" role="2ShVmc">
                    <ref role="37wK5l" node="55JU2Sa8ajR" resolve="PreferencesUI" />
                  </node>
                </node>
                <node concept="37vLTw" id="55JU2Sa8jlo" role="37vLTJ">
                  <ref role="3cqZAo" node="55JU2Sa86fy" resolve="INSTANCE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="55JU2Sa8lpE" role="3cqZAp">
          <node concept="37vLTw" id="55JU2Sa8m40" role="3cqZAk">
            <ref role="3cqZAo" node="55JU2Sa86fy" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="55JU2Sa6lQy" role="1B3o_S" />
      <node concept="3uibUv" id="55JU2Sa8E0L" role="3clF45">
        <ref role="3uigEE" node="55JU2Sa6lKE" resolve="PreferencesUI" />
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa8yzc" role="jymVt" />
    <node concept="3clFb_" id="55JU2Sa8$Di" role="jymVt">
      <property role="TrG5h" value="reload" />
      <node concept="37vLTG" id="55JU2Sa8OWg" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="55JU2Sa8TGc" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="55JU2Sa8$Dl" role="3clF47">
        <node concept="3cpWs8" id="55JU2Sa8JQu" role="3cqZAp">
          <node concept="3cpWsn" id="55JU2Sa8JQv" role="3cpWs9">
            <property role="TrG5h" value="configurationComponent" />
            <node concept="3uibUv" id="55JU2Sa8JQw" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="55JU2Sa8JQx" role="33vP2m">
              <node concept="37vLTw" id="55JU2Sa8V$I" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8OWg" resolve="project" />
              </node>
              <node concept="liA8E" id="55JU2Sa8JQz" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="55JU2Sa8JQ$" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55JU2Sa8JQ_" role="3cqZAp">
          <node concept="3cpWsn" id="55JU2Sa8JQA" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="55JU2Sa8JQB" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
            </node>
            <node concept="2OqwBi" id="55JU2Sa8JQC" role="33vP2m">
              <node concept="37vLTw" id="55JU2Sa8JQD" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8JQv" resolve="configurationComponent" />
              </node>
              <node concept="liA8E" id="55JU2Sa8JQE" role="2OqNvi">
                <ref role="37wK5l" node="7xblg8lmnRn" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2$HTiPw3MOn" role="3cqZAp">
          <node concept="37vLTI" id="2$HTiPw3O1h" role="3clFbG">
            <node concept="37vLTw" id="2$HTiPw3Oyo" role="37vLTx">
              <ref role="3cqZAo" node="55JU2Sa8JQA" resolve="state" />
            </node>
            <node concept="37vLTw" id="2$HTiPw3MOl" role="37vLTJ">
              <ref role="3cqZAo" node="2$HTiPw3Hbh" resolve="lastSetState" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ljvbPMR6zL" role="3cqZAp" />
        <node concept="3clFbF" id="3ljvbPMR8b9" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMRccN" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMR9xz" role="2Oq$k0">
              <node concept="Xjq3P" id="3ljvbPMR8b7" role="2Oq$k0" />
              <node concept="2OwXpG" id="3ljvbPMRaF_" role="2OqNvi">
                <ref role="2Oxat6" node="3ljvbPMQfor" resolve="entriesList" />
              </node>
            </node>
            <node concept="liA8E" id="3ljvbPMRdD0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ljvbPMRhhd" role="3cqZAp">
          <node concept="2OqwBi" id="3ljvbPMRjs4" role="3clFbG">
            <node concept="2OqwBi" id="3ljvbPMRhYZ" role="2Oq$k0">
              <node concept="37vLTw" id="3ljvbPMRhhb" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8JQA" resolve="state" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMRiNJ" role="2OqNvi">
                <ref role="2Oxat6" node="3ljvbPMPaKF" resolve="entries" />
              </node>
            </node>
            <node concept="2es0OD" id="3ljvbPMRl7y" role="2OqNvi">
              <node concept="1bVj0M" id="3ljvbPMRl7$" role="23t8la">
                <node concept="3clFbS" id="3ljvbPMRl7_" role="1bW5cS">
                  <node concept="3clFbF" id="3ljvbPMRl_L" role="3cqZAp">
                    <node concept="2OqwBi" id="3ljvbPMRorY" role="3clFbG">
                      <node concept="2OqwBi" id="3ljvbPMRmr0" role="2Oq$k0">
                        <node concept="Xjq3P" id="3ljvbPMRl_K" role="2Oq$k0" />
                        <node concept="2OwXpG" id="3ljvbPMRnlO" role="2OqNvi">
                          <ref role="2Oxat6" node="3ljvbPMQfor" resolve="entriesList" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3ljvbPMRpGI" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                        <node concept="2ShNRf" id="3ljvbPMRsvu" role="37wK5m">
                          <node concept="1pGfFk" id="3ljvbPMRvez" role="2ShVmc">
                            <ref role="37wK5l" node="3ljvbPMQ2nd" resolve="PreferencesUI.EntryPanel" />
                            <node concept="37vLTw" id="3ljvbPMRwo7" role="37wK5m">
                              <ref role="3cqZAo" node="3ljvbPMRl7A" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3ljvbPMRl7A" role="1bW2Oz">
                  <property role="TrG5h" value="entry" />
                  <node concept="2jxLKc" id="3ljvbPMRl7B" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="55JU2Sa8$do" role="1B3o_S" />
      <node concept="3cqZAl" id="55JU2Sa8$Ca" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2$HTiPw39n7" role="jymVt" />
    <node concept="3clFb_" id="2$HTiPw3d5F" role="jymVt">
      <property role="TrG5h" value="isModified" />
      <node concept="3clFbS" id="2$HTiPw3d5I" role="3clF47">
        <node concept="3cpWs6" id="2$HTiPw3B3q" role="3cqZAp">
          <node concept="17QLQc" id="2$HTiPw3CjM" role="3cqZAk">
            <node concept="37vLTw" id="2$HTiPw3PyR" role="3uHU7w">
              <ref role="3cqZAo" node="2$HTiPw3Hbh" resolve="lastSetState" />
            </node>
            <node concept="1rXfSq" id="2$HTiPw3BFg" role="3uHU7B">
              <ref role="37wK5l" node="2$HTiPw3stK" resolve="currentlyDisplayedState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2$HTiPw3ajE" role="1B3o_S" />
      <node concept="10P_77" id="2$HTiPw3d5a" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2$HTiPw3ppX" role="jymVt" />
    <node concept="3clFb_" id="2$HTiPw3stK" role="jymVt">
      <property role="TrG5h" value="currentlyDisplayedState" />
      <node concept="3clFbS" id="2$HTiPw3stN" role="3clF47">
        <node concept="3cpWs8" id="55JU2Sa8Yfg" role="3cqZAp">
          <node concept="3cpWsn" id="55JU2Sa8Yfh" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="55JU2Sa8Yfi" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
            </node>
            <node concept="2ShNRf" id="55JU2Sa8YVd" role="33vP2m">
              <node concept="HV5vD" id="3ljvbPMTjqD" role="2ShVmc">
                <ref role="HV5vE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3ljvbPMSSuQ" role="3cqZAp">
          <node concept="2GrKxI" id="3ljvbPMSSuS" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="3clFbS" id="3ljvbPMSSuW" role="2LFqv$">
            <node concept="3clFbJ" id="3ljvbPMT1zk" role="3cqZAp">
              <node concept="2ZW3vV" id="3ljvbPMT2Hp" role="3clFbw">
                <node concept="3uibUv" id="3ljvbPMT3xE" role="2ZW6by">
                  <ref role="3uigEE" node="3ljvbPMPPzH" resolve="PreferencesUI.EntryPanel" />
                </node>
                <node concept="2GrUjf" id="3ljvbPMT2b0" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="3ljvbPMSSuS" resolve="component" />
                </node>
              </node>
              <node concept="3clFbS" id="3ljvbPMT1zm" role="3clFbx">
                <node concept="3cpWs8" id="3ljvbPMT7P2" role="3cqZAp">
                  <node concept="3cpWsn" id="3ljvbPMT7P3" role="3cpWs9">
                    <property role="TrG5h" value="entryPanel" />
                    <node concept="3uibUv" id="3ljvbPMT7P4" role="1tU5fm">
                      <ref role="3uigEE" node="3ljvbPMPPzH" resolve="PreferencesUI.EntryPanel" />
                    </node>
                    <node concept="1eOMI4" id="3ljvbPMT8P5" role="33vP2m">
                      <node concept="10QFUN" id="3ljvbPMT8P2" role="1eOMHV">
                        <node concept="3uibUv" id="3ljvbPMT8P7" role="10QFUM">
                          <ref role="3uigEE" node="3ljvbPMPPzH" resolve="PreferencesUI.EntryPanel" />
                        </node>
                        <node concept="2GrUjf" id="3ljvbPMT8P8" role="10QFUP">
                          <ref role="2Gs0qQ" node="3ljvbPMSSuS" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ljvbPMTcj1" role="3cqZAp">
                  <node concept="2OqwBi" id="3ljvbPMTdwj" role="3clFbG">
                    <node concept="2OqwBi" id="3ljvbPMTcF6" role="2Oq$k0">
                      <node concept="37vLTw" id="3ljvbPMTciZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JU2Sa8Yfh" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="3ljvbPMTcMO" role="2OqNvi">
                        <ref role="2Oxat6" node="3ljvbPMPaKF" resolve="entries" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="3ljvbPMTerF" role="2OqNvi">
                      <node concept="2OqwBi" id="3ljvbPMThbS" role="25WWJ7">
                        <node concept="37vLTw" id="3ljvbPMTgn3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ljvbPMT7P3" resolve="entryPanel" />
                        </node>
                        <node concept="liA8E" id="3ljvbPMTi6E" role="2OqNvi">
                          <ref role="37wK5l" node="3ljvbPMRUd4" resolve="currentlyDisplayed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3ljvbPMSE$x" role="2GsD0m">
            <node concept="37vLTw" id="3ljvbPMSCEp" role="2Oq$k0">
              <ref role="3cqZAo" node="3ljvbPMQfor" resolve="entriesList" />
            </node>
            <node concept="liA8E" id="3ljvbPMSJ6k" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2$HTiPw3_Mr" role="3cqZAp">
          <node concept="37vLTw" id="2$HTiPw3A7F" role="3cqZAk">
            <ref role="3cqZAo" node="55JU2Sa8Yfh" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2$HTiPw3qo6" role="1B3o_S" />
      <node concept="3uibUv" id="2$HTiPw3uHG" role="3clF45">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa9e2x" role="jymVt" />
    <node concept="3clFb_" id="55JU2Sa8EL9" role="jymVt">
      <property role="TrG5h" value="save" />
      <node concept="37vLTG" id="55JU2Sa8Uf$" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="55JU2Sa8Uf_" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="55JU2Sa8ELa" role="3clF47">
        <node concept="3cpWs8" id="55JU2Sa8WDR" role="3cqZAp">
          <node concept="3cpWsn" id="55JU2Sa8WDS" role="3cpWs9">
            <property role="TrG5h" value="configurationComponent" />
            <node concept="3uibUv" id="55JU2Sa8WDT" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="55JU2Sa8WDU" role="33vP2m">
              <node concept="37vLTw" id="55JU2Sa8WDV" role="2Oq$k0">
                <ref role="3cqZAo" node="55JU2Sa8Uf$" resolve="project" />
              </node>
              <node concept="liA8E" id="55JU2Sa8WDW" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="55JU2Sa8WDX" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2$HTiPw4dsn" role="3cqZAp">
          <node concept="3cpWsn" id="2$HTiPw4dsq" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="2$HTiPw4dsr" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="2$HTiPw4dvd" role="33vP2m">
              <ref role="37wK5l" node="2$HTiPw3stK" resolve="currentlyDisplayedState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2$HTiPw4eDv" role="3cqZAp">
          <node concept="37vLTI" id="2$HTiPw4f84" role="3clFbG">
            <node concept="37vLTw" id="2$HTiPw4fth" role="37vLTx">
              <ref role="3cqZAo" node="2$HTiPw4dsq" resolve="state" />
            </node>
            <node concept="37vLTw" id="2$HTiPw4eDt" role="37vLTJ">
              <ref role="3cqZAo" node="2$HTiPw3Hbh" resolve="lastSetState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55JU2Sa8XtW" role="3cqZAp">
          <node concept="2OqwBi" id="55JU2Sa8XYp" role="3clFbG">
            <node concept="37vLTw" id="55JU2Sa8XtU" role="2Oq$k0">
              <ref role="3cqZAo" node="55JU2Sa8WDS" resolve="configurationComponent" />
            </node>
            <node concept="liA8E" id="55JU2Sa8YdZ" role="2OqNvi">
              <ref role="37wK5l" node="7xblg8lmnRv" resolve="loadState" />
              <node concept="1rXfSq" id="2$HTiPw3$Xv" role="37wK5m">
                <ref role="37wK5l" node="2$HTiPw3stK" resolve="currentlyDisplayedState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="55JU2Sa8ELb" role="1B3o_S" />
      <node concept="3cqZAl" id="55JU2Sa8ELc" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="55JU2Sa6lKF" role="1B3o_S" />
    <node concept="3uibUv" id="55JU2Sa87yB" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="7$Qv9nHSkdM">
    <property role="TrG5h" value="AuthenticationProcess" />
    <node concept="312cEg" id="7$Qv9nHSn6i" role="jymVt">
      <property role="TrG5h" value="modelServerURL" />
      <node concept="3Tm6S6" id="7$Qv9nHSlxh" role="1B3o_S" />
      <node concept="17QB3L" id="7$Qv9nHSnbD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7$Qv9nHT5rV" role="jymVt">
      <property role="TrG5h" value="accessToken" />
      <node concept="3Tm6S6" id="7$Qv9nHT4LB" role="1B3o_S" />
      <node concept="17QB3L" id="7$Qv9nHT5qQ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7$Qv9nHSxQc" role="jymVt">
      <property role="TrG5h" value="currentStrategy" />
      <node concept="3Tm6S6" id="7$Qv9nHSxQd" role="1B3o_S" />
      <node concept="3uibUv" id="7$Qv9nHSxQe" role="1tU5fm">
        <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationFlow" />
      </node>
    </node>
    <node concept="312cEg" id="7$Qv9nHSxQf" role="jymVt">
      <property role="TrG5h" value="currentUser" />
      <node concept="3Tm6S6" id="7$Qv9nHSxQg" role="1B3o_S" />
      <node concept="3uibUv" id="7$Qv9nHSxQh" role="1tU5fm">
        <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
      </node>
      <node concept="10Nm6u" id="7$Qv9nHSxQi" role="33vP2m" />
    </node>
    <node concept="312cEg" id="7$Qv9nHSxQj" role="jymVt">
      <property role="TrG5h" value="pendingTokenConsumer" />
      <node concept="3Tm6S6" id="7$Qv9nHSxQk" role="1B3o_S" />
      <node concept="3uibUv" id="7$Qv9nHSxQl" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
        <node concept="17QB3L" id="7$Qv9nHSxQm" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="7$Qv9nHSnbQ" role="jymVt" />
    <node concept="3clFbW" id="7$Qv9nHSnmr" role="jymVt">
      <node concept="37vLTG" id="7$Qv9nHSnmT" role="3clF46">
        <property role="TrG5h" value="modelServerURL" />
        <node concept="17QB3L" id="7$Qv9nHSnmV" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7$Qv9nHSnmt" role="3clF45" />
      <node concept="3Tm1VV" id="7$Qv9nHSnmu" role="1B3o_S" />
      <node concept="3clFbS" id="7$Qv9nHSnmv" role="3clF47">
        <node concept="3clFbF" id="7$Qv9nHSnur" role="3cqZAp">
          <node concept="37vLTI" id="7$Qv9nHSnW4" role="3clFbG">
            <node concept="37vLTw" id="7$Qv9nHSo5$" role="37vLTx">
              <ref role="3cqZAo" node="7$Qv9nHSnmT" resolve="modelServerURL" />
            </node>
            <node concept="2OqwBi" id="7$Qv9nHSnzZ" role="37vLTJ">
              <node concept="Xjq3P" id="7$Qv9nHSnuq" role="2Oq$k0" />
              <node concept="2OwXpG" id="7$Qv9nHSnGi" role="2OqNvi">
                <ref role="2Oxat6" node="7$Qv9nHSn6i" resolve="modelServerURL" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Sm20WMoCrg" role="jymVt" />
    <node concept="3clFb_" id="6Sm20WMoFu6" role="jymVt">
      <property role="TrG5h" value="getModelServerURL" />
      <node concept="3clFbS" id="6Sm20WMoFu9" role="3clF47">
        <node concept="3cpWs6" id="6Sm20WMoGCy" role="3cqZAp">
          <node concept="37vLTw" id="6Sm20WMoHnp" role="3cqZAk">
            <ref role="3cqZAo" node="7$Qv9nHSn6i" resolve="modelServerURL" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6Sm20WMoDd8" role="1B3o_S" />
      <node concept="17QB3L" id="6Sm20WMoGfD" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7$Qv9nHT8xh" role="jymVt" />
    <node concept="3clFb_" id="7rdFupvW1pl" role="jymVt">
      <property role="TrG5h" value="areWeUsingAuthentication" />
      <node concept="37vLTG" id="7rdFupvW4iG" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7rdFupvW4iH" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="7rdFupvW1po" role="3clF47">
        <node concept="3cpWs8" id="7rdFupvW1V5" role="3cqZAp">
          <node concept="3cpWsn" id="7rdFupvW1V6" role="3cpWs9">
            <property role="TrG5h" value="configurationComponent" />
            <node concept="3uibUv" id="7rdFupvW1V7" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="7rdFupvW1V8" role="33vP2m">
              <node concept="37vLTw" id="7rdFupvW53l" role="2Oq$k0">
                <ref role="3cqZAo" node="7rdFupvW4iG" resolve="project" />
              </node>
              <node concept="liA8E" id="7rdFupvW1Va" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="7rdFupvW1Vb" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7rdFupvW1Vc" role="3cqZAp">
          <node concept="3cpWsn" id="7rdFupvW1Vd" role="3cpWs9">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="3ljvbPMTVvC" role="1tU5fm">
              <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
            </node>
            <node concept="2OqwBi" id="7rdFupvW1Vf" role="33vP2m">
              <node concept="37vLTw" id="7rdFupvW1Vg" role="2Oq$k0">
                <ref role="3cqZAo" node="7rdFupvW1V6" resolve="configurationComponent" />
              </node>
              <node concept="liA8E" id="3ljvbPMTTDl" role="2OqNvi">
                <ref role="37wK5l" node="3ljvbPMTJbq" resolve="getEntry" />
                <node concept="37vLTw" id="3ljvbPMU9sF" role="37wK5m">
                  <ref role="3cqZAo" node="7$Qv9nHSn6i" resolve="modelServerURL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7rdFupvW2GY" role="3cqZAp">
          <node concept="1Wc70l" id="3ljvbPMTWc8" role="3cqZAk">
            <node concept="3y3z36" id="3ljvbPMTXcO" role="3uHU7B">
              <node concept="10Nm6u" id="3ljvbPMTXBR" role="3uHU7w" />
              <node concept="37vLTw" id="3ljvbPMTWLK" role="3uHU7B">
                <ref role="3cqZAo" node="7rdFupvW1Vd" resolve="entry" />
              </node>
            </node>
            <node concept="3y3z36" id="7rdFupvW3vh" role="3uHU7w">
              <node concept="10Nm6u" id="7rdFupvW3Mt" role="3uHU7w" />
              <node concept="2OqwBi" id="7rdFupvW1Vo" role="3uHU7B">
                <node concept="37vLTw" id="7rdFupvW1Vp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rdFupvW1Vd" resolve="entry" />
                </node>
                <node concept="2OwXpG" id="7rdFupvW1Vq" role="2OqNvi">
                  <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7rdFupvVZ5P" role="1B3o_S" />
      <node concept="10P_77" id="7rdFupvW1o4" role="3clF45" />
      <node concept="P$JXv" id="1ln$sNEa1vt" role="lGtFl">
        <node concept="TZ5HA" id="1ln$sNEa1vu" role="TZ5H$">
          <node concept="1dT_AC" id="1ln$sNEa1vv" role="1dT_Ay">
            <property role="1dT_AB" value="This verifies if we have authentication set up for the modelServerURL considered by this process." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7$Qv9nHSz7r" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tqniY" role="jymVt">
      <property role="TrG5h" value="processResponse" />
      <node concept="3clFbS" id="3poOr4tqnj1" role="3clF47">
        <node concept="3clFbF" id="3poOr4tqvgv" role="3cqZAp">
          <node concept="2OqwBi" id="3poOr4tqvvB" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tqvgu" role="2Oq$k0">
              <ref role="3cqZAo" node="7$Qv9nHSxQc" resolve="currentStrategy" />
            </node>
            <node concept="liA8E" id="3poOr4tqvHy" role="2OqNvi">
              <ref role="37wK5l" node="3poOr4tqhWx" resolve="processStartResponse" />
              <node concept="37vLTw" id="3poOr4tqvSF" role="37wK5m">
                <ref role="3cqZAo" node="3poOr4tqoJm" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3poOr4tqlQB" role="1B3o_S" />
      <node concept="3cqZAl" id="579DpELgh4a" role="3clF45" />
      <node concept="37vLTG" id="3poOr4tqoJm" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="579DpELgU2x" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELdGBQ" role="jymVt" />
    <node concept="3clFb_" id="579DpELdLxi" role="jymVt">
      <property role="TrG5h" value="receiveAccessToken" />
      <node concept="3clFbS" id="579DpELdLxl" role="3clF47">
        <node concept="3clFbJ" id="7hml1DJ5AUx" role="3cqZAp">
          <node concept="3clFbS" id="7hml1DJ5AUz" role="3clFbx">
            <node concept="YS8fn" id="7hml1DJ5BzS" role="3cqZAp">
              <node concept="2ShNRf" id="7hml1DJ5BBB" role="YScLw">
                <node concept="1pGfFk" id="7hml1DJ5CEi" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7hml1DJ5COU" role="37wK5m">
                    <property role="Xl_RC" value="No current strategy set, cannot process received access token" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7hml1DJ5BiH" role="3clFbw">
            <node concept="10Nm6u" id="7hml1DJ5BrW" role="3uHU7w" />
            <node concept="37vLTw" id="7hml1DJ5B6P" role="3uHU7B">
              <ref role="3cqZAo" node="7$Qv9nHSxQc" resolve="currentStrategy" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELf4qY" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELf4qZ" role="3cpWs9">
            <property role="TrG5h" value="user" />
            <node concept="3uibUv" id="579DpELf4r0" role="1tU5fm">
              <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
            </node>
            <node concept="2OqwBi" id="579DpELf3sa" role="33vP2m">
              <node concept="37vLTw" id="579DpELf3hQ" role="2Oq$k0">
                <ref role="3cqZAo" node="7$Qv9nHSxQc" resolve="currentStrategy" />
              </node>
              <node concept="liA8E" id="579DpELf3F7" role="2OqNvi">
                <ref role="37wK5l" node="579DpELdX20" resolve="verifyAccessToken" />
                <node concept="37vLTw" id="579DpELf3Qu" role="37wK5m">
                  <ref role="3cqZAo" node="579DpELdN8F" resolve="accessToken" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="579DpELf4Px" role="3cqZAp">
          <node concept="3clFbS" id="579DpELf4Pz" role="3clFbx">
            <node concept="3clFbF" id="579DpELfCJo" role="3cqZAp">
              <node concept="37vLTI" id="579DpELfDhg" role="3clFbG">
                <node concept="37vLTw" id="579DpELfDsZ" role="37vLTx">
                  <ref role="3cqZAo" node="579DpELf4qZ" resolve="user" />
                </node>
                <node concept="2OqwBi" id="579DpELfCT0" role="37vLTJ">
                  <node concept="Xjq3P" id="579DpELfCJm" role="2Oq$k0" />
                  <node concept="2OwXpG" id="579DpELfD4q" role="2OqNvi">
                    <ref role="2Oxat6" node="7$Qv9nHSxQf" resolve="currentUser" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="579DpELf59s" role="3clFbw">
            <node concept="10Nm6u" id="579DpELf5n8" role="3uHU7w" />
            <node concept="37vLTw" id="579DpELf4Xf" role="3uHU7B">
              <ref role="3cqZAo" node="579DpELf4qZ" resolve="user" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="579DpELdUZD" role="3cqZAp">
          <node concept="37vLTI" id="579DpELdVS$" role="3clFbG">
            <node concept="37vLTw" id="579DpELdWda" role="37vLTx">
              <ref role="3cqZAo" node="579DpELdN8F" resolve="accessToken" />
            </node>
            <node concept="2OqwBi" id="579DpELdV83" role="37vLTJ">
              <node concept="Xjq3P" id="579DpELdUZz" role="2Oq$k0" />
              <node concept="2OwXpG" id="7$Qv9nHTc_B" role="2OqNvi">
                <ref role="2Oxat6" node="7$Qv9nHT5rV" resolve="accessToken" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uDeeSDG4DW" role="3cqZAp">
          <node concept="2OqwBi" id="2uDeeSDG4RH" role="3clFbG">
            <node concept="37vLTw" id="2uDeeSDG4DU" role="2Oq$k0">
              <ref role="3cqZAo" node="7$Qv9nHSxQj" resolve="pendingTokenConsumer" />
            </node>
            <node concept="liA8E" id="2uDeeSDG56R" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
              <node concept="37vLTw" id="2uDeeSDG5gC" role="37wK5m">
                <ref role="3cqZAo" node="579DpELdN8F" resolve="accessToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="579DpELdIB0" role="1B3o_S" />
      <node concept="3cqZAl" id="579DpELdLpR" role="3clF45" />
      <node concept="37vLTG" id="579DpELdN8F" role="3clF46">
        <property role="TrG5h" value="accessToken" />
        <node concept="17QB3L" id="579DpELdN8E" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_unfQ" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_unuU" role="jymVt">
      <property role="TrG5h" value="obtainNewToken" />
      <node concept="3clFbS" id="7f6_nf_unuX" role="3clF47">
        <node concept="3clFbJ" id="7f6_nf_vlBh" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_vlBj" role="3clFbx">
            <node concept="3cpWs8" id="3poOr4tpPGa" role="3cqZAp">
              <node concept="3cpWsn" id="3poOr4tpPGd" role="3cpWs9">
                <property role="TrG5h" value="strategy" />
                <node concept="3uibUv" id="3poOr4tpPGe" role="1tU5fm">
                  <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationFlow" />
                </node>
                <node concept="1rXfSq" id="3poOr4tpQx_" role="33vP2m">
                  <ref role="37wK5l" node="3poOr4tpyHl" resolve="loadOAuthAuthenticationStrategy" />
                  <node concept="37vLTw" id="3poOr4tpQK1" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_vT7l" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3poOr4tquvb" role="3cqZAp">
              <node concept="37vLTI" id="3poOr4tquMw" role="3clFbG">
                <node concept="37vLTw" id="3poOr4tquRW" role="37vLTx">
                  <ref role="3cqZAo" node="3poOr4tpPGd" resolve="strategy" />
                </node>
                <node concept="37vLTw" id="3poOr4tquv9" role="37vLTJ">
                  <ref role="3cqZAo" node="7$Qv9nHSxQc" resolve="currentStrategy" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5oXgFRIPGJm" role="3cqZAp">
              <node concept="3clFbS" id="5oXgFRIPGJo" role="3clFbx">
                <node concept="YS8fn" id="5oXgFRIPJeE" role="3cqZAp">
                  <node concept="2ShNRf" id="5oXgFRIPJj1" role="YScLw">
                    <node concept="1pGfFk" id="5oXgFRIQe3U" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="Xl_RD" id="5oXgFRIQebm" role="37wK5m">
                        <property role="Xl_RC" value="No strategy set, so we cannot get a token" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5oXgFRIPIYF" role="3clFbw">
                <node concept="10Nm6u" id="5oXgFRIPJ6_" role="3uHU7w" />
                <node concept="37vLTw" id="5oXgFRIPIz5" role="3uHU7B">
                  <ref role="3cqZAo" node="3poOr4tpPGd" resolve="strategy" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3poOr4tq4Cx" role="3cqZAp">
              <node concept="3cpWsn" id="3poOr4tq4Cy" role="3cpWs9">
                <property role="TrG5h" value="executor" />
                <node concept="3uibUv" id="3poOr4tq4Cz" role="1tU5fm">
                  <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
                </node>
                <node concept="1rXfSq" id="3poOr4tq64z" role="33vP2m">
                  <ref role="37wK5l" node="3poOr4tpTsO" resolve="instantiateExecutor" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3poOr4tpOzY" role="3cqZAp" />
            <node concept="3cpWs8" id="3poOr4tpNlP" role="3cqZAp">
              <node concept="3cpWsn" id="3poOr4tpNlS" role="3cpWs9">
                <property role="TrG5h" value="url" />
                <node concept="17QB3L" id="3poOr4tpNlN" role="1tU5fm" />
                <node concept="2OqwBi" id="3poOr4tpRb$" role="33vP2m">
                  <node concept="37vLTw" id="3poOr4tpQYA" role="2Oq$k0">
                    <ref role="3cqZAo" node="3poOr4tpPGd" resolve="strategy" />
                  </node>
                  <node concept="liA8E" id="3poOr4tpRlX" role="2OqNvi">
                    <ref role="37wK5l" node="3poOr4tppxY" resolve="startURL" />
                    <node concept="37vLTw" id="3poOr4tq6eX" role="37wK5m">
                      <ref role="3cqZAo" node="3poOr4tq4Cy" resolve="executor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="7f6_nf_voK5" role="3cqZAp">
              <node concept="3clFbS" id="7f6_nf_voK6" role="1zxBo7">
                <node concept="3clFbF" id="7f6_nf_vnE_" role="3cqZAp">
                  <node concept="2OqwBi" id="7f6_nf_vnJt" role="3clFbG">
                    <node concept="2YIFZM" id="7f6_nf_vnEX" role="2Oq$k0">
                      <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                      <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                    </node>
                    <node concept="liA8E" id="7f6_nf_vnRq" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Desktop.browse(java.net.URI)" resolve="browse" />
                      <node concept="2ShNRf" id="7f6_nf_vnTf" role="37wK5m">
                        <node concept="1pGfFk" id="7f6_nf_vo_H" role="2ShVmc">
                          <ref role="37wK5l" to="zf81:~URI.&lt;init&gt;(java.lang.String)" resolve="URI" />
                          <node concept="37vLTw" id="3poOr4tq8Lm" role="37wK5m">
                            <ref role="3cqZAo" node="3poOr4tpNlS" resolve="url" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7f6_nf_voK8" role="1zxBo5">
                <node concept="3clFbS" id="7f6_nf_voK9" role="1zc67A">
                  <node concept="YS8fn" id="7f6_nf_vp0O" role="3cqZAp">
                    <node concept="2ShNRf" id="7f6_nf_vp1U" role="YScLw">
                      <node concept="1pGfFk" id="7f6_nf_vps_" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="Xl_RD" id="7f6_nf_vpzE" role="37wK5m">
                          <property role="Xl_RC" value="Unable to open browser correctly" />
                        </node>
                        <node concept="37vLTw" id="7f6_nf_vpLd" role="37wK5m">
                          <ref role="3cqZAo" node="7f6_nf_voKa" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="XOnhg" id="7f6_nf_voKa" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="7f6_nf_voKb" role="1tU5fm">
                    <node concept="3uibUv" id="7f6_nf_voK7" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7f6_nf_vpPJ" role="1zxBo5">
                <node concept="3clFbS" id="7f6_nf_vpPK" role="1zc67A">
                  <node concept="YS8fn" id="7f6_nf_vpTM" role="3cqZAp">
                    <node concept="2ShNRf" id="7f6_nf_vpTN" role="YScLw">
                      <node concept="1pGfFk" id="7f6_nf_vpTO" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="3cpWs3" id="7f6_nf_x$ep" role="37wK5m">
                          <node concept="37vLTw" id="3poOr4tq8Wd" role="3uHU7w">
                            <ref role="3cqZAo" node="3poOr4tpNlS" resolve="url" />
                          </node>
                          <node concept="Xl_RD" id="7f6_nf_vpTP" role="3uHU7B">
                            <property role="Xl_RC" value="Incorrect URI: " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7f6_nf_vpTQ" role="37wK5m">
                          <ref role="3cqZAo" node="7f6_nf_vpPL" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="XOnhg" id="7f6_nf_vpPL" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="7f6_nf_vpPM" role="1tU5fm">
                    <node concept="3uibUv" id="7f6_nf_vpPI" role="nSUat">
                      <ref role="3uigEE" to="zf81:~URISyntaxException" resolve="URISyntaxException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7f6_nf_vm3u" role="3clFbw">
            <node concept="2OqwBi" id="7f6_nf_vmfh" role="3uHU7w">
              <node concept="2YIFZM" id="7f6_nf_vm9e" role="2Oq$k0">
                <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
              </node>
              <node concept="liA8E" id="7f6_nf_vmmO" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Desktop.isSupported(java.awt.Desktop$Action)" resolve="isSupported" />
                <node concept="Rm8GO" id="7f6_nf_vmuD" role="37wK5m">
                  <ref role="1Px2BO" to="z60i:~Desktop$Action" resolve="Desktop.Action" />
                  <ref role="Rm8GQ" to="z60i:~Desktop$Action.BROWSE" resolve="BROWSE" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="7f6_nf_vlOa" role="3uHU7B">
              <ref role="37wK5l" to="z60i:~Desktop.isDesktopSupported()" resolve="isDesktopSupported" />
              <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
            </node>
          </node>
          <node concept="9aQIb" id="7f6_nf_vmvS" role="9aQIa">
            <node concept="3clFbS" id="7f6_nf_vmvT" role="9aQI4">
              <node concept="YS8fn" id="7f6_nf_vm$Z" role="3cqZAp">
                <node concept="2ShNRf" id="7f6_nf_vmAl" role="YScLw">
                  <node concept="1pGfFk" id="7f6_nf_vngo" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="Xl_RD" id="7f6_nf_vnll" role="37wK5m">
                      <property role="Xl_RC" value="No Desktop access to browse" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7f6_nf_unoP" role="1B3o_S" />
      <node concept="3cqZAl" id="5U39cdmUprO" role="3clF45" />
      <node concept="37vLTG" id="7f6_nf_vT7l" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7f6_nf_vWYt" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2uDeeSDFILu" role="3clF46">
        <property role="TrG5h" value="tokenConsumer" />
        <node concept="3uibUv" id="2uDeeSDFILv" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="17QB3L" id="2uDeeSDFILw" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_uiJC" role="jymVt" />
    <node concept="3clFb_" id="1yokyoYz3Y3" role="jymVt">
      <property role="TrG5h" value="getToken" />
      <node concept="37vLTG" id="7f6_nf_vX19" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7f6_nf_vX1a" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2uDeeSDEALZ" role="3clF46">
        <property role="TrG5h" value="tokenConsumer" />
        <node concept="3uibUv" id="2uDeeSDEMad" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="17QB3L" id="2uDeeSDEMnn" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1yokyoYz3Y6" role="3clF47">
        <node concept="3clFbJ" id="7f6_nf_un0F" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_un0H" role="3clFbx">
            <node concept="3clFbF" id="2uDeeSDEOO0" role="3cqZAp">
              <node concept="2OqwBi" id="2uDeeSDENpf" role="3clFbG">
                <node concept="37vLTw" id="2uDeeSDEN4k" role="2Oq$k0">
                  <ref role="3cqZAo" node="2uDeeSDEALZ" resolve="tokenConsumer" />
                </node>
                <node concept="liA8E" id="2uDeeSDENZW" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="37vLTw" id="7$Qv9nHTcqj" role="37wK5m">
                    <ref role="3cqZAo" node="7$Qv9nHT5rV" resolve="accessToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7f6_nf_un1m" role="3clFbw">
            <ref role="37wK5l" node="7$Qv9nHSz79" resolve="hasValidToken" />
          </node>
          <node concept="9aQIb" id="7f6_nf_un2d" role="9aQIa">
            <node concept="3clFbS" id="7f6_nf_un2e" role="9aQI4">
              <node concept="3clFbF" id="2uDeeSDG75A" role="3cqZAp">
                <node concept="37vLTI" id="2uDeeSDG7sG" role="3clFbG">
                  <node concept="37vLTw" id="2uDeeSDG7Bu" role="37vLTx">
                    <ref role="3cqZAo" node="2uDeeSDEALZ" resolve="tokenConsumer" />
                  </node>
                  <node concept="37vLTw" id="2uDeeSDG75$" role="37vLTJ">
                    <ref role="3cqZAo" node="7$Qv9nHSxQj" resolve="pendingTokenConsumer" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2uDeeSDERGj" role="3cqZAp">
                <node concept="1rXfSq" id="7f6_nf_z6M5" role="3clFbG">
                  <ref role="37wK5l" node="7f6_nf_unuU" resolve="obtainNewToken" />
                  <node concept="37vLTw" id="7f6_nf_z6M6" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_vX19" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2uDeeSDEQ$l" role="37wK5m">
                    <ref role="3cqZAo" node="2uDeeSDEALZ" resolve="tokenConsumer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1yokyoYz3Ur" role="1B3o_S" />
      <node concept="3cqZAl" id="2uDeeSDEMym" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1ln$sNEa23O" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tpyHl" role="jymVt">
      <property role="TrG5h" value="loadOAuthAuthenticationStrategy" />
      <node concept="37vLTG" id="3poOr4tpCR8" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3poOr4tpCR9" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3poOr4tpyHo" role="3clF47">
        <node concept="3cpWs8" id="1xehy3SrtXV" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SrtXW" role="3cpWs9">
            <property role="TrG5h" value="configurationComponent" />
            <node concept="3uibUv" id="7f6_nf_z1el" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="1xehy3SrtXY" role="33vP2m">
              <node concept="37vLTw" id="3poOr4tpEvN" role="2Oq$k0">
                <ref role="3cqZAo" node="3poOr4tpCR8" resolve="project" />
              </node>
              <node concept="liA8E" id="1xehy3SrtY0" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="1xehy3SrtY1" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xehy3SrtY2" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SrtY3" role="3cpWs9">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="3ljvbPMU0ip" role="1tU5fm">
              <ref role="3uigEE" node="3ljvbPMOSXA" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationConfigurationEntry" />
            </node>
            <node concept="2OqwBi" id="1xehy3SrtY5" role="33vP2m">
              <node concept="37vLTw" id="1xehy3SrtY6" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SrtXW" resolve="configurationComponent" />
              </node>
              <node concept="liA8E" id="3ljvbPMTZ2O" role="2OqNvi">
                <ref role="37wK5l" node="3ljvbPMTJbq" resolve="getEntry" />
                <node concept="37vLTw" id="3ljvbPMTZBF" role="37wK5m">
                  <ref role="3cqZAo" node="7$Qv9nHSn6i" resolve="modelServerURL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ljvbPMU18x" role="3cqZAp">
          <node concept="3clFbS" id="3ljvbPMU18z" role="3clFbx">
            <node concept="3cpWs6" id="3ljvbPMU2q4" role="3cqZAp">
              <node concept="10Nm6u" id="3ljvbPMU2uf" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3ljvbPMU29A" role="3clFbw">
            <node concept="10Nm6u" id="3ljvbPMU2h1" role="3uHU7w" />
            <node concept="37vLTw" id="3ljvbPMU217" role="3uHU7B">
              <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5oXgFRIPEzp" role="3cqZAp">
          <node concept="3clFbS" id="5oXgFRIPEzr" role="3clFbx">
            <node concept="3cpWs6" id="5oXgFRIPFGZ" role="3cqZAp">
              <node concept="10Nm6u" id="5oXgFRIPFLu" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5oXgFRIPFsD" role="3clFbw">
            <node concept="10Nm6u" id="5oXgFRIPF$p" role="3uHU7w" />
            <node concept="2OqwBi" id="5oXgFRIPFdd" role="3uHU7B">
              <node concept="37vLTw" id="5oXgFRIPF3d" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
              </node>
              <node concept="2OwXpG" id="3ljvbPMU2xJ" role="2OqNvi">
                <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ljvbPN9lx5" role="3cqZAp">
          <node concept="3cpWsn" id="3ljvbPN9lx6" role="3cpWs9">
            <property role="TrG5h" value="strategyType" />
            <node concept="3uibUv" id="3ljvbPN9lx7" role="1tU5fm">
              <ref role="3uigEE" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
            </node>
            <node concept="2OqwBi" id="3ljvbPNb8Wn" role="33vP2m">
              <node concept="2OqwBi" id="3ljvbPN9mrA" role="2Oq$k0">
                <node concept="37vLTw" id="3ljvbPN9mrB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                </node>
                <node concept="2OwXpG" id="3ljvbPN9mrC" role="2OqNvi">
                  <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                </node>
              </node>
              <node concept="liA8E" id="3ljvbPNb94L" role="2OqNvi">
                <ref role="37wK5l" node="3ljvbPNab_x" resolve="loadStrategyTypeByCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="3ljvbPN9pgy" role="3cqZAp">
          <node concept="37vLTw" id="3ljvbPN9pIY" role="3KbGdf">
            <ref role="3cqZAo" node="3ljvbPN9lx6" resolve="strategyType" />
          </node>
          <node concept="3KbdKl" id="3ljvbPN9pKE" role="3KbHQx">
            <node concept="Rm8GO" id="3ljvbPN9pTD" role="3Kbmr1">
              <ref role="Rm8GQ" node="3ljvbPN8SG7" resolve="AUTHORIZATION_FLOW" />
              <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
            </node>
            <node concept="3clFbS" id="3ljvbPN9pVT" role="3Kbo56">
              <node concept="3cpWs6" id="3ljvbPN9FmQ" role="3cqZAp">
                <node concept="2ShNRf" id="3ljvbPN9FmR" role="3cqZAk">
                  <node concept="1pGfFk" id="3ljvbPN9FmS" role="2ShVmc">
                    <ref role="37wK5l" node="3poOr4tpmF$" resolve="AuthorizationCodeFlow" />
                    <node concept="Xjq3P" id="3ljvbPN9FmT" role="37wK5m" />
                    <node concept="2OqwBi" id="3ljvbPN9FmU" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9FmV" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9FmW" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9FmX" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9FmY" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlA" resolve="baseURL" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9FmZ" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9Fn0" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9Fn1" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9Fn2" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9Fn3" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlE" resolve="clientId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9Fn4" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9Fn5" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9Fn6" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9Fn7" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9Fn8" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlI" resolve="scope" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9Fn9" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9Fna" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9Fnb" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9Fnc" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9Fnd" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3ljvbPN9q3H" role="3KbHQx">
            <node concept="Rm8GO" id="3ljvbPN9q$N" role="3Kbmr1">
              <ref role="Rm8GQ" node="3ljvbPN8SUL" resolve="AUTHORIZATION_PKCE_FLOW" />
              <ref role="1Px2BO" node="3ljvbPN8R$Z" resolve="ModelixAuthenticationConfigurationComponent.AuthenticationStrategyType" />
            </node>
            <node concept="3clFbS" id="3ljvbPN9riH" role="3Kbo56">
              <node concept="3cpWs6" id="3ljvbPN9F_D" role="3cqZAp">
                <node concept="2ShNRf" id="3ljvbPN9F_E" role="3cqZAk">
                  <node concept="1pGfFk" id="3ljvbPN9F_F" role="2ShVmc">
                    <ref role="37wK5l" node="579DpELfKrO" resolve="AuthorizationCodePKCEFlow" />
                    <node concept="Xjq3P" id="3ljvbPN9F_G" role="37wK5m" />
                    <node concept="2OqwBi" id="3ljvbPN9F_H" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9F_I" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9F_J" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9F_K" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9F_L" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlA" resolve="baseURL" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9F_M" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9F_N" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9F_O" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9F_P" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9F_Q" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlE" resolve="clientId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9F_R" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9F_S" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9F_T" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9F_U" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9F_V" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlI" resolve="scope" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ljvbPN9F_W" role="37wK5m">
                      <node concept="2OqwBi" id="3ljvbPN9F_X" role="2Oq$k0">
                        <node concept="37vLTw" id="3ljvbPN9F_Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SrtY3" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="3ljvbPN9F_Z" role="2OqNvi">
                          <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3ljvbPN9FA0" role="2OqNvi">
                        <ref role="2Oxat6" node="55JU2Sa5UlM" resolve="tokenVerificationURL" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3ljvbPN9rE4" role="3Kb1Dw">
            <node concept="YS8fn" id="3ljvbPN9rLI" role="3cqZAp">
              <node concept="2ShNRf" id="3ljvbPN9rR9" role="YScLw">
                <node concept="1pGfFk" id="3ljvbPN9sUm" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                  <node concept="3cpWs3" id="3ljvbPN9ukP" role="37wK5m">
                    <node concept="Xl_RD" id="3ljvbPN9uox" role="3uHU7w">
                      <property role="Xl_RC" value=" is not" />
                    </node>
                    <node concept="3cpWs3" id="3ljvbPN9tNa" role="3uHU7B">
                      <node concept="Xl_RD" id="3ljvbPN9t6J" role="3uHU7B">
                        <property role="Xl_RC" value="This is unexpected: all strategy types should be handled, but " />
                      </node>
                      <node concept="37vLTw" id="3ljvbPN9tVm" role="3uHU7w">
                        <ref role="3cqZAo" node="3ljvbPN9lx6" resolve="strategyType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3poOr4tpxz6" role="1B3o_S" />
      <node concept="3uibUv" id="3poOr4tpyE1" role="3clF45">
        <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationFlow" />
      </node>
      <node concept="P$JXv" id="5oXgFRIPGdx" role="lGtFl">
        <node concept="TZ5HA" id="5oXgFRIPGdy" role="TZ5H$">
          <node concept="1dT_AC" id="5oXgFRIPGdz" role="1dT_Ay">
            <property role="1dT_AB" value="It may be null, to indicate that no strategy is set." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_um9x" role="jymVt" />
    <node concept="3clFb_" id="7$Qv9nHSz79" role="jymVt">
      <property role="TrG5h" value="hasValidToken" />
      <node concept="3clFbS" id="7$Qv9nHSz7a" role="3clF47">
        <node concept="3SKdUt" id="7$Qv9nHSz7b" role="3cqZAp">
          <node concept="1PaTwC" id="7$Qv9nHSz7c" role="1aUNEU">
            <node concept="3oM_SD" id="7$Qv9nHSz7d" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7e" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7f" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7g" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7h" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7i" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7j" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="7$Qv9nHSz7k" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7$Qv9nHSz7l" role="3cqZAp">
          <node concept="3y3z36" id="7$Qv9nHSz7m" role="3cqZAk">
            <node concept="10Nm6u" id="7$Qv9nHSz7n" role="3uHU7w" />
            <node concept="37vLTw" id="7$Qv9nHT644" role="3uHU7B">
              <ref role="3cqZAo" node="7$Qv9nHT5rV" resolve="accessToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7$Qv9nHSz7p" role="1B3o_S" />
      <node concept="10P_77" id="7$Qv9nHSz7q" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4fpU1SJfUep" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tpTsO" role="jymVt">
      <property role="TrG5h" value="instantiateExecutor" />
      <node concept="3clFbS" id="3poOr4tpTsR" role="3clF47">
        <node concept="3cpWs6" id="3poOr4tpVuE" role="3cqZAp">
          <node concept="2ShNRf" id="3poOr4tpVz2" role="3cqZAk">
            <node concept="YeOm9" id="3poOr4tpX4v" role="2ShVmc">
              <node concept="1Y3b0j" id="3poOr4tpX4y" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
                <node concept="3Tm1VV" id="3poOr4tpX4z" role="1B3o_S" />
                <node concept="3clFb_" id="3poOr4tpX4C" role="jymVt">
                  <property role="TrG5h" value="getRedirectURI" />
                  <node concept="3Tm1VV" id="3poOr4tpX4E" role="1B3o_S" />
                  <node concept="17QB3L" id="3poOr4tpX4F" role="3clF45" />
                  <node concept="3clFbS" id="3poOr4tpX4G" role="3clF47">
                    <node concept="3cpWs8" id="7rdFupvVBj9" role="3cqZAp">
                      <node concept="3cpWsn" id="7rdFupvVBjc" role="3cpWs9">
                        <property role="TrG5h" value="port" />
                        <node concept="10Oyi0" id="7rdFupvVBj7" role="1tU5fm" />
                        <node concept="2YIFZM" id="7rdFupvVCsI" role="33vP2m">
                          <ref role="37wK5l" to="rfhd:~Registry.intValue(java.lang.String)" resolve="intValue" />
                          <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                          <node concept="Xl_RD" id="3BwRxVwWbFi" role="37wK5m">
                            <property role="Xl_RC" value="ide.httpsupport.internalPort" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3poOr4tpYqe" role="3cqZAp">
                      <node concept="3cpWs3" id="7rdFupvVCZH" role="3cqZAk">
                        <node concept="Xl_RD" id="7rdFupvVDCd" role="3uHU7w">
                          <property role="Xl_RC" value="/modelixauthtoken" />
                        </node>
                        <node concept="3cpWs3" id="7rdFupvVErL" role="3uHU7B">
                          <node concept="37vLTw" id="7rdFupvVEMB" role="3uHU7w">
                            <ref role="3cqZAo" node="7rdFupvVBjc" resolve="port" />
                          </node>
                          <node concept="Xl_RD" id="3poOr4tpYCC" role="3uHU7B">
                            <property role="Xl_RC" value="http://localhost:" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3poOr4tpX4I" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3poOr4tpSmb" role="1B3o_S" />
      <node concept="3uibUv" id="3poOr4tpUOo" role="3clF45">
        <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationFlowExecutor" />
      </node>
    </node>
    <node concept="2tJIrI" id="7$Qv9nHSynx" role="jymVt" />
    <node concept="3Tm1VV" id="7$Qv9nHSkdN" role="1B3o_S" />
  </node>
</model>

