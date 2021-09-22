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
    <import index="8bn5" ref="r:7fa64b2e-9276-48d0-83e8-bd0a49298c05(jetbrains.mps.ide.httpsupport.nodeaccess.plugin)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="btn2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.impl(MPS.IDEA/)" />
    <import index="l2a6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.conversion.impl(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="y2et" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.apache.commons.codec.binary(org.modelix.ui.svg/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="wy2b" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.google.gson(org.modelix.lib/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="iwnc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.io(MPS.IDEA/)" />
    <import index="iil0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.buffer(MPS.IDEA/)" />
    <import index="ap92" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.util(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765275063380" name="de.slisson.mps.reflection.structure.ReflectionFieldAccess" flags="ng" index="1PnCL0">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
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
      </concept>
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
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
      <node concept="3clFbS" id="1yokyoYyZS_" role="2VODD2">
        <node concept="abc8K" id="7HQRnQ5zDs8" role="3cqZAp">
          <node concept="Xl_RD" id="7HQRnQ5zDsz" role="abp_N">
            <property role="Xl_RC" value="AUTHENTICATION SERVICE" />
          </node>
        </node>
        <node concept="3clFbF" id="1yokyoYz2r2" role="3cqZAp">
          <node concept="2YIFZM" id="1yokyoYz2r$" role="3clFbG">
            <ref role="37wK5l" node="1yokyoYz2gC" resolve="initialize" />
            <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1yokyoYyZSK">
    <property role="TrG5h" value="AuthenticationManager" />
    <node concept="2tJIrI" id="7f6_nf_ukTf" role="jymVt" />
    <node concept="Wx3nA" id="7f6_nf_ul8n" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7f6_nf_ukXO" role="1B3o_S" />
      <node concept="2ShNRf" id="7f6_nf_ulfZ" role="33vP2m">
        <node concept="HV5vD" id="7f6_nf_ul_J" role="2ShVmc">
          <ref role="HV5vE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
        </node>
      </node>
      <node concept="3uibUv" id="7f6_nf_ulfu" role="1tU5fm">
        <ref role="3uigEE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_ulL0" role="jymVt" />
    <node concept="2YIFZL" id="7f6_nf_ulX8" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="7f6_nf_ulXb" role="3clF47">
        <node concept="3cpWs6" id="7f6_nf_um8r" role="3cqZAp">
          <node concept="37vLTw" id="7f6_nf_um8Z" role="3cqZAk">
            <ref role="3cqZAo" node="7f6_nf_ul8n" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7f6_nf_ulPA" role="1B3o_S" />
      <node concept="3uibUv" id="7f6_nf_um4E" role="3clF45">
        <ref role="3uigEE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_ukTW" role="jymVt" />
    <node concept="2YIFZL" id="1yokyoYz2gC" role="jymVt">
      <property role="TrG5h" value="initialize" />
      <node concept="3clFbS" id="1yokyoYz2gF" role="3clF47" />
      <node concept="3cqZAl" id="1yokyoYz2k9" role="3clF45" />
      <node concept="3Tm1VV" id="1yokyoYz2ks" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_um9x" role="jymVt" />
    <node concept="312cEg" id="7f6_nf_umnI" role="jymVt">
      <property role="TrG5h" value="accessToken" />
      <node concept="3Tm6S6" id="7f6_nf_umft" role="1B3o_S" />
      <node concept="17QB3L" id="7f6_nf_umnu" role="1tU5fm" />
      <node concept="10Nm6u" id="7f6_nf_umpp" role="33vP2m" />
    </node>
    <node concept="312cEg" id="4fpU1SJgdd4" role="jymVt">
      <property role="TrG5h" value="lastProject" />
      <node concept="3Tm6S6" id="4fpU1SJgcVn" role="1B3o_S" />
      <node concept="3uibUv" id="4fpU1SJgdw_" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="3poOr4tqsSz" role="jymVt">
      <property role="TrG5h" value="currentStrategy" />
      <node concept="3Tm6S6" id="3poOr4tqrBm" role="1B3o_S" />
      <node concept="3uibUv" id="3poOr4tqsN3" role="1tU5fm">
        <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
      </node>
    </node>
    <node concept="312cEg" id="579DpELf$PS" role="jymVt">
      <property role="TrG5h" value="currentUser" />
      <node concept="3Tm6S6" id="579DpELfzmy" role="1B3o_S" />
      <node concept="3uibUv" id="579DpELf$JH" role="1tU5fm">
        <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
      </node>
      <node concept="10Nm6u" id="579DpELfA5U" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="4fpU1SJfUep" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_ukOD" role="jymVt">
      <property role="TrG5h" value="hasValidToken" />
      <node concept="3clFbS" id="7f6_nf_ukOG" role="3clF47">
        <node concept="3SKdUt" id="7f6_nf_uncH" role="3cqZAp">
          <node concept="1PaTwC" id="7f6_nf_uncI" role="1aUNEU">
            <node concept="3oM_SD" id="7f6_nf_uncJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_uncT" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unex" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_une_" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_uneM" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unf8" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unfn" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unfv" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7f6_nf_ukSH" role="3cqZAp">
          <node concept="3y3z36" id="7f6_nf_umHL" role="3cqZAk">
            <node concept="10Nm6u" id="7f6_nf_umVS" role="3uHU7w" />
            <node concept="37vLTw" id="7f6_nf_umq5" role="3uHU7B">
              <ref role="3cqZAo" node="7f6_nf_umnI" resolve="accessToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6_nf_uiNm" role="1B3o_S" />
      <node concept="10P_77" id="7f6_nf_ukOu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_xBYD" role="jymVt" />
    <node concept="2tJIrI" id="3poOr4tpwtT" role="jymVt" />
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
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="7f6_nf_z1uU" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
            </node>
            <node concept="2OqwBi" id="1xehy3SrtY5" role="33vP2m">
              <node concept="37vLTw" id="1xehy3SrtY6" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SrtXW" resolve="configurationComponent" />
              </node>
              <node concept="liA8E" id="1xehy3SrtY7" role="2OqNvi">
                <ref role="37wK5l" node="7xblg8lmnRn" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3poOr4tpFlZ" role="3cqZAp">
          <node concept="1PaTwC" id="3poOr4tpFm0" role="1aUNEU">
            <node concept="3oM_SD" id="3poOr4tpFm1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="3poOr4tpFmv" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3poOr4tpGqO" role="1PaTwD">
              <property role="3oM_SC" value="load" />
            </node>
            <node concept="3oM_SD" id="3poOr4tpGra" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="3poOr4tpGrf" role="1PaTwD">
              <property role="3oM_SC" value="state" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="579DpELfP94" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELfP95" role="3cpWs9">
            <property role="TrG5h" value="strategy" />
            <node concept="3uibUv" id="579DpELfP96" role="1tU5fm">
              <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
            </node>
            <node concept="2ShNRf" id="579DpELfPUj" role="33vP2m">
              <node concept="1pGfFk" id="579DpELfR0Q" role="2ShVmc">
                <ref role="37wK5l" node="579DpELfKrO" resolve="AuthorizationCodePKCEFlowStrategy" />
                <node concept="Xl_RD" id="579DpELfR81" role="37wK5m">
                  <property role="Xl_RC" value="https://accounts-ci.siginet.lu/connect/authorize" />
                </node>
                <node concept="Xl_RD" id="579DpELfRKX" role="37wK5m">
                  <property role="Xl_RC" value="gescomplus.dsl.mps_client_pkce" />
                </node>
                <node concept="Xl_RD" id="579DpELfSnZ" role="37wK5m">
                  <property role="Xl_RC" value="hera.dsl.publish openid" />
                </node>
                <node concept="Xl_RD" id="579DpELhsOn" role="37wK5m">
                  <property role="Xl_RC" value="https://accounts-ci.siginet.lu/connect/token" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="579DpELfM8F" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="3poOr4tp$5t" role="8Wnug">
            <node concept="3cpWsn" id="3poOr4tp$5u" role="3cpWs9">
              <property role="TrG5h" value="strategy" />
              <node concept="3uibUv" id="3poOr4tp$5v" role="1tU5fm">
                <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
              </node>
              <node concept="2ShNRf" id="3poOr4tp$ex" role="33vP2m">
                <node concept="1pGfFk" id="3poOr4tp_iM" role="2ShVmc">
                  <ref role="37wK5l" node="3poOr4tpmF$" resolve="AuthorizationCodeFlowStrategy" />
                  <node concept="Xl_RD" id="3poOr4tp_nV" role="37wK5m">
                    <property role="Xl_RC" value="https://accounts.google.com/o/oauth2/v2/auth" />
                  </node>
                  <node concept="Xl_RD" id="3poOr4tp_u9" role="37wK5m">
                    <property role="Xl_RC" value="1095017385212-7mblbpijj235uns9k5lae05rfhs3jjjk.apps.googleusercontent.com" />
                  </node>
                  <node concept="Xl_RD" id="3poOr4tp_$C" role="37wK5m">
                    <property role="Xl_RC" value="https://www.googleapis.com/auth/userinfo.email" />
                  </node>
                  <node concept="Xl_RD" id="579DpELe8sL" role="37wK5m">
                    <property role="Xl_RC" value="https://www.googleapis.com/oauth2/v3/userinfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3poOr4tpArN" role="3cqZAp">
          <node concept="37vLTw" id="579DpELfSNS" role="3cqZAk">
            <ref role="3cqZAo" node="579DpELfP95" resolve="strategy" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3poOr4tpxz6" role="1B3o_S" />
      <node concept="3uibUv" id="3poOr4tpyE1" role="3clF45">
        <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tpRqG" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tpTsO" role="jymVt">
      <property role="TrG5h" value="instantiateExecutor" />
      <node concept="3clFbS" id="3poOr4tpTsR" role="3clF47">
        <node concept="3cpWs6" id="3poOr4tpVuE" role="3cqZAp">
          <node concept="2ShNRf" id="3poOr4tpVz2" role="3cqZAk">
            <node concept="YeOm9" id="3poOr4tpX4v" role="2ShVmc">
              <node concept="1Y3b0j" id="3poOr4tpX4y" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="3poOr4tpX4z" role="1B3o_S" />
                <node concept="3clFb_" id="3poOr4tpX4C" role="jymVt">
                  <property role="TrG5h" value="getRedirectURI" />
                  <node concept="3Tm1VV" id="3poOr4tpX4E" role="1B3o_S" />
                  <node concept="17QB3L" id="3poOr4tpX4F" role="3clF45" />
                  <node concept="3clFbS" id="3poOr4tpX4G" role="3clF47">
                    <node concept="3cpWs6" id="3poOr4tpYqe" role="3cqZAp">
                      <node concept="Xl_RD" id="3poOr4tpYCC" role="3cqZAk">
                        <property role="Xl_RC" value="http://localhost:9297/modelixauthtoken" />
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
        <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
      </node>
    </node>
    <node concept="2tJIrI" id="3poOr4tqk$e" role="jymVt" />
    <node concept="3clFb_" id="3poOr4tqniY" role="jymVt">
      <property role="TrG5h" value="processResponse" />
      <node concept="3clFbS" id="3poOr4tqnj1" role="3clF47">
        <node concept="3clFbF" id="3poOr4tqvgv" role="3cqZAp">
          <node concept="2OqwBi" id="3poOr4tqvvB" role="3clFbG">
            <node concept="37vLTw" id="3poOr4tqvgu" role="2Oq$k0">
              <ref role="3cqZAo" node="3poOr4tqsSz" resolve="currentStrategy" />
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
        <node concept="3cpWs8" id="579DpELf4qY" role="3cqZAp">
          <node concept="3cpWsn" id="579DpELf4qZ" role="3cpWs9">
            <property role="TrG5h" value="user" />
            <node concept="3uibUv" id="579DpELf4r0" role="1tU5fm">
              <ref role="3uigEE" node="579DpELe0nI" resolve="User" />
            </node>
            <node concept="2OqwBi" id="579DpELf3sa" role="33vP2m">
              <node concept="37vLTw" id="579DpELf3hQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3poOr4tqsSz" resolve="currentStrategy" />
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
            <node concept="3clFbF" id="579DpELdUZD" role="3cqZAp">
              <node concept="37vLTI" id="579DpELdVS$" role="3clFbG">
                <node concept="37vLTw" id="579DpELdWda" role="37vLTx">
                  <ref role="3cqZAo" node="579DpELdN8F" resolve="accessToken" />
                </node>
                <node concept="2OqwBi" id="579DpELdV83" role="37vLTJ">
                  <node concept="Xjq3P" id="579DpELdUZz" role="2Oq$k0" />
                  <node concept="2OwXpG" id="579DpELdVrJ" role="2OqNvi">
                    <ref role="2Oxat6" node="7f6_nf_umnI" resolve="accessToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELfCJo" role="3cqZAp">
              <node concept="37vLTI" id="579DpELfDhg" role="3clFbG">
                <node concept="37vLTw" id="579DpELfDsZ" role="37vLTx">
                  <ref role="3cqZAo" node="579DpELf4qZ" resolve="user" />
                </node>
                <node concept="2OqwBi" id="579DpELfCT0" role="37vLTJ">
                  <node concept="Xjq3P" id="579DpELfCJm" role="2Oq$k0" />
                  <node concept="2OwXpG" id="579DpELfD4q" role="2OqNvi">
                    <ref role="2Oxat6" node="579DpELf$PS" resolve="currentUser" />
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
        <node concept="3clFbF" id="4fpU1SJgdZi" role="3cqZAp">
          <node concept="37vLTI" id="4fpU1SJgeDR" role="3clFbG">
            <node concept="37vLTw" id="4fpU1SJgeRq" role="37vLTx">
              <ref role="3cqZAo" node="7f6_nf_vT7l" resolve="project" />
            </node>
            <node concept="37vLTw" id="4fpU1SJgdZg" role="37vLTJ">
              <ref role="3cqZAo" node="4fpU1SJgdd4" resolve="lastProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7f6_nf_vlBh" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_vlBj" role="3clFbx">
            <node concept="3cpWs8" id="3poOr4tpPGa" role="3cqZAp">
              <node concept="3cpWsn" id="3poOr4tpPGd" role="3cpWs9">
                <property role="TrG5h" value="strategy" />
                <node concept="3uibUv" id="3poOr4tpPGe" role="1tU5fm">
                  <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
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
                  <ref role="3cqZAo" node="3poOr4tqsSz" resolve="currentStrategy" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3poOr4tq4Cx" role="3cqZAp">
              <node concept="3cpWsn" id="3poOr4tq4Cy" role="3cpWs9">
                <property role="TrG5h" value="executor" />
                <node concept="3uibUv" id="3poOr4tq4Cz" role="1tU5fm">
                  <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
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
                      <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                      <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
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
                <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
              </node>
              <node concept="liA8E" id="7f6_nf_vmmO" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Desktop.isSupported(java.awt.Desktop$Action)" resolve="isSupported" />
                <node concept="Rm8GO" id="7f6_nf_vmuD" role="37wK5m">
                  <ref role="Rm8GQ" to="z60i:~Desktop$Action.BROWSE" resolve="BROWSE" />
                  <ref role="1Px2BO" to="z60i:~Desktop$Action" resolve="Desktop.Action" />
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
        <node concept="3cpWs6" id="7f6_nf_z5iC" role="3cqZAp">
          <node concept="3clFbT" id="7f6_nf_z5se" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7f6_nf_unoP" role="1B3o_S" />
      <node concept="10P_77" id="7f6_nf_z4vv" role="3clF45" />
      <node concept="37vLTG" id="7f6_nf_vT7l" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7f6_nf_vWYt" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
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
      <node concept="3clFbS" id="1yokyoYz3Y6" role="3clF47">
        <node concept="3clFbJ" id="7f6_nf_un0F" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_un0H" role="3clFbx">
            <node concept="3cpWs6" id="7f6_nf_un5X" role="3cqZAp">
              <node concept="37vLTw" id="7f6_nf_un6b" role="3cqZAk">
                <ref role="3cqZAo" node="7f6_nf_umnI" resolve="accessToken" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7f6_nf_un1m" role="3clFbw">
            <ref role="37wK5l" node="7f6_nf_ukOD" resolve="hasValidToken" />
          </node>
          <node concept="9aQIb" id="7f6_nf_un2d" role="9aQIa">
            <node concept="3clFbS" id="7f6_nf_un2e" role="9aQI4">
              <node concept="3clFbJ" id="7f6_nf_z6Ap" role="3cqZAp">
                <node concept="3clFbS" id="7f6_nf_z6Ar" role="3clFbx">
                  <node concept="3cpWs6" id="7f6_nf_uo0u" role="3cqZAp">
                    <node concept="37vLTw" id="7f6_nf_uo0I" role="3cqZAk">
                      <ref role="3cqZAo" node="7f6_nf_umnI" resolve="accessToken" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="7f6_nf_z6M5" role="3clFbw">
                  <ref role="37wK5l" node="7f6_nf_unuU" resolve="obtainNewToken" />
                  <node concept="37vLTw" id="7f6_nf_z6M6" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_vX19" resolve="project" />
                  </node>
                </node>
                <node concept="9aQIb" id="7f6_nf_z7Go" role="9aQIa">
                  <node concept="3clFbS" id="7f6_nf_z7Gp" role="9aQI4">
                    <node concept="3cpWs6" id="7f6_nf_z7Sn" role="3cqZAp">
                      <node concept="10Nm6u" id="7f6_nf_z7U9" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1yokyoYz3Ur" role="1B3o_S" />
      <node concept="17QB3L" id="1yokyoYz41Y" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1yokyoYyZSL" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="70oIz4akzr4" />
  <node concept="pFx2x" id="1yokyoYz5xr">
    <property role="TrG5h" value="AuthenticationRequestHandler" />
    <node concept="std77" id="1yokyoYz5xs" role="std7D">
      <node concept="std78" id="1yokyoYz5$3" role="std7y">
        <property role="svBHv" value="modelixauthtoken" />
      </node>
    </node>
    <node concept="pF8on" id="1yokyoYz5xt" role="pCJbe">
      <node concept="3clFbS" id="1yokyoYz5xu" role="2VODD2">
        <node concept="3clFbF" id="4fpU1SJfRT8" role="3cqZAp">
          <node concept="2OqwBi" id="4fpU1SJfWRV" role="3clFbG">
            <node concept="2YIFZM" id="4fpU1SJfWMG" role="2Oq$k0">
              <ref role="37wK5l" node="7f6_nf_ulX8" resolve="getInstance" />
              <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
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
  <node concept="tC5Ba" id="6NlwFoT4OaJ">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AuthenticationGroup" />
    <node concept="ftmFs" id="6NlwFoT4OdX" role="ftER_">
      <node concept="tCFHf" id="6NlwFoT4Oe0" role="ftvYc">
        <ref role="tCJdB" node="6NlwFoT4O7g" resolve="GetModelixToken" />
      </node>
    </node>
    <node concept="tT9cl" id="6NlwFoT4OdV" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
    </node>
  </node>
  <node concept="sE7Ow" id="6NlwFoT4O7g">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="GetModelixToken" />
    <property role="2uzpH1" value="Get Modelix Token" />
    <node concept="tnohg" id="6NlwFoT4O7h" role="tncku">
      <node concept="3clFbS" id="6NlwFoT4O7i" role="2VODD2">
        <node concept="3cpWs8" id="7f6_nf_vhCl" role="3cqZAp">
          <node concept="3cpWsn" id="7f6_nf_vhCo" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="17QB3L" id="7f6_nf_vhCj" role="1tU5fm" />
            <node concept="2OqwBi" id="7f6_nf_vhrZ" role="33vP2m">
              <node concept="2YIFZM" id="7f6_nf_vhnp" role="2Oq$k0">
                <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
                <ref role="37wK5l" node="7f6_nf_ulX8" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7f6_nf_vhzz" role="2OqNvi">
                <ref role="37wK5l" node="1yokyoYz3Y3" resolve="getToken" />
                <node concept="2YIFZM" id="7f6_nf_xxV6" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="7f6_nf_xxWh" role="37wK5m">
                    <node concept="2WthIp" id="7f6_nf_xxWk" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7f6_nf_xxWm" role="2OqNvi">
                      <ref role="2WH_rO" node="6NlwFoT5eua" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="abc8K" id="7f6_nf_vhIl" role="3cqZAp">
          <node concept="Xl_RD" id="7f6_nf_vhJ9" role="abp_N">
            <property role="Xl_RC" value="TOKEN obtained: " />
          </node>
          <node concept="37vLTw" id="7f6_nf_vhLG" role="abp_N">
            <ref role="3cqZAo" node="7f6_nf_vhCo" resolve="token" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6NlwFoT5eua" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6NlwFoT5eub" role="1oa70y" />
    </node>
  </node>
  <node concept="312cEu" id="7xblg8lmms7">
    <property role="TrG5h" value="ModelixAuthenticationConfigurationComponent" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="configuration" />
    <node concept="2tJIrI" id="55JU2Sa5G1$" role="jymVt" />
    <node concept="312cEu" id="55JU2Sa5HU_" role="jymVt">
      <property role="TrG5h" value="StrategyConfiguration" />
      <property role="1sVAO0" value="true" />
    </node>
    <node concept="2tJIrI" id="55JU2Sa5MZQ" role="jymVt" />
    <node concept="312cEu" id="55JU2Sa5Qyn" role="jymVt">
      <property role="TrG5h" value="AuthorizationCodeFlowStrategyConfiguration" />
      <node concept="312cEg" id="55JU2Sa5UlA" role="jymVt">
        <property role="TrG5h" value="baseURL" />
        <node concept="3Tm6S6" id="55JU2Sa5UlB" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlD" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlE" role="jymVt">
        <property role="TrG5h" value="clientId" />
        <node concept="3Tm6S6" id="55JU2Sa5UlF" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlH" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlI" role="jymVt">
        <property role="TrG5h" value="scope" />
        <node concept="3Tm6S6" id="55JU2Sa5UlJ" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlL" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5UlM" role="jymVt">
        <property role="TrG5h" value="tokenVerificationURL" />
        <node concept="3Tm6S6" id="55JU2Sa5UlN" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5UlP" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="55JU2Sa5RI9" role="1zkMxy">
        <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
      </node>
    </node>
    <node concept="312cEu" id="55JU2Sa5RT0" role="jymVt">
      <property role="TrG5h" value="AuthorizationCodePKCEFlowStrategyConfiguration" />
      <node concept="312cEg" id="55JU2Sa5V2C" role="jymVt">
        <property role="TrG5h" value="baseURL" />
        <node concept="3Tm6S6" id="55JU2Sa5V2D" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5V2F" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5V2G" role="jymVt">
        <property role="TrG5h" value="clientId" />
        <node concept="3Tm6S6" id="55JU2Sa5V2H" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5V2J" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5V2K" role="jymVt">
        <property role="TrG5h" value="scope" />
        <node concept="3Tm6S6" id="55JU2Sa5V2L" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5V2N" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="55JU2Sa5V2O" role="jymVt">
        <property role="TrG5h" value="secondStepURL" />
        <node concept="3Tm6S6" id="55JU2Sa5V2P" role="1B3o_S" />
        <node concept="17QB3L" id="55JU2Sa5V2R" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="55JU2Sa5RT1" role="1zkMxy">
        <ref role="3uigEE" node="55JU2Sa5HU_" resolve="ModelixAuthenticationConfigurationComponent.StrategyConfiguration" />
      </node>
    </node>
    <node concept="2tJIrI" id="55JU2Sa5R7m" role="jymVt" />
    <node concept="312cEu" id="7xblg8lmnwf" role="jymVt">
      <property role="TrG5h" value="State" />
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
          <node concept="3clFbF" id="6UFKywMPQ4w" role="3cqZAp">
            <node concept="37vLTI" id="6UFKywMPQVh" role="3clFbG">
              <node concept="10Nm6u" id="7f6_nf_yNLj" role="37vLTx" />
              <node concept="37vLTw" id="7f6Tb6nwLo7" role="37vLTJ">
                <ref role="3cqZAo" node="7xblg8lmo$P" resolve="strategyConfiguration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6UFKywMPZJN" role="jymVt" />
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
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6UFKywMQaD5" role="3uHU7B">
                  <property role="3cmrfH" value="3" />
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
                  <node concept="3uibUv" id="6UFKywMQsmK" role="1tU5fm">
                    <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
                  </node>
                  <node concept="1eOMI4" id="6UFKywMQpKu" role="33vP2m">
                    <node concept="10QFUN" id="6UFKywMQpKr" role="1eOMHV">
                      <node concept="3uibUv" id="6UFKywMQpKw" role="10QFUM">
                        <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
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
                    <node concept="2OwXpG" id="6UFKywMQwMw" role="2OqNvi">
                      <ref role="2Oxat6" node="7xblg8lmo$P" resolve="strategyConfiguration" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UFKywMQvA4" role="3uHU7B">
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
              <node concept="3uibUv" id="6UFKywMQnHc" role="2ZW6by">
                <ref role="3uigEE" node="7xblg8lmnwf" resolve="ModelixAuthenticationConfigurationComponent.State" />
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
                <node concept="Xl_RD" id="cJDksuuu46" role="3uHU7B">
                  <property role="Xl_RC" value="ModelixAuthenticationState(strategyConfiguration: " />
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
    </node>
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
        <node concept="1pGfFk" id="6UFKywMPPqi" role="2ShVmc">
          <ref role="37wK5l" node="6UFKywMPPmk" resolve="ModelixAuthenticationConfigurationComponent.State" />
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
      <node concept="TZ5HA" id="nP6bhxMG6p" role="TZ5H$">
        <node concept="1dT_AC" id="nP6bhxMG6q" role="1dT_Ay">
          <property role="1dT_AB" value="For information about component persistence refer to https://jetbrains.org/intellij/sdk/docs/basics/persisting_state_of_components.html" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3poOr4tpiEG">
    <property role="TrG5h" value="OAuthAuthenticationStrategy" />
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
    <node concept="2tJIrI" id="3poOr4tpleX" role="jymVt" />
    <node concept="3clFbW" id="3poOr4tplpy" role="jymVt">
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
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
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
                <node concept="2YIFZM" id="579DpELfUo7" role="33vP2m">
                  <ref role="1Pybhc" to="y2et:~Base64" resolve="Base64" />
                  <ref role="37wK5l" to="y2et:~Base64.encodeBase64URLSafeString(byte[])" resolve="encodeBase64URLSafeString" />
                  <node concept="37vLTw" id="579DpELfUo8" role="37wK5m">
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
    <node concept="2tJIrI" id="579DpELfUkC" role="jymVt" />
    <node concept="3Tm1VV" id="3poOr4tpiEH" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3poOr4tpiGC">
    <property role="3GE5qa" value="strategies" />
    <property role="TrG5h" value="AuthorizationCodeFlowStrategy" />
    <node concept="312cEg" id="579DpELebqq" role="jymVt">
      <property role="TrG5h" value="tokenVerificationURL" />
      <node concept="3Tm6S6" id="579DpELebqr" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELebqt" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="579DpELeaEM" role="jymVt" />
    <node concept="3clFbW" id="3poOr4tpmF$" role="jymVt">
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
          <ref role="37wK5l" node="3poOr4tplpy" resolve="OAuthAuthenticationStrategy" />
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
      <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
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
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
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
        <node concept="3cpWs8" id="3poOr4trBNK" role="3cqZAp">
          <node concept="3cpWsn" id="3poOr4trBNN" role="3cpWs9">
            <property role="TrG5h" value="jsCode" />
            <node concept="17QB3L" id="3poOr4trBNI" role="1tU5fm" />
            <node concept="Xl_RD" id="3poOr4trCxc" role="33vP2m">
              <property role="Xl_RC" value="let url = \&quot;http://localhost:9297/modelixauthfragment?\&quot;+window.location.hash.substr(1); fetch(url).then(data =&gt; console.log(\&quot;sent token to \&quot; + url)).catch(error =&gt; console.error(error)).finally(() =&gt; {  });" />
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
    <property role="TrG5h" value="AuthenticationStrategyExecutor" />
    <node concept="3clFb_" id="3poOr4tptjT" role="jymVt">
      <property role="TrG5h" value="getRedirectURI" />
      <node concept="3clFbS" id="3poOr4tptjW" role="3clF47" />
      <node concept="3Tm1VV" id="3poOr4tptjX" role="1B3o_S" />
      <node concept="17QB3L" id="3poOr4tptjG" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3poOr4tppwf" role="1B3o_S" />
  </node>
  <node concept="pFx2x" id="3poOr4trDva">
    <property role="TrG5h" value="AuthenticationFragmentRequestHandler" />
    <node concept="3_QJtf" id="3poOr4trFoT" role="3_QDjO">
      <property role="TrG5h" value="access_token" />
      <node concept="1TjqYI" id="3poOr4trFps" role="1TjXUf">
        <node concept="17QB3L" id="3poOr4trFwU" role="1TjqZ8" />
      </node>
    </node>
    <node concept="std77" id="3poOr4trDvb" role="std7D">
      <node concept="std78" id="3poOr4trDvc" role="std7y">
        <property role="svBHv" value="modelixauthfragment" />
      </node>
    </node>
    <node concept="pF8on" id="3poOr4trDvd" role="pCJbe">
      <node concept="3clFbS" id="3poOr4trDve" role="2VODD2">
        <node concept="3clFbF" id="579DpELdEj0" role="3cqZAp">
          <node concept="2OqwBi" id="579DpELdEoS" role="3clFbG">
            <node concept="2YIFZM" id="579DpELdEkg" role="2Oq$k0">
              <ref role="37wK5l" node="7f6_nf_ulX8" resolve="getInstance" />
              <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
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
    <node concept="2tJIrI" id="579DpELfunA" role="jymVt" />
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
    <property role="TrG5h" value="AuthorizationCodePKCEFlowStrategy" />
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
        <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
      </node>
      <node concept="10Nm6u" id="579DpELh9ID" role="33vP2m" />
    </node>
    <node concept="312cEg" id="579DpELhbPX" role="jymVt">
      <property role="TrG5h" value="secondStepURL" />
      <node concept="3Tm6S6" id="579DpELhbPY" role="1B3o_S" />
      <node concept="17QB3L" id="579DpELhbQ0" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="579DpELhb_A" role="jymVt" />
    <node concept="3Tm1VV" id="579DpELfJcX" role="1B3o_S" />
    <node concept="3uibUv" id="579DpELfK6c" role="1zkMxy">
      <ref role="3uigEE" node="3poOr4tpiEG" resolve="OAuthAuthenticationStrategy" />
    </node>
    <node concept="3clFbW" id="579DpELfKrO" role="jymVt">
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
          <ref role="37wK5l" node="3poOr4tplpy" resolve="OAuthAuthenticationStrategy" />
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
          <ref role="3uigEE" node="3poOr4tppwe" resolve="AuthenticationStrategyExecutor" />
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
        <node concept="abc8K" id="579DpELgXRo" role="3cqZAp">
          <node concept="Xl_RD" id="579DpELgXYR" role="abp_N">
            <property role="Xl_RC" value="authorization_code " />
          </node>
          <node concept="37vLTw" id="579DpELgZXA" role="abp_N">
            <ref role="3cqZAo" node="579DpELgYv7" resolve="authorizationCode" />
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
            <node concept="3clFbF" id="579DpELhe72" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe73" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe74" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                </node>
                <node concept="liA8E" id="579DpELhe75" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URLConnection.setDoOutput(boolean)" resolve="setDoOutput" />
                  <node concept="3clFbT" id="579DpELhe76" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="579DpELhe77" role="3cqZAp">
              <node concept="3cpWsn" id="579DpELhe78" role="3cpWs9">
                <property role="TrG5h" value="osw" />
                <node concept="3uibUv" id="579DpELhe79" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~OutputStreamWriter" resolve="OutputStreamWriter" />
                </node>
                <node concept="2ShNRf" id="579DpELhe7a" role="33vP2m">
                  <node concept="1pGfFk" id="579DpELhe7b" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~OutputStreamWriter.&lt;init&gt;(java.io.OutputStream,java.lang.String)" resolve="OutputStreamWriter" />
                    <node concept="2OqwBi" id="579DpELhe7c" role="37wK5m">
                      <node concept="37vLTw" id="579DpELhe7d" role="2Oq$k0">
                        <ref role="3cqZAo" node="579DpELhe6J" resolve="connection" />
                      </node>
                      <node concept="liA8E" id="579DpELhe7e" role="2OqNvi">
                        <ref role="37wK5l" to="zf81:~URLConnection.getOutputStream()" resolve="getOutputStream" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="579DpELhe7f" role="37wK5m">
                      <property role="Xl_RC" value="UTF-8" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe7g" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe7h" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe7i" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe78" resolve="osw" />
                </node>
                <node concept="liA8E" id="579DpELhe7j" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~Writer.write(java.lang.String)" resolve="write" />
                  <node concept="37vLTw" id="579DpELhe7k" role="37wK5m">
                    <ref role="3cqZAo" node="579DpELh438" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe7l" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe7m" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe7n" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe78" resolve="osw" />
                </node>
                <node concept="liA8E" id="579DpELhe7o" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~OutputStreamWriter.flush()" resolve="flush" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="579DpELhe7p" role="3cqZAp">
              <node concept="2OqwBi" id="579DpELhe7q" role="3clFbG">
                <node concept="37vLTw" id="579DpELhe7r" role="2Oq$k0">
                  <ref role="3cqZAo" node="579DpELhe78" resolve="osw" />
                </node>
                <node concept="liA8E" id="579DpELhe7s" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~OutputStreamWriter.close()" resolve="close" />
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
            <node concept="abc8K" id="579DpELhe7F" role="3cqZAp">
              <node concept="Xl_RD" id="579DpELhe7G" role="abp_N">
                <property role="Xl_RC" value="Response code: " />
              </node>
              <node concept="37vLTw" id="579DpELhe7H" role="abp_N">
                <ref role="3cqZAo" node="579DpELhe7A" resolve="responsesCode" />
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
                  <node concept="3clFbF" id="579DpELhe8d" role="3cqZAp">
                    <node concept="2YIFZM" id="579DpELhe8e" role="3clFbG">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                      <node concept="2ShNRf" id="579DpELhe8f" role="37wK5m">
                        <node concept="YeOm9" id="579DpELhe8g" role="2ShVmc">
                          <node concept="1Y3b0j" id="579DpELhe8h" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                            <node concept="3Tm1VV" id="579DpELhe8i" role="1B3o_S" />
                            <node concept="3clFb_" id="579DpELhe8j" role="jymVt">
                              <property role="TrG5h" value="run" />
                              <node concept="3Tm1VV" id="579DpELhe8k" role="1B3o_S" />
                              <node concept="3cqZAl" id="579DpELhe8l" role="3clF45" />
                              <node concept="3clFbS" id="579DpELhe8m" role="3clF47">
                                <node concept="1X3_iC" id="579DpELhrvX" role="lGtFl">
                                  <property role="3V$3am" value="statement" />
                                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                  <node concept="3clFbF" id="579DpELhe8n" role="8Wnug">
                                    <node concept="2YIFZM" id="579DpELhe8o" role="3clFbG">
                                      <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                                      <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                      <node concept="10Nm6u" id="579DpELho1B" role="37wK5m" />
                                      <node concept="37vLTw" id="579DpELhe8q" role="37wK5m">
                                        <ref role="3cqZAo" node="579DpELhe84" resolve="error" />
                                      </node>
                                      <node concept="Xl_RD" id="579DpELhe8r" role="37wK5m">
                                        <property role="Xl_RC" value="Error from Authentication Server" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="579DpELhe8s" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                          </node>
                        </node>
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
                <node concept="abc8K" id="579DpELh_bb" role="3cqZAp">
                  <node concept="37vLTw" id="579DpELhAsB" role="abp_N">
                    <ref role="3cqZAo" node="579DpELhe8E" resolve="result" />
                  </node>
                </node>
                <node concept="abc8K" id="579DpELhxCj" role="3cqZAp">
                  <node concept="Xl_RD" id="579DpELhy8L" role="abp_N">
                    <property role="Xl_RC" value="ACCESS TOKEN " />
                  </node>
                  <node concept="37vLTw" id="579DpELhyBC" role="abp_N">
                    <ref role="3cqZAo" node="579DpELhgyq" resolve="accessToken" />
                  </node>
                </node>
                <node concept="3clFbF" id="579DpELhknZ" role="3cqZAp">
                  <node concept="2OqwBi" id="579DpELhko1" role="3clFbG">
                    <node concept="2YIFZM" id="579DpELhko2" role="2Oq$k0">
                      <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
                      <ref role="37wK5l" node="7f6_nf_ulX8" resolve="getInstance" />
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
        <node concept="YS8fn" id="579DpELhpzw" role="3cqZAp">
          <node concept="2ShNRf" id="579DpELhpBX" role="YScLw">
            <node concept="1pGfFk" id="579DpELhqKi" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="579DpELfKgw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="579DpELg0w8" role="jymVt" />
    <node concept="2tJIrI" id="579DpELg0wR" role="jymVt" />
  </node>
</model>

