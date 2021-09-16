<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:129cc740-fb59-4b7a-adef-c057dba87982(org.modelix.ui.server.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="m2xw" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server(org.modelix.jetty/)" />
    <import index="cgcg" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server.handler(org.modelix.jetty/)" />
    <import index="nwfd" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet.http(org.modelix.jetty/)" />
    <import index="opgt" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet(org.modelix.jetty/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="2qs1" ref="r:f8990486-c591-4463-8538-99bfa890834b(org.modelix.ui.sm.server.plugin)" />
    <import index="ky10" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.servlet(org.modelix.jetty/)" />
    <import index="67a5" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.websocket.servlet(org.modelix.jetty/)" />
    <import index="o8cn" ref="r:7f6154b4-93e5-4a51-94de-d145e58184e7(org.modelix.ui.svg.plugin)" />
    <import index="xip3" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.rewrite.handler(org.modelix.jetty/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="aero" ref="r:7a4d7ed2-9d22-4615-b536-63269a84b9a5(org.modelix.ui.sm.server.web)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="pxvb" ref="r:ca10a440-fbee-42f3-927f-469fb3169c9b(de.q60.mps.shadowmodels.runtime.util)" />
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(org.modelix.ui.sm.transformations)" />
    <import index="gq2t" ref="r:f17c1662-bb91-47a6-b206-16c06f86f401(org.modelix.ui.sm.pf)" />
    <import index="lvkz" ref="r:ab9ceea2-f32a-4ea6-be78-3e6c2d4ef84b(org.modelix.ui.diff)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="fz1u" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.websocket.api(org.modelix.jetty/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="ke8c" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server.session(org.modelix.jetty/)" />
    <import index="5695" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.http(org.modelix.jetty/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)" />
    <import index="6sky" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.util.component(org.modelix.jetty/)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
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
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
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
    <language id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions">
      <concept id="3814377006350445070" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionCall" flags="ng" index="2M0cAz">
        <reference id="3814377006350445193" name="decl" index="2M0c$$" />
      </concept>
      <concept id="1785934427385011249" name="de.q60.mps.polymorphicfunctions.structure.WithPFContext" flags="ng" index="1oD7nn">
        <child id="1785934427385011253" name="body" index="1oD7nj" />
        <child id="1785934427385100997" name="context" index="1oDhcz" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
    </language>
  </registry>
  <node concept="2DaZZR" id="6xm2RBl6fwx" />
  <node concept="2uRRBC" id="3XUQDwFP15H">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="3XUQDwFPfzX" role="2uRRBG">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="3XUQDwFPfzY" role="1B3o_S" />
      <node concept="3uibUv" id="1MbrkMIwDV5" role="1tU5fm">
        <ref role="3uigEE" node="1MbrkMIwDCd" resolve="UiServer" />
      </node>
      <node concept="2ShNRf" id="1MbrkMIwIdf" role="33vP2m">
        <node concept="1pGfFk" id="1MbrkMIwIde" role="2ShVmc">
          <ref role="37wK5l" node="1MbrkMIwHXt" resolve="UiServer" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="7aolmNHmaXv" role="2uRRBG">
      <property role="TrG5h" value="detector" />
      <node concept="3Tm6S6" id="7aolmNHmaXw" role="1B3o_S" />
      <node concept="3uibUv" id="7aolmNHmb5j" role="1tU5fm">
        <ref role="3uigEE" to="qsto:7aolmNHljqV" resolve="LongRunningCommandDetector" />
      </node>
    </node>
    <node concept="2uRRBj" id="3XUQDwFP3rH" role="2uRRBE">
      <node concept="3clFbS" id="3XUQDwFP3rI" role="2VODD2">
        <node concept="3clFbF" id="1MbrkMIwG99" role="3cqZAp">
          <node concept="2OqwBi" id="1MbrkMIwGuN" role="3clFbG">
            <node concept="2OqwBi" id="1MbrkMIwG93" role="2Oq$k0">
              <node concept="2WthIp" id="1MbrkMIwG96" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1MbrkMIwG98" role="2OqNvi">
                <ref role="2WH_rO" node="3XUQDwFPfzX" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="1MbrkMIwGRi" role="2OqNvi">
              <ref role="37wK5l" node="1MbrkMIwE7V" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="UeTFz0D40U" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7aolmNHmbdC" role="8Wnug">
            <node concept="37vLTI" id="7aolmNHmbu8" role="3clFbG">
              <node concept="2ShNRf" id="7aolmNHmbxb" role="37vLTx">
                <node concept="1pGfFk" id="7aolmNHmbxa" role="2ShVmc">
                  <ref role="37wK5l" to="qsto:7aolmNHlusz" resolve="LongRunningCommandDetector" />
                </node>
              </node>
              <node concept="2OqwBi" id="7aolmNHmbdy" role="37vLTJ">
                <node concept="2WthIp" id="7aolmNHmbd_" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7aolmNHmbdB" role="2OqNvi">
                  <ref role="2WH_rO" node="7aolmNHmaXv" resolve="detector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1MbrkMIwboA" role="2uRRBF">
      <node concept="3clFbS" id="1MbrkMIwboB" role="2VODD2">
        <node concept="3clFbF" id="1MbrkMIwGVy" role="3cqZAp">
          <node concept="2OqwBi" id="1MbrkMIwH9j" role="3clFbG">
            <node concept="2OqwBi" id="1MbrkMIwGVs" role="2Oq$k0">
              <node concept="2WthIp" id="1MbrkMIwGVv" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1MbrkMIwGVx" role="2OqNvi">
                <ref role="2WH_rO" node="3XUQDwFPfzX" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="1MbrkMIwHyp" role="2OqNvi">
              <ref role="37wK5l" node="1MbrkMIwEcK" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="UeTFz0D43i" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7aolmNHmbD7" role="8Wnug">
            <node concept="2OqwBi" id="7aolmNHmbTA" role="3clFbG">
              <node concept="2OqwBi" id="7aolmNHmbD1" role="2Oq$k0">
                <node concept="2WthIp" id="7aolmNHmbD4" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7aolmNHmbD6" role="2OqNvi">
                  <ref role="2WH_rO" node="7aolmNHmaXv" resolve="detector" />
                </node>
              </node>
              <node concept="liA8E" id="7aolmNHmceZ" role="2OqNvi">
                <ref role="37wK5l" to="qsto:7aolmNHm6AX" resolve="dispose" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1MbrkMIwDCd">
    <property role="TrG5h" value="UiServer" />
    <node concept="312cEg" id="1MbrkMIwDHG" role="jymVt">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="1MbrkMIwDHH" role="1B3o_S" />
      <node concept="3uibUv" id="1MbrkMIwDLf" role="1tU5fm">
        <ref role="3uigEE" to="m2xw:~Server" resolve="Server" />
      </node>
    </node>
    <node concept="312cEg" id="6kiVUEM2JhW" role="jymVt">
      <property role="TrG5h" value="disposing" />
      <node concept="3Tm6S6" id="6kiVUEM2JhX" role="1B3o_S" />
      <node concept="10P_77" id="6kiVUEM2KEV" role="1tU5fm" />
      <node concept="3clFbT" id="6kiVUEM2KON" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6kiVUEM2M8R" role="jymVt">
      <property role="TrG5h" value="disposed" />
      <node concept="3Tm6S6" id="6kiVUEM2M8S" role="1B3o_S" />
      <node concept="10P_77" id="6kiVUEM2Nxg" role="1tU5fm" />
      <node concept="3clFbT" id="6kiVUEM2NF8" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="6kiVUEM2NH3" role="jymVt" />
    <node concept="312cEg" id="1z8Uup0sfFB" role="jymVt">
      <property role="TrG5h" value="pfImplementationsProvider" />
      <node concept="3Tm6S6" id="1z8Uup0sfFC" role="1B3o_S" />
      <node concept="3uibUv" id="1z8Uup0sajF" role="1tU5fm">
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
                      <node concept="Xl_RD" id="7p9$dhpFYqV" role="HW$Y0">
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
    <node concept="2tJIrI" id="1MbrkMIwE4g" role="jymVt" />
    <node concept="3clFbW" id="1MbrkMIwHXt" role="jymVt">
      <node concept="3cqZAl" id="1MbrkMIwHXv" role="3clF45" />
      <node concept="3Tm1VV" id="1MbrkMIwHXw" role="1B3o_S" />
      <node concept="3clFbS" id="1MbrkMIwHXx" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1MbrkMIwHCS" role="jymVt" />
    <node concept="3clFb_" id="1MbrkMIwE7V" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3cqZAl" id="1MbrkMIwE7X" role="3clF45" />
      <node concept="3Tm1VV" id="1MbrkMIwE7Y" role="1B3o_S" />
      <node concept="3clFbS" id="1MbrkMIwE7Z" role="3clF47">
        <node concept="RRSsy" id="2wu1c06OD$3" role="3cqZAp">
          <node concept="Xl_RD" id="2wu1c06OE4k" role="RRSoy">
            <property role="Xl_RC" value="Starting UI http server" />
          </node>
        </node>
        <node concept="3clFbF" id="1MbrkMIwEdC" role="3cqZAp">
          <node concept="37vLTI" id="1MbrkMIwEdD" role="3clFbG">
            <node concept="2ShNRf" id="1MbrkMIwEdE" role="37vLTx">
              <node concept="1pGfFk" id="1MbrkMIwEdF" role="2ShVmc">
                <ref role="37wK5l" to="m2xw:~Server.&lt;init&gt;(int)" resolve="Server" />
                <node concept="3cmrfG" id="1MbrkMIwEdG" role="37wK5m">
                  <property role="3cmrfH" value="33333" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1MbrkMIwEF5" role="37vLTJ">
              <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1MbrkMIwEdK" role="3cqZAp">
          <node concept="3clFbS" id="1MbrkMIwEdL" role="1zxBo7">
            <node concept="3cpWs8" id="eACOy0j7iK" role="3cqZAp">
              <node concept="3cpWsn" id="eACOy0j7iL" role="3cpWs9">
                <property role="TrG5h" value="sessionHandler" />
                <node concept="3uibUv" id="eACOy0j7bA" role="1tU5fm">
                  <ref role="3uigEE" to="ke8c:~SessionHandler" resolve="SessionHandler" />
                </node>
                <node concept="2ShNRf" id="eACOy0j7iM" role="33vP2m">
                  <node concept="1pGfFk" id="eACOy0j7iN" role="2ShVmc">
                    <ref role="37wK5l" to="ke8c:~SessionHandler.&lt;init&gt;()" resolve="SessionHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="eACOy0jfHO" role="3cqZAp">
              <node concept="2OqwBi" id="eACOy0jjNM" role="3clFbG">
                <node concept="2OqwBi" id="eACOy0jhj2" role="2Oq$k0">
                  <node concept="37vLTw" id="eACOy0jfHM" role="2Oq$k0">
                    <ref role="3cqZAo" node="eACOy0j7iL" resolve="sessionHandler" />
                  </node>
                  <node concept="liA8E" id="eACOy0jjAs" role="2OqNvi">
                    <ref role="37wK5l" to="ke8c:~SessionHandler.getSessionCookieConfig()" resolve="getSessionCookieConfig" />
                  </node>
                </node>
                <node concept="liA8E" id="eACOy0jk3G" role="2OqNvi">
                  <ref role="37wK5l" to="opgt:~SessionCookieConfig.setName(java.lang.String)" resolve="setName" />
                  <node concept="10M0yZ" id="eACOy0jl6w" role="37wK5m">
                    <ref role="1PxDUh" to="o8cn:6xm2RBlaf2L" resolve="RenderServer" />
                    <ref role="3cqZAo" to="o8cn:eACOy0i3$m" resolve="SESSION_COOKIE_NAME" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1MbrkMIxh3K" role="3cqZAp" />
            <node concept="3cpWs8" id="1MbrkMIxeOY" role="3cqZAp">
              <node concept="3cpWsn" id="1MbrkMIxeOZ" role="3cpWs9">
                <property role="TrG5h" value="handlerList" />
                <node concept="3uibUv" id="1MbrkMIxeP0" role="1tU5fm">
                  <ref role="3uigEE" to="cgcg:~HandlerList" resolve="HandlerList" />
                </node>
                <node concept="2ShNRf" id="1MbrkMIxf7T" role="33vP2m">
                  <node concept="1pGfFk" id="1MbrkMIxf7x" role="2ShVmc">
                    <ref role="37wK5l" to="cgcg:~HandlerList.&lt;init&gt;(org.eclipse.jetty.server.Handler...)" resolve="HandlerList" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbVJ7i" role="3cqZAp" />
            <node concept="3clFbF" id="1MbrkMIxVhy" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIxVhz" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIxVh$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="1MbrkMIxVh_" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="1MbrkMIzmEY" role="37wK5m">
                    <node concept="HV5vD" id="1MbrkMIzmEZ" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1MbrkMIxWf7" resolve="RepositoryAsHtmlHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MbrkMI$fLz" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMI$fL$" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMI$fL_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="1MbrkMI$fLA" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="1MbrkMI$fLB" role="37wK5m">
                    <node concept="HV5vD" id="1MbrkMI$fLC" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1MbrkMIz_te" resolve="ModuleAsHtmlHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mc9A5lkYnq" role="3cqZAp">
              <node concept="2OqwBi" id="7mc9A5lkYnr" role="3clFbG">
                <node concept="37vLTw" id="7mc9A5lkYns" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="7mc9A5lkYnt" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="7mc9A5lkYnu" role="37wK5m">
                    <node concept="HV5vD" id="7mc9A5lkYnv" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1MbrkMI$ui$" resolve="ModelAsHtmlHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mc9A5llf1C" role="3cqZAp">
              <node concept="2OqwBi" id="7mc9A5llf1D" role="3clFbG">
                <node concept="37vLTw" id="7mc9A5llf1E" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="7mc9A5llf1F" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="7mc9A5llf1G" role="37wK5m">
                    <node concept="HV5vD" id="7mc9A5llf1H" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:7mc9A5ll4q_" resolve="NodeAsHtmlHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="72Dzx1UzgMv" role="3cqZAp">
              <node concept="2OqwBi" id="72Dzx1UzgMw" role="3clFbG">
                <node concept="37vLTw" id="72Dzx1UzgMx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="72Dzx1UzgMy" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="72Dzx1UzgMz" role="37wK5m">
                    <node concept="HV5vD" id="72Dzx1UzgM$" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:72Dzx1UmG1v" resolve="UiStatePageHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3UHa_GJqPM4" role="3cqZAp">
              <node concept="2OqwBi" id="3UHa_GJqPM5" role="3clFbG">
                <node concept="37vLTw" id="3UHa_GJqPM6" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="3UHa_GJqPM7" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="3UHa_GJqPM8" role="37wK5m">
                    <node concept="HV5vD" id="3UHa_GJqPM9" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1FDPOOi0dHr" resolve="GetModulesHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3UHa_GJqTRC" role="3cqZAp">
              <node concept="2OqwBi" id="3UHa_GJqWub" role="3clFbG">
                <node concept="37vLTw" id="3UHa_GJqTRA" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="3UHa_GJqXov" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="3UHa_GJqXFm" role="37wK5m">
                    <node concept="HV5vD" id="3UHa_GJqYUO" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1LsbP9YQSvU" resolve="GetModelsHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3UHa_GJr18W" role="3cqZAp">
              <node concept="2OqwBi" id="3UHa_GJr3Du" role="3clFbG">
                <node concept="37vLTw" id="3UHa_GJr18U" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="3UHa_GJr4YS" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="3UHa_GJr5Hu" role="37wK5m">
                    <node concept="HV5vD" id="3UHa_GJr6Wo" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:pjciofyjUa" resolve="GetConceptsHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3UHa_GJtfJb" role="3cqZAp">
              <node concept="2OqwBi" id="3UHa_GJtfJc" role="3clFbG">
                <node concept="37vLTw" id="3UHa_GJtfJd" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="3UHa_GJtfJe" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="3UHa_GJtfJf" role="37wK5m">
                    <node concept="HV5vD" id="3UHa_GJtfJg" role="2ShVmc">
                      <ref role="HV5vE" to="2qs1:1LsbP9ZguOu" resolve="InsertNodeHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2i1MHcnspYA" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnspYB" role="3clFbG">
                <node concept="37vLTw" id="2i1MHcnspYC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="2i1MHcnspYD" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2YIFZM" id="5GP2kxII4vp" role="37wK5m">
                    <ref role="1Pybhc" node="1MbrkMIwDCd" resolve="UiServer" />
                    <ref role="37wK5l" node="1MbrkMIxNMj" resolve="withContext" />
                    <node concept="Xl_RD" id="5GP2kxII4vq" role="37wK5m">
                      <property role="Xl_RC" value="/icons" />
                    </node>
                    <node concept="2ShNRf" id="5GP2kxII4vr" role="37wK5m">
                      <node concept="1pGfFk" id="1z8Uup0qdhk" role="2ShVmc">
                        <ref role="37wK5l" to="qsto:5GP2kxJhTbo" resolve="IconHandler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z8Uup0qVZm" role="3cqZAp" />
            <node concept="3cpWs8" id="1z8Uup0s_AL" role="3cqZAp">
              <node concept="3cpWsn" id="1z8Uup0s_AM" role="3cpWs9">
                <property role="TrG5h" value="extensions" />
                <node concept="3uibUv" id="1z8Uup0s_AN" role="1tU5fm">
                  <ref role="3uigEE" to="cgcg:~HandlerList" resolve="HandlerList" />
                </node>
                <node concept="2ShNRf" id="1z8Uup0sBdV" role="33vP2m">
                  <node concept="YeOm9" id="1z8Uup0sHXT" role="2ShVmc">
                    <node concept="1Y3b0j" id="1z8Uup0sHXW" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="cgcg:~HandlerList.&lt;init&gt;()" resolve="HandlerList" />
                      <ref role="1Y3XeK" to="cgcg:~HandlerList" resolve="HandlerList" />
                      <node concept="3Tm1VV" id="1z8Uup0sHXX" role="1B3o_S" />
                      <node concept="3clFb_" id="1z8Uup0sIc_" role="jymVt">
                        <property role="TrG5h" value="getHandlers" />
                        <node concept="3Tm1VV" id="1z8Uup0sIcA" role="1B3o_S" />
                        <node concept="10Q1$e" id="1z8Uup0sIcH" role="3clF45">
                          <node concept="3uibUv" id="1z8Uup0sIcI" role="10Q1$1">
                            <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1z8Uup0sIcL" role="3clF47">
                          <node concept="3cpWs8" id="1z8Uup0sNG6" role="3cqZAp">
                            <node concept="3cpWsn" id="1z8Uup0sNG9" role="3cpWs9">
                              <property role="TrG5h" value="result" />
                              <node concept="_YKpA" id="1z8Uup0sNG2" role="1tU5fm">
                                <node concept="3uibUv" id="1z8Uup0sO2s" role="_ZDj9">
                                  <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="1z8Uup0sPyE" role="33vP2m">
                                <node concept="Tc6Ow" id="1z8Uup0sPa9" role="2ShVmc">
                                  <node concept="3uibUv" id="1z8Uup0sPaa" role="HW$YZ">
                                    <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="6kiVUEM33Pz" role="3cqZAp">
                            <node concept="1PaTwC" id="6kiVUEM33P$" role="1aUNEU">
                              <node concept="3oM_SD" id="6kiVUEM33P_" role="1PaTwD">
                                <property role="3oM_SC" value="!disposing" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM34I2" role="1PaTwD">
                                <property role="3oM_SC" value="check" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM34P1" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM352U" role="1PaTwD">
                                <property role="3oM_SC" value="a" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM34B4" role="1PaTwD">
                                <property role="3oM_SC" value="workaround" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM33Xk" role="1PaTwD">
                                <property role="3oM_SC" value="for" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM359V" role="1PaTwD">
                                <property role="3oM_SC" value="a" />
                              </node>
                              <node concept="3oM_SD" id="6kiVUEM33Xn" role="1PaTwD">
                                <property role="3oM_SC" value="deadlock" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6kiVUEM2ZEF" role="3cqZAp">
                            <node concept="3clFbS" id="6kiVUEM2ZEH" role="3clFbx">
                              <node concept="1QHqEK" id="5pmgLfhSEEw" role="3cqZAp">
                                <node concept="1QHqEC" id="5pmgLfhSEEy" role="1QHqEI">
                                  <node concept="3clFbS" id="5pmgLfhSEE$" role="1bW5cS">
                                    <node concept="1oD7nn" id="1z8Uup0rPdp" role="3cqZAp">
                                      <node concept="2ShNRf" id="1z8Uup0rQXV" role="1oDhcz">
                                        <node concept="1pGfFk" id="1z8Uup0rTth" role="2ShVmc">
                                          <ref role="37wK5l" to="od2j:41QOk3IHOCK" resolve="DefaultPFContext" />
                                          <node concept="37vLTw" id="1z8Uup0siJ6" role="37wK5m">
                                            <ref role="3cqZAo" node="1z8Uup0sfFB" resolve="pfImplementationsProvider" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="1z8Uup0rPdt" role="1oD7nj">
                                        <node concept="3clFbF" id="1z8Uup0sVQp" role="3cqZAp">
                                          <node concept="2OqwBi" id="1z8Uup0sWSB" role="3clFbG">
                                            <node concept="37vLTw" id="1z8Uup0sVQn" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1z8Uup0sNG9" resolve="result" />
                                            </node>
                                            <node concept="X8dFx" id="1z8Uup0sYDH" role="2OqNvi">
                                              <node concept="2M0cAz" id="1z8Uup0sZ9Y" role="25WWJ7">
                                                <ref role="2M0c$$" to="gq2t:1z8Uup0q61$" resolve="getHandlers" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="5pmgLfhSFNF" role="ukAjM">
                                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="6kiVUEM32n6" role="3clFbw">
                              <node concept="37vLTw" id="6kiVUEM32n8" role="3fr31v">
                                <ref role="3cqZAo" node="6kiVUEM2JhW" resolve="disposing" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1z8Uup0sQN9" role="3cqZAp">
                            <node concept="2OqwBi" id="1z8Uup0sSTe" role="3cqZAk">
                              <node concept="37vLTw" id="1z8Uup0sRmL" role="2Oq$k0">
                                <ref role="3cqZAo" node="1z8Uup0sNG9" resolve="result" />
                              </node>
                              <node concept="3_kTaI" id="1z8Uup0sUXb" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="1z8Uup0sIcM" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z8Uup0sCSm" role="3cqZAp">
              <node concept="2OqwBi" id="1z8Uup0sEOA" role="3clFbG">
                <node concept="37vLTw" id="1z8Uup0sCSk" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="1z8Uup0sGoQ" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="37vLTw" id="1z8Uup0sGDN" role="37wK5m">
                    <ref role="3cqZAo" node="1z8Uup0s_AM" resolve="extensions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbLKO5" role="3cqZAp" />
            <node concept="3SKdUt" id="5Sw$pxbLWcG" role="3cqZAp">
              <node concept="1PaTwC" id="xL$$tDozsA" role="1aUNEU">
                <node concept="3oM_SD" id="xL$$tDozsB" role="1PaTwD">
                  <property role="3oM_SC" value="During" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsC" role="1PaTwD">
                  <property role="3oM_SC" value="development" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsD" role="1PaTwD">
                  <property role="3oM_SC" value="serve" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsE" role="1PaTwD">
                  <property role="3oM_SC" value="files" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsF" role="1PaTwD">
                  <property role="3oM_SC" value="directly" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsG" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsH" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsI" role="1PaTwD">
                  <property role="3oM_SC" value="client" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsJ" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Sw$pxbLODp" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbLODq" role="3cpWs9">
                <property role="TrG5h" value="distFolderPath" />
                <node concept="17QB3L" id="5Sw$pxbLODo" role="1tU5fm" />
                <node concept="1rXfSq" id="5Sw$pxbLODr" role="33vP2m">
                  <ref role="37wK5l" node="5Sw$pxbLC9U" resolve="getDistFolderPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5Sw$pxbLRy$" role="3cqZAp">
              <node concept="3clFbS" id="5Sw$pxbLRyA" role="3clFbx">
                <node concept="3cpWs8" id="5Sw$pxbLTgq" role="3cqZAp">
                  <node concept="3cpWsn" id="5Sw$pxbLTgr" role="3cpWs9">
                    <property role="TrG5h" value="distFilesHandler" />
                    <node concept="3uibUv" id="5Sw$pxbLTgs" role="1tU5fm">
                      <ref role="3uigEE" to="cgcg:~ResourceHandler" resolve="ResourceHandler" />
                    </node>
                    <node concept="2ShNRf" id="5Sw$pxbLTgt" role="33vP2m">
                      <node concept="1pGfFk" id="5Sw$pxbLTgu" role="2ShVmc">
                        <ref role="37wK5l" to="cgcg:~ResourceHandler.&lt;init&gt;()" resolve="ResourceHandler" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Sw$pxbLTgv" role="3cqZAp">
                  <node concept="2OqwBi" id="5Sw$pxbLTgw" role="3clFbG">
                    <node concept="37vLTw" id="5Sw$pxbLTgx" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Sw$pxbLTgr" resolve="distFilesHandler" />
                    </node>
                    <node concept="liA8E" id="5Sw$pxbLTgy" role="2OqNvi">
                      <ref role="37wK5l" to="cgcg:~ResourceHandler.setResourceBase(java.lang.String)" resolve="setResourceBase" />
                      <node concept="37vLTw" id="5Sw$pxbLV29" role="37wK5m">
                        <ref role="3cqZAo" node="5Sw$pxbLODq" resolve="distFolderPath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Sw$pxbLTgF" role="3cqZAp">
                  <node concept="2OqwBi" id="5Sw$pxbLTgG" role="3clFbG">
                    <node concept="37vLTw" id="5Sw$pxbLTgH" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Sw$pxbLTgr" resolve="distFilesHandler" />
                    </node>
                    <node concept="liA8E" id="5Sw$pxbLTgI" role="2OqNvi">
                      <ref role="37wK5l" to="cgcg:~ResourceHandler.setWelcomeFiles(java.lang.String[])" resolve="setWelcomeFiles" />
                      <node concept="2ShNRf" id="5Sw$pxbLTgJ" role="37wK5m">
                        <node concept="3g6Rrh" id="5Sw$pxbLTgK" role="2ShVmc">
                          <node concept="17QB3L" id="5Sw$pxbLTgL" role="3g7fb8" />
                          <node concept="Xl_RD" id="5Sw$pxbLTgM" role="3g7hyw">
                            <property role="Xl_RC" value="index.html" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Sw$pxbLT2U" role="3cqZAp">
                  <node concept="2OqwBi" id="5Sw$pxbLT2V" role="3clFbG">
                    <node concept="37vLTw" id="5Sw$pxbLT2W" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                    </node>
                    <node concept="liA8E" id="5Sw$pxbLT2X" role="2OqNvi">
                      <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                      <node concept="37vLTw" id="5Sw$pxbLUk9" role="37wK5m">
                        <ref role="3cqZAo" node="5Sw$pxbLTgr" resolve="distFilesHandler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5Sw$pxbLSUD" role="3clFbw">
                <node concept="10Nm6u" id="5Sw$pxbLSYD" role="3uHU7w" />
                <node concept="37vLTw" id="5Sw$pxbLSxr" role="3uHU7B">
                  <ref role="3cqZAo" node="5Sw$pxbLODq" resolve="distFolderPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbLL_n" role="3cqZAp" />
            <node concept="3SKdUt" id="5Sw$pxbVI1c" role="3cqZAp">
              <node concept="1PaTwC" id="xL$$tDozsK" role="1aUNEU">
                <node concept="3oM_SD" id="xL$$tDozsL" role="1PaTwD">
                  <property role="3oM_SC" value="When" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsM" role="1PaTwD">
                  <property role="3oM_SC" value="deployed" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsN" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsO" role="1PaTwD">
                  <property role="3oM_SC" value="packaged" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsP" role="1PaTwD">
                  <property role="3oM_SC" value="files" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsQ" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsR" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsS" role="1PaTwD">
                  <property role="3oM_SC" value="jar" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1MbrkMIwEdS" role="3cqZAp">
              <node concept="3cpWsn" id="1MbrkMIwEdT" role="3cpWs9">
                <property role="TrG5h" value="staticFilesHandler" />
                <node concept="3uibUv" id="1MbrkMIwEdU" role="1tU5fm">
                  <ref role="3uigEE" to="cgcg:~ResourceHandler" resolve="ResourceHandler" />
                </node>
                <node concept="2ShNRf" id="1MbrkMIwEdV" role="33vP2m">
                  <node concept="1pGfFk" id="1MbrkMIwEdW" role="2ShVmc">
                    <ref role="37wK5l" to="cgcg:~ResourceHandler.&lt;init&gt;()" resolve="ResourceHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MbrkMIwEdX" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIwEdY" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIwEdZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIwEdT" resolve="staticFilesHandler" />
                </node>
                <node concept="liA8E" id="1MbrkMIwEe0" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~ResourceHandler.setResourceBase(java.lang.String)" resolve="setResourceBase" />
                  <node concept="2OqwBi" id="1MbrkMIwPHs" role="37wK5m">
                    <node concept="2OqwBi" id="1MbrkMIwLum" role="2Oq$k0">
                      <node concept="2OqwBi" id="1MbrkMIwJxo" role="2Oq$k0">
                        <node concept="1rXfSq" id="1MbrkMIwIJy" role="2Oq$k0">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                        <node concept="liA8E" id="1MbrkMIwLkb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1MbrkMIwOqT" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~ClassLoader.getResource(java.lang.String)" resolve="getResource" />
                        <node concept="Xl_RD" id="1MbrkMIwPtr" role="37wK5m">
                          <property role="Xl_RC" value="org/modelix/ui/client/static/" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1MbrkMIwT54" role="2OqNvi">
                      <ref role="37wK5l" to="zf81:~URL.toExternalForm()" resolve="toExternalForm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MbrkMIwYIH" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIwZ$F" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIwYIF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIwEdT" resolve="staticFilesHandler" />
                </node>
                <node concept="liA8E" id="1MbrkMIx0t_" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~ResourceHandler.setWelcomeFiles(java.lang.String[])" resolve="setWelcomeFiles" />
                  <node concept="2ShNRf" id="1MbrkMIx0vH" role="37wK5m">
                    <node concept="3g6Rrh" id="1MbrkMIx11K" role="2ShVmc">
                      <node concept="17QB3L" id="1MbrkMIx0Rd" role="3g7fb8" />
                      <node concept="Xl_RD" id="1MbrkMIx14g" role="3g7hyw">
                        <property role="Xl_RC" value="index.html" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MbrkMIxR1d" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIxRUp" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIxR1b" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="1MbrkMIxSID" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="37vLTw" id="7mc9A5lkvfL" role="37wK5m">
                    <ref role="3cqZAo" node="1MbrkMIwEdT" resolve="staticFilesHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbPxSs" role="3cqZAp" />
            <node concept="3cpWs8" id="7mc9A5lp8RN" role="3cqZAp">
              <node concept="3cpWsn" id="7mc9A5lp8RO" role="3cpWs9">
                <property role="TrG5h" value="wsHandler" />
                <node concept="3uibUv" id="7mc9A5lp8RP" role="1tU5fm">
                  <ref role="3uigEE" to="ky10:~ServletContextHandler" resolve="ServletContextHandler" />
                </node>
                <node concept="2ShNRf" id="7mc9A5lp9Cw" role="33vP2m">
                  <node concept="1pGfFk" id="7mc9A5lp9BQ" role="2ShVmc">
                    <ref role="37wK5l" to="ky10:~ServletContextHandler.&lt;init&gt;(int)" resolve="ServletContextHandler" />
                    <node concept="10M0yZ" id="7mc9A5lp9HA" role="37wK5m">
                      <ref role="3cqZAo" to="ky10:~ServletContextHandler.SESSIONS" resolve="SESSIONS" />
                      <ref role="1PxDUh" to="ky10:~ServletContextHandler" resolve="ServletContextHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mc9A5lpls0" role="3cqZAp">
              <node concept="2OqwBi" id="7mc9A5lpmJJ" role="3clFbG">
                <node concept="37vLTw" id="7mc9A5lplrY" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mc9A5lp8RO" resolve="wsHandler" />
                </node>
                <node concept="liA8E" id="7mc9A5lpq2p" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="7mc9A5lpqce" role="37wK5m">
                    <ref role="3VsUkX" to="qsto:7mc9A5lp4Hq" resolve="SmUiServlet" />
                  </node>
                  <node concept="Xl_RD" id="7mc9A5lpqGW" role="37wK5m">
                    <property role="Xl_RC" value="/smui" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3pn$gDK_iSf" role="3cqZAp">
              <node concept="2OqwBi" id="3pn$gDK_iSg" role="3clFbG">
                <node concept="37vLTw" id="3pn$gDK_iSh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mc9A5lp8RO" resolve="wsHandler" />
                </node>
                <node concept="liA8E" id="3pn$gDK_iSi" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="3pn$gDK_iSj" role="37wK5m">
                    <ref role="3VsUkX" to="qsto:3pn$gDK_BZ5" resolve="LiveHtmlServlet" />
                  </node>
                  <node concept="Xl_RD" id="3pn$gDK_iSk" role="37wK5m">
                    <property role="Xl_RC" value="/livehtml" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbPAkX" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbPAkY" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbPI3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mc9A5lp8RO" resolve="wsHandler" />
                </node>
                <node concept="liA8E" id="5Sw$pxbPAl0" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="5Sw$pxbPAl1" role="37wK5m">
                    <ref role="3VsUkX" to="qsto:5Sw$pxbNu8p" resolve="SvgUiServlet" />
                  </node>
                  <node concept="Xl_RD" id="5Sw$pxbPAl2" role="37wK5m">
                    <property role="Xl_RC" value="/svgui" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5J75zQcHYUW" role="3cqZAp">
              <node concept="2OqwBi" id="5J75zQcHYUX" role="3clFbG">
                <node concept="37vLTw" id="5J75zQcHYUY" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="5J75zQcHYUZ" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="1rXfSq" id="5Sw$pxbWzLs" role="37wK5m">
                    <ref role="37wK5l" node="1MbrkMIxNMj" resolve="withContext" />
                    <node concept="Xl_RD" id="5Sw$pxbWzTg" role="37wK5m">
                      <property role="Xl_RC" value="/ws" />
                    </node>
                    <node concept="37vLTw" id="5Sw$pxbW$kb" role="37wK5m">
                      <ref role="3cqZAo" node="7mc9A5lp8RO" resolve="wsHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbP$JY" role="3cqZAp" />
            <node concept="3cpWs8" id="QucyCqZp7H" role="3cqZAp">
              <node concept="3cpWsn" id="QucyCqZp7I" role="3cpWs9">
                <property role="TrG5h" value="healthHandler" />
                <node concept="3uibUv" id="QucyCqZp7J" role="1tU5fm">
                  <ref role="3uigEE" to="ky10:~ServletContextHandler" resolve="ServletContextHandler" />
                </node>
                <node concept="2ShNRf" id="QucyCqZqiH" role="33vP2m">
                  <node concept="1pGfFk" id="QucyCqZqhr" role="2ShVmc">
                    <ref role="37wK5l" to="ky10:~ServletContextHandler.&lt;init&gt;()" resolve="ServletContextHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="QucyCqZrF4" role="3cqZAp">
              <node concept="2OqwBi" id="QucyCqZt0G" role="3clFbG">
                <node concept="37vLTw" id="QucyCqZrF2" role="2Oq$k0">
                  <ref role="3cqZAo" node="QucyCqZp7I" resolve="healthHandler" />
                </node>
                <node concept="liA8E" id="QucyCqZvbr" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="QucyCqZv$L" role="37wK5m">
                    <ref role="3VsUkX" to="qsto:QucyCqZ7eL" resolve="HealthCheckServlet" />
                  </node>
                  <node concept="Xl_RD" id="QucyCqZwGR" role="37wK5m">
                    <property role="Xl_RC" value="/check" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5juhjwC7tm4" role="3cqZAp">
              <node concept="2OqwBi" id="5juhjwC7tm5" role="3clFbG">
                <node concept="37vLTw" id="5juhjwC7tm6" role="2Oq$k0">
                  <ref role="3cqZAo" node="QucyCqZp7I" resolve="healthHandler" />
                </node>
                <node concept="liA8E" id="5juhjwC7tm7" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="5juhjwC7tm8" role="37wK5m">
                    <ref role="3VsUkX" to="qsto:QucyCqZ7eL" resolve="HealthCheckServlet" />
                  </node>
                  <node concept="Xl_RD" id="5juhjwC7tm9" role="37wK5m">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="QucyCqZy9b" role="3cqZAp">
              <node concept="2OqwBi" id="QucyCqZzL4" role="3clFbG">
                <node concept="37vLTw" id="QucyCqZy99" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="QucyCqZ_mt" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="1rXfSq" id="QucyCqZ_wr" role="37wK5m">
                    <ref role="37wK5l" node="1MbrkMIxNMj" resolve="withContext" />
                    <node concept="Xl_RD" id="QucyCqZ_E5" role="37wK5m">
                      <property role="Xl_RC" value="/health" />
                    </node>
                    <node concept="37vLTw" id="QucyCqZAd6" role="37wK5m">
                      <ref role="3cqZAo" node="QucyCqZp7I" resolve="healthHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="27MnIra5Iyd" role="3cqZAp" />
            <node concept="3cpWs8" id="27MnIra5HtI" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIra5HtJ" role="3cpWs9">
                <property role="TrG5h" value="diffHandler" />
                <node concept="3uibUv" id="27MnIra5HtK" role="1tU5fm">
                  <ref role="3uigEE" to="ky10:~ServletContextHandler" resolve="ServletContextHandler" />
                </node>
                <node concept="2ShNRf" id="27MnIra5HtL" role="33vP2m">
                  <node concept="1pGfFk" id="27MnIra5HtM" role="2ShVmc">
                    <ref role="37wK5l" to="ky10:~ServletContextHandler.&lt;init&gt;()" resolve="ServletContextHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="27MnIra5HtC" role="3cqZAp">
              <node concept="2OqwBi" id="27MnIra5HtD" role="3clFbG">
                <node concept="37vLTw" id="27MnIra6p6e" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIra5HtJ" resolve="diffHandler" />
                </node>
                <node concept="liA8E" id="27MnIra5HtF" role="2OqNvi">
                  <ref role="37wK5l" to="ky10:~ServletContextHandler.addServlet(java.lang.Class,java.lang.String)" resolve="addServlet" />
                  <node concept="3VsKOn" id="27MnIra5HtG" role="37wK5m">
                    <ref role="3VsUkX" to="lvkz:27MnIra3H8T" resolve="DiffServlet" />
                  </node>
                  <node concept="Xl_RD" id="27MnIra5HtH" role="37wK5m">
                    <property role="Xl_RC" value="/*" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="27MnIra5Htr" role="3cqZAp">
              <node concept="2OqwBi" id="27MnIra5Hts" role="3clFbG">
                <node concept="37vLTw" id="27MnIra5Htt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="27MnIra5Htu" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="1rXfSq" id="27MnIra5Htv" role="37wK5m">
                    <ref role="37wK5l" node="1MbrkMIxNMj" resolve="withContext" />
                    <node concept="Xl_RD" id="27MnIra5Htw" role="37wK5m">
                      <property role="Xl_RC" value="/diff" />
                    </node>
                    <node concept="37vLTw" id="27MnIra5JIn" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIra5HtJ" resolve="diffHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="QucyCqZnaP" role="3cqZAp" />
            <node concept="3clFbF" id="1MbrkMIyZ2n" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIyZ2o" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIyZ2p" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="1MbrkMIyZ2q" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2ShNRf" id="1MbrkMIyZuT" role="37wK5m">
                    <node concept="1pGfFk" id="1MbrkMIyZYJ" role="2ShVmc">
                      <ref role="37wK5l" to="cgcg:~DefaultHandler.&lt;init&gt;()" resolve="DefaultHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5J75zQcFkzo" role="3cqZAp" />
            <node concept="3cpWs8" id="5Sw$pxbW6Xc" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbW6Xd" role="3cpWs9">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="5Sw$pxbW6Xe" role="1tU5fm">
                  <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
                </node>
                <node concept="37vLTw" id="5Sw$pxbW8u3" role="33vP2m">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbW4DV" role="3cqZAp" />
            <node concept="3SKdUt" id="5Sw$pxbWyF0" role="3cqZAp">
              <node concept="1PaTwC" id="xL$$tDozsT" role="1aUNEU">
                <node concept="3oM_SD" id="xL$$tDozsU" role="1PaTwD">
                  <property role="3oM_SC" value="Use" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsV" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsW" role="1PaTwD">
                  <property role="3oM_SC" value="ModuleClassLoader" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsX" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsY" role="1PaTwD">
                  <property role="3oM_SC" value="each" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozsZ" role="1PaTwD">
                  <property role="3oM_SC" value="request" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5J75zQcF9V$" role="3cqZAp">
              <node concept="3cpWsn" id="5J75zQcF9V_" role="3cpWs9">
                <property role="TrG5h" value="classLoaderHandler" />
                <node concept="3uibUv" id="5J75zQcHXic" role="1tU5fm">
                  <ref role="3uigEE" to="qsto:5J75zQcG6N4" resolve="ClassLoaderSettingHandler" />
                </node>
                <node concept="2ShNRf" id="5J75zQcF9VA" role="33vP2m">
                  <node concept="HV5vD" id="5J75zQcHWSH" role="2ShVmc">
                    <ref role="HV5vE" to="qsto:5J75zQcG6N4" resolve="ClassLoaderSettingHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5J75zQcFt7V" role="3cqZAp">
              <node concept="2OqwBi" id="5J75zQcFu_A" role="3clFbG">
                <node concept="37vLTw" id="5J75zQcFt7T" role="2Oq$k0">
                  <ref role="3cqZAo" node="5J75zQcF9V_" resolve="classLoaderHandler" />
                </node>
                <node concept="liA8E" id="5J75zQcFwI6" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerWrapper.setHandler(org.eclipse.jetty.server.Handler)" resolve="setHandler" />
                  <node concept="37vLTw" id="5Sw$pxbW8Hz" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbW9P_" role="3cqZAp">
              <node concept="37vLTI" id="5Sw$pxbWb2q" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbWbaA" role="37vLTx">
                  <ref role="3cqZAo" node="5J75zQcF9V_" resolve="classLoaderHandler" />
                </node>
                <node concept="37vLTw" id="5Sw$pxbW9Pz" role="37vLTJ">
                  <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5J75zQcFpVd" role="3cqZAp" />
            <node concept="3SKdUt" id="5Sw$pxbWwyH" role="3cqZAp">
              <node concept="1PaTwC" id="xL$$tDozt0" role="1aUNEU">
                <node concept="3oM_SD" id="xL$$tDozt1" role="1PaTwD">
                  <property role="3oM_SC" value="Make" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozt2" role="1PaTwD">
                  <property role="3oM_SC" value="/repositoryAsHtml" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozt3" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozt4" role="1PaTwD">
                  <property role="3oM_SC" value="default" />
                </node>
                <node concept="3oM_SD" id="xL$$tDozt5" role="1PaTwD">
                  <property role="3oM_SC" value="page" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Sw$pxbVO5S" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbVO5T" role="3cpWs9">
                <property role="TrG5h" value="rewriteHandler" />
                <node concept="3uibUv" id="5Sw$pxbVO5R" role="1tU5fm">
                  <ref role="3uigEE" to="xip3:~RewriteHandler" resolve="RewriteHandler" />
                </node>
                <node concept="2ShNRf" id="5Sw$pxbVO5U" role="33vP2m">
                  <node concept="1pGfFk" id="5Sw$pxbVO5V" role="2ShVmc">
                    <ref role="37wK5l" to="xip3:~RewriteHandler.&lt;init&gt;()" resolve="RewriteHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbWiST" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbWkat" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbWiSR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Sw$pxbVO5T" resolve="rewriteHandler" />
                </node>
                <node concept="liA8E" id="5Sw$pxbWmnz" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerWrapper.setHandler(org.eclipse.jetty.server.Handler)" resolve="setHandler" />
                  <node concept="37vLTw" id="5Sw$pxbWmCt" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbWnPA" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbWp7y" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbWnP$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Sw$pxbVO5T" resolve="rewriteHandler" />
                </node>
                <node concept="liA8E" id="5Sw$pxbWq8e" role="2OqNvi">
                  <ref role="37wK5l" to="xip3:~RewriteHandler.addRule(org.eclipse.jetty.rewrite.handler.Rule)" resolve="addRule" />
                  <node concept="2ShNRf" id="5Sw$pxbWqe2" role="37wK5m">
                    <node concept="1pGfFk" id="5Sw$pxbWqIz" role="2ShVmc">
                      <ref role="37wK5l" to="xip3:~RewriteRegexRule.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="RewriteRegexRule" />
                      <node concept="Xl_RD" id="5Sw$pxbWqVE" role="37wK5m">
                        <property role="Xl_RC" value="/" />
                      </node>
                      <node concept="Xl_RD" id="5Sw$pxbWrg1" role="37wK5m">
                        <property role="Xl_RC" value="/repositoryAsHtml" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Sw$pxbWgnK" role="3cqZAp">
              <node concept="37vLTI" id="5Sw$pxbWhxC" role="3clFbG">
                <node concept="37vLTw" id="5Sw$pxbWhDU" role="37vLTx">
                  <ref role="3cqZAo" node="5Sw$pxbVO5T" resolve="rewriteHandler" />
                </node>
                <node concept="37vLTw" id="5Sw$pxbWgnI" role="37vLTJ">
                  <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Sw$pxbW1k0" role="3cqZAp" />
            <node concept="3cpWs8" id="5e9llKyPPaD" role="3cqZAp">
              <node concept="3cpWsn" id="5e9llKyPPaE" role="3cpWs9">
                <property role="TrG5h" value="cookieHandler" />
                <node concept="3uibUv" id="5e9llKyPPaC" role="1tU5fm">
                  <ref role="3uigEE" to="cgcg:~HandlerWrapper" resolve="HandlerWrapper" />
                </node>
                <node concept="2ShNRf" id="5e9llKyPPaF" role="33vP2m">
                  <node concept="YeOm9" id="5e9llKyPPaG" role="2ShVmc">
                    <node concept="1Y3b0j" id="5e9llKyPPaH" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="cgcg:~HandlerWrapper.&lt;init&gt;()" resolve="HandlerWrapper" />
                      <ref role="1Y3XeK" to="cgcg:~HandlerWrapper" resolve="HandlerWrapper" />
                      <node concept="3Tm1VV" id="5e9llKyPPaI" role="1B3o_S" />
                      <node concept="3clFb_" id="5e9llKyPWn_" role="jymVt">
                        <property role="TrG5h" value="handle" />
                        <node concept="3Tm1VV" id="5e9llKyPWnA" role="1B3o_S" />
                        <node concept="3cqZAl" id="5e9llKyPWnC" role="3clF45" />
                        <node concept="37vLTG" id="5e9llKyPWnD" role="3clF46">
                          <property role="TrG5h" value="target" />
                          <node concept="17QB3L" id="5e9llKyPXmA" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="5e9llKyPWnF" role="3clF46">
                          <property role="TrG5h" value="baseRequest" />
                          <node concept="3uibUv" id="5e9llKyPWnG" role="1tU5fm">
                            <ref role="3uigEE" to="m2xw:~Request" resolve="Request" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5e9llKyPWnH" role="3clF46">
                          <property role="TrG5h" value="request" />
                          <node concept="3uibUv" id="5e9llKyPWnI" role="1tU5fm">
                            <ref role="3uigEE" to="nwfd:~HttpServletRequest" resolve="HttpServletRequest" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5e9llKyPWnJ" role="3clF46">
                          <property role="TrG5h" value="response" />
                          <node concept="3uibUv" id="5e9llKyPWnK" role="1tU5fm">
                            <ref role="3uigEE" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5e9llKyPWnL" role="Sfmx6">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                        <node concept="3uibUv" id="5e9llKyPWnM" role="Sfmx6">
                          <ref role="3uigEE" to="opgt:~ServletException" resolve="ServletException" />
                        </node>
                        <node concept="3clFbS" id="5e9llKyPWnO" role="3clF47">
                          <node concept="3clFbF" id="5e9llKyPWnV" role="3cqZAp">
                            <node concept="3nyPlj" id="5e9llKyPWnU" role="3clFbG">
                              <ref role="37wK5l" to="cgcg:~HandlerWrapper.handle(java.lang.String,org.eclipse.jetty.server.Request,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse)" resolve="handle" />
                              <node concept="37vLTw" id="5e9llKyPWnQ" role="37wK5m">
                                <ref role="3cqZAo" node="5e9llKyPWnD" resolve="target" />
                              </node>
                              <node concept="37vLTw" id="5e9llKyPWnR" role="37wK5m">
                                <ref role="3cqZAo" node="5e9llKyPWnF" resolve="baseRequest" />
                              </node>
                              <node concept="37vLTw" id="5e9llKyPWnS" role="37wK5m">
                                <ref role="3cqZAo" node="5e9llKyPWnH" resolve="request" />
                              </node>
                              <node concept="37vLTw" id="5e9llKyPWnT" role="37wK5m">
                                <ref role="3cqZAo" node="5e9llKyPWnJ" resolve="response" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="5e9llKyRjxu" role="3cqZAp">
                            <node concept="3cpWsn" id="5e9llKyRjxx" role="3cpWs9">
                              <property role="TrG5h" value="sessionId" />
                              <node concept="17QB3L" id="5e9llKyRjxs" role="1tU5fm" />
                              <node concept="10Nm6u" id="5e9llKyRkr_" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="2Gpval" id="5e9llKyQaVa" role="3cqZAp">
                            <node concept="2GrKxI" id="5e9llKyQaVc" role="2Gsz3X">
                              <property role="TrG5h" value="cookie" />
                            </node>
                            <node concept="3clFbS" id="5e9llKyQaVg" role="2LFqv$">
                              <node concept="3clFbJ" id="5e9llKyQbPl" role="3cqZAp">
                                <node concept="17R0WA" id="5e9llKyQdxH" role="3clFbw">
                                  <node concept="10M0yZ" id="5e9llKyQeID" role="3uHU7w">
                                    <ref role="3cqZAo" to="o8cn:eACOy0i3$m" resolve="SESSION_COOKIE_NAME" />
                                    <ref role="1PxDUh" to="o8cn:6xm2RBlaf2L" resolve="RenderServer" />
                                  </node>
                                  <node concept="2OqwBi" id="5e9llKyQcEK" role="3uHU7B">
                                    <node concept="2GrUjf" id="5e9llKyQcq4" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="5e9llKyQaVc" resolve="cookie" />
                                    </node>
                                    <node concept="liA8E" id="5e9llKyQd3k" role="2OqNvi">
                                      <ref role="37wK5l" to="nwfd:~Cookie.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5e9llKyQbPn" role="3clFbx">
                                  <node concept="3clFbF" id="5e9llKyRqSa" role="3cqZAp">
                                    <node concept="37vLTI" id="5e9llKyRrGL" role="3clFbG">
                                      <node concept="2OqwBi" id="5e9llKyRstZ" role="37vLTx">
                                        <node concept="2GrUjf" id="5e9llKyRsfU" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="5e9llKyQaVc" resolve="cookie" />
                                        </node>
                                        <node concept="liA8E" id="5e9llKyRt5z" role="2OqNvi">
                                          <ref role="37wK5l" to="nwfd:~Cookie.getValue()" resolve="getValue" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="5e9llKyRqS9" role="37vLTJ">
                                        <ref role="3cqZAo" node="5e9llKyRjxx" resolve="sessionId" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5e9llKyS375" role="2GsD0m">
                              <node concept="2OqwBi" id="5e9llKyQBGn" role="2Oq$k0">
                                <node concept="37vLTw" id="5e9llKyQBGo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5e9llKyPWnF" resolve="baseRequest" />
                                </node>
                                <node concept="liA8E" id="5e9llKyQBGp" role="2OqNvi">
                                  <ref role="37wK5l" to="m2xw:~Request.getCookies()" resolve="getCookies" />
                                </node>
                              </node>
                              <node concept="39bAoz" id="5e9llKyS3FX" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3clFbJ" id="5e9llKyRlhX" role="3cqZAp">
                            <node concept="3clFbS" id="5e9llKyRlhZ" role="3clFbx">
                              <node concept="3clFbF" id="5e9llKyRnXZ" role="3cqZAp">
                                <node concept="37vLTI" id="5e9llKyRoMA" role="3clFbG">
                                  <node concept="37vLTw" id="5e9llKyRnXX" role="37vLTJ">
                                    <ref role="3cqZAo" node="5e9llKyRjxx" resolve="sessionId" />
                                  </node>
                                  <node concept="2OqwBi" id="5e9llKyRpeF" role="37vLTx">
                                    <node concept="2YIFZM" id="5e9llKyRpeG" role="2Oq$k0">
                                      <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                                      <ref role="37wK5l" to="33ny:~UUID.randomUUID()" resolve="randomUUID" />
                                    </node>
                                    <node concept="liA8E" id="5e9llKyRpeH" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~UUID.toString()" resolve="toString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="5e9llKyRmSW" role="3clFbw">
                              <node concept="10Nm6u" id="5e9llKyRniG" role="3uHU7w" />
                              <node concept="37vLTw" id="5e9llKyRlV7" role="3uHU7B">
                                <ref role="3cqZAo" node="5e9llKyRjxx" resolve="sessionId" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5e9llKyQDgc" role="3cqZAp">
                            <node concept="2OqwBi" id="5e9llKyQEEg" role="3clFbG">
                              <node concept="2OqwBi" id="5e9llKyQE2Z" role="2Oq$k0">
                                <node concept="37vLTw" id="5e9llKyQDga" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5e9llKyPWnF" resolve="baseRequest" />
                                </node>
                                <node concept="liA8E" id="5e9llKyQEr5" role="2OqNvi">
                                  <ref role="37wK5l" to="m2xw:~Request.getResponse()" resolve="getResponse" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5e9llKyQF4M" role="2OqNvi">
                                <ref role="37wK5l" to="m2xw:~Response.addCookie(org.eclipse.jetty.http.HttpCookie)" resolve="addCookie" />
                                <node concept="2ShNRf" id="5e9llKyQFAC" role="37wK5m">
                                  <node concept="1pGfFk" id="5e9llKyQHJE" role="2ShVmc">
                                    <ref role="37wK5l" to="5695:~HttpCookie.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long,boolean,boolean)" resolve="HttpCookie" />
                                    <node concept="10M0yZ" id="5e9llKyQJcE" role="37wK5m">
                                      <ref role="1PxDUh" to="o8cn:6xm2RBlaf2L" resolve="RenderServer" />
                                      <ref role="3cqZAo" to="o8cn:eACOy0i3$m" resolve="SESSION_COOKIE_NAME" />
                                    </node>
                                    <node concept="37vLTw" id="5e9llKySm5D" role="37wK5m">
                                      <ref role="3cqZAo" node="5e9llKyRjxx" resolve="sessionId" />
                                    </node>
                                    <node concept="10Nm6u" id="5Yll$oNLH19" role="37wK5m" />
                                    <node concept="Xl_RD" id="5Yll$oNLHZd" role="37wK5m">
                                      <property role="Xl_RC" value="/" />
                                    </node>
                                    <node concept="17qRlL" id="5e9llKyQOxN" role="37wK5m">
                                      <node concept="3cmrfG" id="5e9llKyQOUX" role="3uHU7w">
                                        <property role="3cmrfH" value="60" />
                                      </node>
                                      <node concept="17qRlL" id="5e9llKyQMQJ" role="3uHU7B">
                                        <node concept="17qRlL" id="5e9llKyQLFf" role="3uHU7B">
                                          <node concept="3cmrfG" id="5e9llKyQKms" role="3uHU7B">
                                            <property role="3cmrfH" value="30" />
                                          </node>
                                          <node concept="3cmrfG" id="5e9llKyQM4p" role="3uHU7w">
                                            <property role="3cmrfH" value="24" />
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="5e9llKyQNfT" role="3uHU7w">
                                          <property role="3cmrfH" value="60" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbT" id="5Yll$oNLIXl" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="3clFbT" id="5Yll$oNLJKj" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5e9llKyPWnP" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5e9llKyPFbr" role="3cqZAp">
              <node concept="2OqwBi" id="5e9llKyPR5w" role="3clFbG">
                <node concept="37vLTw" id="5e9llKyPPaJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5e9llKyPPaE" resolve="cookieHandler" />
                </node>
                <node concept="liA8E" id="5e9llKyPRUk" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerWrapper.setHandler(org.eclipse.jetty.server.Handler)" resolve="setHandler" />
                  <node concept="37vLTw" id="5e9llKyPSrj" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5e9llKyPTRt" role="3cqZAp">
              <node concept="37vLTI" id="5e9llKyPVRk" role="3clFbG">
                <node concept="37vLTw" id="5e9llKyPW6X" role="37vLTx">
                  <ref role="3cqZAo" node="5e9llKyPPaE" resolve="cookieHandler" />
                </node>
                <node concept="37vLTw" id="5e9llKyPTRr" role="37vLTJ">
                  <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5e9llKyPEkp" role="3cqZAp" />
            <node concept="3clFbF" id="1MbrkMIwEe1" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIwEe2" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIwEVN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
                </node>
                <node concept="liA8E" id="1MbrkMIwEe6" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerWrapper.setHandler(org.eclipse.jetty.server.Handler)" resolve="setHandler" />
                  <node concept="37vLTw" id="5Sw$pxbW8e_" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbW6Xd" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="65d3h4jcr6i" role="3cqZAp" />
            <node concept="3clFbF" id="1MbrkMIwEdM" role="3cqZAp">
              <node concept="2OqwBi" id="1MbrkMIwEdN" role="3clFbG">
                <node concept="37vLTw" id="1MbrkMIwEKt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
                </node>
                <node concept="liA8E" id="1MbrkMIwEdR" role="2OqNvi">
                  <ref role="37wK5l" to="6sky:~AbstractLifeCycle.start()" resolve="start" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1MbrkMIwEe8" role="1zxBo5">
            <node concept="XOnhg" id="1MbrkMIwEe9" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="fUMmrtOSw5l" role="1tU5fm">
                <node concept="3uibUv" id="1MbrkMIwEea" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1MbrkMIwEeb" role="1zc67A">
              <node concept="RRSsy" id="1MbrkMIwEec" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="1MbrkMIwEed" role="RRSoy">
                  <property role="Xl_RC" value="Failed to start UI server" />
                </node>
                <node concept="37vLTw" id="1MbrkMIwEee" role="RRSow">
                  <ref role="3cqZAo" node="1MbrkMIwEe9" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MbrkMIwE90" role="jymVt" />
    <node concept="3clFb_" id="1MbrkMIwEcK" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="1MbrkMIwEcM" role="3clF45" />
      <node concept="3Tm1VV" id="1MbrkMIwEcN" role="1B3o_S" />
      <node concept="3clFbS" id="1MbrkMIwEcO" role="3clF47">
        <node concept="3J1_TO" id="6kiVUEM2Vo$" role="3cqZAp">
          <node concept="3clFbS" id="6kiVUEM2VoA" role="1zxBo7">
            <node concept="3clFbF" id="6kiVUEM2VFg" role="3cqZAp">
              <node concept="37vLTI" id="6kiVUEM2W4E" role="3clFbG">
                <node concept="3clFbT" id="6kiVUEM2Wa3" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="6kiVUEM2VFe" role="37vLTJ">
                  <ref role="3cqZAo" node="6kiVUEM2JhW" resolve="disposing" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1MbrkMIwFxf" role="3cqZAp">
              <node concept="3y3z36" id="1MbrkMIwFxg" role="3clFbw">
                <node concept="10Nm6u" id="1MbrkMIwFxh" role="3uHU7w" />
                <node concept="37vLTw" id="1MbrkMIwFAg" role="3uHU7B">
                  <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
                </node>
              </node>
              <node concept="3clFbS" id="1MbrkMIwFxl" role="3clFbx">
                <node concept="3J1_TO" id="1MbrkMIwFxm" role="3cqZAp">
                  <node concept="3clFbS" id="1MbrkMIwFxn" role="1zxBo7">
                    <node concept="3clFbF" id="1MbrkMIwFxo" role="3cqZAp">
                      <node concept="2OqwBi" id="1MbrkMIwFxp" role="3clFbG">
                        <node concept="37vLTw" id="1MbrkMIwFF6" role="2Oq$k0">
                          <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
                        </node>
                        <node concept="liA8E" id="1MbrkMIwFxt" role="2OqNvi">
                          <ref role="37wK5l" to="6sky:~AbstractLifeCycle.stop()" resolve="stop" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="1MbrkMIwFxu" role="1zxBo5">
                    <node concept="XOnhg" id="1MbrkMIwFxv" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="fUMmrtOSzrT" role="1tU5fm">
                        <node concept="3uibUv" id="1MbrkMIwFxw" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1MbrkMIwFxx" role="1zc67A">
                      <node concept="RRSsy" id="1z8Uup0sgVK" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="1z8Uup0sgVM" role="RRSoy" />
                        <node concept="37vLTw" id="1z8Uup0sgVO" role="RRSow">
                          <ref role="3cqZAo" node="1MbrkMIwFxv" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="1z8Uup0sgC1" role="3cqZAp">
              <node concept="3clFbS" id="1z8Uup0sgC3" role="1zxBo7">
                <node concept="3clFbF" id="1z8Uup0shr9" role="3cqZAp">
                  <node concept="2OqwBi" id="1z8Uup0shLC" role="3clFbG">
                    <node concept="37vLTw" id="1z8Uup0shr7" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z8Uup0sfFB" resolve="pfImplementationsProvider" />
                    </node>
                    <node concept="liA8E" id="1z8Uup0simf" role="2OqNvi">
                      <ref role="37wK5l" to="od2j:3zTK92KPneu" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="1z8Uup0sgC4" role="1zxBo5">
                <node concept="XOnhg" id="1z8Uup0sgC6" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="foPkeaD1l9b" role="1tU5fm">
                    <node concept="3uibUv" id="1z8Uup0sh5L" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1z8Uup0sgCa" role="1zc67A">
                  <node concept="RRSsy" id="1z8Uup0siDQ" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="Xl_RD" id="1z8Uup0siDS" role="RRSoy" />
                    <node concept="37vLTw" id="1z8Uup0siDU" role="RRSow">
                      <ref role="3cqZAo" node="1z8Uup0sgC6" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="6kiVUEM2VqO" role="1zxBo6">
            <node concept="3clFbS" id="6kiVUEM2VqP" role="1wplMD">
              <node concept="3clFbF" id="6kiVUEM2X5R" role="3cqZAp">
                <node concept="37vLTI" id="6kiVUEM2XvB" role="3clFbG">
                  <node concept="3clFbT" id="6kiVUEM2X_0" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="6kiVUEM2X5P" role="37vLTJ">
                    <ref role="3cqZAo" node="6kiVUEM2M8R" resolve="disposed" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6kiVUEM2Wsk" role="3cqZAp">
                <node concept="37vLTI" id="6kiVUEM2WOW" role="3clFbG">
                  <node concept="3clFbT" id="6kiVUEM2WUl" role="37vLTx" />
                  <node concept="37vLTw" id="6kiVUEM2Wsj" role="37vLTJ">
                    <ref role="3cqZAo" node="6kiVUEM2JhW" resolve="disposing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MbrkMIxKI0" role="jymVt" />
    <node concept="2YIFZL" id="1MbrkMIxNMj" role="jymVt">
      <property role="TrG5h" value="withContext" />
      <node concept="3clFbS" id="1MbrkMIxLa7" role="3clF47">
        <node concept="3cpWs8" id="1MbrkMIxOdf" role="3cqZAp">
          <node concept="3cpWsn" id="1MbrkMIxOdg" role="3cpWs9">
            <property role="TrG5h" value="contextHandler" />
            <node concept="3uibUv" id="1MbrkMIxOdh" role="1tU5fm">
              <ref role="3uigEE" to="cgcg:~ContextHandler" resolve="ContextHandler" />
            </node>
            <node concept="2ShNRf" id="1MbrkMIxOdi" role="33vP2m">
              <node concept="1pGfFk" id="1MbrkMIxOdj" role="2ShVmc">
                <ref role="37wK5l" to="cgcg:~ContextHandler.&lt;init&gt;()" resolve="ContextHandler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MbrkMIxOdk" role="3cqZAp">
          <node concept="2OqwBi" id="1MbrkMIxOdl" role="3clFbG">
            <node concept="37vLTw" id="1MbrkMIxOdm" role="2Oq$k0">
              <ref role="3cqZAo" node="1MbrkMIxOdg" resolve="contextHandler" />
            </node>
            <node concept="liA8E" id="1MbrkMIxOdn" role="2OqNvi">
              <ref role="37wK5l" to="cgcg:~ContextHandler.setContextPath(java.lang.String)" resolve="setContextPath" />
              <node concept="37vLTw" id="1MbrkMIxOqS" role="37wK5m">
                <ref role="3cqZAo" node="1MbrkMIxM74" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MbrkMIxOdp" role="3cqZAp">
          <node concept="2OqwBi" id="1MbrkMIxOdq" role="3clFbG">
            <node concept="37vLTw" id="1MbrkMIxOdr" role="2Oq$k0">
              <ref role="3cqZAo" node="1MbrkMIxOdg" resolve="contextHandler" />
            </node>
            <node concept="liA8E" id="1MbrkMIxOds" role="2OqNvi">
              <ref role="37wK5l" to="cgcg:~HandlerWrapper.setHandler(org.eclipse.jetty.server.Handler)" resolve="setHandler" />
              <node concept="37vLTw" id="1MbrkMIxOx8" role="37wK5m">
                <ref role="3cqZAo" node="1MbrkMIxMwX" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1MbrkMIxOGx" role="3cqZAp">
          <node concept="37vLTw" id="1MbrkMIxOJx" role="3cqZAk">
            <ref role="3cqZAo" node="1MbrkMIxOdg" resolve="contextHandler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MbrkMIxM74" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="1MbrkMIxMvo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1MbrkMIxMwX" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="1MbrkMIxMWG" role="1tU5fm">
          <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3uibUv" id="1MbrkMIxN8s" role="3clF45">
        <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
      </node>
      <node concept="3Tm6S6" id="1MbrkMIxNto" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Sw$pxbLC0C" role="jymVt" />
    <node concept="3clFb_" id="5Sw$pxbLC9U" role="jymVt">
      <property role="TrG5h" value="getDistFolderPath" />
      <node concept="17QB3L" id="5Sw$pxbLCgn" role="3clF45" />
      <node concept="3Tm1VV" id="5Sw$pxbLC9X" role="1B3o_S" />
      <node concept="3clFbS" id="5Sw$pxbLC9Y" role="3clF47">
        <node concept="3cpWs8" id="5Sw$pxbLCgq" role="3cqZAp">
          <node concept="3cpWsn" id="5Sw$pxbLCgr" role="3cpWs9">
            <property role="TrG5h" value="classLoader" />
            <node concept="3uibUv" id="5Sw$pxbLCgs" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="5Sw$pxbLCgt" role="33vP2m">
              <node concept="2OqwBi" id="5Sw$pxbLCgu" role="2Oq$k0">
                <node concept="Xjq3P" id="5Sw$pxbLCjz" role="2Oq$k0" />
                <node concept="liA8E" id="5Sw$pxbLCgz" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="5Sw$pxbLCg$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Sw$pxbLCg_" role="3cqZAp" />
        <node concept="3clFbJ" id="5Sw$pxbLCgC" role="3cqZAp">
          <node concept="3clFbS" id="5Sw$pxbLCgD" role="3clFbx">
            <node concept="3cpWs8" id="5Sw$pxbLCgE" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbLCgF" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="5Sw$pxbLCgG" role="1tU5fm">
                  <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                </node>
                <node concept="2OqwBi" id="24PSXS8EDKk" role="33vP2m">
                  <node concept="1eOMI4" id="5Sw$pxbLCgI" role="2Oq$k0">
                    <node concept="10QFUN" id="5Sw$pxbLCgJ" role="1eOMHV">
                      <node concept="3uibUv" id="5Sw$pxbLCgK" role="10QFUM">
                        <ref role="3uigEE" to="3qmy:~ModuleClassLoader" resolve="ModuleClassLoader" />
                      </node>
                      <node concept="37vLTw" id="5Sw$pxbLCgL" role="10QFUP">
                        <ref role="3cqZAo" node="5Sw$pxbLCgr" resolve="classLoader" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="24PSXS8EF04" role="2OqNvi">
                    <ref role="37wK5l" to="3qmy:~ModuleClassLoader.getModule()" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Sw$pxbLCgN" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbLCgO" role="3cpWs9">
                <property role="TrG5h" value="moduleSourceDir" />
                <node concept="3uibUv" id="5Sw$pxbLCgP" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="5Sw$pxbLCgQ" role="33vP2m">
                  <node concept="1eOMI4" id="5Sw$pxbLCgR" role="2Oq$k0">
                    <node concept="10QFUN" id="5Sw$pxbLCgS" role="1eOMHV">
                      <node concept="37vLTw" id="5Sw$pxbLCgT" role="10QFUP">
                        <ref role="3cqZAo" node="5Sw$pxbLCgF" resolve="module" />
                      </node>
                      <node concept="3uibUv" id="5Sw$pxbLCgU" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5Sw$pxbLCgV" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Sw$pxbLCgW" role="3cqZAp">
              <node concept="3cpWsn" id="5Sw$pxbLCgX" role="3cpWs9">
                <property role="TrG5h" value="distFolder" />
                <node concept="3uibUv" id="5Sw$pxbLCgY" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2YIFZM" id="5Sw$pxbLCgZ" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~IFileUtil" resolve="IFileUtil" />
                  <ref role="37wK5l" to="18ew:~IFileUtil.getDescendant(jetbrains.mps.vfs.IFile,java.lang.String)" resolve="getDescendant" />
                  <node concept="37vLTw" id="5Sw$pxbLCh0" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbLCgO" resolve="moduleSourceDir" />
                  </node>
                  <node concept="Xl_RD" id="5Sw$pxbLCh3" role="37wK5m">
                    <property role="Xl_RC" value="../../ui-client/dist/" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5Sw$pxbLChh" role="3cqZAp">
              <node concept="3clFbS" id="5Sw$pxbLChi" role="3clFbx">
                <node concept="3cpWs6" id="5Sw$pxbLGSq" role="3cqZAp">
                  <node concept="2OqwBi" id="5Sw$pxbLHF6" role="3cqZAk">
                    <node concept="37vLTw" id="5Sw$pxbLHh1" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Sw$pxbLCgX" resolve="distFolder" />
                    </node>
                    <node concept="liA8E" id="5Sw$pxbLIP1" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5Sw$pxbLChp" role="3clFbw">
                <node concept="3y3z36" id="5Sw$pxbLChq" role="3uHU7B">
                  <node concept="10Nm6u" id="5Sw$pxbLChr" role="3uHU7w" />
                  <node concept="37vLTw" id="5Sw$pxbLELt" role="3uHU7B">
                    <ref role="3cqZAo" node="5Sw$pxbLCgX" resolve="distFolder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5Sw$pxbLCht" role="3uHU7w">
                  <node concept="37vLTw" id="5Sw$pxbLEMT" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Sw$pxbLCgX" resolve="distFolder" />
                  </node>
                  <node concept="liA8E" id="5Sw$pxbLChv" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5Sw$pxbLChw" role="3clFbw">
            <node concept="3uibUv" id="5Sw$pxbLChx" role="2ZW6by">
              <ref role="3uigEE" to="3qmy:~ModuleClassLoader" resolve="ModuleClassLoader" />
            </node>
            <node concept="37vLTw" id="5Sw$pxbLChy" role="2ZW6bz">
              <ref role="3cqZAo" node="5Sw$pxbLCgr" resolve="classLoader" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Sw$pxbLJlg" role="3cqZAp" />
        <node concept="3cpWs6" id="5Sw$pxbLJqT" role="3cqZAp">
          <node concept="10Nm6u" id="5Sw$pxbLJLD" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1MbrkMIwDCe" role="1B3o_S" />
  </node>
</model>

