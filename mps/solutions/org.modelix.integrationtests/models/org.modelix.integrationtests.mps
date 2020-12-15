<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec75a426-3f03-4e3f-b2c1-8c6910d05061(org.modelix.integrationtests)">
  <persistence version="9" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
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
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="wy2b" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.google.gson(org.modelix.lib/)" />
    <import index="87lp" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:io.vavr.collection(org.modelix.model.client/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="8022092943110829337" name="jetbrains.mps.baseLanguage.extensionMethods.structure.BaseExtensionMethodContainer" flags="ng" index="a7sou">
        <child id="8022092943110829339" name="methods" index="a7sos" />
      </concept>
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
      <concept id="1550313277222152185" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodDeclaration" flags="ng" index="ATzpf" />
      <concept id="1894531970723270160" name="jetbrains.mps.baseLanguage.extensionMethods.structure.TypeExtension" flags="ng" index="KRBjq">
        <child id="1894531970723323134" name="type" index="KRMoO" />
      </concept>
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
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
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
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
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
    <node concept="2tJIrI" id="6Jg9HT9UZSu" role="jymVt" />
    <node concept="2YIFZL" id="4ZsvGZupGOJ" role="jymVt">
      <property role="TrG5h" value="mpsMain" />
      <node concept="3clFbS" id="4ZsvGZupGOM" role="3clF47">
        <node concept="3clFbF" id="6Jg9HT9UX$G" role="3cqZAp">
          <node concept="1rXfSq" id="6Jg9HT9UX$E" role="3clFbG">
            <ref role="37wK5l" node="6Jg9HT9UXq2" resolve="considerExtraLogging" />
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
                <node concept="1X3_iC" id="7JjSHvQ4bmY" role="lGtFl">
                  <property role="3V$3am" value="initValue" />
                  <property role="3V$3ak" value="83888646-71ce-4f1c-9c53-c54016f6ad4f/1237721394592/1237721435808" />
                  <node concept="2ShNRf" id="5yNJPA6buFb" role="8Wnug">
                    <node concept="1pGfFk" id="5yNJPA6tmCQ" role="2ShVmc">
                      <ref role="37wK5l" node="5yNJPA6tlJ7" resolve="ProjectCanBeCopiedOnCloudTest" />
                      <node concept="37vLTw" id="5yNJPA6tnzZ" role="37wK5m">
                        <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                      </node>
                      <node concept="37vLTw" id="5yNJPA6tmLD" role="37wK5m">
                        <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                      </node>
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
                <property role="Xl_RC" value="At least one test failed" />
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
                  <property role="Xl_RC" value="All tests were successful" />
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
  <node concept="312cEu" id="5yNJPA6btoc">
    <property role="TrG5h" value="ProjectCanBeCopiedOnCloudTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="5yNJPA6btod" role="1B3o_S" />
    <node concept="3clFbW" id="5yNJPA6tlJ7" role="jymVt">
      <node concept="37vLTG" id="5yNJPA6tlJ8" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="5yNJPA6tlJ9" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6tlJa" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="5yNJPA6tlJb" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="5yNJPA6tlJc" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6tlJd" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tlJe" role="3clF47">
        <node concept="XkiVB" id="5yNJPA6tlJr" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="5yNJPA6tlJs" role="37wK5m">
            <ref role="3cqZAo" node="5yNJPA6tlJ8" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="5yNJPA6tlJt" role="37wK5m">
            <ref role="3cqZAo" node="5yNJPA6tlJa" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5yNJPA6buW4" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3uibUv" id="5yNJPA6buW5" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5yNJPA6buW6" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6buW8" role="3clF47">
        <node concept="3J1_TO" id="5yNJPA6ttPF" role="3cqZAp">
          <node concept="3uVAMA" id="5yNJPA6ttX9" role="1zxBo5">
            <node concept="XOnhg" id="5yNJPA6ttXa" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="5yNJPA6ttXb" role="1tU5fm">
                <node concept="3uibUv" id="5yNJPA6ttYi" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5yNJPA6ttXc" role="1zc67A">
              <node concept="3clFbF" id="5yNJPA6tu0r" role="3cqZAp">
                <node concept="2OqwBi" id="5yNJPA6tu6Q" role="3clFbG">
                  <node concept="37vLTw" id="5yNJPA6tu0q" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6ttXa" resolve="t" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6tubl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5yNJPA6tudN" role="3cqZAp">
                <node concept="2YIFZM" id="5yNJPA6tvnY" role="3cqZAk">
                  <ref role="37wK5l" node="5yNJPA6tup7" resolve="fail" />
                  <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
                  <node concept="2OqwBi" id="5yNJPA6tv$6" role="37wK5m">
                    <node concept="37vLTw" id="5yNJPA6tvry" role="2Oq$k0">
                      <ref role="3cqZAo" node="5yNJPA6ttXa" resolve="t" />
                    </node>
                    <node concept="liA8E" id="5yNJPA6tvEW" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5yNJPA6ttPH" role="1zxBo7">
            <node concept="abc8K" id="5yNJPA6t_SS" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tA22" role="abp_N">
                <property role="Xl_RC" value="About to open project" />
              </node>
            </node>
            <node concept="3cpWs8" id="5yNJPA6tsWN" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6tsWO" role="3cpWs9">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="5yNJPA6tsWP" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="1rXfSq" id="5yNJPA6trx1" role="33vP2m">
                  <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
                  <node concept="Xl_RD" id="5yNJPA6tr$q" role="37wK5m">
                    <property role="Xl_RC" value="SimpleProjectA" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5yNJPA6tAgK" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tApW" role="abp_N">
                <property role="Xl_RC" value="project opened" />
              </node>
            </node>
            <node concept="1gVbGN" id="5yNJPA6tw4U" role="3cqZAp">
              <node concept="17R0WA" id="5yNJPA6twCh" role="1gVkn0">
                <node concept="2OqwBi" id="5yNJPA6twcE" role="3uHU7B">
                  <node concept="37vLTw" id="5yNJPA6twcF" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tsWO" resolve="project" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6twcG" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5yNJPA6twJM" role="3uHU7w">
                  <property role="Xl_RC" value="SimpleProjectA" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5yNJPA6tADq" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tAMC" role="abp_N">
                <property role="Xl_RC" value="first assertion done" />
              </node>
            </node>
            <node concept="1gVbGN" id="5yNJPA6ty7j" role="3cqZAp">
              <node concept="17R0WA" id="5yNJPA6tzRX" role="1gVkn0">
                <node concept="3cmrfG" id="5yNJPA6tzWn" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="5yNJPA6tyIc" role="3uHU7B">
                  <node concept="2OqwBi" id="5yNJPA6txUL" role="2Oq$k0">
                    <node concept="37vLTw" id="5yNJPA6txHW" role="2Oq$k0">
                      <ref role="3cqZAo" node="5yNJPA6tsWO" resolve="project" />
                    </node>
                    <node concept="liA8E" id="5yNJPA6ty2d" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5yNJPA6tz36" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="5yNJPA6t$dV" role="3cqZAp">
              <node concept="17R0WA" id="5yNJPA6t_oK" role="1gVkn0">
                <node concept="Xl_RD" id="5yNJPA6t_z6" role="3uHU7w">
                  <property role="Xl_RC" value="simple.solution1" />
                </node>
                <node concept="2OqwBi" id="5yNJPA6t$Rj" role="3uHU7B">
                  <node concept="2OqwBi" id="5yNJPA6t$lX" role="2Oq$k0">
                    <node concept="2OqwBi" id="5yNJPA6t$j$" role="2Oq$k0">
                      <node concept="37vLTw" id="5yNJPA6t$j_" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yNJPA6tsWO" resolve="project" />
                      </node>
                      <node concept="liA8E" id="5yNJPA6t$jA" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5yNJPA6t$vm" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="5yNJPA6t$D4" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5yNJPA6t_3T" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5yNJPA6txlO" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6txlP" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="5yNJPA6txlQ" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="5yNJPA6tx8$" role="33vP2m">
                  <node concept="37vLTw" id="5yNJPA6twWd" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tsWO" resolve="project" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6txfF" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="11vVX88roVG" role="3cqZAp" />
            <node concept="3cpWs8" id="11vVX88rpdG" role="3cqZAp">
              <node concept="3cpWsn" id="11vVX88rpdJ" role="3cpWs9">
                <property role="TrG5h" value="modelServerPort" />
                <node concept="10Oyi0" id="11vVX88rpdE" role="1tU5fm" />
                <node concept="3cmrfG" id="11vVX88rppW" role="33vP2m">
                  <property role="3cmrfH" value="4441" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5yNJPA6tF6Z" role="3cqZAp" />
            <node concept="1X3_iC" id="11vVX88tjiC" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="5yNJPA6tFi6" role="8Wnug">
                <node concept="1PaTwC" id="5yNJPA6tFi7" role="1aUNEU">
                  <node concept="3oM_SD" id="5yNJPA6tFi8" role="1PaTwD">
                    <property role="3oM_SC" value="start" />
                  </node>
                  <node concept="3oM_SD" id="5yNJPA6tFri" role="1PaTwD">
                    <property role="3oM_SC" value="Modelix" />
                  </node>
                  <node concept="3oM_SD" id="5yNJPA6tFtV" role="1PaTwD">
                    <property role="3oM_SC" value="Server" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiD" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="5yNJPA6tPJI" role="8Wnug">
                <node concept="3cpWsn" id="5yNJPA6tPJJ" role="3cpWs9">
                  <property role="TrG5h" value="ms" />
                  <node concept="3uibUv" id="5yNJPA6tPJK" role="1tU5fm">
                    <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
                  </node>
                  <node concept="2ShNRf" id="5yNJPA6tPW8" role="33vP2m">
                    <node concept="1pGfFk" id="5yNJPA6tPVW" role="2ShVmc">
                      <ref role="37wK5l" node="5yNJPA6tDU$" resolve="ModelixServerController" />
                      <node concept="2OqwBi" id="5yNJPA6tQ4K" role="37wK5m">
                        <node concept="Xjq3P" id="5yNJPA6tPXS" role="2Oq$k0" />
                        <node concept="liA8E" id="5yNJPA6tQ9$" role="2OqNvi">
                          <ref role="37wK5l" node="5yNJPA6tJ7L" resolve="pathToModelServerJar" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="11vVX88rps3" role="37wK5m">
                        <ref role="3cqZAo" node="11vVX88rpdJ" resolve="modelServerPort" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiE" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="5yNJPA6tQxT" role="8Wnug">
                <node concept="2OqwBi" id="5yNJPA6tQGw" role="3clFbG">
                  <node concept="37vLTw" id="5yNJPA6tQxR" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tPJJ" resolve="ms" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6tQOx" role="2OqNvi">
                    <ref role="37wK5l" node="5yNJPA6tDNi" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiF" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbH" id="5yNJPA6tPrj" role="8Wnug" />
            </node>
            <node concept="1X3_iC" id="11vVX88tjiG" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="5yNJPA6tFCL" role="8Wnug">
                <node concept="1PaTwC" id="5yNJPA6tFCM" role="1aUNEU">
                  <node concept="3oM_SD" id="5yNJPA6tFCN" role="1PaTwD">
                    <property role="3oM_SC" value="add" />
                  </node>
                  <node concept="3oM_SD" id="5yNJPA6tFM2" role="1PaTwD">
                    <property role="3oM_SC" value="CloudRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiH" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="11vVX88rn$K" role="8Wnug">
                <node concept="3cpWsn" id="11vVX88rn$L" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3uibUv" id="11vVX88rn$M" role="1tU5fm">
                    <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                  </node>
                  <node concept="2OqwBi" id="11vVX88roBU" role="33vP2m">
                    <node concept="2YIFZM" id="11vVX88roxX" role="2Oq$k0">
                      <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                      <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    </node>
                    <node concept="liA8E" id="11vVX88roH5" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:5rz8NqPS7qi" resolve="ensureCloudRepoIsPresent" />
                      <node concept="3cpWs3" id="11vVX88rpIW" role="37wK5m">
                        <node concept="37vLTw" id="11vVX88rpJe" role="3uHU7w">
                          <ref role="3cqZAo" node="11vVX88rpdJ" resolve="modelServerPort" />
                        </node>
                        <node concept="Xl_RD" id="11vVX88roJI" role="3uHU7B">
                          <property role="Xl_RC" value="http://localhost:" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiI" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="11vVX88td3y" role="8Wnug">
                <node concept="1PaTwC" id="11vVX88td3z" role="1aUNEU">
                  <node concept="3oM_SD" id="11vVX88td3$" role="1PaTwD">
                    <property role="3oM_SC" value="Waiting" />
                  </node>
                  <node concept="3oM_SD" id="11vVX88tdit" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="11vVX88tdiw" role="1PaTwD">
                    <property role="3oM_SC" value="connect" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88tjiJ" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="11vVX88tcmz" role="8Wnug">
                <node concept="2YIFZM" id="11vVX88tc_h" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                  <node concept="3cmrfG" id="11vVX88tcGT" role="37wK5m">
                    <property role="3cmrfH" value="3000" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5yNJPA6tGkm" role="3cqZAp">
              <node concept="1PaTwC" id="5yNJPA6tGkn" role="1aUNEU">
                <node concept="3oM_SD" id="5yNJPA6tGko" role="1PaTwD">
                  <property role="3oM_SC" value="store" />
                </node>
                <node concept="3oM_SD" id="5yNJPA6tGtE" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="5yNJPA6tGuF" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="5yNJPA6tGxO" role="1PaTwD">
                  <property role="3oM_SC" value="CloudRepository" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="11vVX88rsfy" role="3cqZAp" />
            <node concept="1X3_iC" id="11vVX88rDa9" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="5yNJPA6tGJh" role="8Wnug">
                <node concept="1PaTwC" id="5yNJPA6tGJi" role="1aUNEU">
                  <node concept="3oM_SD" id="5yNJPA6tGJj" role="1PaTwD">
                    <property role="3oM_SC" value="dump" />
                  </node>
                  <node concept="3oM_SD" id="5yNJPA6tGSF" role="1PaTwD">
                    <property role="3oM_SC" value="ModelixServer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88rDaa" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="11vVX88rqIu" role="8Wnug">
                <node concept="2OqwBi" id="11vVX88rr22" role="3clFbG">
                  <node concept="37vLTw" id="11vVX88rqIs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tPJJ" resolve="ms" />
                  </node>
                  <node concept="liA8E" id="11vVX88rrbH" role="2OqNvi">
                    <ref role="37wK5l" node="5yNJPA6tDOK" resolve="dump" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88rDab" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3SKdUt" id="5yNJPA6tH7h" role="8Wnug">
                <node concept="1PaTwC" id="5yNJPA6tH7i" role="1aUNEU">
                  <node concept="3oM_SD" id="5yNJPA6tH7j" role="1PaTwD">
                    <property role="3oM_SC" value="kill" />
                  </node>
                  <node concept="3oM_SD" id="5yNJPA6tHgJ" role="1PaTwD">
                    <property role="3oM_SC" value="ModelixServer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="11vVX88rDac" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="11vVX88rqag" role="8Wnug">
                <node concept="2OqwBi" id="11vVX88rqr1" role="3clFbG">
                  <node concept="37vLTw" id="11vVX88rqae" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tPJJ" resolve="ms" />
                  </node>
                  <node concept="liA8E" id="11vVX88rqvn" role="2OqNvi">
                    <ref role="37wK5l" node="5yNJPA6tDQo" resolve="kill" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="11vVX88rDzZ" role="3cqZAp">
              <node concept="2YIFZM" id="11vVX88rEis" role="3cqZAk">
                <ref role="37wK5l" node="5yNJPA6tup7" resolve="fail" />
                <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
                <node concept="Xl_RD" id="11vVX88rEvJ" role="37wK5m">
                  <property role="Xl_RC" value="INCOMPLETE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5yNJPA6tt6M" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="5yNJPA6buW9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="5yNJPA6tlHm" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
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
      <property role="TrG5h" value="projectsByName" />
      <node concept="3Tm6S6" id="5i$4SBK2SRp" role="1B3o_S" />
      <node concept="3rvAFt" id="5i$4SBK2Wqj" role="1tU5fm">
        <node concept="17QB3L" id="5i$4SBK2X0v" role="3rvQeY" />
        <node concept="3uibUv" id="5i$4SBK2X7Q" role="3rvSg0">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2ShNRf" id="5i$4SBK2Zo1" role="33vP2m">
        <node concept="3rGOSV" id="5i$4SBK2Znx" role="2ShVmc">
          <node concept="17QB3L" id="5i$4SBK2Zny" role="3rHrn6" />
          <node concept="3uibUv" id="5i$4SBK2Znz" role="3rHtpV">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6h4an0SW_pc" role="jymVt">
      <property role="TrG5h" value="variableFounds" />
      <node concept="3Tm6S6" id="6h4an0SWx5H" role="1B3o_S" />
      <node concept="3rvAFt" id="6h4an0SW_cq" role="1tU5fm">
        <node concept="17QB3L" id="6h4an0SW_ki" role="3rvQeY" />
        <node concept="17QB3L" id="6h4an0SW_p9" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="6h4an0SWBS4" role="33vP2m">
        <node concept="3rGOSV" id="6h4an0SWBO6" role="2ShVmc">
          <node concept="17QB3L" id="6h4an0SWBO7" role="3rHrn6" />
          <node concept="17QB3L" id="6h4an0SWBO8" role="3rHtpV" />
        </node>
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
        <node concept="3cpWs6" id="5yNJPA6tJ$$" role="3cqZAp">
          <node concept="2ShNRf" id="5yNJPA6tKmQ" role="3cqZAk">
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
      <node concept="3Tmbuc" id="5yNJPA6tONL" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tJ6d" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tp8B" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tpld" role="jymVt">
      <property role="TrG5h" value="openProject" />
      <node concept="3clFbS" id="5yNJPA6tplg" role="3clF47">
        <node concept="3SKdUt" id="5i$4SBK3odD" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK3odE" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK3odF" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdd" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdk" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdp" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdv" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdA" role="1PaTwD">
              <property role="3oM_SC" value="open," />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pdY" role="1PaTwD">
              <property role="3oM_SC" value="close," />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pef" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pep" role="1PaTwD">
              <property role="3oM_SC" value="reopen" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pe$" role="1PaTwD">
              <property role="3oM_SC" value="projects" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pfz" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3pfS" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5i$4SBK3quF" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK3quG" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK3so_" role="1PaTwD">
              <property role="3oM_SC" value="fails." />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3soJ" role="1PaTwD">
              <property role="3oM_SC" value="So" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3soM" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3soQ" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3sp3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3sp9" role="1PaTwD">
              <property role="3oM_SC" value="share" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3spo" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3spK" role="1PaTwD">
              <property role="3oM_SC" value="instances" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3sq1" role="1PaTwD">
              <property role="3oM_SC" value="among" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK3sqj" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5i$4SBK3bPP" role="3cqZAp">
          <node concept="3clFbS" id="5i$4SBK3bPR" role="3clFbx">
            <node concept="3cpWs6" id="5i$4SBK3hFL" role="3cqZAp">
              <node concept="3EllGN" id="5i$4SBK3jh9" role="3cqZAk">
                <node concept="37vLTw" id="5i$4SBK3l2_" role="3ElVtu">
                  <ref role="3cqZAo" node="5yNJPA6tpp3" resolve="projectName" />
                </node>
                <node concept="37vLTw" id="5i$4SBK3hJT" role="3ElQJh">
                  <ref role="3cqZAo" node="5i$4SBK2X7W" resolve="projectsByName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5i$4SBK3eNc" role="3clFbw">
            <node concept="37vLTw" id="5i$4SBK3did" role="2Oq$k0">
              <ref role="3cqZAo" node="5i$4SBK2X7W" resolve="projectsByName" />
            </node>
            <node concept="2Nt0df" id="5i$4SBK3hAc" role="2OqNvi">
              <node concept="37vLTw" id="5i$4SBK3hBJ" role="38cxEo">
                <ref role="3cqZAo" node="5yNJPA6tpp3" resolve="projectName" />
              </node>
            </node>
          </node>
        </node>
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
            <property role="TrG5h" value="projectDir" />
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
                        <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="projectDir" />
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
                <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="projectDir" />
              </node>
              <node concept="liA8E" id="5yNJPA6tCvT" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6trhW" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6trhZ" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="5yNJPA6tri0" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tri1" role="33vP2m">
              <node concept="37vLTw" id="5yNJPA6trq1" role="2Oq$k0">
                <ref role="3cqZAo" node="5yNJPA6tjz9" resolve="environment" />
              </node>
              <node concept="liA8E" id="5yNJPA6tri3" role="2OqNvi">
                <ref role="37wK5l" to="79ha:6rx4kZDjWg4" resolve="openProject" />
                <node concept="37vLTw" id="5yNJPA6trsB" role="37wK5m">
                  <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="projectDir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK31r3" role="3cqZAp">
          <node concept="37vLTI" id="5i$4SBK37Ty" role="3clFbG">
            <node concept="37vLTw" id="5i$4SBK3a7J" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6trhZ" resolve="project" />
            </node>
            <node concept="3EllGN" id="5i$4SBK32Ha" role="37vLTJ">
              <node concept="37vLTw" id="5i$4SBK34Dw" role="3ElVtu">
                <ref role="3cqZAo" node="5yNJPA6tpp3" resolve="projectName" />
              </node>
              <node concept="37vLTw" id="5i$4SBK31r1" role="3ElQJh">
                <ref role="3cqZAo" node="5i$4SBK2X7W" resolve="projectsByName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yNJPA6tszm" role="3cqZAp">
          <node concept="37vLTw" id="5yNJPA6tsAq" role="3cqZAk">
            <ref role="3cqZAo" node="5yNJPA6trhZ" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5yNJPA6tOXq" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tsq6" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="5yNJPA6tpp3" role="3clF46">
        <property role="TrG5h" value="projectName" />
        <node concept="17QB3L" id="5yNJPA6tpp2" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tjMM" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tk3c" role="jymVt">
      <property role="TrG5h" value="execute" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5yNJPA6tkdt" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tk3f" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tk3g" role="3clF47" />
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
                                        <ref role="3cqZAo" node="6h4an0SW_pc" resolve="variableFounds" />
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
                                                          <ref role="3cqZAo" node="6h4an0SW_pc" resolve="variableFounds" />
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
                                  <ref role="3cqZAo" node="6h4an0SW_pc" resolve="variableFounds" />
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
                                          <ref role="3cqZAo" node="6h4an0SW_pc" resolve="variableFounds" />
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
        <node concept="3cpWs8" id="7JjSHvQ40kV" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ40kW" role="3cpWs9">
            <property role="TrG5h" value="restWebModelClient" />
            <node concept="3uibUv" id="7JjSHvQ40kX" role="1tU5fm">
              <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
            </node>
            <node concept="2ShNRf" id="7JjSHvQ40kY" role="33vP2m">
              <node concept="1pGfFk" id="7JjSHvQ40kZ" role="2ShVmc">
                <ref role="37wK5l" to="5440:~RestWebModelClient.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="RestWebModelClient" />
                <node concept="3cpWs3" id="7JjSHvQ40l0" role="37wK5m">
                  <node concept="37vLTw" id="7JjSHvQ40Tr" role="3uHU7w">
                    <ref role="3cqZAo" node="5yNJPA6tDT1" resolve="port" />
                  </node>
                  <node concept="Xl_RD" id="7JjSHvQ40l2" role="3uHU7B">
                    <property role="Xl_RC" value="http://127.0.0.1:" />
                  </node>
                </node>
                <node concept="10Nm6u" id="7JjSHvQ40l3" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ40l4" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ40l5" role="3cpWs9">
            <property role="TrG5h" value="jo" />
            <node concept="3uibUv" id="7JjSHvQ40l6" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="7JjSHvQ40l7" role="33vP2m">
              <node concept="37vLTw" id="7JjSHvQ40l8" role="2Oq$k0">
                <ref role="3cqZAo" node="7JjSHvQ40kR" resolve="modelServerDumper" />
              </node>
              <node concept="liA8E" id="7JjSHvQ40l9" role="2OqNvi">
                <ref role="37wK5l" node="11vVX88wlul" resolve="dumpAsJson" />
                <node concept="37vLTw" id="7JjSHvQ40la" role="37wK5m">
                  <ref role="3cqZAo" node="7JjSHvQ40kW" resolve="restWebModelClient" />
                </node>
                <node concept="37vLTw" id="7JjSHvQ49gi" role="37wK5m">
                  <ref role="3cqZAo" node="7JjSHvQ42ba" resolve="treeId" />
                </node>
                <node concept="37vLTw" id="7JjSHvQ46bC" role="37wK5m">
                  <ref role="3cqZAo" node="7JjSHvQ42ws" resolve="branchName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7JjSHvQ40lf" role="3cqZAp">
          <node concept="37vLTw" id="7JjSHvQ40lg" role="3cqZAk">
            <ref role="3cqZAo" node="7JjSHvQ40l5" resolve="jo" />
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
    </node>
    <node concept="2tJIrI" id="7JjSHvQ44lm" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ43L7" role="jymVt">
      <property role="TrG5h" value="jsonDump" />
      <node concept="3clFbS" id="7JjSHvQ43L8" role="3clF47">
        <node concept="3cpWs6" id="7JjSHvQ43Ly" role="3cqZAp">
          <node concept="1rXfSq" id="7JjSHvQ45s5" role="3cqZAk">
            <ref role="37wK5l" node="7JjSHvQ40kN" resolve="jsonDump" />
            <node concept="2ShNRf" id="7JjSHvQ43Lu" role="37wK5m">
              <node concept="1pGfFk" id="7JjSHvQ43Lv" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="7JjSHvQ43Lw" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="7JjSHvQ43Lx" role="37wK5m">
              <property role="Xl_RC" value="master" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7JjSHvQ43L$" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ43L_" role="1B3o_S" />
    </node>
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
    <node concept="3clFb_" id="11vVX88rChv" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3uibUv" id="11vVX88rChw" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="11vVX88rChx" role="1B3o_S" />
      <node concept="3clFbS" id="11vVX88rChy" role="3clF47">
        <node concept="3cpWs8" id="11vVX88rCiC" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rCiD" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="11vVX88rCiE" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="10Nm6u" id="7JjSHvQ6ZDJ" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88rCiU" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rCiV" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="11vVX88rCiW" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="10Nm6u" id="7JjSHvQ6ZQP" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88rChP" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rChQ" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="11vVX88rChR" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="10Nm6u" id="7JjSHvQ70g1" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="6JwgQ7UR0j4" role="3cqZAp">
          <node concept="3cpWsn" id="6JwgQ7UR0j5" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="6JwgQ7UR0j6" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="10Nm6u" id="6JwgQ7UVrYO" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="11vVX88rChz" role="3cqZAp">
          <node concept="3uVAMA" id="11vVX88rCh$" role="1zxBo5">
            <node concept="XOnhg" id="11vVX88rCh_" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="11vVX88rChA" role="1tU5fm">
                <node concept="3uibUv" id="11vVX88rChB" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="11vVX88rChC" role="1zc67A">
              <node concept="3clFbF" id="11vVX88rChD" role="3cqZAp">
                <node concept="2OqwBi" id="11vVX88rChE" role="3clFbG">
                  <node concept="37vLTw" id="11vVX88rChF" role="2Oq$k0">
                    <ref role="3cqZAo" node="11vVX88rCh_" resolve="t" />
                  </node>
                  <node concept="liA8E" id="11vVX88rChG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="11vVX88rChH" role="3cqZAp">
                <node concept="2YIFZM" id="11vVX88rChI" role="3cqZAk">
                  <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
                  <ref role="37wK5l" node="5yNJPA6tup7" resolve="fail" />
                  <node concept="3K4zz7" id="6JwgQ7UWnSt" role="37wK5m">
                    <node concept="2OqwBi" id="6JwgQ7UWpF4" role="3K4E3e">
                      <node concept="2OqwBi" id="6JwgQ7UWozR" role="2Oq$k0">
                        <node concept="37vLTw" id="6JwgQ7UWo9k" role="2Oq$k0">
                          <ref role="3cqZAo" node="11vVX88rCh_" resolve="t" />
                        </node>
                        <node concept="liA8E" id="6JwgQ7UWpiI" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6JwgQ7UWqzs" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6JwgQ7UWr9o" role="3K4GZi">
                      <node concept="37vLTw" id="6JwgQ7UWqLJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="11vVX88rCh_" resolve="t" />
                      </node>
                      <node concept="liA8E" id="6JwgQ7UWrte" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="6JwgQ7UWlWl" role="3K4Cdx">
                      <node concept="10Nm6u" id="6JwgQ7UWmrp" role="3uHU7w" />
                      <node concept="2OqwBi" id="11vVX88rChJ" role="3uHU7B">
                        <node concept="37vLTw" id="11vVX88rChK" role="2Oq$k0">
                          <ref role="3cqZAo" node="11vVX88rCh_" resolve="t" />
                        </node>
                        <node concept="liA8E" id="11vVX88rChL" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11vVX88rChM" role="1zxBo7">
            <node concept="3clFbH" id="6JwgQ7UQWgL" role="3cqZAp" />
            <node concept="3clFbF" id="7JjSHvQ4CCd" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ4CCf" role="3clFbG">
                <node concept="1rXfSq" id="11vVX88rChS" role="37vLTx">
                  <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
                  <node concept="Xl_RD" id="11vVX88rChT" role="37wK5m">
                    <property role="Xl_RC" value="SimpleProjectA" />
                  </node>
                </node>
                <node concept="37vLTw" id="7JjSHvQ4CCj" role="37vLTJ">
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6JwgQ7USOj0" role="3cqZAp">
              <node concept="37vLTI" id="6JwgQ7USOj2" role="3clFbG">
                <node concept="2YIFZM" id="6JwgQ7US4TR" role="37vLTx">
                  <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
                  <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
                  <node concept="37vLTw" id="6JwgQ7US4TS" role="37wK5m">
                    <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
                  </node>
                </node>
                <node concept="37vLTw" id="6JwgQ7USOj6" role="37vLTJ">
                  <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
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
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
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
                    <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
                  </node>
                  <node concept="liA8E" id="11vVX88rCi0" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="11vVX88rCi1" role="3uHU7w">
                  <property role="Xl_RC" value="SimpleProjectA" />
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
                      <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
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
                      <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
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
            </node>
            <node concept="3clFbH" id="11vVX88rCit" role="3cqZAp" />
            <node concept="3cpWs8" id="11vVX88rCiu" role="3cqZAp">
              <node concept="3cpWsn" id="11vVX88rCiv" role="3cpWs9">
                <property role="TrG5h" value="modelServerPort" />
                <node concept="10Oyi0" id="11vVX88rCiw" role="1tU5fm" />
                <node concept="1rXfSq" id="7JjSHvQ4qVp" role="33vP2m">
                  <ref role="37wK5l" node="7JjSHvQ4ewY" resolve="getOwnModelServerPort" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5i$4SBK3JCB" role="3cqZAp">
              <node concept="Xl_RD" id="5i$4SBK3JCC" role="abp_N">
                <property role="Xl_RC" value="modelServerPort=" />
              </node>
              <node concept="37vLTw" id="5i$4SBK3JCD" role="abp_N">
                <ref role="3cqZAo" node="11vVX88rCiv" resolve="modelServerPort" />
              </node>
            </node>
            <node concept="3clFbH" id="11vVX88rCiy" role="3cqZAp" />
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
            <node concept="3clFbF" id="7JjSHvQ4$jq" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ4$js" role="3clFbG">
                <node concept="2ShNRf" id="11vVX88rCiF" role="37vLTx">
                  <node concept="1pGfFk" id="11vVX88rCiG" role="2ShVmc">
                    <ref role="37wK5l" node="5yNJPA6tDU$" resolve="ModelixServerController" />
                    <node concept="2OqwBi" id="11vVX88rCiH" role="37wK5m">
                      <node concept="Xjq3P" id="11vVX88rCiI" role="2Oq$k0" />
                      <node concept="liA8E" id="11vVX88rCiJ" role="2OqNvi">
                        <ref role="37wK5l" node="5yNJPA6tJ7L" resolve="pathToModelServerJar" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="11vVX88rCiK" role="37wK5m">
                      <ref role="3cqZAo" node="11vVX88rCiv" resolve="modelServerPort" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7JjSHvQ4$jw" role="37vLTJ">
                  <ref role="3cqZAo" node="11vVX88rCiD" resolve="ms" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="11vVX88rCiL" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88rCiM" role="3clFbG">
                <node concept="37vLTw" id="11vVX88rCiN" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88rCiD" resolve="ms" />
                </node>
                <node concept="liA8E" id="11vVX88rCiO" role="2OqNvi">
                  <ref role="37wK5l" node="5yNJPA6tDNi" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="11vVX88tjHP" role="3cqZAp" />
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
            <node concept="1gVbGN" id="6JwgQ7UWY_I" role="3cqZAp">
              <node concept="2OqwBi" id="6JwgQ7UWZFW" role="1gVkn0">
                <node concept="2OqwBi" id="6JwgQ7UWZax" role="2Oq$k0">
                  <node concept="2YIFZM" id="6JwgQ7UWYZZ" role="2Oq$k0">
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="6JwgQ7UWZqh" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                  </node>
                </node>
                <node concept="1v1jN8" id="6JwgQ7UX0iv" role="2OqNvi" />
              </node>
              <node concept="3cpWs3" id="6JwgQ7UX1xA" role="1gVpfI">
                <node concept="Xl_RD" id="6JwgQ7UX0Wz" role="3uHU7B">
                  <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
                </node>
                <node concept="2OqwBi" id="6JwgQ7UX1XN" role="3uHU7w">
                  <node concept="2OqwBi" id="6JwgQ7UX1I3" role="2Oq$k0">
                    <node concept="2YIFZM" id="6JwgQ7UX1I4" role="2Oq$k0">
                      <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                      <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="6JwgQ7UX1I5" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                    </node>
                  </node>
                  <node concept="ANE8D" id="6JwgQ7UX2BT" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6JwgQ7UWXVK" role="3cqZAp" />
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
            <node concept="3clFbF" id="7JjSHvQ4Be2" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ4Be4" role="3clFbG">
                <node concept="2OqwBi" id="11vVX88rCiX" role="37vLTx">
                  <node concept="2YIFZM" id="11vVX88rCiY" role="2Oq$k0">
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="11vVX88rCiZ" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:5rz8NqPS7qi" resolve="ensureCloudRepoIsPresent" />
                    <node concept="3cpWs3" id="11vVX88rCj0" role="37wK5m">
                      <node concept="37vLTw" id="11vVX88rCj1" role="3uHU7w">
                        <ref role="3cqZAo" node="11vVX88rCiv" resolve="modelServerPort" />
                      </node>
                      <node concept="Xl_RD" id="11vVX88rCj2" role="3uHU7B">
                        <property role="Xl_RC" value="http://localhost:" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7JjSHvQ4Be8" role="37vLTJ">
                  <ref role="3cqZAo" node="11vVX88rCiV" resolve="cr" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="11vVX88tkFT" role="3cqZAp">
              <node concept="2YIFZM" id="11vVX88tkFU" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                <node concept="3cmrfG" id="11vVX88tkFV" role="37wK5m">
                  <property role="3cmrfH" value="5000" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="11vVX88tkx1" role="3cqZAp" />
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
                      <ref role="3cqZAo" node="11vVX88rCiV" resolve="cr" />
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
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
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
                  <node concept="37vLTw" id="7JjSHvQ4tV3" role="2Oq$k0">
                    <ref role="3cqZAo" node="11vVX88rCiD" resolve="ms" />
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
          </node>
          <node concept="1wplmZ" id="7JjSHvQ4ze4" role="1zxBo6">
            <node concept="3clFbS" id="7JjSHvQ4ze5" role="1wplMD">
              <node concept="3SKdUt" id="11vVX88rCji" role="3cqZAp">
                <node concept="1PaTwC" id="11vVX88rCjj" role="1aUNEU">
                  <node concept="3oM_SD" id="11vVX88rCjk" role="1PaTwD">
                    <property role="3oM_SC" value="Clean" />
                  </node>
                  <node concept="3oM_SD" id="7JjSHvQ4z41" role="1PaTwD">
                    <property role="3oM_SC" value="up" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7JjSHvQ4$a6" role="3cqZAp">
                <node concept="3clFbS" id="7JjSHvQ4$a8" role="3clFbx">
                  <node concept="3clFbF" id="11vVX88rCjm" role="3cqZAp">
                    <node concept="2OqwBi" id="11vVX88rCjn" role="3clFbG">
                      <node concept="37vLTw" id="11vVX88rCjo" role="2Oq$k0">
                        <ref role="3cqZAo" node="11vVX88rCiD" resolve="ms" />
                      </node>
                      <node concept="liA8E" id="11vVX88rCjp" role="2OqNvi">
                        <ref role="37wK5l" node="5yNJPA6tDQo" resolve="kill" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7JjSHvQ4_Kg" role="3clFbw">
                  <node concept="10Nm6u" id="7JjSHvQ4_ON" role="3uHU7w" />
                  <node concept="37vLTw" id="7JjSHvQ4_AS" role="3uHU7B">
                    <ref role="3cqZAo" node="11vVX88rCiD" resolve="ms" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7JjSHvQ4B0n" role="3cqZAp">
                <node concept="3clFbS" id="7JjSHvQ4B0p" role="3clFbx">
                  <node concept="3clFbF" id="7JjSHvQ4Aif" role="3cqZAp">
                    <node concept="2OqwBi" id="7JjSHvQ4AEX" role="3clFbG">
                      <node concept="2YIFZM" id="7JjSHvQ4AAB" role="2Oq$k0">
                        <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                        <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                      </node>
                      <node concept="liA8E" id="7JjSHvQ4ANz" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:4yJY4bssA5" resolve="removeRepository" />
                        <node concept="37vLTw" id="7JjSHvQ4F6g" role="37wK5m">
                          <ref role="3cqZAo" node="11vVX88rCiV" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7JjSHvQ4uAD" role="3cqZAp">
                    <node concept="2OqwBi" id="7JjSHvQ4uUC" role="3clFbG">
                      <node concept="37vLTw" id="7JjSHvQ4uAB" role="2Oq$k0">
                        <ref role="3cqZAo" node="11vVX88rCiV" resolve="cr" />
                      </node>
                      <node concept="liA8E" id="7JjSHvQ4vdA" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:6aRQr1WPeeC" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7JjSHvQ4Dso" role="3clFbw">
                  <node concept="10Nm6u" id="7JjSHvQ4Dzv" role="3uHU7w" />
                  <node concept="37vLTw" id="7JjSHvQ4Dj0" role="3uHU7B">
                    <ref role="3cqZAo" node="11vVX88rCiV" resolve="cr" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5i$4SBK2PGu" role="3cqZAp">
                <node concept="1PaTwC" id="5i$4SBK2PGv" role="1aUNEU">
                  <node concept="3oM_SD" id="5i$4SBK2PGw" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PL5" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PL8" role="1PaTwD">
                    <property role="3oM_SC" value="cannot" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PLc" role="1PaTwD">
                    <property role="3oM_SC" value="close" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PO_" role="1PaTwD">
                    <property role="3oM_SC" value="it," />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2POF" role="1PaTwD">
                    <property role="3oM_SC" value="because" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2POM" role="1PaTwD">
                    <property role="3oM_SC" value="other" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PUe" role="1PaTwD">
                    <property role="3oM_SC" value="tests" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PZF" role="1PaTwD">
                    <property role="3oM_SC" value="want" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2PZP" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q3k" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q6a" role="1PaTwD">
                    <property role="3oM_SC" value="it" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q6n" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q6_" role="1PaTwD">
                    <property role="3oM_SC" value="it" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q9u" role="1PaTwD">
                    <property role="3oM_SC" value="cannot" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q9I" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK2Q9Z" role="1PaTwD">
                    <property role="3oM_SC" value="reopened" />
                  </node>
                </node>
              </node>
              <node concept="1X3_iC" id="5i$4SBK2Pkm" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3clFbJ" id="7JjSHvQ4E3g" role="8Wnug">
                  <node concept="3clFbS" id="7JjSHvQ4E3i" role="3clFbx">
                    <node concept="3clFbF" id="7JjSHvQ4x0s" role="3cqZAp">
                      <node concept="2OqwBi" id="7JjSHvQ4xD7" role="3clFbG">
                        <node concept="37vLTw" id="7JjSHvQ4x0n" role="2Oq$k0">
                          <ref role="3cqZAo" node="5yNJPA6tjz9" resolve="environment" />
                        </node>
                        <node concept="liA8E" id="7JjSHvQ4xWw" role="2OqNvi">
                          <ref role="37wK5l" to="79ha:3hj1t46fvYr" resolve="closeProject" />
                          <node concept="37vLTw" id="7JjSHvQ4y4$" role="37wK5m">
                            <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="7JjSHvQ4EwZ" role="3clFbw">
                    <node concept="10Nm6u" id="7JjSHvQ4EC4" role="3uHU7w" />
                    <node concept="37vLTw" id="7JjSHvQ4EcF" role="3uHU7B">
                      <ref role="3cqZAo" node="11vVX88rChQ" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6JwgQ7USPv4" role="3cqZAp">
                <node concept="3clFbS" id="6JwgQ7USPv6" role="3clFbx">
                  <node concept="3clFbF" id="6JwgQ7USQou" role="3cqZAp">
                    <node concept="2OqwBi" id="6JwgQ7USQtP" role="3clFbG">
                      <node concept="37vLTw" id="6JwgQ7USQos" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
                      </node>
                      <node concept="liA8E" id="6JwgQ7USQFG" role="2OqNvi">
                        <ref role="37wK5l" to="nhvc:6JwgQ7US9S7" resolve="clear" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="6JwgQ7USPUp" role="3clFbw">
                  <node concept="10Nm6u" id="6JwgQ7USQ9P" role="3uHU7w" />
                  <node concept="37vLTw" id="6JwgQ7USPG6" role="3uHU7B">
                    <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
                  </node>
                </node>
              </node>
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
      <node concept="2AHcQZ" id="11vVX88rCjt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
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
      <node concept="3clFbS" id="11vVX88w$Ce" role="3clF47">
        <node concept="3cpWs8" id="11vVX88wDeb" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wDec" role="3cpWs9">
            <property role="TrG5h" value="jo" />
            <node concept="3uibUv" id="11vVX88wDed" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2ShNRf" id="11vVX88wDxM" role="33vP2m">
              <node concept="1pGfFk" id="11vVX88wDtk" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonObject.&lt;init&gt;()" resolve="JsonObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88wEup" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wEuq" role="3cpWs9">
            <property role="TrG5h" value="rt" />
            <node concept="3uibUv" id="11vVX88wEur" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
            </node>
            <node concept="2OqwBi" id="11vVX88wEBN" role="33vP2m">
              <node concept="37vLTw" id="11vVX88wEyE" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wBjA" resolve="branch" />
              </node>
              <node concept="liA8E" id="11vVX88wEGo" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.getReadTransaction()" resolve="getReadTransaction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ96m1" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ96m4" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="17QB3L" id="7JjSHvQ96lZ" role="1tU5fm" />
            <node concept="2OqwBi" id="7JjSHvQ96W6" role="33vP2m">
              <node concept="37vLTw" id="7JjSHvQ96W7" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
              </node>
              <node concept="liA8E" id="7JjSHvQ96W8" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITransaction.getRole(long)" resolve="getRole" />
                <node concept="37vLTw" id="7JjSHvQ96W9" role="37wK5m">
                  <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ97oE" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ97oG" role="3clFbx">
            <node concept="3clFbF" id="7JjSHvQ7gQE" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7hcs" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ7gQC" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7hsS" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="Xl_RD" id="7JjSHvQ7hwQ" role="37wK5m">
                    <property role="Xl_RC" value="$role" />
                  </node>
                  <node concept="37vLTw" id="7JjSHvQ99RD" role="37wK5m">
                    <ref role="3cqZAo" node="7JjSHvQ96m4" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7JjSHvQ98JA" role="3clFbw">
            <node concept="10Nm6u" id="7JjSHvQ99bL" role="3uHU7w" />
            <node concept="37vLTw" id="7JjSHvQ97uB" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ96m4" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ7l6c" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ7l6d" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="7JjSHvQ7l6e" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="7JjSHvQ7jSb" role="33vP2m">
              <node concept="37vLTw" id="7JjSHvQ7jqI" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
              </node>
              <node concept="liA8E" id="7JjSHvQ7ko_" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITransaction.getConcept(long)" resolve="getConcept" />
                <node concept="37vLTw" id="7JjSHvQ7ml6" role="37wK5m">
                  <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ7mCa" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ7mCc" role="3clFbx">
            <node concept="3clFbF" id="7JjSHvQ7o6f" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7o6g" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ7o6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7o6i" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="Xl_RD" id="7JjSHvQ7o6j" role="37wK5m">
                    <property role="Xl_RC" value="$concept" />
                  </node>
                  <node concept="2OqwBi" id="7JjSHvQ7oJl" role="37wK5m">
                    <node concept="37vLTw" id="7JjSHvQ7oEq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ7l6d" resolve="concept" />
                    </node>
                    <node concept="liA8E" id="7JjSHvQ7oSJ" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IConcept.getLongName()" resolve="getLongName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7JjSHvQ7nBU" role="3clFbw">
            <node concept="10Nm6u" id="7JjSHvQ7nRn" role="3uHU7w" />
            <node concept="37vLTw" id="7JjSHvQ7n88" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ7l6d" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="11vVX88wFny" role="3cqZAp">
          <node concept="2GrKxI" id="11vVX88wFn$" role="2Gsz3X">
            <property role="TrG5h" value="prop" />
          </node>
          <node concept="3clFbS" id="11vVX88wFnC" role="2LFqv$">
            <node concept="3clFbF" id="11vVX88wFQA" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88wFXr" role="3clFbG">
                <node concept="37vLTw" id="11vVX88wFQ_" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
                </node>
                <node concept="liA8E" id="11vVX88wG37" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="2GrUjf" id="11vVX88wG42" role="37wK5m">
                    <ref role="2Gs0qQ" node="11vVX88wFn$" resolve="prop" />
                  </node>
                  <node concept="2OqwBi" id="11vVX88wG_n" role="37wK5m">
                    <node concept="37vLTw" id="11vVX88wGpk" role="2Oq$k0">
                      <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
                    </node>
                    <node concept="liA8E" id="11vVX88wGNA" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                      <node concept="37vLTw" id="11vVX88wH3l" role="37wK5m">
                        <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
                      </node>
                      <node concept="2GrUjf" id="11vVX88wHli" role="37wK5m">
                        <ref role="2Gs0qQ" node="11vVX88wFn$" resolve="prop" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="11vVX88wEXN" role="2GsD0m">
            <node concept="37vLTw" id="11vVX88wEOU" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
            </node>
            <node concept="liA8E" id="11vVX88wF4w" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getPropertyRoles(long)" resolve="getPropertyRoles" />
              <node concept="37vLTw" id="11vVX88wF5X" role="37wK5m">
                <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88wTDs" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wTDt" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="3uibUv" id="11vVX88wTDu" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonArray" resolve="JsonArray" />
            </node>
            <node concept="2ShNRf" id="11vVX88wTZB" role="33vP2m">
              <node concept="1pGfFk" id="11vVX88wTZr" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonArray.&lt;init&gt;()" resolve="JsonArray" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="11vVX88wRKE" role="3cqZAp">
          <node concept="2GrKxI" id="11vVX88wRKG" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="11vVX88wSfT" role="2GsD0m">
            <node concept="37vLTw" id="11vVX88wS3k" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
            </node>
            <node concept="liA8E" id="11vVX88wSzP" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
              <node concept="37vLTw" id="11vVX88wSFy" role="37wK5m">
                <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11vVX88wRKK" role="2LFqv$">
            <node concept="3clFbF" id="11vVX88wVLO" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88wW1C" role="3clFbG">
                <node concept="37vLTw" id="11vVX88wVLN" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wTDt" resolve="children" />
                </node>
                <node concept="liA8E" id="11vVX88wWfT" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonArray.add(com.google.gson.JsonElement)" resolve="add" />
                  <node concept="1rXfSq" id="11vVX88wWl4" role="37wK5m">
                    <ref role="37wK5l" node="11vVX88w$Cb" resolve="toJson" />
                    <node concept="37vLTw" id="11vVX88wW_F" role="37wK5m">
                      <ref role="3cqZAo" node="11vVX88wBjA" resolve="branch" />
                    </node>
                    <node concept="2GrUjf" id="11vVX88wWFK" role="37wK5m">
                      <ref role="2Gs0qQ" node="11vVX88wRKG" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11vVX88xltd" role="3cqZAp">
          <node concept="3clFbS" id="11vVX88xltf" role="3clFbx">
            <node concept="3clFbF" id="11vVX88wUtm" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88wUTy" role="3clFbG">
                <node concept="37vLTw" id="11vVX88wUtk" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
                </node>
                <node concept="liA8E" id="11vVX88wVgt" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.add(java.lang.String,com.google.gson.JsonElement)" resolve="add" />
                  <node concept="Xl_RD" id="11vVX88wVrt" role="37wK5m">
                    <property role="Xl_RC" value="$children" />
                  </node>
                  <node concept="37vLTw" id="11vVX88wVCs" role="37wK5m">
                    <ref role="3cqZAo" node="11vVX88wTDt" resolve="children" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="11vVX88xo3n" role="3clFbw">
            <node concept="3cmrfG" id="11vVX88xoBo" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="11vVX88xmxJ" role="3uHU7B">
              <node concept="37vLTw" id="11vVX88xm19" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wTDt" resolve="children" />
              </node>
              <node concept="liA8E" id="11vVX88xneh" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonArray.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88wYIa" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wYIb" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="3uibUv" id="11vVX88wYIc" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2ShNRf" id="11vVX88wZ68" role="33vP2m">
              <node concept="1pGfFk" id="11vVX88wZ5W" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonObject.&lt;init&gt;()" resolve="JsonObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="11vVX88x0hA" role="3cqZAp">
          <node concept="2GrKxI" id="11vVX88x0hC" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="2OqwBi" id="11vVX88x1oL" role="2GsD0m">
            <node concept="37vLTw" id="11vVX88x17S" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
            </node>
            <node concept="liA8E" id="11vVX88x1LP" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getReferenceRoles(long)" resolve="getReferenceRoles" />
              <node concept="37vLTw" id="11vVX88x1TK" role="37wK5m">
                <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="11vVX88x0hG" role="2LFqv$">
            <node concept="3clFbF" id="11vVX88x2g$" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88x2na" role="3clFbG">
                <node concept="37vLTw" id="11vVX88x2gz" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wYIb" resolve="references" />
                </node>
                <node concept="liA8E" id="11vVX88x2wD" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="2GrUjf" id="11vVX88x2FR" role="37wK5m">
                    <ref role="2Gs0qQ" node="11vVX88x0hC" resolve="ref" />
                  </node>
                  <node concept="1rXfSq" id="7JjSHvQ7GjN" role="37wK5m">
                    <ref role="37wK5l" node="7JjSHvQ7DfE" resolve="printReference" />
                    <node concept="2OqwBi" id="11vVX88x3$o" role="37wK5m">
                      <node concept="37vLTw" id="11vVX88x3ib" role="2Oq$k0">
                        <ref role="3cqZAo" node="11vVX88wEuq" resolve="rt" />
                      </node>
                      <node concept="liA8E" id="11vVX88x45T" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getReferenceTarget(long,java.lang.String)" resolve="getReferenceTarget" />
                        <node concept="37vLTw" id="11vVX88x4xe" role="37wK5m">
                          <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
                        </node>
                        <node concept="2GrUjf" id="11vVX88x5u5" role="37wK5m">
                          <ref role="2Gs0qQ" node="11vVX88x0hC" resolve="ref" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11vVX88xfI6" role="3cqZAp">
          <node concept="3clFbS" id="11vVX88xfI8" role="3clFbx">
            <node concept="3clFbF" id="11vVX88wZi8" role="3cqZAp">
              <node concept="2OqwBi" id="11vVX88wZi9" role="3clFbG">
                <node concept="37vLTw" id="11vVX88wZia" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
                </node>
                <node concept="liA8E" id="11vVX88wZib" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.add(java.lang.String,com.google.gson.JsonElement)" resolve="add" />
                  <node concept="Xl_RD" id="11vVX88wZic" role="37wK5m">
                    <property role="Xl_RC" value="$references" />
                  </node>
                  <node concept="37vLTw" id="11vVX88wZHF" role="37wK5m">
                    <ref role="3cqZAo" node="11vVX88wYIb" resolve="references" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="11vVX88xjtv" role="3clFbw">
            <node concept="2OqwBi" id="11vVX88xjtx" role="3fr31v">
              <node concept="2OqwBi" id="11vVX88xjty" role="2Oq$k0">
                <node concept="37vLTw" id="11vVX88xjtz" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88wYIb" resolve="references" />
                </node>
                <node concept="liA8E" id="11vVX88xjt$" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.entrySet()" resolve="entrySet" />
                </node>
              </node>
              <node concept="liA8E" id="11vVX88xjt_" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="11vVX88wZgP" role="3cqZAp" />
        <node concept="3cpWs6" id="11vVX88wDIT" role="3cqZAp">
          <node concept="37vLTw" id="11vVX88wDTC" role="3cqZAk">
            <ref role="3cqZAo" node="11vVX88wDec" resolve="jo" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11vVX88w$rA" role="1B3o_S" />
      <node concept="3uibUv" id="11vVX88wA$2" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ7C5V" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ7DfE" role="jymVt">
      <property role="TrG5h" value="printReference" />
      <node concept="3clFbS" id="7JjSHvQ7DfH" role="3clF47">
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
            <node concept="3cpWs6" id="7JjSHvQ7K_g" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7NfL" role="3cqZAk">
                <node concept="2OqwBi" id="7JjSHvQ7M7c" role="2Oq$k0">
                  <node concept="2OqwBi" id="7JjSHvQ7La9" role="2Oq$k0">
                    <node concept="37vLTw" id="7JjSHvQ7KDC" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ7K1U" resolve="sNodeReferenceAdapter" />
                    </node>
                    <node concept="liA8E" id="7JjSHvQ7LKT" role="2OqNvi">
                      <ref role="37wK5l" to="xxte:QurUgiyYyg" resolve="getReference" />
                    </node>
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
                        <property role="Xl_RC" value="dummy_author" />
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
        <node concept="3clFbF" id="11vVX88wvm9" role="3cqZAp">
          <node concept="2OqwBi" id="11vVX88wv$4" role="3clFbG">
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
                    </node>
                  </node>
                </node>
              </node>
            </node>
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
    <node concept="3clFb_" id="5i$4SBK0dy4" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3uibUv" id="5i$4SBK0dy5" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5i$4SBK0dy6" role="1B3o_S" />
      <node concept="3clFbS" id="5i$4SBK0dy7" role="3clF47">
        <node concept="3cpWs8" id="5i$4SBK0dy8" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0dy9" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="5i$4SBK0dya" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="10Nm6u" id="5i$4SBK0dyb" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK0dyc" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0dyd" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="5i$4SBK0dye" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="10Nm6u" id="5i$4SBK0dyf" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK0dyg" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0dyh" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="5i$4SBK0dyi" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="10Nm6u" id="5i$4SBK0dyj" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK22RV" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK22RW" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="5i$4SBK22RX" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="10Nm6u" id="5i$4SBK23x0" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="6JwgQ7UVt9h" role="3cqZAp">
          <node concept="3cpWsn" id="6JwgQ7UVt9i" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="6JwgQ7UVt9j" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="10Nm6u" id="6JwgQ7UVt9k" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="5i$4SBK0dyk" role="3cqZAp">
          <node concept="3uVAMA" id="5i$4SBK0dyl" role="1zxBo5">
            <node concept="XOnhg" id="5i$4SBK0dym" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="5i$4SBK0dyn" role="1tU5fm">
                <node concept="3uibUv" id="5i$4SBK0dyo" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5i$4SBK0dyp" role="1zc67A">
              <node concept="3clFbF" id="5i$4SBK0dyq" role="3cqZAp">
                <node concept="2OqwBi" id="5i$4SBK0dyr" role="3clFbG">
                  <node concept="37vLTw" id="5i$4SBK0dys" role="2Oq$k0">
                    <ref role="3cqZAo" node="5i$4SBK0dym" resolve="t" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dyt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5i$4SBK0dyu" role="3cqZAp">
                <node concept="2YIFZM" id="5i$4SBK0dyv" role="3cqZAk">
                  <ref role="37wK5l" node="5yNJPA6tup7" resolve="fail" />
                  <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
                  <node concept="3K4zz7" id="6JwgQ7UVBzg" role="37wK5m">
                    <node concept="2OqwBi" id="6JwgQ7UVEn5" role="3K4E3e">
                      <node concept="2OqwBi" id="6JwgQ7UVD3r" role="2Oq$k0">
                        <node concept="37vLTw" id="6JwgQ7UVC$t" role="2Oq$k0">
                          <ref role="3cqZAo" node="5i$4SBK0dym" resolve="t" />
                        </node>
                        <node concept="liA8E" id="6JwgQ7UVDI1" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6JwgQ7UVFc4" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6JwgQ7UVGde" role="3K4GZi">
                      <node concept="37vLTw" id="6JwgQ7UVFwI" role="2Oq$k0">
                        <ref role="3cqZAo" node="5i$4SBK0dym" resolve="t" />
                      </node>
                      <node concept="liA8E" id="6JwgQ7UVGAe" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="6JwgQ7UVAus" role="3K4Cdx">
                      <node concept="10Nm6u" id="6JwgQ7UVAW8" role="3uHU7w" />
                      <node concept="2OqwBi" id="6JwgQ7UV_Cb" role="3uHU7B">
                        <node concept="37vLTw" id="6JwgQ7UV_9B" role="2Oq$k0">
                          <ref role="3cqZAo" node="5i$4SBK0dym" resolve="t" />
                        </node>
                        <node concept="liA8E" id="6JwgQ7UVA20" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5i$4SBK0dyz" role="1zxBo7">
            <node concept="3clFbF" id="6JwgQ7UVv0s" role="3cqZAp">
              <node concept="37vLTI" id="6JwgQ7UVv0t" role="3clFbG">
                <node concept="1rXfSq" id="6JwgQ7UVv0u" role="37vLTx">
                  <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
                  <node concept="Xl_RD" id="6JwgQ7UVv0v" role="37wK5m">
                    <property role="Xl_RC" value="SimpleProjectA" />
                  </node>
                </node>
                <node concept="37vLTw" id="6JwgQ7UVw69" role="37vLTJ">
                  <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6JwgQ7UVv0x" role="3cqZAp">
              <node concept="37vLTI" id="6JwgQ7UVv0y" role="3clFbG">
                <node concept="2YIFZM" id="6JwgQ7UVv0z" role="37vLTx">
                  <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
                  <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
                  <node concept="37vLTw" id="6JwgQ7UVwjw" role="37wK5m">
                    <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="6JwgQ7UVv0_" role="37vLTJ">
                  <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="6JwgQ7UVv0A" role="3cqZAp">
              <node concept="2OqwBi" id="6JwgQ7UVv0B" role="1gVkn0">
                <node concept="37vLTw" id="6JwgQ7UVv0C" role="2Oq$k0">
                  <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
                </node>
                <node concept="liA8E" id="6JwgQ7UVv0D" role="2OqNvi">
                  <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3cpWs3" id="6JwgQ7UWd8c" role="1gVpfI">
                <node concept="2OqwBi" id="6JwgQ7UWdz4" role="3uHU7w">
                  <node concept="37vLTw" id="6JwgQ7UWdlT" role="2Oq$k0">
                    <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
                  </node>
                  <node concept="liA8E" id="6JwgQ7UWdPr" role="2OqNvi">
                    <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6JwgQ7UVODS" role="3uHU7B">
                  <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6JwgQ7UVuyl" role="3cqZAp" />
            <node concept="3clFbF" id="5i$4SBK0dy$" role="3cqZAp">
              <node concept="37vLTI" id="5i$4SBK0dy_" role="3clFbG">
                <node concept="1rXfSq" id="5i$4SBK0dyA" role="37vLTx">
                  <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
                  <node concept="Xl_RD" id="5i$4SBK0dyB" role="37wK5m">
                    <property role="Xl_RC" value="SimpleProjectA" />
                  </node>
                </node>
                <node concept="37vLTw" id="5i$4SBK0dyC" role="37vLTJ">
                  <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5i$4SBK0dyD" role="3cqZAp">
              <node concept="Xl_RD" id="5i$4SBK0dyE" role="abp_N">
                <property role="Xl_RC" value="project " />
              </node>
              <node concept="2OqwBi" id="5i$4SBK0dyF" role="abp_N">
                <node concept="37vLTw" id="5i$4SBK0dyG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="5i$4SBK0dyH" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="5i$4SBK0dyI" role="abp_N">
                <property role="Xl_RC" value=" opened" />
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK24ae" role="3cqZAp">
              <node concept="37vLTI" id="5i$4SBK24Eq" role="3clFbG">
                <node concept="2YIFZM" id="5i$4SBK25mU" role="37vLTx">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="5i$4SBK25rb" role="37wK5m">
                    <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="5i$4SBK24ac" role="37vLTJ">
                  <ref role="3cqZAo" node="5i$4SBK22RW" resolve="ideaProject" />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="5i$4SBK0dyJ" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK0dyK" role="1gVkn0">
                <node concept="2OqwBi" id="5i$4SBK0dyL" role="3uHU7B">
                  <node concept="37vLTw" id="5i$4SBK0dyM" role="2Oq$k0">
                    <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dyN" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5i$4SBK0dyO" role="3uHU7w">
                  <property role="Xl_RC" value="SimpleProjectA" />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="5i$4SBK0dyP" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK0dyQ" role="1gVkn0">
                <node concept="3cmrfG" id="5i$4SBK0dyR" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK0dyS" role="3uHU7B">
                  <node concept="2OqwBi" id="5i$4SBK0dyT" role="2Oq$k0">
                    <node concept="37vLTw" id="5i$4SBK0dyU" role="2Oq$k0">
                      <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                    </node>
                    <node concept="liA8E" id="5i$4SBK0dyV" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dyW" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5i$4SBK0dyX" role="3cqZAp">
              <node concept="3cpWsn" id="5i$4SBK0dyY" role="3cpWs9">
                <property role="TrG5h" value="simpleSolution1" />
                <node concept="3uibUv" id="5i$4SBK0dyZ" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK0dz0" role="33vP2m">
                  <node concept="2OqwBi" id="5i$4SBK0dz1" role="2Oq$k0">
                    <node concept="37vLTw" id="5i$4SBK0dz2" role="2Oq$k0">
                      <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                    </node>
                    <node concept="liA8E" id="5i$4SBK0dz3" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dz4" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="5i$4SBK0dz5" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="5i$4SBK0dz6" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK0dz7" role="1gVkn0">
                <node concept="Xl_RD" id="5i$4SBK0dz8" role="3uHU7w">
                  <property role="Xl_RC" value="simple.solution1" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK0dz9" role="3uHU7B">
                  <node concept="37vLTw" id="5i$4SBK0dza" role="2Oq$k0">
                    <ref role="3cqZAo" node="5i$4SBK0dyY" resolve="simpleSolution1" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dzb" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5i$4SBK0dzc" role="3cqZAp" />
            <node concept="3cpWs8" id="5i$4SBK0dzd" role="3cqZAp">
              <node concept="3cpWsn" id="5i$4SBK0dze" role="3cpWs9">
                <property role="TrG5h" value="modelServerPort" />
                <node concept="10Oyi0" id="5i$4SBK0dzf" role="1tU5fm" />
                <node concept="1rXfSq" id="5i$4SBK0dzg" role="33vP2m">
                  <ref role="37wK5l" node="7JjSHvQ4ewY" resolve="getOwnModelServerPort" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5i$4SBK3IlA" role="3cqZAp">
              <node concept="Xl_RD" id="5i$4SBK3IQW" role="abp_N">
                <property role="Xl_RC" value="modelServerPort=" />
              </node>
              <node concept="37vLTw" id="5i$4SBK3J55" role="abp_N">
                <ref role="3cqZAo" node="5i$4SBK0dze" resolve="modelServerPort" />
              </node>
            </node>
            <node concept="3clFbH" id="5i$4SBK0dzh" role="3cqZAp" />
            <node concept="3SKdUt" id="5i$4SBK0dzi" role="3cqZAp">
              <node concept="1PaTwC" id="5i$4SBK0dzj" role="1aUNEU">
                <node concept="3oM_SD" id="5i$4SBK0dzk" role="1PaTwD">
                  <property role="3oM_SC" value="start" />
                </node>
                <node concept="3oM_SD" id="5i$4SBK0dzl" role="1PaTwD">
                  <property role="3oM_SC" value="Modelix" />
                </node>
                <node concept="3oM_SD" id="5i$4SBK0dzm" role="1PaTwD">
                  <property role="3oM_SC" value="Server" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK0dzn" role="3cqZAp">
              <node concept="37vLTI" id="5i$4SBK0dzo" role="3clFbG">
                <node concept="2ShNRf" id="5i$4SBK0dzp" role="37vLTx">
                  <node concept="1pGfFk" id="5i$4SBK0dzq" role="2ShVmc">
                    <ref role="37wK5l" node="5yNJPA6tDU$" resolve="ModelixServerController" />
                    <node concept="2OqwBi" id="5i$4SBK0dzr" role="37wK5m">
                      <node concept="Xjq3P" id="5i$4SBK0dzs" role="2Oq$k0" />
                      <node concept="liA8E" id="5i$4SBK0dzt" role="2OqNvi">
                        <ref role="37wK5l" node="5yNJPA6tJ7L" resolve="pathToModelServerJar" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5i$4SBK0dzu" role="37wK5m">
                      <ref role="3cqZAo" node="5i$4SBK0dze" resolve="modelServerPort" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5i$4SBK0dzv" role="37vLTJ">
                  <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK0dzw" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK0dzx" role="3clFbG">
                <node concept="37vLTw" id="5i$4SBK0dzy" role="2Oq$k0">
                  <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
                </node>
                <node concept="liA8E" id="5i$4SBK0dzz" role="2OqNvi">
                  <ref role="37wK5l" node="5yNJPA6tDNi" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK0dz_" role="3cqZAp">
              <node concept="2YIFZM" id="5i$4SBK0dzA" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                <node concept="3cmrfG" id="5i$4SBK0dzB" role="37wK5m">
                  <property role="3cmrfH" value="5000" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6JwgQ7UX3bi" role="3cqZAp" />
            <node concept="1gVbGN" id="6JwgQ7UX3yT" role="3cqZAp">
              <node concept="2OqwBi" id="6JwgQ7UX3yU" role="1gVkn0">
                <node concept="2OqwBi" id="6JwgQ7UX3yV" role="2Oq$k0">
                  <node concept="2YIFZM" id="6JwgQ7UX3yW" role="2Oq$k0">
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  </node>
                  <node concept="liA8E" id="6JwgQ7UX3yX" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                  </node>
                </node>
                <node concept="1v1jN8" id="6JwgQ7UX3yY" role="2OqNvi" />
              </node>
              <node concept="3cpWs3" id="6JwgQ7UX3yZ" role="1gVpfI">
                <node concept="Xl_RD" id="6JwgQ7UX3z0" role="3uHU7B">
                  <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
                </node>
                <node concept="2OqwBi" id="6JwgQ7UX3z1" role="3uHU7w">
                  <node concept="2OqwBi" id="6JwgQ7UX3z2" role="2Oq$k0">
                    <node concept="2YIFZM" id="6JwgQ7UX3z3" role="2Oq$k0">
                      <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                      <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    </node>
                    <node concept="liA8E" id="6JwgQ7UX3z4" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                    </node>
                  </node>
                  <node concept="ANE8D" id="6JwgQ7UX3z5" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6JwgQ7UX3fX" role="3cqZAp" />
            <node concept="3clFbH" id="5i$4SBK0dzC" role="3cqZAp" />
            <node concept="3SKdUt" id="5i$4SBK0dzD" role="3cqZAp">
              <node concept="1PaTwC" id="5i$4SBK0dzE" role="1aUNEU">
                <node concept="3oM_SD" id="5i$4SBK0dzF" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="5i$4SBK0dzG" role="1PaTwD">
                  <property role="3oM_SC" value="CloudRepository" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK0dzH" role="3cqZAp">
              <node concept="37vLTI" id="5i$4SBK0dzI" role="3clFbG">
                <node concept="2OqwBi" id="5i$4SBK0dzJ" role="37vLTx">
                  <node concept="2YIFZM" id="5i$4SBK0dzK" role="2Oq$k0">
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK0dzL" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:5rz8NqPS7qi" resolve="ensureCloudRepoIsPresent" />
                    <node concept="3cpWs3" id="5i$4SBK0dzM" role="37wK5m">
                      <node concept="37vLTw" id="5i$4SBK0dzN" role="3uHU7w">
                        <ref role="3cqZAo" node="5i$4SBK0dze" resolve="modelServerPort" />
                      </node>
                      <node concept="Xl_RD" id="5i$4SBK0dzO" role="3uHU7B">
                        <property role="Xl_RC" value="http://localhost:" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5i$4SBK0dzP" role="37vLTJ">
                  <ref role="3cqZAo" node="5i$4SBK0dyd" resolve="cr" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK0dzQ" role="3cqZAp">
              <node concept="2YIFZM" id="5i$4SBK0dzR" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                <node concept="3cmrfG" id="5i$4SBK0dzS" role="37wK5m">
                  <property role="3cmrfH" value="5000" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5i$4SBK0dzT" role="3cqZAp" />
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
                      <ref role="3cqZAo" node="5i$4SBK0dyd" resolve="cr" />
                    </node>
                    <node concept="2ShNRf" id="5i$4SBK0d$6" role="37wK5m">
                      <node concept="1pGfFk" id="5i$4SBK0d$7" role="2ShVmc">
                        <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                        <node concept="Xl_RD" id="5i$4SBK0d$8" role="37wK5m">
                          <property role="Xl_RC" value="default" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1QHqEK" id="5i$4SBK0d$9" role="3cqZAp">
              <node concept="1QHqEC" id="5i$4SBK0d$a" role="1QHqEI">
                <node concept="3clFbS" id="5i$4SBK0d$b" role="1bW5cS">
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
                          <ref role="3cqZAo" node="5i$4SBK0dyY" resolve="simpleSolution1" />
                        </node>
                        <node concept="37vLTw" id="5i$4SBK23BB" role="37wK5m">
                          <ref role="3cqZAo" node="5i$4SBK22RW" resolve="ideaProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5i$4SBK0d$j" role="ukAjM">
                <node concept="37vLTw" id="5i$4SBK0d$k" role="2Oq$k0">
                  <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
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
                    <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
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
                <node concept="3oM_SD" id="5i$4SBK26OB" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
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
                  <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
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
                                          <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
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
                    <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
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
                  <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
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
                    <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
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
            <node concept="3clFbH" id="5i$4SBK2nfr" role="3cqZAp" />
            <node concept="3SKdUt" id="5i$4SBK27Yr" role="3cqZAp">
              <node concept="1PaTwC" id="5i$4SBK27Ys" role="1aUNEU">
                <node concept="3oM_SD" id="5i$4SBK281e" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
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
            <node concept="3clFbH" id="5i$4SBK26up" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="5i$4SBK0d$E" role="1zxBo6">
            <node concept="3clFbS" id="5i$4SBK0d$F" role="1wplMD">
              <node concept="3SKdUt" id="5i$4SBK0d$G" role="3cqZAp">
                <node concept="1PaTwC" id="5i$4SBK0d$H" role="1aUNEU">
                  <node concept="3oM_SD" id="5i$4SBK0d$I" role="1PaTwD">
                    <property role="3oM_SC" value="Clean" />
                  </node>
                  <node concept="3oM_SD" id="5i$4SBK0d$J" role="1PaTwD">
                    <property role="3oM_SC" value="up" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5i$4SBK0d$K" role="3cqZAp">
                <node concept="3clFbS" id="5i$4SBK0d$L" role="3clFbx">
                  <node concept="3clFbF" id="5i$4SBK0d$M" role="3cqZAp">
                    <node concept="2OqwBi" id="5i$4SBK0d$N" role="3clFbG">
                      <node concept="37vLTw" id="5i$4SBK0d$O" role="2Oq$k0">
                        <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
                      </node>
                      <node concept="liA8E" id="5i$4SBK0d$P" role="2OqNvi">
                        <ref role="37wK5l" node="5yNJPA6tDQo" resolve="kill" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="5i$4SBK0d$Q" role="3clFbw">
                  <node concept="10Nm6u" id="5i$4SBK0d$R" role="3uHU7w" />
                  <node concept="37vLTw" id="5i$4SBK0d$S" role="3uHU7B">
                    <ref role="3cqZAo" node="5i$4SBK0dy9" resolve="ms" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5i$4SBK0d$T" role="3cqZAp">
                <node concept="3clFbS" id="5i$4SBK0d$U" role="3clFbx">
                  <node concept="3clFbF" id="5i$4SBK0d$V" role="3cqZAp">
                    <node concept="2OqwBi" id="5i$4SBK0d$W" role="3clFbG">
                      <node concept="2YIFZM" id="5i$4SBK0d$X" role="2Oq$k0">
                        <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                        <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="5i$4SBK0d$Y" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:4yJY4bssA5" resolve="removeRepository" />
                        <node concept="37vLTw" id="5i$4SBK0d$Z" role="37wK5m">
                          <ref role="3cqZAo" node="5i$4SBK0dyd" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5i$4SBK0d_0" role="3cqZAp">
                    <node concept="2OqwBi" id="5i$4SBK0d_1" role="3clFbG">
                      <node concept="37vLTw" id="5i$4SBK0d_2" role="2Oq$k0">
                        <ref role="3cqZAo" node="5i$4SBK0dyd" resolve="cr" />
                      </node>
                      <node concept="liA8E" id="5i$4SBK0d_3" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:6aRQr1WPeeC" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="5i$4SBK0d_4" role="3clFbw">
                  <node concept="10Nm6u" id="5i$4SBK0d_5" role="3uHU7w" />
                  <node concept="37vLTw" id="5i$4SBK0d_6" role="3uHU7B">
                    <ref role="3cqZAo" node="5i$4SBK0dyd" resolve="cr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5i$4SBK0d_7" role="3cqZAp">
                <node concept="3clFbS" id="5i$4SBK0d_8" role="3clFbx">
                  <node concept="3clFbF" id="5i$4SBK0d_9" role="3cqZAp">
                    <node concept="2OqwBi" id="5i$4SBK0d_a" role="3clFbG">
                      <node concept="37vLTw" id="5i$4SBK0d_b" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yNJPA6tjz9" resolve="environment" />
                      </node>
                      <node concept="liA8E" id="5i$4SBK0d_c" role="2OqNvi">
                        <ref role="37wK5l" to="79ha:3hj1t46fvYr" resolve="closeProject" />
                        <node concept="37vLTw" id="5i$4SBK0d_d" role="37wK5m">
                          <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="5i$4SBK0d_e" role="3clFbw">
                  <node concept="10Nm6u" id="5i$4SBK0d_f" role="3uHU7w" />
                  <node concept="37vLTw" id="5i$4SBK0d_g" role="3uHU7B">
                    <ref role="3cqZAo" node="5i$4SBK0dyh" resolve="mpsProject" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6JwgQ7UVzbv" role="3cqZAp">
                <node concept="3clFbS" id="6JwgQ7UVzbw" role="3clFbx">
                  <node concept="3clFbF" id="6JwgQ7UVzbx" role="3cqZAp">
                    <node concept="2OqwBi" id="6JwgQ7UVzby" role="3clFbG">
                      <node concept="37vLTw" id="6JwgQ7UVzbz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
                      </node>
                      <node concept="liA8E" id="6JwgQ7UVzb$" role="2OqNvi">
                        <ref role="37wK5l" to="nhvc:6JwgQ7US9S7" resolve="clear" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="6JwgQ7UVzb_" role="3clFbw">
                  <node concept="10Nm6u" id="6JwgQ7UVzbA" role="3uHU7w" />
                  <node concept="37vLTw" id="6JwgQ7UVzbB" role="3uHU7B">
                    <ref role="3cqZAo" node="6JwgQ7UVt9i" resolve="pbc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5i$4SBK0d_h" role="3cqZAp" />
        <node concept="3cpWs6" id="5i$4SBK0d_i" role="3cqZAp">
          <node concept="2YIFZM" id="5i$4SBK0d_j" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5i$4SBK0d_k" role="2AJF6D">
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
              <node concept="3cpWs3" id="5i$4SBK2oHs" role="37wK5m">
                <node concept="2OqwBi" id="5i$4SBK2srk" role="3uHU7w">
                  <node concept="2V_BSl" id="5i$4SBK2se5" role="2Oq$k0" />
                  <node concept="liA8E" id="5i$4SBK2szF" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
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
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5i$4SBK2pFl" role="3clF45" />
    </node>
    <node concept="3uibUv" id="5i$4SBK2p7Z" role="KRMoO">
      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
    </node>
    <node concept="3Tm1VV" id="5i$4SBK2oI0" role="1B3o_S" />
  </node>
</model>

