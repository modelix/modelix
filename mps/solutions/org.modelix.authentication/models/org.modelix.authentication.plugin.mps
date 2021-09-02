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
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
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
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
      <concept id="5573986434797590400" name="jetbrains.mps.ide.httpsupport.structure.RequestHandler" flags="ng" index="pFx2x">
        <child id="5573986434797811183" name="handleFunction" index="pCJbe" />
        <child id="6040064942661848825" name="queryPrefix" index="std7D" />
      </concept>
      <concept id="6040064942661848791" name="jetbrains.mps.ide.httpsupport.structure.QueryPath" flags="ng" index="std77">
        <child id="6040064942661848818" name="segmetns" index="std7y" />
      </concept>
      <concept id="6040064942661848792" name="jetbrains.mps.ide.httpsupport.structure.QuerySegment" flags="ng" index="std78">
        <property id="6040064942662280271" name="segment" index="svBHv" />
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
      <property role="TrG5h" value="token" />
      <node concept="3Tm6S6" id="7f6_nf_umft" role="1B3o_S" />
      <node concept="17QB3L" id="7f6_nf_umnu" role="1tU5fm" />
      <node concept="10Nm6u" id="7f6_nf_umpp" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_uiJb" role="jymVt" />
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
              <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6_nf_uiNm" role="1B3o_S" />
      <node concept="10P_77" id="7f6_nf_ukOu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_xBYD" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_xCvu" role="jymVt">
      <property role="TrG5h" value="codeVerifier" />
      <node concept="3clFbS" id="7f6_nf_xCvx" role="3clF47">
        <node concept="3cpWs8" id="7f6_nf_xCQe" role="3cqZAp">
          <node concept="3cpWsn" id="7f6_nf_xCQh" role="3cpWs9">
            <property role="TrG5h" value="sr" />
            <node concept="2ShNRf" id="7f6_nf_xFVH" role="33vP2m">
              <node concept="1pGfFk" id="7f6_nf_xNAT" role="2ShVmc">
                <ref role="37wK5l" to="jgjw:~SecureRandom.&lt;init&gt;()" resolve="SecureRandom" />
              </node>
            </node>
            <node concept="3uibUv" id="7f6_nf_xFU4" role="1tU5fm">
              <ref role="3uigEE" to="jgjw:~SecureRandom" resolve="SecureRandom" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7f6_nf_xNTW" role="3cqZAp">
          <node concept="3cpWsn" id="7f6_nf_xNTZ" role="3cpWs9">
            <property role="TrG5h" value="code" />
            <node concept="10Q1$e" id="7f6_nf_xNYf" role="1tU5fm">
              <node concept="10PrrI" id="7f6_nf_xNTU" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="7f6_nf_xPcv" role="33vP2m">
              <node concept="3$_iS1" id="7f6_nf_xQhh" role="2ShVmc">
                <node concept="3$GHV9" id="7f6_nf_xQhj" role="3$GQph">
                  <node concept="3cmrfG" id="7f6_nf_xQl6" role="3$I4v7">
                    <property role="3cmrfH" value="32" />
                  </node>
                </node>
                <node concept="10PrrI" id="7f6_nf_xQrd" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7f6_nf_xQwS" role="3cqZAp">
          <node concept="2OqwBi" id="7f6_nf_xQEX" role="3clFbG">
            <node concept="37vLTw" id="7f6_nf_xQwQ" role="2Oq$k0">
              <ref role="3cqZAo" node="7f6_nf_xCQh" resolve="sr" />
            </node>
            <node concept="liA8E" id="7f6_nf_xQTs" role="2OqNvi">
              <ref role="37wK5l" to="jgjw:~SecureRandom.nextBytes(byte[])" resolve="nextBytes" />
              <node concept="37vLTw" id="7f6_nf_xQWL" role="37wK5m">
                <ref role="3cqZAo" node="7f6_nf_xNTZ" resolve="code" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7f6_nf_xR7v" role="3cqZAp">
          <node concept="3cpWsn" id="7f6_nf_xR7y" role="3cpWs9">
            <property role="TrG5h" value="verifier" />
            <node concept="17QB3L" id="7f6_nf_xR7t" role="1tU5fm" />
            <node concept="2OqwBi" id="7f6_nf_xRvg" role="33vP2m">
              <node concept="2OqwBi" id="7f6_nf_xRmg" role="2Oq$k0">
                <node concept="2YIFZM" id="7f6_nf_xRgp" role="2Oq$k0">
                  <ref role="37wK5l" to="33ny:~Base64.getUrlEncoder()" resolve="getUrlEncoder" />
                  <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                </node>
                <node concept="liA8E" id="7f6_nf_xRuk" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Base64$Encoder.withoutPadding()" resolve="withoutPadding" />
                </node>
              </node>
              <node concept="liA8E" id="7f6_nf_xRyA" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Base64$Encoder.encodeToString(byte[])" resolve="encodeToString" />
                <node concept="37vLTw" id="7f6_nf_xR_W" role="37wK5m">
                  <ref role="3cqZAo" node="7f6_nf_xNTZ" resolve="code" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7f6_nf_xRIX" role="3cqZAp">
          <node concept="37vLTw" id="7f6_nf_xROK" role="3cqZAk">
            <ref role="3cqZAo" node="7f6_nf_xR7y" resolve="verifier" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6_nf_xCey" role="1B3o_S" />
      <node concept="17QB3L" id="7f6_nf_xCD_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_xRYu" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_xSrb" role="jymVt">
      <property role="TrG5h" value="codeChallenge" />
      <node concept="3clFbS" id="7f6_nf_xSre" role="3clF47">
        <node concept="3J1_TO" id="7f6_nf_y2IA" role="3cqZAp">
          <node concept="3uVAMA" id="7f6_nf_y644" role="1zxBo5">
            <node concept="XOnhg" id="7f6_nf_y645" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7f6_nf_y646" role="1tU5fm">
                <node concept="3uibUv" id="7f6_nf_y6ph" role="nSUat">
                  <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7f6_nf_y647" role="1zc67A">
              <node concept="YS8fn" id="7f6_nf_y6xm" role="3cqZAp">
                <node concept="2ShNRf" id="7f6_nf_y6yP" role="YScLw">
                  <node concept="1pGfFk" id="7f6_nf_y7hZ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="7f6_nf_y7nu" role="37wK5m">
                      <property role="Xl_RC" value="Algorithm not supported" />
                    </node>
                    <node concept="37vLTw" id="7f6_nf_y7Hl" role="37wK5m">
                      <ref role="3cqZAo" node="7f6_nf_y645" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7f6_nf_y2IC" role="1zxBo7">
            <node concept="3cpWs8" id="7f6_nf_xSIS" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_xSIV" role="3cpWs9">
                <property role="TrG5h" value="bytes" />
                <node concept="10Q1$e" id="7f6_nf_xSIW" role="1tU5fm">
                  <node concept="10PrrI" id="7f6_nf_xSIX" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="7f6_nf_xUX8" role="33vP2m">
                  <node concept="37vLTw" id="7f6_nf_xUDG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7f6_nf_xSDz" resolve="codeVerifier" />
                  </node>
                  <node concept="liA8E" id="7f6_nf_xVp1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                    <node concept="2YIFZM" id="7f6_nf_xV$N" role="37wK5m">
                      <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
                      <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String)" resolve="forName" />
                      <node concept="Xl_RD" id="7f6_nf_xVBz" role="37wK5m">
                        <property role="Xl_RC" value="US-ASCII" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_xWMZ" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_xWN0" role="3cpWs9">
                <property role="TrG5h" value="md" />
                <node concept="3uibUv" id="7f6_nf_xWN1" role="1tU5fm">
                  <ref role="3uigEE" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                </node>
                <node concept="2YIFZM" id="7f6_nf_xWSr" role="33vP2m">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
                  <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                  <node concept="Xl_RD" id="7f6_nf_xWUh" role="37wK5m">
                    <property role="Xl_RC" value="SHA-256" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7f6_nf_xX35" role="3cqZAp">
              <node concept="2OqwBi" id="7f6_nf_xXcj" role="3clFbG">
                <node concept="37vLTw" id="7f6_nf_xX33" role="2Oq$k0">
                  <ref role="3cqZAo" node="7f6_nf_xWN0" resolve="md" />
                </node>
                <node concept="liA8E" id="7f6_nf_xXob" role="2OqNvi">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte[],int,int)" resolve="update" />
                  <node concept="37vLTw" id="7f6_nf_xXrH" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_xSIV" resolve="bytes" />
                  </node>
                  <node concept="3cmrfG" id="7f6_nf_xXBv" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="7f6_nf_xXN6" role="37wK5m">
                    <node concept="37vLTw" id="7f6_nf_xXEa" role="2Oq$k0">
                      <ref role="3cqZAo" node="7f6_nf_xSIV" resolve="bytes" />
                    </node>
                    <node concept="1Rwk04" id="7f6_nf_xYAg" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_xY3V" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_xY3Y" role="3cpWs9">
                <property role="TrG5h" value="digest" />
                <node concept="10Q1$e" id="7f6_nf_y1Ot" role="1tU5fm">
                  <node concept="10PrrI" id="7f6_nf_y1st" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="7f6_nf_xYgN" role="33vP2m">
                  <node concept="37vLTw" id="7f6_nf_xY8Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="7f6_nf_xWN0" resolve="md" />
                  </node>
                  <node concept="liA8E" id="7f6_nf_xYrT" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.digest()" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_xYNf" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_xYNi" role="3cpWs9">
                <property role="TrG5h" value="challenge" />
                <node concept="17QB3L" id="7f6_nf_xYNd" role="1tU5fm" />
                <node concept="2YIFZM" id="7f6_nf_y0Nf" role="33vP2m">
                  <ref role="1Pybhc" to="y2et:~Base64" resolve="Base64" />
                  <ref role="37wK5l" to="y2et:~Base64.encodeBase64URLSafeString(byte[])" resolve="encodeBase64URLSafeString" />
                  <node concept="37vLTw" id="7f6_nf_y0PQ" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_xY3Y" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7f6_nf_y14J" role="3cqZAp">
              <node concept="37vLTw" id="7f6_nf_y1cf" role="3cqZAk">
                <ref role="3cqZAo" node="7f6_nf_xYNi" resolve="challenge" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6_nf_xSbX" role="1B3o_S" />
      <node concept="17QB3L" id="7f6_nf_xSqC" role="3clF45" />
      <node concept="37vLTG" id="7f6_nf_xSDz" role="3clF46">
        <property role="TrG5h" value="codeVerifier" />
        <node concept="17QB3L" id="7f6_nf_xSDy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_unfQ" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_unuU" role="jymVt">
      <property role="TrG5h" value="obtainNewToken" />
      <node concept="3clFbS" id="7f6_nf_unuX" role="3clF47">
        <node concept="3clFbJ" id="7f6_nf_vlBh" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_vlBj" role="3clFbx">
            <node concept="abc8K" id="7f6_nf_yedu" role="3cqZAp">
              <node concept="Xl_RD" id="7f6_nf_yejs" role="abp_N">
                <property role="Xl_RC" value="A" />
              </node>
            </node>
            <node concept="3cpWs8" id="1xehy3SrtXV" role="3cqZAp">
              <node concept="3cpWsn" id="1xehy3SrtXW" role="3cpWs9">
                <property role="TrG5h" value="configurationComponent" />
                <node concept="3uibUv" id="7f6_nf_z1el" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmms7" resolve="ModelixAuthenticationConfigurationComponent" />
                </node>
                <node concept="2OqwBi" id="1xehy3SrtXY" role="33vP2m">
                  <node concept="37vLTw" id="1xehy3SrtXZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7f6_nf_vT7l" resolve="project" />
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
            <node concept="abc8K" id="F2UCu74SnD" role="3cqZAp">
              <node concept="Xl_RD" id="F2UCu74SB3" role="abp_N">
                <property role="Xl_RC" value="STATE " />
              </node>
              <node concept="37vLTw" id="F2UCu74SEX" role="abp_N">
                <ref role="3cqZAo" node="1xehy3SrtY3" resolve="state" />
              </node>
            </node>
            <node concept="3clFbH" id="7f6_nf_z0Oz" role="3cqZAp" />
            <node concept="3cpWs8" id="7f6_nf_vQsu" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_vQsx" role="3cpWs9">
                <property role="TrG5h" value="url" />
                <node concept="17QB3L" id="7f6_nf_vQss" role="1tU5fm" />
                <node concept="2OqwBi" id="7f6_nf_z1XR" role="33vP2m">
                  <node concept="37vLTw" id="7f6_nf_z1Is" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xehy3SrtY3" resolve="state" />
                  </node>
                  <node concept="2OwXpG" id="7f6_nf_z29D" role="2OqNvi">
                    <ref role="2Oxat5" node="7xblg8lmo$P" resolve="oauthURL" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7f6_nf_z3ol" role="3cqZAp">
              <node concept="3clFbS" id="7f6_nf_z3on" role="3clFbx">
                <node concept="3clFbF" id="7GdEuTONCif" role="3cqZAp">
                  <node concept="2YIFZM" id="7GdEuTONCig" role="3clFbG">
                    <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                    <node concept="37vLTw" id="7f6_nf_zcF2" role="37wK5m">
                      <ref role="3cqZAo" node="7f6_nf_vT7l" resolve="project" />
                    </node>
                    <node concept="Xl_RD" id="7f6_nf_zcRQ" role="37wK5m">
                      <property role="Xl_RC" value="No OAuth URL configured" />
                    </node>
                    <node concept="Xl_RD" id="7f6_nf_zcKS" role="37wK5m">
                      <property role="Xl_RC" value="Unable to get token" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7f6_nf_z4St" role="3cqZAp">
                  <node concept="3clFbT" id="7f6_nf_z4TY" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="7f6_nf_z4bR" role="3clFbw">
                <node concept="10Nm6u" id="7f6_nf_z4qY" role="3uHU7w" />
                <node concept="37vLTw" id="7f6_nf_z3R0" role="3uHU7B">
                  <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="7f6_nf_yeSt" role="3cqZAp">
              <node concept="Xl_RD" id="7f6_nf_yeYt" role="abp_N">
                <property role="Xl_RC" value="base URL " />
              </node>
              <node concept="37vLTw" id="7f6_nf_yf1M" role="abp_N">
                <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
              </node>
            </node>
            <node concept="3SKdUt" id="7f6_nf_xBSv" role="3cqZAp">
              <node concept="1PaTwC" id="7f6_nf_xBSw" role="1aUNEU">
                <node concept="3oM_SD" id="7f6_nf_xBSx" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="7f6_nf_xBVu" role="1PaTwD">
                  <property role="3oM_SC" value="replace" />
                </node>
                <node concept="3oM_SD" id="7f6_nf_xBVx" role="1PaTwD">
                  <property role="3oM_SC" value="${codeChallenge}" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_y880" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_y883" role="3cpWs9">
                <property role="TrG5h" value="codeVerifier" />
                <node concept="17QB3L" id="7f6_nf_y87Y" role="1tU5fm" />
                <node concept="1rXfSq" id="7f6_nf_y9uv" role="33vP2m">
                  <ref role="37wK5l" node="7f6_nf_xCvu" resolve="codeVerifier" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="7f6_nf_yfia" role="3cqZAp">
              <node concept="Xl_RD" id="7f6_nf_yfof" role="abp_N">
                <property role="Xl_RC" value="code verifier " />
              </node>
              <node concept="37vLTw" id="7f6_nf_yfEi" role="abp_N">
                <ref role="3cqZAo" node="7f6_nf_y883" resolve="codeVerifier" />
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_y7Qs" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_y7Qv" role="3cpWs9">
                <property role="TrG5h" value="codeChallenge" />
                <node concept="17QB3L" id="7f6_nf_y7Qq" role="1tU5fm" />
                <node concept="1rXfSq" id="7f6_nf_y9zr" role="33vP2m">
                  <ref role="37wK5l" node="7f6_nf_xSrb" resolve="codeChallenge" />
                  <node concept="37vLTw" id="7f6_nf_y9EN" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_y883" resolve="codeVerifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6_nf_ypwb" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_ypwe" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="17QB3L" id="7f6_nf_ypw9" role="1tU5fm" />
                <node concept="Xl_RD" id="7f6_nf_ypAJ" role="33vP2m">
                  <property role="Xl_RC" value="9297" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="7f6_nf_yfWN" role="3cqZAp">
              <node concept="Xl_RD" id="7f6_nf_yg2X" role="abp_N">
                <property role="Xl_RC" value="code challenge " />
              </node>
              <node concept="37vLTw" id="7f6_nf_yg7x" role="abp_N">
                <ref role="3cqZAo" node="7f6_nf_y7Qv" resolve="codeChallenge" />
              </node>
            </node>
            <node concept="3clFbF" id="7f6_nf_y9W3" role="3cqZAp">
              <node concept="37vLTI" id="7f6_nf_yal8" role="3clFbG">
                <node concept="2OqwBi" id="7f6_nf_yaD2" role="37vLTx">
                  <node concept="37vLTw" id="7f6_nf_yapj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                  </node>
                  <node concept="liA8E" id="7f6_nf_yb4V" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                    <node concept="Xl_RD" id="7f6_nf_yb8L" role="37wK5m">
                      <property role="Xl_RC" value="\\$\\{codeChallenge\\}" />
                    </node>
                    <node concept="37vLTw" id="7f6_nf_ybkB" role="37wK5m">
                      <ref role="3cqZAo" node="7f6_nf_y7Qv" resolve="codeChallenge" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7f6_nf_y9W1" role="37vLTJ">
                  <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7f6_nf_ypC9" role="3cqZAp">
              <node concept="37vLTI" id="7f6_nf_ypCa" role="3clFbG">
                <node concept="2OqwBi" id="7f6_nf_ypCb" role="37vLTx">
                  <node concept="37vLTw" id="7f6_nf_ypCc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                  </node>
                  <node concept="liA8E" id="7f6_nf_ypCd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                    <node concept="Xl_RD" id="7f6_nf_ypCe" role="37wK5m">
                      <property role="Xl_RC" value="\\$\\{port\\}" />
                    </node>
                    <node concept="37vLTw" id="7f6_nf_ypSP" role="37wK5m">
                      <ref role="3cqZAo" node="7f6_nf_ypwe" resolve="port" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7f6_nf_ypCg" role="37vLTJ">
                  <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="7f6_nf_yge4" role="3cqZAp">
              <node concept="Xl_RD" id="7f6_nf_ygqA" role="abp_N">
                <property role="Xl_RC" value="url " />
              </node>
              <node concept="37vLTw" id="7f6_nf_ygtG" role="abp_N">
                <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
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
                          <node concept="37vLTw" id="7f6_nf_xzV1" role="37wK5m">
                            <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
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
                          <node concept="37vLTw" id="7f6_nf_x$u9" role="3uHU7w">
                            <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
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
                <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
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
                      <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
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
        <property role="svBHv" value="modelixauth" />
      </node>
    </node>
    <node concept="pF8on" id="1yokyoYz5xt" role="pCJbe">
      <node concept="3clFbS" id="1yokyoYz5xu" role="2VODD2">
        <node concept="abc8K" id="1yokyoYz75U" role="3cqZAp">
          <node concept="Xl_RD" id="1yokyoYz766" role="abp_N">
            <property role="Xl_RC" value="WE GOT IT" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6NlwFoT4OaJ">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AuthenticationGroup" />
    <node concept="ftmFs" id="6NlwFoT4OdX" role="ftER_">
      <node concept="tCFHf" id="6NlwFoT4Oe0" role="ftvYc">
        <ref role="tCJdB" node="6NlwFoT4O7g" resolve="GetToken" />
      </node>
    </node>
    <node concept="tT9cl" id="6NlwFoT4OdV" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
    </node>
  </node>
  <node concept="sE7Ow" id="6NlwFoT4O7g">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="GetToken" />
    <property role="2uzpH1" value="Get Token" />
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
    <node concept="2tJIrI" id="7xblg8lmn9N" role="jymVt" />
    <node concept="312cEu" id="7xblg8lmnwf" role="jymVt">
      <property role="TrG5h" value="State" />
      <node concept="312cEg" id="7xblg8lmo$P" role="jymVt">
        <property role="TrG5h" value="oauthURL" />
        <node concept="3Tm1VV" id="7xblg8lmona" role="1B3o_S" />
        <node concept="3uibUv" id="7f6_nf_yLDy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
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
                <ref role="3cqZAo" node="7xblg8lmo$P" resolve="oauthURL" />
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
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="oauthURL" />
                  </node>
                  <node concept="liA8E" id="6UFKywMQdxO" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
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
                      <ref role="2Oxat5" node="7xblg8lmo$P" resolve="oauthURL" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UFKywMQvA4" role="3uHU7B">
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="oauthURL" />
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
            <node concept="3cpWs3" id="cJDksuuzDY" role="3cqZAk">
              <node concept="3cpWs3" id="cJDksuuxKY" role="3uHU7B">
                <node concept="Xl_RD" id="cJDksuuu46" role="3uHU7B">
                  <property role="Xl_RC" value="ModelixAuthenticationState(oauthURL: " />
                </node>
                <node concept="37vLTw" id="7f6Tb6nwNwG" role="3uHU7w">
                  <ref role="3cqZAo" node="7xblg8lmo$P" resolve="oauthURL" />
                </node>
              </node>
              <node concept="Xl_RD" id="7f6Tb6nwPc$" role="3uHU7w">
                <property role="Xl_RC" value=")" />
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
        <node concept="abc8K" id="4nE4B0efHdK" role="3cqZAp">
          <node concept="Xl_RD" id="4nE4B0efHxy" role="abp_N">
            <property role="Xl_RC" value="GETTING STATE " />
          </node>
          <node concept="37vLTw" id="4nE4B0efHN9" role="abp_N">
            <ref role="3cqZAo" node="7xblg8lmpx_" resolve="state" />
          </node>
        </node>
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
        <node concept="abc8K" id="F2UCu745B8" role="3cqZAp">
          <node concept="Xl_RD" id="F2UCu745Fy" role="abp_N">
            <property role="Xl_RC" value="LOADING STATE " />
          </node>
          <node concept="37vLTw" id="F2UCu745Je" role="abp_N">
            <ref role="3cqZAo" node="7xblg8lmnRz" resolve="state" />
          </node>
        </node>
        <node concept="3clFbF" id="7xblg8lms9X" role="3cqZAp">
          <node concept="37vLTI" id="7xblg8lmsTL" role="3clFbG">
            <node concept="37vLTw" id="7xblg8lmt5m" role="37vLTx">
              <ref role="3cqZAo" node="7xblg8lmnRz" resolve="state" />
            </node>
            <node concept="2OqwBi" id="7xblg8lmsvU" role="37vLTJ">
              <node concept="Xjq3P" id="7xblg8lms9W" role="2Oq$k0" />
              <node concept="2OwXpG" id="7xblg8lmsIK" role="2OqNvi">
                <ref role="2Oxat5" node="7xblg8lmpx_" resolve="state" />
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
          <property role="1dT_AB" value="This component handles the storage of the cloud configuration." />
        </node>
      </node>
      <node concept="TZ5HA" id="nP6bhxMG6p" role="TZ5H$">
        <node concept="1dT_AC" id="nP6bhxMG6q" role="1dT_Ay">
          <property role="1dT_AB" value="For information about component persistence refer to https://jetbrains.org/intellij/sdk/docs/basics/persisting_state_of_components.html" />
        </node>
      </node>
    </node>
  </node>
</model>

