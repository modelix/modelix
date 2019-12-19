<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:129cc740-fb59-4b7a-adef-c057dba87982(de.q60.mps.web.ui.server.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="m2xw" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server(de.q60.mps.web.jetty/)" />
    <import index="cgcg" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server.handler(de.q60.mps.web.jetty/)" />
    <import index="nwfd" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet.http(de.q60.mps.web.jetty/)" />
    <import index="opgt" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet(de.q60.mps.web.jetty/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="2qs1" ref="r:f8990486-c591-4463-8538-99bfa890834b(de.q60.mps.web.ui.sm.server.plugin)" />
    <import index="ky10" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.servlet(de.q60.mps.web.jetty/)" />
    <import index="67a5" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.websocket.servlet(de.q60.mps.web.jetty/)" />
    <import index="o8cn" ref="r:7f6154b4-93e5-4a51-94de-d145e58184e7(de.q60.mps.web.ui.svg.plugin)" />
    <import index="xip3" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.rewrite.handler(de.q60.mps.web.jetty/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(de.q60.mps.web.model.mpsplugin)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="aero" ref="r:7a4d7ed2-9d22-4615-b536-63269a84b9a5(de.q60.mps.web.ui.sm.server.web)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" implicit="true" />
    <import index="6sky" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.util.component(de.q60.mps.web.jetty/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765277240526" name="de.slisson.mps.reflection.structure.ReflectionMethodCall" flags="ng" index="1PvZjq" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
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
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
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
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
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
  <node concept="2uRRBC" id="3XUQDwFP15H">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="3XUQDwFPfzX" role="2uRRBG">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="3XUQDwFPfzY" role="1B3o_S" />
      <node concept="3uibUv" id="1MbrkMIwDV5" role="1tU5fm">
        <ref role="3uigEE" node="1MbrkMIwDCd" resolve="WebmpsServer" />
      </node>
      <node concept="2ShNRf" id="1MbrkMIwIdf" role="33vP2m">
        <node concept="1pGfFk" id="1MbrkMIwIde" role="2ShVmc">
          <ref role="37wK5l" node="1MbrkMIwHXt" resolve="WebmpsServer" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="7aolmNHmaXv" role="2uRRBG">
      <property role="TrG5h" value="detector" />
      <node concept="3Tm6S6" id="7aolmNHmaXw" role="1B3o_S" />
      <node concept="3uibUv" id="7aolmNHmb5j" role="1tU5fm">
        <ref role="3uigEE" node="7aolmNHljqV" resolve="LongRunningCommandDetector" />
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
                  <ref role="37wK5l" node="7aolmNHlusz" resolve="LongRunningCommandDetector" />
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
                <ref role="37wK5l" node="7aolmNHm6AX" resolve="dispose" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1MbrkMIwDCd">
    <property role="TrG5h" value="WebmpsServer" />
    <node concept="312cEg" id="1MbrkMIwDHG" role="jymVt">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="1MbrkMIwDHH" role="1B3o_S" />
      <node concept="3uibUv" id="1MbrkMIwDLf" role="1tU5fm">
        <ref role="3uigEE" to="m2xw:~Server" resolve="Server" />
      </node>
    </node>
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
        <node concept="SfApY" id="1MbrkMIwEdK" role="3cqZAp">
          <node concept="3clFbS" id="1MbrkMIwEdL" role="SfCbr">
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
            <node concept="3clFbF" id="2i1MHcnspYA" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnspYB" role="3clFbG">
                <node concept="37vLTw" id="2i1MHcnspYC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MbrkMIxeOZ" resolve="handlerList" />
                </node>
                <node concept="liA8E" id="2i1MHcnspYD" role="2OqNvi">
                  <ref role="37wK5l" to="cgcg:~HandlerCollection.addHandler(org.eclipse.jetty.server.Handler)" resolve="addHandler" />
                  <node concept="2YIFZM" id="5GP2kxII4vp" role="37wK5m">
                    <ref role="1Pybhc" node="1MbrkMIwDCd" resolve="WebmpsServer" />
                    <ref role="37wK5l" node="1MbrkMIxNMj" resolve="withContext" />
                    <node concept="Xl_RD" id="5GP2kxII4vq" role="37wK5m">
                      <property role="Xl_RC" value="/icons" />
                    </node>
                    <node concept="2ShNRf" id="5GP2kxII4vr" role="37wK5m">
                      <node concept="1pGfFk" id="1z8Uup0qdhk" role="2ShVmc">
                        <ref role="37wK5l" node="5GP2kxJhTbo" resolve="IconHandler" />
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
                                      <ref role="2M0c$$" to="aero:1z8Uup0q61$" resolve="getHandlers" />
                                    </node>
                                  </node>
                                </node>
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
              <node concept="1PaTwC" id="xL$$tDozsA" role="3ndbpf">
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
              <node concept="1PaTwC" id="xL$$tDozsK" role="3ndbpf">
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
                          <property role="Xl_RC" value="de/q60/mps/web/ui/client/static/" />
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
                    <ref role="3VsUkX" node="7mc9A5lp4Hq" resolve="SmUiServlet" />
                  </node>
                  <node concept="Xl_RD" id="7mc9A5lpqGW" role="37wK5m">
                    <property role="Xl_RC" value="/smui" />
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
                    <ref role="3VsUkX" node="5Sw$pxbNu8p" resolve="SvgUiServlet" />
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
                    <ref role="3VsUkX" node="QucyCqZ7eL" resolve="HealthCheckServlet" />
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
                    <ref role="3VsUkX" node="QucyCqZ7eL" resolve="HealthCheckServlet" />
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
              <node concept="1PaTwC" id="xL$$tDozsT" role="3ndbpf">
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
                  <ref role="3uigEE" node="5J75zQcG6N4" resolve="ClassLoaderSettingHandler" />
                </node>
                <node concept="2ShNRf" id="5J75zQcF9VA" role="33vP2m">
                  <node concept="HV5vD" id="5J75zQcHWSH" role="2ShVmc">
                    <ref role="HV5vE" node="5J75zQcG6N4" resolve="ClassLoaderSettingHandler" />
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
              <node concept="1PaTwC" id="xL$$tDozt0" role="3ndbpf">
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
          <node concept="TDmWw" id="1MbrkMIwEe8" role="TEbGg">
            <node concept="3cpWsn" id="1MbrkMIwEe9" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1MbrkMIwEea" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1MbrkMIwEeb" role="TDEfX">
              <node concept="RRSsy" id="1MbrkMIwEec" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="1MbrkMIwEed" role="RRSoy">
                  <property role="Xl_RC" value="Failed to start WebMPS server" />
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
        <node concept="3clFbJ" id="1MbrkMIwFxf" role="3cqZAp">
          <node concept="3y3z36" id="1MbrkMIwFxg" role="3clFbw">
            <node concept="10Nm6u" id="1MbrkMIwFxh" role="3uHU7w" />
            <node concept="37vLTw" id="1MbrkMIwFAg" role="3uHU7B">
              <ref role="3cqZAo" node="1MbrkMIwDHG" resolve="server" />
            </node>
          </node>
          <node concept="3clFbS" id="1MbrkMIwFxl" role="3clFbx">
            <node concept="SfApY" id="1MbrkMIwFxm" role="3cqZAp">
              <node concept="3clFbS" id="1MbrkMIwFxn" role="SfCbr">
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
              <node concept="TDmWw" id="1MbrkMIwFxu" role="TEbGg">
                <node concept="3cpWsn" id="1MbrkMIwFxv" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="1MbrkMIwFxw" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="1MbrkMIwFxx" role="TDEfX">
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
        <node concept="SfApY" id="1z8Uup0sgC1" role="3cqZAp">
          <node concept="3clFbS" id="1z8Uup0sgC3" role="SfCbr">
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
          <node concept="TDmWw" id="1z8Uup0sgC4" role="TEbGg">
            <node concept="3cpWsn" id="1z8Uup0sgC6" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1z8Uup0sh5L" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1z8Uup0sgCa" role="TDEfX">
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
                <node concept="2OqwBi" id="5Sw$pxbLCgH" role="33vP2m">
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
                  <node concept="1PvZjq" id="5Sw$pxbLCgM" role="2OqNvi">
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
  <node concept="312cEu" id="7mc9A5lp4Hq">
    <property role="TrG5h" value="SmUiServlet" />
    <node concept="3Tm1VV" id="7mc9A5lp4Hr" role="1B3o_S" />
    <node concept="3uibUv" id="7mc9A5lp56y" role="1zkMxy">
      <ref role="3uigEE" to="67a5:~WebSocketServlet" resolve="WebSocketServlet" />
    </node>
    <node concept="3clFb_" id="7mc9A5lp571" role="jymVt">
      <property role="TrG5h" value="configure" />
      <node concept="3Tm1VV" id="7mc9A5lp572" role="1B3o_S" />
      <node concept="3cqZAl" id="7mc9A5lp574" role="3clF45" />
      <node concept="37vLTG" id="7mc9A5lp575" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="7mc9A5lp576" role="1tU5fm">
          <ref role="3uigEE" to="67a5:~WebSocketServletFactory" resolve="WebSocketServletFactory" />
        </node>
      </node>
      <node concept="3clFbS" id="7mc9A5lp577" role="3clF47">
        <node concept="3clFbF" id="7mc9A5lp5im" role="3cqZAp">
          <node concept="2OqwBi" id="7mc9A5lp5qI" role="3clFbG">
            <node concept="37vLTw" id="7mc9A5lp5il" role="2Oq$k0">
              <ref role="3cqZAo" node="7mc9A5lp575" resolve="factory" />
            </node>
            <node concept="liA8E" id="7mc9A5lp5NY" role="2OqNvi">
              <ref role="37wK5l" to="67a5:~WebSocketServletFactory.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="7mc9A5lp5Um" role="37wK5m">
                <ref role="3VsUkX" to="2qs1:AkkmJBTMtq" resolve="InteractionServer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7mc9A5lp578" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5J75zQcG6N4">
    <property role="TrG5h" value="ClassLoaderSettingHandler" />
    <property role="2bfB8j" value="true" />
    <node concept="3Tm1VV" id="5J75zQcG6N5" role="1B3o_S" />
    <node concept="3uibUv" id="5J75zQcG6N6" role="1zkMxy">
      <ref role="3uigEE" to="cgcg:~HandlerWrapper" resolve="HandlerWrapper" />
    </node>
    <node concept="3clFb_" id="5J75zQcG6Nm" role="jymVt">
      <property role="TrG5h" value="handle" />
      <node concept="2AHcQZ" id="5J75zQcG6Nn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="5J75zQcG6No" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="5Sw$pxbMBDK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5J75zQcG6Nq" role="3clF46">
        <property role="TrG5h" value="baseRequest" />
        <node concept="3uibUv" id="5J75zQcG6Nr" role="1tU5fm">
          <ref role="3uigEE" to="m2xw:~Request" resolve="Request" />
        </node>
      </node>
      <node concept="37vLTG" id="5J75zQcG6Ns" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="5J75zQcG6Nt" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletRequest" resolve="HttpServletRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="5J75zQcG6Nu" role="3clF46">
        <property role="TrG5h" value="response" />
        <node concept="3uibUv" id="5J75zQcG6Nv" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
        </node>
      </node>
      <node concept="3uibUv" id="5J75zQcG6Nw" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="5J75zQcG6Nx" role="Sfmx6">
        <ref role="3uigEE" to="opgt:~ServletException" resolve="ServletException" />
      </node>
      <node concept="3clFbS" id="5J75zQcG6Ny" role="3clF47">
        <node concept="3cpWs8" id="5Sw$pxbMDjy" role="3cqZAp">
          <node concept="3cpWsn" id="5Sw$pxbMDjz" role="3cpWs9">
            <property role="TrG5h" value="previous" />
            <node concept="3uibUv" id="5Sw$pxbMDjv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="5Sw$pxbMDj$" role="33vP2m">
              <node concept="2YIFZM" id="5Sw$pxbMDj_" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
              </node>
              <node concept="liA8E" id="5Sw$pxbMDjA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Thread.getContextClassLoader()" resolve="getContextClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="5Sw$pxbMEm$" role="3cqZAp">
          <node concept="3clFbS" id="5Sw$pxbMEmA" role="2GV8ay">
            <node concept="3clFbF" id="5Sw$pxbMEyt" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbMEyu" role="3clFbG">
                <node concept="2YIFZM" id="5Sw$pxbMEyv" role="2Oq$k0">
                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                  <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                </node>
                <node concept="liA8E" id="5Sw$pxbMEyw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                  <node concept="2OqwBi" id="5Sw$pxbMFBx" role="37wK5m">
                    <node concept="1rXfSq" id="5Sw$pxbMF8H" role="2Oq$k0">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="5Sw$pxbMHtx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5J75zQcG6PJ" role="3cqZAp">
              <node concept="2OqwBi" id="5J75zQcG6PK" role="3clFbG">
                <node concept="1rXfSq" id="5J75zQcG6PL" role="2Oq$k0">
                  <ref role="37wK5l" to="cgcg:~HandlerWrapper.getHandler()" resolve="getHandler" />
                </node>
                <node concept="liA8E" id="5J75zQcG6PM" role="2OqNvi">
                  <ref role="37wK5l" to="m2xw:~Handler.handle(java.lang.String,org.eclipse.jetty.server.Request,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse)" resolve="handle" />
                  <node concept="37vLTw" id="5J75zQcG6PN" role="37wK5m">
                    <ref role="3cqZAo" node="5J75zQcG6No" resolve="target" />
                  </node>
                  <node concept="37vLTw" id="5J75zQcG6PO" role="37wK5m">
                    <ref role="3cqZAo" node="5J75zQcG6Nq" resolve="baseRequest" />
                  </node>
                  <node concept="37vLTw" id="5J75zQcG6PP" role="37wK5m">
                    <ref role="3cqZAo" node="5J75zQcG6Ns" resolve="request" />
                  </node>
                  <node concept="37vLTw" id="5J75zQcG6PQ" role="37wK5m">
                    <ref role="3cqZAo" node="5J75zQcG6Nu" resolve="response" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5Sw$pxbMEmB" role="2GVbov">
            <node concept="3clFbF" id="5Sw$pxbMDz_" role="3cqZAp">
              <node concept="2OqwBi" id="5Sw$pxbMDzB" role="3clFbG">
                <node concept="2YIFZM" id="5Sw$pxbMDzC" role="2Oq$k0">
                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                  <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                </node>
                <node concept="liA8E" id="5Sw$pxbMDNj" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                  <node concept="37vLTw" id="5Sw$pxbMDVM" role="37wK5m">
                    <ref role="3cqZAo" node="5Sw$pxbMDjz" resolve="previous" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5J75zQcG6Se" role="1B3o_S" />
      <node concept="3cqZAl" id="5J75zQcG6Sf" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="5Sw$pxbNu8p">
    <property role="TrG5h" value="SvgUiServlet" />
    <node concept="2tJIrI" id="5Sw$pxbNuqi" role="jymVt" />
    <node concept="3Tm1VV" id="5Sw$pxbNu8q" role="1B3o_S" />
    <node concept="3uibUv" id="5Sw$pxbNu8r" role="1zkMxy">
      <ref role="3uigEE" to="67a5:~WebSocketServlet" resolve="WebSocketServlet" />
    </node>
    <node concept="3clFb_" id="5Sw$pxbNu8s" role="jymVt">
      <property role="TrG5h" value="configure" />
      <node concept="3Tm1VV" id="5Sw$pxbNu8t" role="1B3o_S" />
      <node concept="3cqZAl" id="5Sw$pxbNu8u" role="3clF45" />
      <node concept="37vLTG" id="5Sw$pxbNu8v" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="5Sw$pxbNu8w" role="1tU5fm">
          <ref role="3uigEE" to="67a5:~WebSocketServletFactory" resolve="WebSocketServletFactory" />
        </node>
      </node>
      <node concept="3clFbS" id="5Sw$pxbNu8x" role="3clF47">
        <node concept="3clFbF" id="5Sw$pxbNu8B" role="3cqZAp">
          <node concept="2OqwBi" id="5Sw$pxbNu8C" role="3clFbG">
            <node concept="37vLTw" id="5Sw$pxbNu8D" role="2Oq$k0">
              <ref role="3cqZAo" node="5Sw$pxbNu8v" resolve="factory" />
            </node>
            <node concept="liA8E" id="5Sw$pxbNu8E" role="2OqNvi">
              <ref role="37wK5l" to="67a5:~WebSocketServletFactory.setCreator(org.eclipse.jetty.websocket.servlet.WebSocketCreator)" resolve="setCreator" />
              <node concept="2ShNRf" id="5Sw$pxbNu8F" role="37wK5m">
                <node concept="YeOm9" id="5Sw$pxbNu8G" role="2ShVmc">
                  <node concept="1Y3b0j" id="5Sw$pxbNu8H" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="67a5:~WebSocketCreator" resolve="WebSocketCreator" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="5Sw$pxbNu8I" role="1B3o_S" />
                    <node concept="3clFb_" id="5Sw$pxbNu8J" role="jymVt">
                      <property role="TrG5h" value="createWebSocket" />
                      <node concept="3Tm1VV" id="5Sw$pxbNu8K" role="1B3o_S" />
                      <node concept="3uibUv" id="5Sw$pxbNu8L" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTG" id="5Sw$pxbNu8M" role="3clF46">
                        <property role="TrG5h" value="request" />
                        <node concept="3uibUv" id="5Sw$pxbNu8N" role="1tU5fm">
                          <ref role="3uigEE" to="67a5:~ServletUpgradeRequest" resolve="ServletUpgradeRequest" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5Sw$pxbNu8O" role="3clF46">
                        <property role="TrG5h" value="response" />
                        <node concept="3uibUv" id="5Sw$pxbNu8P" role="1tU5fm">
                          <ref role="3uigEE" to="67a5:~ServletUpgradeResponse" resolve="ServletUpgradeResponse" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5Sw$pxbNu8Q" role="3clF47">
                        <node concept="SfApY" id="3RbPf8OJmIE" role="3cqZAp">
                          <node concept="3clFbS" id="3RbPf8OJmIG" role="SfCbr">
                            <node concept="3cpWs8" id="5Sw$pxbPd8p" role="3cqZAp">
                              <node concept="3cpWsn" id="5Sw$pxbPd8q" role="3cpWs9">
                                <property role="TrG5h" value="openedProjects" />
                                <node concept="_YKpA" id="5Sw$pxbPdrb" role="1tU5fm">
                                  <node concept="3uibUv" id="5Sw$pxbPdrd" role="_ZDj9">
                                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5Sw$pxbPd8r" role="33vP2m">
                                  <node concept="2YIFZM" id="5Sw$pxbPd8s" role="2Oq$k0">
                                    <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                                    <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                                  </node>
                                  <node concept="liA8E" id="5Sw$pxbPd8t" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5Sw$pxbPdHM" role="3cqZAp">
                              <node concept="3clFbS" id="5Sw$pxbPdHO" role="3clFbx">
                                <node concept="3cpWs6" id="5Sw$pxbPlLr" role="3cqZAp">
                                  <node concept="10Nm6u" id="5Sw$pxbPlQj" role="3cqZAk" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5Sw$pxbPeJ8" role="3clFbw">
                                <node concept="37vLTw" id="5Sw$pxbPdSJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Sw$pxbPd8q" resolve="openedProjects" />
                                </node>
                                <node concept="1v1jN8" id="5Sw$pxbPlDg" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3clFbH" id="2mcPA70vuTW" role="3cqZAp" />
                            <node concept="3cpWs8" id="2mcPA70v$M_" role="3cqZAp">
                              <node concept="3cpWsn" id="2mcPA70v$MA" role="3cpWs9">
                                <property role="TrG5h" value="headers" />
                                <node concept="3rvAFt" id="2mcPA70v__J" role="1tU5fm">
                                  <node concept="3uibUv" id="2mcPA70vDWf" role="3rvQeY">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                  <node concept="3uibUv" id="2mcPA70vCM3" role="3rvSg0">
                                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                    <node concept="3uibUv" id="2mcPA70vDCO" role="11_B2D">
                                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2mcPA70v$MB" role="33vP2m">
                                  <node concept="37vLTw" id="2mcPA70v$MC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5Sw$pxbNu8M" resolve="request" />
                                  </node>
                                  <node concept="liA8E" id="2mcPA70v$MD" role="2OqNvi">
                                    <ref role="37wK5l" to="67a5:~ServletUpgradeRequest.getHeaders()" resolve="getHeaders" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2mcPA70vTRA" role="3cqZAp">
                              <node concept="3cpWsn" id="2mcPA70vTRB" role="3cpWs9">
                                <property role="TrG5h" value="headersString" />
                                <node concept="17QB3L" id="2mcPA70vTBQ" role="1tU5fm" />
                                <node concept="2OqwBi" id="2mcPA70vTRC" role="33vP2m">
                                  <node concept="2OqwBi" id="2mcPA70vTRD" role="2Oq$k0">
                                    <node concept="37vLTw" id="2mcPA70vTRE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2mcPA70v$MA" resolve="headers" />
                                    </node>
                                    <node concept="3goQfb" id="2mcPA70vTRF" role="2OqNvi">
                                      <node concept="1bVj0M" id="2mcPA70vTRG" role="23t8la">
                                        <node concept="3clFbS" id="2mcPA70vTRH" role="1bW5cS">
                                          <node concept="3cpWs8" id="2mcPA70vTRI" role="3cqZAp">
                                            <node concept="3cpWsn" id="2mcPA70vTRJ" role="3cpWs9">
                                              <property role="TrG5h" value="values" />
                                              <node concept="_YKpA" id="2mcPA70vTRK" role="1tU5fm">
                                                <node concept="3uibUv" id="2mcPA70vTRL" role="_ZDj9">
                                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="2mcPA70vTRM" role="33vP2m">
                                                <node concept="37vLTw" id="2mcPA70vTRN" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2mcPA70vTS5" resolve="entry" />
                                                </node>
                                                <node concept="3AV6Ez" id="2mcPA70vTRO" role="2OqNvi" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="2mcPA70vTRP" role="3cqZAp">
                                            <node concept="2OqwBi" id="2mcPA70vTRQ" role="3clFbG">
                                              <node concept="37vLTw" id="2mcPA70vTRR" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2mcPA70vTRJ" resolve="values" />
                                              </node>
                                              <node concept="3$u5V9" id="2mcPA70vTRS" role="2OqNvi">
                                                <node concept="1bVj0M" id="2mcPA70vTRT" role="23t8la">
                                                  <node concept="3clFbS" id="2mcPA70vTRU" role="1bW5cS">
                                                    <node concept="3clFbF" id="2mcPA70vTRV" role="3cqZAp">
                                                      <node concept="3cpWs3" id="2mcPA70vTRW" role="3clFbG">
                                                        <node concept="37vLTw" id="2mcPA70vTRX" role="3uHU7w">
                                                          <ref role="3cqZAo" node="2mcPA70vTS3" resolve="value" />
                                                        </node>
                                                        <node concept="3cpWs3" id="2mcPA70vTRY" role="3uHU7B">
                                                          <node concept="3cpWs3" id="2mcPA70vX20" role="3uHU7B">
                                                            <node concept="Xl_RD" id="2mcPA70vXyy" role="3uHU7B">
                                                              <property role="Xl_RC" value="    " />
                                                            </node>
                                                            <node concept="2OqwBi" id="2mcPA70vTRZ" role="3uHU7w">
                                                              <node concept="37vLTw" id="2mcPA70vTS0" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="2mcPA70vTS5" resolve="entry" />
                                                              </node>
                                                              <node concept="3AY5_j" id="2mcPA70vTS1" role="2OqNvi" />
                                                            </node>
                                                          </node>
                                                          <node concept="Xl_RD" id="2mcPA70vTS2" role="3uHU7w">
                                                            <property role="Xl_RC" value=": " />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="2mcPA70vTS3" role="1bW2Oz">
                                                    <property role="TrG5h" value="value" />
                                                    <node concept="2jxLKc" id="2mcPA70vTS4" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="2mcPA70vTS5" role="1bW2Oz">
                                          <property role="TrG5h" value="entry" />
                                          <node concept="2jxLKc" id="2mcPA70vTS6" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uJxvA" id="2mcPA70vTS7" role="2OqNvi">
                                    <node concept="Xl_RD" id="2mcPA70vTS8" role="3uJOhx">
                                      <property role="Xl_RC" value="\n" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="RRSsy" id="2mcPA70vVPT" role="3cqZAp">
                              <node concept="3cpWs3" id="2mcPA70vYCg" role="RRSoy">
                                <node concept="37vLTw" id="2mcPA70vZjV" role="3uHU7w">
                                  <ref role="3cqZAo" node="2mcPA70vTRB" resolve="headersString" />
                                </node>
                                <node concept="Xl_RD" id="2mcPA70vVPV" role="3uHU7B">
                                  <property role="Xl_RC" value="New websocket connection with headers:\n" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="2mcPA70vvdm" role="3cqZAp" />
                            <node concept="3cpWs6" id="3RbPf8OJC89" role="3cqZAp">
                              <node concept="2ShNRf" id="3RbPf8OJC8b" role="3cqZAk">
                                <node concept="1pGfFk" id="3RbPf8OJC8c" role="2ShVmc">
                                  <ref role="37wK5l" to="o8cn:6xm2RBlaUMt" resolve="RenderServer" />
                                  <node concept="2OqwBi" id="3RbPf8OJC8d" role="37wK5m">
                                    <node concept="37vLTw" id="3RbPf8OJC8e" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5Sw$pxbPd8q" resolve="openedProjects" />
                                    </node>
                                    <node concept="1uHKPH" id="3RbPf8OJC8f" role="2OqNvi" />
                                  </node>
                                  <node concept="2OqwBi" id="1W$kLfT1jEO" role="37wK5m">
                                    <node concept="37vLTw" id="1W$kLfT1jEP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5Sw$pxbNu8M" resolve="request" />
                                    </node>
                                    <node concept="liA8E" id="1W$kLfT1jEQ" role="2OqNvi">
                                      <ref role="37wK5l" to="67a5:~ServletUpgradeRequest.getHeader(java.lang.String)" resolve="getHeader" />
                                      <node concept="Xl_RD" id="1W$kLfT1jER" role="37wK5m">
                                        <property role="Xl_RC" value="X-Forwarded-Email" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="TDmWw" id="3RbPf8OJmIH" role="TEbGg">
                            <node concept="3cpWsn" id="3RbPf8OJmIJ" role="TDEfY">
                              <property role="TrG5h" value="ex" />
                              <node concept="3uibUv" id="3RbPf8OJnih" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3RbPf8OJmIN" role="TDEfX">
                              <node concept="3cpWs8" id="3RbPf8OJBdU" role="3cqZAp">
                                <node concept="3cpWsn" id="3RbPf8OJBdV" role="3cpWs9">
                                  <property role="TrG5h" value="msg" />
                                  <node concept="17QB3L" id="3RbPf8OJtD4" role="1tU5fm" />
                                  <node concept="3cpWs3" id="3RbPf8OJBdW" role="33vP2m">
                                    <node concept="2OqwBi" id="3RbPf8OJBdX" role="3uHU7w">
                                      <node concept="37vLTw" id="3RbPf8OJBdY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5Sw$pxbNu8M" resolve="request" />
                                      </node>
                                      <node concept="liA8E" id="3RbPf8OJBdZ" role="2OqNvi">
                                        <ref role="37wK5l" to="67a5:~ServletUpgradeRequest.getRequestURI()" resolve="getRequestURI" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="3RbPf8OJBe0" role="3uHU7B">
                                      <property role="Xl_RC" value="Failed to create WebSocket connection for " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="RRSsy" id="3RbPf8OJqBW" role="3cqZAp">
                                <property role="RRSoG" value="gZ5fh_4/error" />
                                <node concept="37vLTw" id="3RbPf8OJBe1" role="RRSoy">
                                  <ref role="3cqZAo" node="3RbPf8OJBdV" resolve="msg" />
                                </node>
                                <node concept="37vLTw" id="3RbPf8OJqC0" role="RRSow">
                                  <ref role="3cqZAo" node="3RbPf8OJmIJ" resolve="ex" />
                                </node>
                              </node>
                              <node concept="YS8fn" id="3RbPf8OJtCk" role="3cqZAp">
                                <node concept="2ShNRf" id="3RbPf8OJtH2" role="YScLw">
                                  <node concept="1pGfFk" id="3RbPf8OJBag" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                                    <node concept="37vLTw" id="3RbPf8OJBnH" role="37wK5m">
                                      <ref role="3cqZAo" node="3RbPf8OJBdV" resolve="msg" />
                                    </node>
                                    <node concept="37vLTw" id="3RbPf8OJBBM" role="37wK5m">
                                      <ref role="3cqZAo" node="3RbPf8OJmIJ" resolve="ex" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5Sw$pxbNu8R" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Sw$pxbNu8S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="QucyCqZ7eL">
    <property role="TrG5h" value="HealthCheckServlet" />
    <node concept="3Tm1VV" id="QucyCqZ7eM" role="1B3o_S" />
    <node concept="3uibUv" id="QucyCqZ7me" role="1zkMxy">
      <ref role="3uigEE" to="nwfd:~HttpServlet" resolve="HttpServlet" />
    </node>
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
        <node concept="3clFbJ" id="QucyCqZ8c8" role="3cqZAp">
          <node concept="3clFbS" id="QucyCqZ8ca" role="3clFbx">
            <node concept="3clFbF" id="QucyCqZ8BW" role="3cqZAp">
              <node concept="2OqwBi" id="QucyCqZ8NK" role="3clFbG">
                <node concept="37vLTw" id="QucyCqZ8BU" role="2Oq$k0">
                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                </node>
                <node concept="liA8E" id="QucyCqZ92V" role="2OqNvi">
                  <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                  <node concept="10M0yZ" id="2TMlwYi2sOs" role="37wK5m">
                    <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_OK" resolve="SC_OK" />
                    <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
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
            <node concept="3clFbF" id="2TMlwYi2tKO" role="3cqZAp">
              <node concept="2OqwBi" id="2TMlwYi2ulR" role="3clFbG">
                <node concept="2OqwBi" id="2TMlwYi2tVR" role="2Oq$k0">
                  <node concept="37vLTw" id="2TMlwYi2tKM" role="2Oq$k0">
                    <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                  </node>
                  <node concept="liA8E" id="2TMlwYi2u17" role="2OqNvi">
                    <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                  </node>
                </node>
                <node concept="liA8E" id="2TMlwYi2uMX" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                  <node concept="Xl_RD" id="2TMlwYi2uQK" role="37wK5m">
                    <property role="Xl_RC" value="healthy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="QucyCqZ8gs" role="3clFbw">
            <ref role="37wK5l" node="QucyCqZ7Jm" resolve="isHealthy" />
          </node>
          <node concept="9aQIb" id="QucyCqZfrw" role="9aQIa">
            <node concept="3clFbS" id="QucyCqZfrx" role="9aQI4">
              <node concept="3clFbF" id="QucyCqZfyN" role="3cqZAp">
                <node concept="2OqwBi" id="QucyCqZfG_" role="3clFbG">
                  <node concept="37vLTw" id="QucyCqZfyM" role="2Oq$k0">
                    <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                  </node>
                  <node concept="liA8E" id="QucyCqZfYr" role="2OqNvi">
                    <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                    <node concept="10M0yZ" id="QucyCqZgkz" role="37wK5m">
                      <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_NOT_FOUND" resolve="SC_NOT_FOUND" />
                      <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2TMlwYi2x96" role="3cqZAp">
                <node concept="2OqwBi" id="2TMlwYi2x97" role="3clFbG">
                  <node concept="37vLTw" id="2TMlwYi2x98" role="2Oq$k0">
                    <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                  </node>
                  <node concept="liA8E" id="2TMlwYi2x99" role="2OqNvi">
                    <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                    <node concept="Xl_RD" id="2TMlwYi2x9a" role="37wK5m">
                      <property role="Xl_RC" value="text/html" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2TMlwYi2x9b" role="3cqZAp">
                <node concept="2OqwBi" id="2TMlwYi2x9c" role="3clFbG">
                  <node concept="2OqwBi" id="2TMlwYi2x9d" role="2Oq$k0">
                    <node concept="37vLTw" id="2TMlwYi2x9e" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="2TMlwYi2x9f" role="2OqNvi">
                      <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2TMlwYi2x9g" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                    <node concept="Xl_RD" id="2TMlwYi2x9h" role="37wK5m">
                      <property role="Xl_RC" value="unhealthy" />
                    </node>
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
    <node concept="2tJIrI" id="QucyCqZ7Cx" role="jymVt" />
    <node concept="3clFb_" id="QucyCqZ7Jm" role="jymVt">
      <property role="TrG5h" value="isHealthy" />
      <node concept="10P_77" id="QucyCqZ81Z" role="3clF45" />
      <node concept="3Tm1VV" id="QucyCqZ7Jp" role="1B3o_S" />
      <node concept="3clFbS" id="QucyCqZ7Jq" role="3clF47">
        <node concept="3cpWs8" id="QucyCqZDKM" role="3cqZAp">
          <node concept="3cpWsn" id="QucyCqZDKP" role="3cpWs9">
            <property role="TrG5h" value="healthy" />
            <node concept="10P_77" id="QucyCqZDKK" role="1tU5fm" />
            <node concept="3clFbT" id="QucyCqZE0Y" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2TMlwYi2E7p" role="3cqZAp" />
        <node concept="SfApY" id="2TMlwYi2CCK" role="3cqZAp">
          <node concept="3clFbS" id="2TMlwYi2CCM" role="SfCbr">
            <node concept="3cpWs8" id="QucyCqZCkH" role="3cqZAp">
              <node concept="3cpWsn" id="QucyCqZCkI" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="QucyCqZC0Q" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
                <node concept="2YIFZM" id="QucyCqZCkJ" role="33vP2m">
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="QucyCqZCCq" role="3cqZAp">
              <node concept="2OqwBi" id="QucyCqZFlN" role="3clFbG">
                <node concept="2OqwBi" id="QucyCqZDcu" role="2Oq$k0">
                  <node concept="37vLTw" id="QucyCqZCCo" role="2Oq$k0">
                    <ref role="3cqZAo" node="QucyCqZCkI" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="QucyCqZFdK" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="QucyCqZFwP" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="QucyCqZFBQ" role="37wK5m">
                    <node concept="3clFbS" id="QucyCqZFBR" role="1bW5cS">
                      <node concept="3cpWs8" id="QucyCqZhXe" role="3cqZAp">
                        <node concept="3cpWsn" id="QucyCqZhXf" role="3cpWs9">
                          <property role="TrG5h" value="modules" />
                          <node concept="A3Dl8" id="QucyCqZiiY" role="1tU5fm">
                            <node concept="3uibUv" id="QucyCqZij0" role="A3Ik2">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="QucyCqZhXg" role="33vP2m">
                            <node concept="37vLTw" id="QucyCqZCkK" role="2Oq$k0">
                              <ref role="3cqZAo" node="QucyCqZCkI" resolve="repo" />
                            </node>
                            <node concept="liA8E" id="QucyCqZhXi" role="2OqNvi">
                              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModules()" resolve="getModules" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="QucyCqZksk" role="3cqZAp">
                        <node concept="3clFbS" id="QucyCqZksm" role="3clFbx">
                          <node concept="3clFbF" id="QucyCqZGc_" role="3cqZAp">
                            <node concept="37vLTI" id="QucyCqZGAX" role="3clFbG">
                              <node concept="3clFbT" id="QucyCqZGHP" role="37vLTx" />
                              <node concept="37vLTw" id="QucyCqZGcy" role="37vLTJ">
                                <ref role="3cqZAo" node="QucyCqZDKP" resolve="healthy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="QucyCqZjzH" role="3clFbw">
                          <node concept="2OqwBi" id="QucyCqZizU" role="2Oq$k0">
                            <node concept="37vLTw" id="QucyCqZhXj" role="2Oq$k0">
                              <ref role="3cqZAo" node="QucyCqZhXf" resolve="modules" />
                            </node>
                            <node concept="UnYns" id="QucyCqZj3m" role="2OqNvi">
                              <node concept="3uibUv" id="QucyCqZji6" role="UnYnz">
                                <ref role="3uigEE" to="csg2:115Xaa43tZI" resolve="CloudTransientModule" />
                              </node>
                            </node>
                          </node>
                          <node concept="1v1jN8" id="QucyCqZk4R" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="2TMlwYi2CCN" role="TEbGg">
            <node concept="3cpWsn" id="2TMlwYi2CCP" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="2TMlwYi2D0X" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="2TMlwYi2CCT" role="TDEfX">
              <node concept="RRSsy" id="2TMlwYi2IcO" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="2TMlwYi2IcQ" role="RRSoy">
                  <property role="Xl_RC" value="Health check failed" />
                </node>
                <node concept="37vLTw" id="2TMlwYi2IcS" role="RRSow">
                  <ref role="3cqZAo" node="2TMlwYi2CCP" resolve="ex" />
                </node>
              </node>
              <node concept="3clFbF" id="2TMlwYi2Dfp" role="3cqZAp">
                <node concept="37vLTI" id="2TMlwYi2D$U" role="3clFbG">
                  <node concept="3clFbT" id="2TMlwYi2DCo" role="37vLTx" />
                  <node concept="37vLTw" id="2TMlwYi2Dfo" role="37vLTJ">
                    <ref role="3cqZAo" node="QucyCqZDKP" resolve="healthy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="QucyCqZlqF" role="3cqZAp" />
        <node concept="3cpWs6" id="QucyCqZ8pH" role="3cqZAp">
          <node concept="37vLTw" id="QucyCqZE8_" role="3cqZAk">
            <ref role="3cqZAo" node="QucyCqZDKP" resolve="healthy" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QucyCqZIhn" role="jymVt" />
  </node>
  <node concept="312cEu" id="7aolmNHljqV">
    <property role="TrG5h" value="LongRunningCommandDetector" />
    <node concept="312cEg" id="7aolmNHm$wq" role="jymVt">
      <property role="TrG5h" value="traces" />
      <node concept="3Tm6S6" id="7aolmNHm$wr" role="1B3o_S" />
      <node concept="2hMVRd" id="7aolmNHm_3T" role="1tU5fm">
        <node concept="17QB3L" id="7aolmNHn2iy" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="7aolmNHm_j1" role="33vP2m">
        <node concept="2i4dXS" id="7aolmNHm_ie" role="2ShVmc">
          <node concept="17QB3L" id="7aolmNHn2rV" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7aolmNHm9Wf" role="jymVt">
      <property role="TrG5h" value="modelAccess" />
      <node concept="3Tm6S6" id="7aolmNHm9Wg" role="1B3o_S" />
      <node concept="3uibUv" id="7aolmNHm6NZ" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
    </node>
    <node concept="312cEg" id="7aolmNHmhOg" role="jymVt">
      <property role="TrG5h" value="commandListener" />
      <node concept="3Tm6S6" id="7aolmNHmhOh" role="1B3o_S" />
      <node concept="3uibUv" id="7aolmNHmifw" role="1tU5fm">
        <ref role="3uigEE" to="nvd4:~CommandListener" resolve="CommandListener" />
      </node>
      <node concept="2ShNRf" id="7aolmNHming" role="33vP2m">
        <node concept="YeOm9" id="7aolmNHmiEw" role="2ShVmc">
          <node concept="1Y3b0j" id="7aolmNHmiEz" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="nvd4:~CommandListener" resolve="CommandListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="312cEg" id="7aolmNHlOrp" role="jymVt">
              <property role="TrG5h" value="startTimes" />
              <node concept="3Tm6S6" id="7aolmNHlOrq" role="1B3o_S" />
              <node concept="_YKpA" id="7aolmNHlPRk" role="1tU5fm">
                <node concept="3cpWsb" id="7aolmNHlPRl" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="7aolmNHlQmp" role="33vP2m">
                <node concept="Tc6Ow" id="7aolmNHlQkn" role="2ShVmc">
                  <node concept="3cpWsb" id="7aolmNHlQko" role="HW$YZ" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="7aolmNHmiE$" role="1B3o_S" />
            <node concept="3clFb_" id="7aolmNHlNnm" role="jymVt">
              <property role="TrG5h" value="commandStarted" />
              <node concept="3Tm1VV" id="7aolmNHlNnn" role="1B3o_S" />
              <node concept="3cqZAl" id="7aolmNHlNnp" role="3clF45" />
              <node concept="3clFbS" id="7aolmNHlNnq" role="3clF47">
                <node concept="3clFbF" id="7aolmNHlQB3" role="3cqZAp">
                  <node concept="2OqwBi" id="7aolmNHlRrR" role="3clFbG">
                    <node concept="37vLTw" id="7aolmNHlQB2" role="2Oq$k0">
                      <ref role="3cqZAo" node="7aolmNHlOrp" resolve="startTimes" />
                    </node>
                    <node concept="TSZUe" id="7aolmNHlTh4" role="2OqNvi">
                      <node concept="2YIFZM" id="7aolmNHlTJD" role="25WWJ7">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7aolmNHlNns" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7aolmNHlNnt" role="jymVt" />
            <node concept="3clFb_" id="7aolmNHlNnu" role="jymVt">
              <property role="TrG5h" value="commandFinished" />
              <node concept="3Tm1VV" id="7aolmNHlNnv" role="1B3o_S" />
              <node concept="3cqZAl" id="7aolmNHlNnx" role="3clF45" />
              <node concept="3clFbS" id="7aolmNHlNny" role="3clF47">
                <node concept="3cpWs8" id="7aolmNHmDOm" role="3cqZAp">
                  <node concept="3cpWsn" id="7aolmNHmDOn" role="3cpWs9">
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="7aolmNHmEqL" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                    </node>
                    <node concept="2OqwBi" id="7aolmNHmDOo" role="33vP2m">
                      <node concept="37vLTw" id="7aolmNHmDOp" role="2Oq$k0">
                        <ref role="3cqZAo" node="7aolmNHlOrp" resolve="startTimes" />
                      </node>
                      <node concept="2Kt5_m" id="7aolmNHmDOq" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7aolmNHmEEN" role="3cqZAp">
                  <node concept="3clFbS" id="7aolmNHmEEP" role="3clFbx">
                    <node concept="3cpWs6" id="7aolmNHmGuI" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="7aolmNHmG7i" role="3clFbw">
                    <node concept="10Nm6u" id="7aolmNHmGp8" role="3uHU7w" />
                    <node concept="37vLTw" id="7aolmNHmFeD" role="3uHU7B">
                      <ref role="3cqZAo" node="7aolmNHmDOn" resolve="s" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7aolmNHlXAI" role="3cqZAp">
                  <node concept="3cpWsn" id="7aolmNHlXAL" role="3cpWs9">
                    <property role="TrG5h" value="duration" />
                    <node concept="3cpWsb" id="7aolmNHlXAG" role="1tU5fm" />
                    <node concept="3cpWsd" id="7aolmNHlYwW" role="33vP2m">
                      <node concept="2YIFZM" id="7aolmNHlXVV" role="3uHU7B">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                      <node concept="37vLTw" id="7aolmNHmDOr" role="3uHU7w">
                        <ref role="3cqZAo" node="7aolmNHmDOn" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7aolmNHlYYJ" role="3cqZAp">
                  <node concept="3clFbS" id="7aolmNHlYYL" role="3clFbx">
                    <node concept="3clFbF" id="7aolmNHn9LR" role="3cqZAp">
                      <node concept="1rXfSq" id="7aolmNHn9LP" role="3clFbG">
                        <ref role="37wK5l" node="7aolmNHmYNR" resolve="report" />
                        <node concept="37vLTw" id="7aolmNHn9SV" role="37wK5m">
                          <ref role="3cqZAo" node="7aolmNHlXAL" resolve="duration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="7aolmNHm01R" role="3clFbw">
                    <node concept="3cmrfG" id="7aolmNHm03S" role="3uHU7w">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="37vLTw" id="7aolmNHlZjC" role="3uHU7B">
                      <ref role="3cqZAo" node="7aolmNHlXAL" resolve="duration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7aolmNHlNn$" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7aolmNHml6q" role="jymVt">
      <property role="TrG5h" value="readActionListener" />
      <node concept="3Tm6S6" id="7aolmNHml6r" role="1B3o_S" />
      <node concept="3uibUv" id="7aolmNHmlNu" role="1tU5fm">
        <ref role="3uigEE" to="nvd4:~ReadActionListener" resolve="ReadActionListener" />
      </node>
      <node concept="2ShNRf" id="7aolmNHmlQi" role="33vP2m">
        <node concept="YeOm9" id="7aolmNHmm7T" role="2ShVmc">
          <node concept="1Y3b0j" id="7aolmNHmm7W" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="nvd4:~ReadActionListener" resolve="ReadActionListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="312cEg" id="7aolmNHmmps" role="jymVt">
              <property role="TrG5h" value="startTimes" />
              <node concept="3uibUv" id="7aolmNHmmmz" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
                <node concept="_YKpA" id="7aolmNHmmNB" role="11_B2D">
                  <node concept="3cpWsb" id="7aolmNHmmUq" role="_ZDj9" />
                </node>
              </node>
              <node concept="2ShNRf" id="7aolmNHmmyf" role="33vP2m">
                <node concept="1pGfFk" id="7aolmNHmmvF" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
                </node>
              </node>
              <node concept="3Tm6S6" id="7aolmNHmm_P" role="1B3o_S" />
            </node>
            <node concept="3clFb_" id="7aolmNHmn6d" role="jymVt">
              <property role="TrG5h" value="startTimes" />
              <node concept="_YKpA" id="7aolmNHmnzN" role="3clF45">
                <node concept="3cpWsb" id="7aolmNHmnFl" role="_ZDj9" />
              </node>
              <node concept="3Tm1VV" id="7aolmNHmn6g" role="1B3o_S" />
              <node concept="3clFbS" id="7aolmNHmn6h" role="3clF47">
                <node concept="3cpWs8" id="7aolmNHmoLW" role="3cqZAp">
                  <node concept="3cpWsn" id="7aolmNHmoLX" role="3cpWs9">
                    <property role="TrG5h" value="l" />
                    <node concept="_YKpA" id="7aolmNHmoJH" role="1tU5fm">
                      <node concept="3cpWsb" id="7aolmNHmoJK" role="_ZDj9" />
                    </node>
                    <node concept="2OqwBi" id="7aolmNHmoLY" role="33vP2m">
                      <node concept="37vLTw" id="7aolmNHmoLZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7aolmNHmmps" resolve="startTimes" />
                      </node>
                      <node concept="liA8E" id="7aolmNHmoM0" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7aolmNHmp2e" role="3cqZAp">
                  <node concept="3clFbS" id="7aolmNHmp2g" role="3clFbx">
                    <node concept="3clFbF" id="7aolmNHmqtp" role="3cqZAp">
                      <node concept="37vLTI" id="7aolmNHmqtN" role="3clFbG">
                        <node concept="2ShNRf" id="7aolmNHmqAU" role="37vLTx">
                          <node concept="Tc6Ow" id="7aolmNHmqxA" role="2ShVmc">
                            <node concept="3cpWsb" id="7aolmNHmqxB" role="HW$YZ" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7aolmNHmqtn" role="37vLTJ">
                          <ref role="3cqZAo" node="7aolmNHmoLX" resolve="l" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7aolmNHmqNP" role="3cqZAp">
                      <node concept="2OqwBi" id="7aolmNHmr2u" role="3clFbG">
                        <node concept="37vLTw" id="7aolmNHmqNN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7aolmNHmmps" resolve="startTimes" />
                        </node>
                        <node concept="liA8E" id="7aolmNHmrlc" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                          <node concept="37vLTw" id="7aolmNHmrs7" role="37wK5m">
                            <ref role="3cqZAo" node="7aolmNHmoLX" resolve="l" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="7aolmNHmpUd" role="3clFbw">
                    <node concept="10Nm6u" id="7aolmNHmqmY" role="3uHU7w" />
                    <node concept="37vLTw" id="7aolmNHmp7m" role="3uHU7B">
                      <ref role="3cqZAo" node="7aolmNHmoLX" resolve="l" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7aolmNHmnR7" role="3cqZAp">
                  <node concept="37vLTw" id="7aolmNHmoM1" role="3clFbG">
                    <ref role="3cqZAo" node="7aolmNHmoLX" resolve="l" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="7aolmNHmm7X" role="1B3o_S" />
            <node concept="3clFb_" id="7aolmNHmm82" role="jymVt">
              <property role="TrG5h" value="readStarted" />
              <node concept="3Tm1VV" id="7aolmNHmm83" role="1B3o_S" />
              <node concept="3cqZAl" id="7aolmNHmm85" role="3clF45" />
              <node concept="3clFbS" id="7aolmNHmm86" role="3clF47">
                <node concept="3clFbF" id="7aolmNHmrI4" role="3cqZAp">
                  <node concept="2OqwBi" id="7aolmNHmtBi" role="3clFbG">
                    <node concept="1rXfSq" id="7aolmNHmsTk" role="2Oq$k0">
                      <ref role="37wK5l" node="7aolmNHmn6d" resolve="startTimes" />
                    </node>
                    <node concept="TSZUe" id="7aolmNHmvnR" role="2OqNvi">
                      <node concept="2YIFZM" id="7aolmNHmvKh" role="25WWJ7">
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7aolmNHmm88" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7aolmNHmm89" role="jymVt" />
            <node concept="3clFb_" id="7aolmNHmm8a" role="jymVt">
              <property role="TrG5h" value="readFinished" />
              <node concept="3Tm1VV" id="7aolmNHmm8b" role="1B3o_S" />
              <node concept="3cqZAl" id="7aolmNHmm8d" role="3clF45" />
              <node concept="3clFbS" id="7aolmNHmm8e" role="3clF47">
                <node concept="3cpWs8" id="7aolmNHmAR9" role="3cqZAp">
                  <node concept="3cpWsn" id="7aolmNHmARa" role="3cpWs9">
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="7aolmNHmByI" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                    </node>
                    <node concept="2OqwBi" id="7aolmNHmARb" role="33vP2m">
                      <node concept="1rXfSq" id="7aolmNHmARc" role="2Oq$k0">
                        <ref role="37wK5l" node="7aolmNHmn6d" resolve="startTimes" />
                      </node>
                      <node concept="2Kt5_m" id="7aolmNHmARd" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7aolmNHmBU6" role="3cqZAp">
                  <node concept="3clFbS" id="7aolmNHmBU8" role="3clFbx">
                    <node concept="3cpWs6" id="7aolmNHmDML" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="7aolmNHmDhB" role="3clFbw">
                    <node concept="10Nm6u" id="7aolmNHmDHb" role="3uHU7w" />
                    <node concept="37vLTw" id="7aolmNHmCfn" role="3uHU7B">
                      <ref role="3cqZAo" node="7aolmNHmARa" resolve="s" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7aolmNHmwgD" role="3cqZAp">
                  <node concept="3cpWsn" id="7aolmNHmwgE" role="3cpWs9">
                    <property role="TrG5h" value="duration" />
                    <node concept="3cpWsb" id="7aolmNHmwgF" role="1tU5fm" />
                    <node concept="3cpWsd" id="7aolmNHmwgG" role="33vP2m">
                      <node concept="2YIFZM" id="7aolmNHmwgH" role="3uHU7B">
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                      </node>
                      <node concept="37vLTw" id="7aolmNHmARe" role="3uHU7w">
                        <ref role="3cqZAo" node="7aolmNHmARa" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7aolmNHmwgL" role="3cqZAp">
                  <node concept="3clFbS" id="7aolmNHmwgM" role="3clFbx">
                    <node concept="3clFbF" id="7aolmNHn9d8" role="3cqZAp">
                      <node concept="1rXfSq" id="7aolmNHn9d7" role="3clFbG">
                        <ref role="37wK5l" node="7aolmNHmYNR" resolve="report" />
                        <node concept="37vLTw" id="7aolmNHn9hP" role="37wK5m">
                          <ref role="3cqZAo" node="7aolmNHmwgE" resolve="duration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="7aolmNHmwgR" role="3clFbw">
                    <node concept="3cmrfG" id="7aolmNHmwgS" role="3uHU7w">
                      <property role="3cmrfH" value="100" />
                    </node>
                    <node concept="37vLTw" id="7aolmNHmwgT" role="3uHU7B">
                      <ref role="3cqZAo" node="7aolmNHmwgE" resolve="duration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7aolmNHmm8g" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="7aolmNHlusz" role="jymVt">
      <node concept="3cqZAl" id="7aolmNHlus_" role="3clF45" />
      <node concept="3Tm1VV" id="7aolmNHlusA" role="1B3o_S" />
      <node concept="3clFbS" id="7aolmNHlusB" role="3clF47">
        <node concept="3clFbF" id="7aolmNHm96c" role="3cqZAp">
          <node concept="37vLTI" id="7aolmNHm96e" role="3clFbG">
            <node concept="2OqwBi" id="7aolmNHm8Y4" role="37vLTx">
              <node concept="2YIFZM" id="7aolmNHm8Y5" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
              <node concept="liA8E" id="7aolmNHm8Y6" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="37vLTw" id="7aolmNHm96i" role="37vLTJ">
              <ref role="3cqZAo" node="7aolmNHm9Wf" resolve="modelAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7aolmNHluHn" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHlwcQ" role="3clFbG">
            <node concept="37vLTw" id="7aolmNHm8Y7" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm9Wf" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="7aolmNHlwlp" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="addCommandListener" />
              <node concept="37vLTw" id="7aolmNHmxWn" role="37wK5m">
                <ref role="3cqZAo" node="7aolmNHmhOg" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7aolmNHmeBp" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHmf6G" role="3clFbG">
            <node concept="37vLTw" id="7aolmNHmeBn" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm9Wf" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="7aolmNHmfJr" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addReadActionListener(org.jetbrains.mps.openapi.repository.ReadActionListener)" resolve="addReadActionListener" />
              <node concept="37vLTw" id="7aolmNHmxbn" role="37wK5m">
                <ref role="3cqZAo" node="7aolmNHml6q" resolve="readActionListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7aolmNHm61v" role="jymVt" />
    <node concept="3clFb_" id="7aolmNHm6AX" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="7aolmNHm6AZ" role="3clF45" />
      <node concept="3Tm1VV" id="7aolmNHm6B0" role="1B3o_S" />
      <node concept="3clFbS" id="7aolmNHm6B1" role="3clF47">
        <node concept="3clFbF" id="7aolmNHmas9" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHma_T" role="3clFbG">
            <node concept="37vLTw" id="7aolmNHmas8" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm9Wf" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="7aolmNHmaQt" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.removeCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="removeCommandListener" />
              <node concept="37vLTw" id="7aolmNHmy4R" role="37wK5m">
                <ref role="3cqZAo" node="7aolmNHmhOg" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7aolmNHmygb" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHmyoZ" role="3clFbG">
            <node concept="37vLTw" id="7aolmNHmyg9" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm9Wf" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="7aolmNHmyDD" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.removeReadActionListener(org.jetbrains.mps.openapi.repository.ReadActionListener)" resolve="removeReadActionListener" />
              <node concept="37vLTw" id="7aolmNHmyHe" role="37wK5m">
                <ref role="3cqZAo" node="7aolmNHml6q" resolve="readActionListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7aolmNHmHss" role="jymVt" />
    <node concept="3clFb_" id="7aolmNHmYNR" role="jymVt">
      <property role="TrG5h" value="report" />
      <node concept="37vLTG" id="7aolmNHn0_V" role="3clF46">
        <property role="TrG5h" value="duration" />
        <node concept="3cpWsb" id="7aolmNHn9w7" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7aolmNHmYNT" role="3clF45" />
      <node concept="3Tm1VV" id="7aolmNHmYNU" role="1B3o_S" />
      <node concept="3clFbS" id="7aolmNHmYNV" role="3clF47">
        <node concept="3cpWs8" id="7aolmNHn1ZJ" role="3cqZAp">
          <node concept="3cpWsn" id="7aolmNHn1ZK" role="3cpWs9">
            <property role="TrG5h" value="trace" />
            <node concept="17QB3L" id="7aolmNHn1GY" role="1tU5fm" />
            <node concept="1rXfSq" id="7aolmNHn1ZL" role="33vP2m">
              <ref role="37wK5l" node="7aolmNHmIw_" resolve="traceAsString" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7aolmNHn2xv" role="3cqZAp">
          <node concept="3clFbS" id="7aolmNHn2xx" role="3clFbx">
            <node concept="3cpWs6" id="7aolmNHn51A" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7aolmNHn3jh" role="3clFbw">
            <node concept="37vLTw" id="7aolmNHn2yU" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm$wq" resolve="traces" />
            </node>
            <node concept="3JPx81" id="7aolmNHn4QK" role="2OqNvi">
              <node concept="37vLTw" id="7aolmNHn4W_" role="25WWJ7">
                <ref role="3cqZAo" node="7aolmNHn1ZK" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7aolmNHn5bp" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHn5PF" role="3clFbG">
            <node concept="37vLTw" id="7aolmNHn5bn" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHm$wq" resolve="traces" />
            </node>
            <node concept="TSZUe" id="7aolmNHn7iP" role="2OqNvi">
              <node concept="37vLTw" id="7aolmNHn7Gq" role="25WWJ7">
                <ref role="3cqZAo" node="7aolmNHn1ZK" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="7aolmNHn1ou" role="3cqZAp">
          <property role="RRSoG" value="gZ5fksE/warn" />
          <node concept="3cpWs3" id="7aolmNHn93K" role="RRSoy">
            <node concept="37vLTw" id="7aolmNHn94G" role="3uHU7w">
              <ref role="3cqZAo" node="7aolmNHn1ZK" resolve="trace" />
            </node>
            <node concept="3cpWs3" id="7aolmNHn8EA" role="3uHU7B">
              <node concept="3cpWs3" id="7aolmNHn1ov" role="3uHU7B">
                <node concept="Xl_RD" id="7aolmNHn1ox" role="3uHU7B">
                  <property role="Xl_RC" value="Long running action detected " />
                </node>
                <node concept="37vLTw" id="7aolmNHn1ow" role="3uHU7w">
                  <ref role="3cqZAo" node="7aolmNHn0_V" resolve="duration" />
                </node>
              </node>
              <node concept="Xl_RD" id="7aolmNHn8Fl" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7aolmNHmXqR" role="jymVt" />
    <node concept="3clFb_" id="7aolmNHmIw_" role="jymVt">
      <property role="TrG5h" value="traceAsString" />
      <node concept="17QB3L" id="7aolmNHmKj9" role="3clF45" />
      <node concept="3Tm1VV" id="7aolmNHmIwC" role="1B3o_S" />
      <node concept="3clFbS" id="7aolmNHmIwD" role="3clF47">
        <node concept="3cpWs8" id="7aolmNHmOHz" role="3cqZAp">
          <node concept="3cpWsn" id="7aolmNHmOH$" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="7aolmNHmOH_" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="7aolmNHmOMd" role="33vP2m">
              <node concept="1pGfFk" id="7aolmNHmOLc" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7aolmNHmOVF" role="3cqZAp">
          <node concept="2GrKxI" id="7aolmNHmOVH" role="2Gsz3X">
            <property role="TrG5h" value="te" />
          </node>
          <node concept="3clFbS" id="7aolmNHmOVL" role="2LFqv$">
            <node concept="3clFbF" id="7aolmNHnbVn" role="3cqZAp">
              <node concept="2OqwBi" id="7aolmNHncme" role="3clFbG">
                <node concept="37vLTw" id="7aolmNHnbVl" role="2Oq$k0">
                  <ref role="3cqZAo" node="7aolmNHmOH$" resolve="sb" />
                </node>
                <node concept="liA8E" id="7aolmNHndfe" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="7aolmNHndi6" role="37wK5m">
                    <property role="Xl_RC" value="        " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7aolmNHmP6C" role="3cqZAp">
              <node concept="2OqwBi" id="7aolmNHmPuG" role="3clFbG">
                <node concept="37vLTw" id="7aolmNHmP6B" role="2Oq$k0">
                  <ref role="3cqZAo" node="7aolmNHmOH$" resolve="sb" />
                </node>
                <node concept="liA8E" id="7aolmNHmQqT" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                  <node concept="2GrUjf" id="7aolmNHmQsd" role="37wK5m">
                    <ref role="2Gs0qQ" node="7aolmNHmOVH" resolve="te" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7aolmNHmQNV" role="3cqZAp">
              <node concept="2OqwBi" id="7aolmNHmRel" role="3clFbG">
                <node concept="37vLTw" id="7aolmNHmQNT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7aolmNHmOH$" resolve="sb" />
                </node>
                <node concept="liA8E" id="7aolmNHmS8G" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="7aolmNHmSaU" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7aolmNHmP0C" role="2GsD0m">
            <node concept="2YIFZM" id="7aolmNHmP0D" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            </node>
            <node concept="liA8E" id="7aolmNHmP0E" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.getStackTrace()" resolve="getStackTrace" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7aolmNHmT47" role="3cqZAp">
          <node concept="2OqwBi" id="7aolmNHmUok" role="3cqZAk">
            <node concept="37vLTw" id="7aolmNHmT9i" role="2Oq$k0">
              <ref role="3cqZAo" node="7aolmNHmOH$" resolve="sb" />
            </node>
            <node concept="liA8E" id="7aolmNHmWhz" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7aolmNHljqW" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2i1MHcnqWOb">
    <property role="TrG5h" value="IconHandler" />
    <node concept="2tJIrI" id="2i1MHcnqY8d" role="jymVt" />
    <node concept="312cEg" id="2i1MHcnqYGW" role="jymVt">
      <property role="TrG5h" value="icons" />
      <node concept="3Tm6S6" id="2i1MHcnqYGX" role="1B3o_S" />
      <node concept="3rvAFt" id="2i1MHcnqZ84" role="1tU5fm">
        <node concept="17QB3L" id="2i1MHcnqZe7" role="3rvQeY" />
        <node concept="3uibUv" id="2i1MHcnqZwE" role="3rvSg0">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="2ShNRf" id="2i1MHcnr07U" role="33vP2m">
        <node concept="3rGOSV" id="2i1MHcnqZRi" role="2ShVmc">
          <node concept="17QB3L" id="2i1MHcnqZRj" role="3rHrn6" />
          <node concept="3uibUv" id="2i1MHcnqZRk" role="3rHtpV">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
          <node concept="3Mi1_Z" id="2i1MHcnr5oO" role="3Mj9YC">
            <node concept="3Milgn" id="2i1MHcnr5rl" role="3MiYds">
              <node concept="Xl_RD" id="2i1MHcnr5G3" role="3MiK7k">
                <property role="Xl_RC" value="Solution" />
              </node>
              <node concept="10M0yZ" id="2i1MHcnr6xA" role="3MiMdn">
                <ref role="3cqZAo" to="xnls:~IdeIcons.SOLUTION_ICON" resolve="SOLUTION_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
            <node concept="3Milgn" id="2i1MHcnr5rr" role="3MiYds">
              <node concept="Xl_RD" id="2i1MHcnr6Mc" role="3MiK7k">
                <property role="Xl_RC" value="Language" />
              </node>
              <node concept="10M0yZ" id="2i1MHcnr731" role="3MiMdn">
                <ref role="3cqZAo" to="xnls:~IdeIcons.LANGUAGE_ICON" resolve="LANGUAGE_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
            <node concept="3Milgn" id="5GP2kxIJjf4" role="3MiYds">
              <node concept="Xl_RD" id="5GP2kxIJjf5" role="3MiK7k">
                <property role="Xl_RC" value="DevKit" />
              </node>
              <node concept="10M0yZ" id="5GP2kxIJjgn" role="3MiMdn">
                <ref role="3cqZAo" to="xnls:~IdeIcons.DEVKIT_ICON" resolve="DEVKIT_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
            <node concept="3Milgn" id="5GP2kxINWmc" role="3MiYds">
              <node concept="Xl_RD" id="5GP2kxINWmd" role="3MiK7k">
                <property role="Xl_RC" value="Generator" />
              </node>
              <node concept="10M0yZ" id="5GP2kxINWnl" role="3MiMdn">
                <ref role="3cqZAo" to="xnls:~IdeIcons.GENERATOR_ICON" resolve="GENERATOR_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
            <node concept="3Milgn" id="5GP2kxIWsQP" role="3MiYds">
              <node concept="2OqwBi" id="5GP2kxIWvrl" role="3MiK7k">
                <node concept="3VsKOn" id="5GP2kxIWv1q" role="2Oq$k0">
                  <ref role="3VsUkX" to="csg2:115Xaa43tZI" resolve="CloudTransientModule" />
                </node>
                <node concept="liA8E" id="5GP2kxIWx7w" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                </node>
              </node>
              <node concept="10M0yZ" id="5GP2kxIWyIP" role="3MiMdn">
                <ref role="3cqZAo" to="csg2:4NO8rntTrX3" resolve="MODULE_ICON" />
                <ref role="1PxDUh" to="csg2:6aRQr1WMwO8" resolve="CloudIcons" />
              </node>
            </node>
            <node concept="3Milgn" id="5GP2kxJ0SxE" role="3MiYds">
              <node concept="Xl_RD" id="5GP2kxJ0SxF" role="3MiK7k">
                <property role="Xl_RC" value="model" />
              </node>
              <node concept="10M0yZ" id="5GP2kxJ0SBe" role="3MiMdn">
                <ref role="3cqZAo" to="xnls:~IdeIcons.MODEL_ICON" resolve="MODEL_ICON" />
                <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2i1MHcnqYoL" role="jymVt" />
    <node concept="312cEg" id="5GP2kxJhPEQ" role="jymVt">
      <property role="TrG5h" value="concepts" />
      <node concept="3Tm6S6" id="5GP2kxJhPER" role="1B3o_S" />
      <node concept="3rvAFt" id="5GP2kxJhQYT" role="1tU5fm">
        <node concept="17QB3L" id="5GP2kxJhRai" role="3rvQeY" />
        <node concept="3bZ5Sz" id="5GP2kxJhRud" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="5GP2kxJhS7b" role="33vP2m">
        <node concept="3rGOSV" id="5GP2kxJhRQJ" role="2ShVmc">
          <node concept="17QB3L" id="5GP2kxJhRQK" role="3rHrn6" />
          <node concept="3bZ5Sz" id="5GP2kxJhRQL" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5GP2kxJhNe9" role="jymVt" />
    <node concept="3clFbW" id="5GP2kxJhTbo" role="jymVt">
      <node concept="3cqZAl" id="5GP2kxJhTbq" role="3clF45" />
      <node concept="3Tm1VV" id="5GP2kxJhTbr" role="1B3o_S" />
      <node concept="3clFbS" id="5GP2kxJhTbs" role="3clF47">
        <node concept="2Gpval" id="5GP2kxJhUva" role="3cqZAp">
          <node concept="2GrKxI" id="5GP2kxJhUvb" role="2Gsz3X">
            <property role="TrG5h" value="lang" />
          </node>
          <node concept="2OqwBi" id="5GP2kxJhWwF" role="2GsD0m">
            <node concept="2YIFZM" id="5GP2kxJhV$U" role="2Oq$k0">
              <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
              <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
              <node concept="2YIFZM" id="5GP2kxJhWdv" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
            </node>
            <node concept="liA8E" id="5GP2kxJhWKo" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
            </node>
          </node>
          <node concept="3clFbS" id="5GP2kxJhUvd" role="2LFqv$">
            <node concept="2Gpval" id="5GP2kxJhXt2" role="3cqZAp">
              <node concept="2GrKxI" id="5GP2kxJhXt3" role="2Gsz3X">
                <property role="TrG5h" value="concept" />
              </node>
              <node concept="2OqwBi" id="5GP2kxJhXJy" role="2GsD0m">
                <node concept="2GrUjf" id="5GP2kxJhXJj" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5GP2kxJhUvb" resolve="lang" />
                </node>
                <node concept="liA8E" id="5GP2kxJhY7O" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
                </node>
              </node>
              <node concept="3clFbS" id="5GP2kxJhXt5" role="2LFqv$">
                <node concept="3clFbF" id="5GP2kxJhYP$" role="3cqZAp">
                  <node concept="37vLTI" id="5GP2kxJi1K6" role="3clFbG">
                    <node concept="2GrUjf" id="5GP2kxJi3g1" role="37vLTx">
                      <ref role="2Gs0qQ" node="5GP2kxJhXt3" resolve="concept" />
                    </node>
                    <node concept="3EllGN" id="5GP2kxJhZtF" role="37vLTJ">
                      <node concept="2OqwBi" id="5GP2kxJi0no" role="3ElVtu">
                        <node concept="2GrUjf" id="5GP2kxJi04x" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5GP2kxJhXt3" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="5GP2kxJi1mH" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5GP2kxJhYPz" role="3ElQJh">
                        <ref role="3cqZAo" node="5GP2kxJhPEQ" resolve="concepts" />
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
    <node concept="2tJIrI" id="5GP2kxJhSdG" role="jymVt" />
    <node concept="3clFb_" id="2i1MHcnqWOc" role="jymVt">
      <property role="TrG5h" value="handle" />
      <node concept="3Tm1VV" id="2i1MHcnqWOd" role="1B3o_S" />
      <node concept="3cqZAl" id="2i1MHcnqWOe" role="3clF45" />
      <node concept="37vLTG" id="2i1MHcnqWOf" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="2i1MHcnqWOg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2i1MHcnqWOh" role="3clF46">
        <property role="TrG5h" value="baseRequest" />
        <node concept="3uibUv" id="2i1MHcnqWOi" role="1tU5fm">
          <ref role="3uigEE" to="m2xw:~Request" resolve="Request" />
        </node>
      </node>
      <node concept="37vLTG" id="2i1MHcnqWOj" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="2i1MHcnqWOk" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletRequest" resolve="HttpServletRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="2i1MHcnqWOl" role="3clF46">
        <property role="TrG5h" value="response" />
        <node concept="3uibUv" id="2i1MHcnqWOm" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
        </node>
      </node>
      <node concept="3uibUv" id="2i1MHcnqWOn" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="2i1MHcnqWOo" role="Sfmx6">
        <ref role="3uigEE" to="opgt:~ServletException" resolve="ServletException" />
      </node>
      <node concept="3clFbS" id="2i1MHcnqWOp" role="3clF47">
        <node concept="3cpWs8" id="5GP2kxJi7tf" role="3cqZAp">
          <node concept="3cpWsn" id="5GP2kxJi7tg" role="3cpWs9">
            <property role="TrG5h" value="iconName" />
            <node concept="17QB3L" id="5GP2kxJi8m9" role="1tU5fm" />
            <node concept="2OqwBi" id="5GP2kxJi7th" role="33vP2m">
              <node concept="37vLTw" id="5GP2kxJi7ti" role="2Oq$k0">
                <ref role="3cqZAo" node="2i1MHcnqWOf" resolve="target" />
              </node>
              <node concept="liA8E" id="5GP2kxJi7tj" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cmrfG" id="5GP2kxJi7tk" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2i1MHcnrfbO" role="3cqZAp">
          <node concept="3cpWsn" id="2i1MHcnrfbP" role="3cpWs9">
            <property role="TrG5h" value="icon" />
            <node concept="3uibUv" id="2i1MHcnsZw4" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="3EllGN" id="2i1MHcnrfbQ" role="33vP2m">
              <node concept="37vLTw" id="2i1MHcnrfbR" role="3ElQJh">
                <ref role="3cqZAo" node="2i1MHcnqYGW" resolve="icons" />
              </node>
              <node concept="37vLTw" id="5GP2kxJi7tl" role="3ElVtu">
                <ref role="3cqZAo" node="5GP2kxJi7tg" resolve="iconName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2i1MHcnrkS2" role="3cqZAp" />
        <node concept="3clFbJ" id="5GP2kxJi4pn" role="3cqZAp">
          <node concept="3clFbS" id="5GP2kxJi4pp" role="3clFbx">
            <node concept="3cpWs8" id="5GP2kxJi9gR" role="3cqZAp">
              <node concept="3cpWsn" id="5GP2kxJi9gS" role="3cpWs9">
                <property role="TrG5h" value="concept" />
                <node concept="3bZ5Sz" id="5GP2kxJi9bt" role="1tU5fm" />
                <node concept="3EllGN" id="5GP2kxJi9gT" role="33vP2m">
                  <node concept="37vLTw" id="5GP2kxJi9gU" role="3ElVtu">
                    <ref role="3cqZAo" node="5GP2kxJi7tg" resolve="iconName" />
                  </node>
                  <node concept="37vLTw" id="5GP2kxJi9gV" role="3ElQJh">
                    <ref role="3cqZAo" node="5GP2kxJhPEQ" resolve="concepts" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5GP2kxJi9Hj" role="3cqZAp">
              <node concept="3clFbS" id="5GP2kxJi9Hl" role="3clFbx">
                <node concept="3clFbF" id="5GP2kxJibxm" role="3cqZAp">
                  <node concept="37vLTI" id="5GP2kxJibHu" role="3clFbG">
                    <node concept="2OqwBi" id="5GP2kxJid7e" role="37vLTx">
                      <node concept="2YIFZM" id="5GP2kxJic_P" role="2Oq$k0">
                        <ref role="37wK5l" to="xnls:~GlobalIconManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="xnls:~GlobalIconManager" resolve="GlobalIconManager" />
                      </node>
                      <node concept="liA8E" id="5GP2kxJiduW" role="2OqNvi">
                        <ref role="37wK5l" to="xnls:~BaseIconManager.getIconFor(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getIconFor" />
                        <node concept="37vLTw" id="5GP2kxJieqB" role="37wK5m">
                          <ref role="3cqZAo" node="5GP2kxJi9gS" resolve="concept" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5GP2kxJibxk" role="37vLTJ">
                      <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5GP2kxJiaPD" role="3clFbw">
                <node concept="10Nm6u" id="5GP2kxJibba" role="3uHU7w" />
                <node concept="37vLTw" id="5GP2kxJiakW" role="3uHU7B">
                  <ref role="3cqZAo" node="5GP2kxJi9gS" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5GP2kxJi5iw" role="3clFbw">
            <node concept="10Nm6u" id="5GP2kxJi5Ym" role="3uHU7w" />
            <node concept="37vLTw" id="5GP2kxJi4Uc" role="3uHU7B">
              <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GP2kxJi3Oa" role="3cqZAp" />
        <node concept="3clFbJ" id="2i1MHcnqWOB" role="3cqZAp">
          <node concept="3clFbS" id="2i1MHcnqWOC" role="3clFbx">
            <node concept="3clFbF" id="2i1MHcnqWOD" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnqWOE" role="3clFbG">
                <node concept="37vLTw" id="2i1MHcnqWOF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2i1MHcnqWOh" resolve="baseRequest" />
                </node>
                <node concept="liA8E" id="2i1MHcnqWOG" role="2OqNvi">
                  <ref role="37wK5l" to="m2xw:~Request.setHandled(boolean)" resolve="setHandled" />
                  <node concept="3clFbT" id="2i1MHcnqWOH" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2i1MHcnqWOI" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnqWOJ" role="3clFbG">
                <node concept="37vLTw" id="2i1MHcnqWOK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
                </node>
                <node concept="liA8E" id="2i1MHcnqWOL" role="2OqNvi">
                  <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                  <node concept="10M0yZ" id="2i1MHcnroIS" role="37wK5m">
                    <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_NOT_FOUND" resolve="SC_NOT_FOUND" />
                    <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2i1MHcnqWON" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnqWOO" role="3clFbG">
                <node concept="37vLTw" id="2i1MHcnqWOP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
                </node>
                <node concept="liA8E" id="2i1MHcnqWOQ" role="2OqNvi">
                  <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                  <node concept="Xl_RD" id="2i1MHcnqWOR" role="37wK5m">
                    <property role="Xl_RC" value="text/html" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2i1MHcnqWOS" role="3cqZAp">
              <node concept="2OqwBi" id="2i1MHcnqWOT" role="3clFbG">
                <node concept="2OqwBi" id="2i1MHcnqWOU" role="2Oq$k0">
                  <node concept="37vLTw" id="2i1MHcnqWOV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
                  </node>
                  <node concept="liA8E" id="2i1MHcnqWOW" role="2OqNvi">
                    <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                  </node>
                </node>
                <node concept="liA8E" id="2i1MHcnqWOX" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                  <node concept="Xl_RD" id="2i1MHcnqWOY" role="37wK5m">
                    <property role="Xl_RC" value="icon doesn't exist" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2i1MHcnqWOZ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2i1MHcnrmSv" role="3clFbw">
            <node concept="10Nm6u" id="2i1MHcnrnzT" role="3uHU7w" />
            <node concept="37vLTw" id="2i1MHcnrmr6" role="3uHU7B">
              <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2i1MHcnsgbb" role="3cqZAp" />
        <node concept="3cpWs8" id="2i1MHcnse_r" role="3cqZAp">
          <node concept="3cpWsn" id="2i1MHcnse_s" role="3cpWs9">
            <property role="TrG5h" value="image" />
            <node concept="3uibUv" id="2i1MHcnsetC" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="2ShNRf" id="2i1MHcnse_t" role="33vP2m">
              <node concept="1pGfFk" id="2i1MHcnse_u" role="2ShVmc">
                <ref role="37wK5l" to="jan3:~BufferedImage.&lt;init&gt;(int,int,int)" resolve="BufferedImage" />
                <node concept="2OqwBi" id="2i1MHcnse_v" role="37wK5m">
                  <node concept="37vLTw" id="2i1MHcnse_w" role="2Oq$k0">
                    <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
                  </node>
                  <node concept="liA8E" id="2i1MHcnse_x" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~Icon.getIconWidth()" resolve="getIconWidth" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2i1MHcnse_y" role="37wK5m">
                  <node concept="37vLTw" id="2i1MHcnse_z" role="2Oq$k0">
                    <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
                  </node>
                  <node concept="liA8E" id="2i1MHcnse_$" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2i1MHcnse__" role="37wK5m">
                  <ref role="3cqZAo" to="jan3:~BufferedImage.TYPE_INT_ARGB" resolve="TYPE_INT_ARGB" />
                  <ref role="1PxDUh" to="jan3:~BufferedImage" resolve="BufferedImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2i1MHcnsk41" role="3cqZAp">
          <node concept="2OqwBi" id="2i1MHcnsksV" role="3clFbG">
            <node concept="37vLTw" id="2i1MHcnsk3Z" role="2Oq$k0">
              <ref role="3cqZAo" node="2i1MHcnrfbP" resolve="icon" />
            </node>
            <node concept="liA8E" id="2i1MHcnskZ0" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Icon.paintIcon(java.awt.Component,java.awt.Graphics,int,int)" resolve="paintIcon" />
              <node concept="10Nm6u" id="2i1MHcnsliY" role="37wK5m" />
              <node concept="2OqwBi" id="2i1MHcnsmiG" role="37wK5m">
                <node concept="37vLTw" id="2i1MHcnslIu" role="2Oq$k0">
                  <ref role="3cqZAo" node="2i1MHcnse_s" resolve="image" />
                </node>
                <node concept="liA8E" id="2i1MHcnsnc6" role="2OqNvi">
                  <ref role="37wK5l" to="jan3:~BufferedImage.getGraphics()" resolve="getGraphics" />
                </node>
              </node>
              <node concept="3cmrfG" id="2i1MHcnsnGi" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2i1MHcnso1W" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2i1MHcnsgsX" role="3cqZAp" />
        <node concept="3cpWs8" id="4qNw5QUzltw" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUzltx" role="3cpWs9">
            <property role="TrG5h" value="bytes" />
            <node concept="10Q1$e" id="2i1MHcnrNUn" role="1tU5fm">
              <node concept="10PrrI" id="2i1MHcnrN0Y" role="10Q1$1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qNw5QUzlti" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUzltj" role="3cpWs9">
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="4qNw5QUzltk" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~ByteArrayOutputStream" resolve="ByteArrayOutputStream" />
            </node>
            <node concept="10Nm6u" id="4qNw5QUzltl" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="4qNw5QUzltm" role="3cqZAp">
          <node concept="3clFbS" id="4qNw5QUzltn" role="2GV8ay">
            <node concept="3clFbF" id="4qNw5QUzlto" role="3cqZAp">
              <node concept="37vLTI" id="4qNw5QUzltp" role="3clFbG">
                <node concept="2ShNRf" id="4qNw5QUzltq" role="37vLTx">
                  <node concept="1pGfFk" id="4qNw5QUzltr" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.&lt;init&gt;()" resolve="ByteArrayOutputStream" />
                  </node>
                </node>
                <node concept="37vLTw" id="4qNw5QUzlts" role="37vLTJ">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4qNw5QUyghx" role="3cqZAp">
              <node concept="2YIFZM" id="4qNw5QUyig7" role="3clFbG">
                <ref role="37wK5l" to="oqcp:~ImageIO.write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)" resolve="write" />
                <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                <node concept="37vLTw" id="2i1MHcnse_A" role="37wK5m">
                  <ref role="3cqZAo" node="2i1MHcnse_s" resolve="image" />
                </node>
                <node concept="Xl_RD" id="4qNw5QUyjKB" role="37wK5m">
                  <property role="Xl_RC" value="png" />
                </node>
                <node concept="37vLTw" id="4qNw5QUykek" role="37wK5m">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4qNw5QUzltt" role="3cqZAp">
              <node concept="2OqwBi" id="4qNw5QUzltu" role="3clFbG">
                <node concept="37vLTw" id="4qNw5QUyo2o" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
                <node concept="liA8E" id="4qNw5QUzltv" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2i1MHcnrKSK" role="3cqZAp">
              <node concept="37vLTI" id="2i1MHcnrKSM" role="3clFbG">
                <node concept="2OqwBi" id="4qNw5QUy_C9" role="37vLTx">
                  <node concept="37vLTw" id="4qNw5QUy_sM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                  </node>
                  <node concept="liA8E" id="4qNw5QUy_PP" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.toByteArray()" resolve="toByteArray" />
                  </node>
                </node>
                <node concept="37vLTw" id="2i1MHcnrKSQ" role="37vLTJ">
                  <ref role="3cqZAo" node="4qNw5QUzltx" resolve="bytes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4qNw5QUzlt_" role="TEXxN">
            <node concept="3cpWsn" id="4qNw5QUzltA" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="4qNw5QUzltB" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~UnsupportedEncodingException" resolve="UnsupportedEncodingException" />
              </node>
            </node>
            <node concept="3clFbS" id="4qNw5QUzltC" role="TDEfX">
              <node concept="YS8fn" id="4qNw5QUzltD" role="3cqZAp">
                <node concept="2ShNRf" id="4qNw5QUzltE" role="YScLw">
                  <node concept="1pGfFk" id="4qNw5QUzltF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4qNw5QUzltG" role="37wK5m">
                      <ref role="3cqZAo" node="4qNw5QUzltA" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4qNw5QUzltP" role="TEXxN">
            <node concept="3cpWsn" id="4qNw5QUzltQ" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="4qNw5QUzltR" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4qNw5QUzltS" role="TDEfX">
              <node concept="YS8fn" id="4qNw5QUzltT" role="3cqZAp">
                <node concept="2ShNRf" id="4qNw5QUzltU" role="YScLw">
                  <node concept="1pGfFk" id="4qNw5QUzltV" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4qNw5QUzltW" role="37wK5m">
                      <ref role="3cqZAo" node="4qNw5QUzltQ" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4qNw5QUzltX" role="2GVbov">
            <node concept="SfApY" id="4qNw5QUzltY" role="3cqZAp">
              <node concept="3clFbS" id="4qNw5QUzltZ" role="SfCbr">
                <node concept="3clFbF" id="4qNw5QUzlu0" role="3cqZAp">
                  <node concept="2OqwBi" id="4qNw5QUzlu1" role="3clFbG">
                    <node concept="37vLTw" id="4qNw5QUzlu2" role="2Oq$k0">
                      <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                    </node>
                    <node concept="liA8E" id="4qNw5QUzlu3" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="4qNw5QUzlu4" role="TEbGg">
                <node concept="3cpWsn" id="4qNw5QUzlu5" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="4qNw5QUzlu6" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="4qNw5QUzlu7" role="TDEfX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2i1MHcnrFip" role="3cqZAp" />
        <node concept="3clFbF" id="2i1MHcnqWQO" role="3cqZAp">
          <node concept="2OqwBi" id="2i1MHcnqWQP" role="3clFbG">
            <node concept="37vLTw" id="2i1MHcnqWQQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2i1MHcnqWOh" resolve="baseRequest" />
            </node>
            <node concept="liA8E" id="2i1MHcnqWQR" role="2OqNvi">
              <ref role="37wK5l" to="m2xw:~Request.setHandled(boolean)" resolve="setHandled" />
              <node concept="3clFbT" id="2i1MHcnqWQS" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2i1MHcnqWQT" role="3cqZAp">
          <node concept="2OqwBi" id="2i1MHcnqWQU" role="3clFbG">
            <node concept="37vLTw" id="2i1MHcnqWQV" role="2Oq$k0">
              <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
            </node>
            <node concept="liA8E" id="2i1MHcnqWQW" role="2OqNvi">
              <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
              <node concept="Xl_RD" id="2i1MHcnqWQX" role="37wK5m">
                <property role="Xl_RC" value="image/png" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2i1MHcnqWQY" role="3cqZAp">
          <node concept="2OqwBi" id="2i1MHcnqWQZ" role="3clFbG">
            <node concept="37vLTw" id="2i1MHcnqWR0" role="2Oq$k0">
              <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
            </node>
            <node concept="liA8E" id="2i1MHcnqWR1" role="2OqNvi">
              <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
              <node concept="10M0yZ" id="2i1MHcnqWR2" role="37wK5m">
                <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_OK" resolve="SC_OK" />
                <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2i1MHcnqWR3" role="3cqZAp">
          <node concept="2OqwBi" id="2i1MHcnrKgL" role="3clFbG">
            <node concept="2OqwBi" id="2i1MHcnrINe" role="2Oq$k0">
              <node concept="37vLTw" id="2i1MHcnqWR6" role="2Oq$k0">
                <ref role="3cqZAo" node="2i1MHcnqWOl" resolve="response" />
              </node>
              <node concept="liA8E" id="2i1MHcnrJ51" role="2OqNvi">
                <ref role="37wK5l" to="opgt:~ServletResponse.getOutputStream()" resolve="getOutputStream" />
              </node>
            </node>
            <node concept="liA8E" id="2i1MHcnrKIL" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStream.write(byte[])" resolve="write" />
              <node concept="37vLTw" id="2i1MHcnrOTQ" role="37wK5m">
                <ref role="3cqZAo" node="4qNw5QUzltx" resolve="bytes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2i1MHcnqWRa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2i1MHcnqWRb" role="1B3o_S" />
    <node concept="3uibUv" id="2i1MHcnqWRc" role="1zkMxy">
      <ref role="3uigEE" to="cgcg:~AbstractHandler" resolve="AbstractHandler" />
    </node>
  </node>
</model>

