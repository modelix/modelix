<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ab9ceea2-f32a-4ea6-be78-3e6c2d4ef84b(org.modelix.ui.diff)">
  <persistence version="9" />
  <languages>
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
    <import index="5mlj" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.repo(jetbrains.mps.git4idea.stubs/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hr4p" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea(jetbrains.mps.git4idea.stubs/)" />
    <import index="e0ho" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcs.log.impl(MPS.IDEA/)" />
    <import index="m8n3" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.history(jetbrains.mps.git4idea.stubs/)" />
    <import index="xny0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.history.core.changes(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3tm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes.actions.diff(MPS.IDEA/)" />
    <import index="ok99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.diff(MPS.IDEA/)" />
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
    <import index="fglx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileTypes(MPS.IDEA/)" implicit="true" />
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
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
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
          <node concept="2OqwBi" id="4kPMkltJWku" role="37wK5m">
            <node concept="2YIFZM" id="4kPMkltJWkv" role="2Oq$k0">
              <ref role="1Pybhc" to="4nm9:~ProjectManager" resolve="ProjectManager" />
              <ref role="37wK5l" to="4nm9:~ProjectManager.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4kPMkltJWkw" role="2OqNvi">
              <ref role="37wK5l" to="4nm9:~ProjectManager.getDefaultProject()" resolve="getDefaultProject" />
            </node>
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
                <ref role="2Oxat5" node="4kPMkltJPHc" resolve="project" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltJTxI" role="jymVt" />
    <node concept="3clFb_" id="1RZ$z1qesJ4" role="jymVt">
      <property role="TrG5h" value="diff" />
      <node concept="3cqZAl" id="1RZ$z1qesJ6" role="3clF45" />
      <node concept="3Tm1VV" id="1RZ$z1qesJ7" role="1B3o_S" />
      <node concept="3clFbS" id="1RZ$z1qesJ8" role="3clF47">
        <node concept="3cpWs8" id="1RZ$z1qew1S" role="3cqZAp">
          <node concept="3cpWsn" id="1RZ$z1qew1T" role="3cpWs9">
            <property role="TrG5h" value="repoRoot" />
            <node concept="3uibUv" id="1RZ$z1qew1U" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="10Nm6u" id="1RZ$z1qg0QB" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="1RZ$z1qg0sB" role="3cqZAp" />
        <node concept="3cpWs8" id="1RZ$z1qfBqz" role="3cqZAp">
          <node concept="3cpWsn" id="1RZ$z1qfBq$" role="3cpWs9">
            <property role="TrG5h" value="gitRepoDirPath" />
            <node concept="17QB3L" id="1RZ$z1qfCgb" role="1tU5fm" />
            <node concept="2YIFZM" id="1RZ$z1qfBq_" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="Xl_RD" id="1RZ$z1qfBqA" role="37wK5m">
                <property role="Xl_RC" value="GIT_REPO_DIR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1RZ$z1qfXxt" role="3cqZAp">
          <node concept="3clFbS" id="1RZ$z1qfXxv" role="3clFbx">
            <node concept="3clFbF" id="1RZ$z1qfVLS" role="3cqZAp">
              <node concept="37vLTI" id="1RZ$z1qfVLU" role="3clFbG">
                <node concept="2OqwBi" id="1RZ$z1qew1V" role="37vLTx">
                  <node concept="2YIFZM" id="1RZ$z1qew1W" role="2Oq$k0">
                    <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
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
                <node concept="37vLTw" id="1RZ$z1qfVLY" role="37vLTJ">
                  <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
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
                <node concept="3clFbF" id="1RZ$z1qg2aX" role="3cqZAp">
                  <node concept="37vLTI" id="1RZ$z1qg2CM" role="3clFbG">
                    <node concept="37vLTw" id="1RZ$z1qg2aW" role="37vLTJ">
                      <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
                    </node>
                    <node concept="2OqwBi" id="1RZ$z1qfUnN" role="37vLTx">
                      <node concept="2GrUjf" id="1RZ$z1qfU87" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1RZ$z1qfTij" resolve="repo" />
                      </node>
                      <node concept="liA8E" id="1RZ$z1qfUJn" role="2OqNvi">
                        <ref role="37wK5l" to="tkms:~Repository.getRoot()" resolve="getRoot" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1RZ$z1qg339" role="3cqZAp">
                  <node concept="3clFbS" id="1RZ$z1qg33b" role="3clFbx">
                    <node concept="3zACq4" id="1RZ$z1qg4co" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="1RZ$z1qg3OL" role="3clFbw">
                    <node concept="10Nm6u" id="1RZ$z1qg44Q" role="3uHU7w" />
                    <node concept="37vLTw" id="1RZ$z1qg3on" role="3uHU7B">
                      <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
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
              <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1RZ$z1qgbGv" role="3cqZAp">
          <node concept="3clFbS" id="1RZ$z1qgbGx" role="3clFbx">
            <node concept="RRSsy" id="1RZ$z1qge2V" role="3cqZAp">
              <property role="RRSoG" value="h1akgim/info" />
              <node concept="3cpWs3" id="1RZ$z1qgeIH" role="RRSoy">
                <node concept="37vLTw" id="1RZ$z1qgfbP" role="3uHU7w">
                  <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
                </node>
                <node concept="Xl_RD" id="1RZ$z1qge2X" role="3uHU7B">
                  <property role="Xl_RC" value="Repo root: " />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1RZ$z1qgoI1" role="3cqZAp">
              <node concept="2OqwBi" id="1RZ$z1qgpbb" role="3clFbG">
                <node concept="2YIFZM" id="1RZ$z1qgoQd" role="2Oq$k0">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
                <node concept="liA8E" id="1RZ$z1qgprE" role="2OqNvi">
                  <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
                  <node concept="1bVj0M" id="1RZ$z1qgsj0" role="37wK5m">
                    <node concept="3clFbS" id="1RZ$z1qgsj1" role="1bW5cS">
                      <node concept="3clFbF" id="1RZ$z1qeyK$" role="3cqZAp">
                        <node concept="1rXfSq" id="1RZ$z1qeyKy" role="3clFbG">
                          <ref role="37wK5l" node="2QFzCYK30vi" resolve="diff" />
                          <node concept="37vLTw" id="1RZ$z1qez$y" role="37wK5m">
                            <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1RZ$z1qgcHa" role="3clFbw">
            <node concept="10Nm6u" id="1RZ$z1qgd3o" role="3uHU7w" />
            <node concept="37vLTw" id="1RZ$z1qgc31" role="3uHU7B">
              <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoot" />
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
      <node concept="3cqZAl" id="2QFzCYK30vk" role="3clF45" />
      <node concept="3Tm1VV" id="2QFzCYK30vl" role="1B3o_S" />
      <node concept="3clFbS" id="2QFzCYK30vm" role="3clF47">
        <node concept="3J1_TO" id="2QFzCYK5$_q" role="3cqZAp">
          <node concept="3uVAMA" id="2QFzCYK5A5L" role="1zxBo5">
            <node concept="XOnhg" id="2QFzCYK5A5M" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2QFzCYK5A5N" role="1tU5fm">
                <node concept="3uibUv" id="2QFzCYK5Bzx" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2QFzCYK5A5O" role="1zc67A">
              <node concept="RRSsy" id="1RZ$z1qeBDT" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="1RZ$z1qeBDV" role="RRSoy" />
                <node concept="37vLTw" id="1RZ$z1qeBML" role="RRSow">
                  <ref role="3cqZAo" node="2QFzCYK5A5M" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2QFzCYK5$_s" role="1zxBo7">
            <node concept="3cpWs8" id="2QFzCYK30yN" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30yM" role="3cpWs9">
                <property role="TrG5h" value="vcsManager" />
                <node concept="3uibUv" id="2QFzCYK3CAg" role="1tU5fm">
                  <ref role="3uigEE" to="tkms:~VcsRepositoryManager" resolve="VcsRepositoryManager" />
                </node>
                <node concept="2YIFZM" id="2QFzCYK3ExM" role="33vP2m">
                  <ref role="1Pybhc" to="tkms:~VcsRepositoryManager" resolve="VcsRepositoryManager" />
                  <ref role="37wK5l" to="tkms:~VcsRepositoryManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <node concept="37vLTw" id="2QFzCYK3ExN" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2QFzCYK30yR" role="3cqZAp">
              <node concept="2OqwBi" id="2QFzCYK327e" role="3clFbG">
                <node concept="37vLTw" id="2QFzCYK327d" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK30yM" resolve="vcsManager" />
                </node>
                <node concept="liA8E" id="2QFzCYK327f" role="2OqNvi">
                  <ref role="37wK5l" to="tkms:~VcsRepositoryManager.addExternalRepository(com.intellij.openapi.vfs.VirtualFile,com.intellij.dvcs.repo.Repository)" resolve="addExternalRepository" />
                  <node concept="37vLTw" id="2QFzCYK327g" role="37wK5m">
                    <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                  </node>
                  <node concept="2YIFZM" id="2QFzCYK3GH4" role="37wK5m">
                    <ref role="1Pybhc" to="5mlj:~GitRepositoryImpl" resolve="GitRepositoryImpl" />
                    <ref role="37wK5l" to="5mlj:~GitRepositoryImpl.createInstance(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.project.Project,com.intellij.openapi.Disposable,boolean)" resolve="createInstance" />
                    <node concept="37vLTw" id="2QFzCYK3GH5" role="37wK5m">
                      <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                    </node>
                    <node concept="37vLTw" id="2QFzCYK3GH6" role="37wK5m">
                      <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="2QFzCYK3GH7" role="37wK5m">
                      <ref role="3cqZAo" node="2QFzCYK30yM" resolve="vcsManager" />
                    </node>
                    <node concept="3clFbT" id="2QFzCYK3GH8" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK30z0" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30yZ" role="3cpWs9">
                <property role="TrG5h" value="history" />
                <node concept="3uibUv" id="2QFzCYK30z1" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2QFzCYK3Iew" role="11_B2D">
                    <ref role="3uigEE" to="hr4p:~GitCommit" resolve="GitCommit" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2QFzCYK3WS3" role="33vP2m">
                  <ref role="1Pybhc" to="m8n3:~GitHistoryUtils" resolve="GitHistoryUtils" />
                  <ref role="37wK5l" to="m8n3:~GitHistoryUtils.history(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile,java.lang.String...)" resolve="history" />
                  <node concept="37vLTw" id="2QFzCYK3WS4" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2QFzCYK3WS5" role="37wK5m">
                    <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                  </node>
                  <node concept="Xl_RD" id="2QFzCYK3WS6" role="37wK5m">
                    <property role="Xl_RC" value="-n1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK30z8" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30z7" role="3cpWs9">
                <property role="TrG5h" value="commit" />
                <node concept="3uibUv" id="2QFzCYK30z9" role="1tU5fm">
                  <ref role="3uigEE" to="hr4p:~GitCommit" resolve="GitCommit" />
                </node>
                <node concept="2OqwBi" id="2QFzCYK3254" role="33vP2m">
                  <node concept="37vLTw" id="2QFzCYK3253" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK30yZ" resolve="history" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK3255" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2QFzCYK3256" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kPMkltJD2L" role="3cqZAp">
              <node concept="1rXfSq" id="4kPMkltJD2J" role="3clFbG">
                <ref role="37wK5l" node="4kPMkltJrRg" resolve="diffCommit" />
                <node concept="37vLTw" id="4kPMkltJEfQ" role="37wK5m">
                  <ref role="3cqZAo" node="2QFzCYK30z7" resolve="commit" />
                </node>
                <node concept="2ShNRf" id="27MnIr9X$nQ" role="37wK5m">
                  <node concept="1pGfFk" id="27MnIr9X$gF" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="2OqwBi" id="27MnIr9XzmF" role="37wK5m">
                      <node concept="37vLTw" id="27MnIr9XyJN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                      </node>
                      <node concept="liA8E" id="27MnIr9XzRz" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
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
    <node concept="2tJIrI" id="4kPMkltK3pj" role="jymVt" />
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
        <property role="TrG5h" value="outputDir" />
        <node concept="3uibUv" id="27MnIr9XupD" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3cqZAl" id="4kPMkltJrRi" role="3clF45" />
      <node concept="3Tm1VV" id="4kPMkltJrRj" role="1B3o_S" />
      <node concept="3clFbS" id="4kPMkltJrRk" role="3clF47">
        <node concept="1DcWWT" id="2QFzCYK30zc" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK31Cv" role="1DdaDG">
            <node concept="37vLTw" id="2QFzCYK31Cu" role="2Oq$k0">
              <ref role="3cqZAo" node="4kPMkltJzfP" resolve="commit" />
            </node>
            <node concept="liA8E" id="2QFzCYK31Cw" role="2OqNvi">
              <ref role="37wK5l" to="e0ho:~VcsChangesLazilyParsedDetails.getChanges()" resolve="getChanges" />
            </node>
          </node>
          <node concept="3cpWsn" id="2QFzCYK30$y" role="1Duv9x">
            <property role="TrG5h" value="change" />
            <node concept="3uibUv" id="2QFzCYK5kVc" role="1tU5fm">
              <ref role="3uigEE" to="1037:~Change" resolve="Change" />
            </node>
          </node>
          <node concept="3clFbS" id="2QFzCYK30ze" role="2LFqv$">
            <node concept="3clFbJ" id="2QFzCYK30zf" role="3cqZAp">
              <node concept="3fqX7Q" id="2QFzCYK30zg" role="3clFbw">
                <node concept="1rXfSq" id="2QFzCYK30zh" role="3fr31v">
                  <ref role="37wK5l" node="2QFzCYK40mo" resolve="isModel" />
                  <node concept="37vLTw" id="2QFzCYK30zi" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK30$y" resolve="change" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2QFzCYK30zk" role="3clFbx">
                <node concept="3N13vt" id="2QFzCYK30zj" role="3cqZAp" />
              </node>
            </node>
            <node concept="RRSsy" id="1RZ$z1qh3Ye" role="3cqZAp">
              <property role="RRSoG" value="h1akgim/info" />
              <node concept="3cpWs3" id="1RZ$z1qh4TI" role="RRSoy">
                <node concept="Xl_RD" id="1RZ$z1qh4TJ" role="3uHU7B">
                  <property role="Xl_RC" value="Change: " />
                </node>
                <node concept="37vLTw" id="1RZ$z1qh4TK" role="3uHU7w">
                  <ref role="3cqZAo" node="2QFzCYK30$y" resolve="change" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK30zr" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30zq" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="2QFzCYK3QDh" role="1tU5fm">
                  <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
                </node>
                <node concept="2ShNRf" id="2QFzCYK30zt" role="33vP2m">
                  <node concept="YeOm9" id="2QFzCYK30zu" role="2ShVmc">
                    <node concept="1Y3b0j" id="2QFzCYK30zv" role="YeSDq">
                      <ref role="37wK5l" to="yt4f:~DiffContext.&lt;init&gt;()" resolve="DiffContext" />
                      <ref role="1Y3XeK" to="yt4f:~DiffContext" resolve="DiffContext" />
                      <node concept="3clFb_" id="2QFzCYK30zw" role="jymVt">
                        <property role="TrG5h" value="getProject" />
                        <node concept="2AHcQZ" id="2QFzCYK30zx" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        </node>
                        <node concept="2AHcQZ" id="2QFzCYK30zy" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3clFbS" id="2QFzCYK30zz" role="3clF47">
                          <node concept="3cpWs6" id="2QFzCYK30z$" role="3cqZAp">
                            <node concept="37vLTw" id="2QFzCYK30z_" role="3cqZAk">
                              <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="2QFzCYK30zA" role="1B3o_S" />
                        <node concept="3uibUv" id="2QFzCYK30zB" role="3clF45">
                          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="2QFzCYK30zC" role="jymVt">
                        <property role="TrG5h" value="isWindowFocused" />
                        <node concept="2AHcQZ" id="2QFzCYK30zD" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3clFbS" id="2QFzCYK30zE" role="3clF47">
                          <node concept="3cpWs6" id="2QFzCYK30zF" role="3cqZAp">
                            <node concept="3clFbT" id="2QFzCYK30zG" role="3cqZAk" />
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="2QFzCYK30zH" role="1B3o_S" />
                        <node concept="10P_77" id="2QFzCYK30zI" role="3clF45" />
                      </node>
                      <node concept="3clFb_" id="2QFzCYK30zJ" role="jymVt">
                        <property role="TrG5h" value="isFocusedInWindow" />
                        <node concept="2AHcQZ" id="2QFzCYK30zK" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3clFbS" id="2QFzCYK30zL" role="3clF47">
                          <node concept="3cpWs6" id="2QFzCYK30zM" role="3cqZAp">
                            <node concept="3clFbT" id="2QFzCYK30zN" role="3cqZAk" />
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="2QFzCYK30zO" role="1B3o_S" />
                        <node concept="10P_77" id="2QFzCYK30zP" role="3clF45" />
                      </node>
                      <node concept="3clFb_" id="2QFzCYK30zQ" role="jymVt">
                        <property role="TrG5h" value="requestFocusInWindow" />
                        <node concept="2AHcQZ" id="2QFzCYK30zR" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3clFbS" id="2QFzCYK30zS" role="3clF47" />
                        <node concept="3Tm1VV" id="2QFzCYK30zT" role="1B3o_S" />
                        <node concept="3cqZAl" id="2QFzCYK30zU" role="3clF45" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK30zW" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30zV" role="3cpWs9">
                <property role="TrG5h" value="changeDiffRequestProducer" />
                <node concept="3uibUv" id="2QFzCYK3Svj" role="1tU5fm">
                  <ref role="3uigEE" to="3tm9:~ChangeDiffRequestProducer" resolve="ChangeDiffRequestProducer" />
                </node>
                <node concept="2YIFZM" id="2QFzCYK3WHV" role="33vP2m">
                  <ref role="1Pybhc" to="3tm9:~ChangeDiffRequestProducer" resolve="ChangeDiffRequestProducer" />
                  <ref role="37wK5l" to="3tm9:~ChangeDiffRequestProducer.create(com.intellij.openapi.project.Project,com.intellij.openapi.vcs.changes.Change)" resolve="create" />
                  <node concept="37vLTw" id="2QFzCYK3WHW" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2QFzCYK3WHX" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK30$y" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK30$7" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK30$6" role="3cpWs9">
                <property role="TrG5h" value="diffRequest" />
                <node concept="3uibUv" id="2QFzCYK3YkJ" role="1tU5fm">
                  <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
                </node>
                <node concept="2OqwBi" id="2QFzCYK31Rr" role="33vP2m">
                  <node concept="37vLTw" id="2QFzCYK31Rq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK30zV" resolve="changeDiffRequestProducer" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK31Rs" role="2OqNvi">
                    <ref role="37wK5l" to="3tm9:~ChangeDiffRequestProducer.process(com.intellij.openapi.util.UserDataHolder,com.intellij.openapi.progress.ProgressIndicator)" resolve="process" />
                    <node concept="37vLTw" id="2QFzCYK31Rt" role="37wK5m">
                      <ref role="3cqZAo" node="2QFzCYK30zq" resolve="context" />
                    </node>
                    <node concept="2ShNRf" id="2QFzCYK3ZZf" role="37wK5m">
                      <node concept="1pGfFk" id="2QFzCYK3ZZh" role="2ShVmc">
                        <ref role="37wK5l" to="xygl:~EmptyProgressIndicator.&lt;init&gt;()" resolve="EmptyProgressIndicator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1RZ$z1qgAYW" role="3cqZAp">
              <node concept="2YIFZM" id="1RZ$z1qgCjx" role="3clFbG">
                <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
                <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                <node concept="1bVj0M" id="1RZ$z1qgC$5" role="37wK5m">
                  <node concept="3clFbS" id="1RZ$z1qgC$6" role="1bW5cS">
                    <node concept="3J1_TO" id="1RZ$z1qgOhR" role="3cqZAp">
                      <node concept="3uVAMA" id="1RZ$z1qgOPl" role="1zxBo5">
                        <node concept="XOnhg" id="1RZ$z1qgOPm" role="1zc67B">
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="1RZ$z1qgOPn" role="1tU5fm">
                            <node concept="3uibUv" id="1RZ$z1qgP8o" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1RZ$z1qgOPo" role="1zc67A">
                          <node concept="RRSsy" id="1RZ$z1qgQ8m" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="Xl_RD" id="1RZ$z1qgQ8o" role="RRSoy" />
                            <node concept="37vLTw" id="1RZ$z1qgQLL" role="RRSow">
                              <ref role="3cqZAo" node="1RZ$z1qgOPm" resolve="ex" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1RZ$z1qgOhT" role="1zxBo7">
                        <node concept="3cpWs8" id="2QFzCYK30$i" role="3cqZAp">
                          <node concept="3cpWsn" id="2QFzCYK30$h" role="3cpWs9">
                            <property role="TrG5h" value="viewer" />
                            <node concept="3uibUv" id="2QFzCYK3YFE" role="1tU5fm">
                              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK30$k" role="33vP2m">
                              <node concept="2ShNRf" id="2QFzCYK3ZXO" role="2Oq$k0">
                                <node concept="1pGfFk" id="2QFzCYK3ZY0" role="2ShVmc">
                                  <ref role="37wK5l" to="qyr2:5zPLqcHLMf9" resolve="ModelDiffViewer" />
                                  <node concept="37vLTw" id="2QFzCYK3ZY1" role="37wK5m">
                                    <ref role="3cqZAo" node="2QFzCYK30zq" resolve="context" />
                                  </node>
                                  <node concept="10QFUN" id="2QFzCYK3ZY2" role="37wK5m">
                                    <node concept="37vLTw" id="2QFzCYK3ZY3" role="10QFUP">
                                      <ref role="3cqZAo" node="2QFzCYK30$6" resolve="diffRequest" />
                                    </node>
                                    <node concept="3uibUv" id="2QFzCYK3ZY4" role="10QFUM">
                                      <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="2QFzCYK30$q" role="2OqNvi">
                                <ref role="37wK5l" to="qyr2:1R9fMbxrL$u" resolve="getComponent" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="2QFzCYK4Lmq" role="3cqZAp">
                          <node concept="3cpWsn" id="2QFzCYK4Lmr" role="3cpWs9">
                            <property role="TrG5h" value="diffTree" />
                            <node concept="3uibUv" id="2QFzCYK4L3C" role="1tU5fm">
                              <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4Lms" role="33vP2m">
                              <node concept="2OqwBi" id="2QFzCYK4Lmt" role="2Oq$k0">
                                <node concept="1rXfSq" id="2QFzCYK4Lmu" role="2Oq$k0">
                                  <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
                                  <node concept="37vLTw" id="2QFzCYK4Lmv" role="37wK5m">
                                    <ref role="3cqZAo" node="2QFzCYK30$h" resolve="viewer" />
                                  </node>
                                </node>
                                <node concept="UnYns" id="2QFzCYK4Lmw" role="2OqNvi">
                                  <node concept="3uibUv" id="2QFzCYK4Lmx" role="UnYnz">
                                    <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1uHKPH" id="2QFzCYK4Lmy" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="2QFzCYK4M7y" role="3cqZAp">
                          <node concept="3cpWsn" id="2QFzCYK4M7z" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="2QFzCYK4M7_" role="1tU5fm" />
                            <node concept="3cmrfG" id="2QFzCYK4M7A" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="2QFzCYK4M7B" role="1Dwp0S">
                            <node concept="37vLTw" id="2QFzCYK4M7C" role="3uHU7B">
                              <ref role="3cqZAo" node="2QFzCYK4M7z" resolve="i" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4Q98" role="3uHU7w">
                              <node concept="37vLTw" id="2QFzCYK4Q97" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QFzCYK4Lmr" resolve="diffTree" />
                              </node>
                              <node concept="liA8E" id="2QFzCYK4Q99" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JTree.getRowCount()" resolve="getRowCount" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uNrnE" id="2QFzCYK4M7F" role="1Dwrff">
                            <node concept="37vLTw" id="2QFzCYK4M7G" role="2$L3a6">
                              <ref role="3cqZAo" node="2QFzCYK4M7z" resolve="i" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2QFzCYK4M7I" role="2LFqv$">
                            <node concept="3cpWs8" id="2QFzCYK4M7K" role="3cqZAp">
                              <node concept="3cpWsn" id="2QFzCYK4M7J" role="3cpWs9">
                                <property role="TrG5h" value="path" />
                                <node concept="3uibUv" id="2QFzCYK4Sg$" role="1tU5fm">
                                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                                </node>
                                <node concept="2OqwBi" id="2QFzCYK4Qgn" role="33vP2m">
                                  <node concept="37vLTw" id="2QFzCYK4Qgm" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QFzCYK4Lmr" resolve="diffTree" />
                                  </node>
                                  <node concept="liA8E" id="2QFzCYK4Qgo" role="2OqNvi">
                                    <ref role="37wK5l" to="dxuu:~JTree.getPathForRow(int)" resolve="getPathForRow" />
                                    <node concept="37vLTw" id="2QFzCYK4Qgp" role="37wK5m">
                                      <ref role="3cqZAo" node="2QFzCYK4M7z" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2QFzCYK4M7O" role="3cqZAp">
                              <node concept="3fqX7Q" id="2QFzCYK4M7P" role="3clFbw">
                                <node concept="1eOMI4" id="2QFzCYK4M7T" role="3fr31v">
                                  <node concept="2ZW3vV" id="2QFzCYK4M7S" role="1eOMHV">
                                    <node concept="2OqwBi" id="2QFzCYK4QFY" role="2ZW6bz">
                                      <node concept="37vLTw" id="2QFzCYK4QFX" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2QFzCYK4M7J" resolve="path" />
                                      </node>
                                      <node concept="liA8E" id="2QFzCYK4QFZ" role="2OqNvi">
                                        <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="2QFzCYK4M7R" role="2ZW6by">
                                      <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="2QFzCYK4M7V" role="3clFbx">
                                <node concept="3N13vt" id="2QFzCYK4M7U" role="3cqZAp" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="2QFzCYK4M7W" role="3cqZAp">
                              <node concept="2OqwBi" id="2QFzCYK4Nab" role="3clFbG">
                                <node concept="37vLTw" id="2QFzCYK4Naa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK4Lmr" resolve="diffTree" />
                                </node>
                                <node concept="liA8E" id="2QFzCYK4Nac" role="2OqNvi">
                                  <ref role="37wK5l" to="dxuu:~JTree.setSelectionPath(javax.swing.tree.TreePath)" resolve="setSelectionPath" />
                                  <node concept="37vLTw" id="2QFzCYK4Nad" role="37wK5m">
                                    <ref role="3cqZAo" node="2QFzCYK4M7J" resolve="path" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2QFzCYK4M7Z" role="3cqZAp">
                              <node concept="1rXfSq" id="2QFzCYK4M80" role="3clFbG">
                                <ref role="37wK5l" node="2QFzCYK4SMF" resolve="layoutDiffView" />
                                <node concept="37vLTw" id="2QFzCYK4M81" role="37wK5m">
                                  <ref role="3cqZAo" node="2QFzCYK30$h" resolve="viewer" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2QFzCYK4M83" role="3cqZAp">
                              <node concept="3cpWsn" id="2QFzCYK4M82" role="3cpWs9">
                                <property role="TrG5h" value="img" />
                                <node concept="3uibUv" id="2QFzCYK4M84" role="1tU5fm">
                                  <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                                </node>
                                <node concept="1rXfSq" id="2QFzCYK4M85" role="33vP2m">
                                  <ref role="37wK5l" node="2QFzCYK566q" resolve="paintComponent" />
                                  <node concept="37vLTw" id="2QFzCYK4M86" role="37wK5m">
                                    <ref role="3cqZAo" node="2QFzCYK30$h" resolve="viewer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3J1_TO" id="2QFzCYK4M8x" role="3cqZAp">
                              <node concept="3uVAMA" id="2QFzCYK4M8y" role="1zxBo5">
                                <node concept="3clFbS" id="2QFzCYK4M8s" role="1zc67A">
                                  <node concept="RRSsy" id="2QFzCYK5xTz" role="3cqZAp">
                                    <property role="RRSoG" value="gZ5fh_4/error" />
                                    <node concept="Xl_RD" id="2QFzCYK5xT_" role="RRSoy" />
                                    <node concept="37vLTw" id="2QFzCYK5yz6" role="RRSow">
                                      <ref role="3cqZAo" node="2QFzCYK4M8o" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="XOnhg" id="2QFzCYK4M8o" role="1zc67B">
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="2QFzCYK4M8q" role="1tU5fm">
                                    <node concept="3uibUv" id="2QFzCYK4M8p" role="nSUat">
                                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="2QFzCYK4M88" role="1zxBo7">
                                <node concept="3cpWs8" id="1RZ$z1qg4ka" role="3cqZAp">
                                  <node concept="3cpWsn" id="1RZ$z1qg4kb" role="3cpWs9">
                                    <property role="TrG5h" value="outputFile" />
                                    <node concept="3uibUv" id="1RZ$z1qePaq" role="1tU5fm">
                                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                                    </node>
                                    <node concept="2ShNRf" id="1RZ$z1qg4kc" role="33vP2m">
                                      <node concept="1pGfFk" id="1RZ$z1qg4kd" role="2ShVmc">
                                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                                        <node concept="37vLTw" id="27MnIr9Xxa9" role="37wK5m">
                                          <ref role="3cqZAo" node="27MnIr9XsaK" resolve="outputDir" />
                                        </node>
                                        <node concept="3cpWs3" id="1RZ$z1qg4ke" role="37wK5m">
                                          <node concept="3cpWs3" id="1RZ$z1qg4kf" role="3uHU7B">
                                            <node concept="3cpWs3" id="1RZ$z1qg4kg" role="3uHU7B">
                                              <node concept="2OqwBi" id="1RZ$z1qg4kh" role="3uHU7B">
                                                <node concept="1rXfSq" id="1RZ$z1qg4ki" role="2Oq$k0">
                                                  <ref role="37wK5l" node="2QFzCYK41LB" resolve="getAffectedFile" />
                                                  <node concept="37vLTw" id="1RZ$z1qg4kj" role="37wK5m">
                                                    <ref role="3cqZAo" node="2QFzCYK30$y" resolve="change" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="1RZ$z1qg4kk" role="2OqNvi">
                                                  <ref role="37wK5l" to="jlcu:~FilePath.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="1RZ$z1qg4kl" role="3uHU7w">
                                                <property role="Xl_RC" value="_" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="1RZ$z1qg4km" role="3uHU7w">
                                              <ref role="3cqZAo" node="2QFzCYK4M7z" resolve="i" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="1RZ$z1qg4kn" role="3uHU7w">
                                            <property role="Xl_RC" value="_diff.png" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="RRSsy" id="1RZ$z1qg9UW" role="3cqZAp">
                                  <property role="RRSoG" value="h1akgim/info" />
                                  <node concept="3cpWs3" id="1RZ$z1qgay0" role="RRSoy">
                                    <node concept="2OqwBi" id="27MnIr9WAGc" role="3uHU7w">
                                      <node concept="37vLTw" id="1RZ$z1qgaLo" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1RZ$z1qg4kb" resolve="outputFile" />
                                      </node>
                                      <node concept="liA8E" id="27MnIr9WBLI" role="2OqNvi">
                                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="1RZ$z1qg9UY" role="3uHU7B">
                                      <property role="Xl_RC" value="Diff image: " />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2QFzCYK4M89" role="3cqZAp">
                                  <node concept="2YIFZM" id="2QFzCYK5umV" role="3clFbG">
                                    <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                                    <ref role="37wK5l" to="oqcp:~ImageIO.write(java.awt.image.RenderedImage,java.lang.String,java.io.File)" resolve="write" />
                                    <node concept="37vLTw" id="2QFzCYK5umW" role="37wK5m">
                                      <ref role="3cqZAo" node="2QFzCYK4M82" resolve="img" />
                                    </node>
                                    <node concept="Xl_RD" id="2QFzCYK5umX" role="37wK5m">
                                      <property role="Xl_RC" value="png" />
                                    </node>
                                    <node concept="37vLTw" id="1RZ$z1qg4ko" role="37wK5m">
                                      <ref role="3cqZAo" node="1RZ$z1qg4kb" resolve="outputFile" />
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
      <node concept="3uibUv" id="4kPMkltJM4e" role="Sfmx6">
        <ref role="3uigEE" to="iz75:~DiffRequestProducerException" resolve="DiffRequestProducerException" />
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
        <node concept="3uibUv" id="2QFzCYK566s" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
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
                  <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                </node>
              </node>
              <node concept="2OqwBi" id="2QFzCYK5mfW" role="37wK5m">
                <node concept="37vLTw" id="2QFzCYK5mfX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK566r" resolve="component" />
                </node>
                <node concept="liA8E" id="2QFzCYK5mfY" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
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
              <ref role="37wK5l" to="dxuu:~JComponent.paint(java.awt.Graphics)" resolve="paint" />
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
        <node concept="3uibUv" id="2QFzCYK4SMH" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK4SMI" role="3clF47">
        <node concept="3clFbF" id="2QFzCYK4SMJ" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4YOq" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4YOp" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
            </node>
            <node concept="liA8E" id="2QFzCYK4YOr" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
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
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
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
                    <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
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
                    <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
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
                                  <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
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
                                  <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
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
                                <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
                                <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
                            <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK54IZ" role="3uHU7w">
                          <node concept="37vLTw" id="2QFzCYK54IY" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SPX" resolve="additionalRequiredSize" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK54J0" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2QFzCYK52ng" role="37wK5m">
                        <node concept="2OqwBi" id="2QFzCYK54Hd" role="3uHU7B">
                          <node concept="37vLTw" id="2QFzCYK54Hc" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SQ2" resolve="size" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK54He" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK52ni" role="3uHU7w">
                          <node concept="37vLTw" id="2QFzCYK52nj" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SPX" resolve="additionalRequiredSize" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK52nk" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
                                  <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK7C$L" role="3uHU7w">
                                <node concept="37vLTw" id="2QFzCYK7C$M" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyu" resolve="size" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7C$N" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
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
                                  <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK7yUv" role="3uHU7w">
                                <node concept="37vLTw" id="2QFzCYK7yUw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyu" resolve="size" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7yUx" role="2OqNvi">
                                  <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
                              <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2QFzCYK8gKe" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK8fEO" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GS$" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8is5" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
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
                              <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2QFzCYK8ruJ" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK8qp7" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GS$" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8t_T" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
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
    <node concept="3Tm1VV" id="2QFzCYK30u3" role="1B3o_S" />
  </node>
</model>

