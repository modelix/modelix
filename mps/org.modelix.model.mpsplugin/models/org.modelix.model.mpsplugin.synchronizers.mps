<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf73a13d-34c6-49b5-9703-7fda9f8f8839(org.modelix.model.mpsplugin.synchronizers)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jh6v" ref="r:f2f39a18-fd23-4090-b7f2-ba8da340eec2(org.modelix.model.repositoryconcepts.structure)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="ztoz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.model(MPS.Core/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1237467461002" name="jetbrains.mps.baseLanguage.collections.structure.GetIteratorOperation" flags="nn" index="uNJiE" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
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
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1240151247486" name="jetbrains.mps.baseLanguage.collections.structure.ContainerIteratorType" flags="in" index="2YL$Hu" />
      <concept id="1240151544672" name="jetbrains.mps.baseLanguage.collections.structure.RemoveOperation" flags="nn" index="2YMH90" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7ZZZU$kY9qQ">
    <property role="TrG5h" value="RepositorySynchronizer" />
    <node concept="3Tm1VV" id="7ZZZU$kY9qR" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9uD" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9sA" resolve="ModuleListSynchronizer" />
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kY9rK">
    <property role="TrG5h" value="ProjectSynchronizer" />
    <node concept="3Tm1VV" id="7ZZZU$kY9rL" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9ug" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9sA" resolve="ModuleListSynchronizer" />
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kY9sA">
    <property role="TrG5h" value="ModuleListSynchronizer" />
    <node concept="2tJIrI" id="7ZZZU$kY9uY" role="jymVt" />
    <node concept="2tJIrI" id="7ZZZU$kYfov" role="jymVt" />
    <node concept="2tJIrI" id="7ZZZU$kYfoB" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9vh" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="3cqZAl" id="7ZZZU$kY9vj" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9vk" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9vl" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kY9v3" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kY9sB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kY9wl">
    <property role="TrG5h" value="ModuleList" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFb_" id="7ZZZU$kY9yc" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="7ZZZU$kY9zc" role="3clF45">
        <node concept="3uibUv" id="7ZZZU$kY9zy" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9yf" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9yg" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9$G" role="jymVt">
      <property role="TrG5h" value="addNewModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kY9_D" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7ZZZU$kY9Aj" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7ZZZU$kY9AF" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9$J" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9$K" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9BR" role="jymVt">
      <property role="TrG5h" value="removeModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kY9CS" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7ZZZU$kY9Dk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$kY9BT" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9BU" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9BV" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="7ZZZU$kY9wm" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kY9wH">
    <property role="TrG5h" value="ProjectModuleList" />
    <node concept="312cEg" id="7ZZZU$kY9EL" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="7ZZZU$kY9EM" role="1B3o_S" />
      <node concept="3uibUv" id="7ZZZU$kY9F6" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kY9Fz" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kY9wI" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9xD" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9wl" resolve="ModuleList" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9FU" role="jymVt">
      <property role="TrG5h" value="addNewModule" />
      <node concept="37vLTG" id="7ZZZU$kY9FV" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7ZZZU$kY9FW" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7ZZZU$kY9FX" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9FY" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9G0" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kY9PE" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYari" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kY9PD" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYaXg" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.addModule(org.jetbrains.mps.openapi.module.SModule)" resolve="addModule" />
              <node concept="37vLTw" id="7ZZZU$kYb3b" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$kY9FV" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9G1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYbku" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9G4" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="_YKpA" id="7ZZZU$kY9G5" role="3clF45">
        <node concept="3uibUv" id="7ZZZU$kY9G6" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9G7" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9G9" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kYbyo" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYcci" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kYbyn" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYdzo" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9Ga" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYbtH" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9Gb" role="jymVt">
      <property role="TrG5h" value="removeModule" />
      <node concept="37vLTG" id="7ZZZU$kY9Gc" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7ZZZU$kY9Gd" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$kY9Ge" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9Gf" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9Gh" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kYdFq" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYedO" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kYdFp" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYeNu" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.removeModule(org.jetbrains.mps.openapi.module.SModule)" resolve="removeModule" />
              <node concept="37vLTw" id="7ZZZU$kYeSq" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$kY9Gc" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9Gi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kYfoU">
    <property role="TrG5h" value="Synchronizer" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7ZZZU$kYfps" role="jymVt" />
    <node concept="312cEg" id="7ZZZU$kYf_q" role="jymVt">
      <property role="TrG5h" value="isSynchronizing" />
      <node concept="3Tm6S6" id="7ZZZU$kYf_r" role="1B3o_S" />
      <node concept="10P_77" id="7ZZZU$kYfA2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7ZZZU$kYhOR" role="jymVt">
      <property role="TrG5h" value="isActive" />
      <node concept="3Tm6S6" id="7ZZZU$kYhOS" role="1B3o_S" />
      <node concept="10P_77" id="7ZZZU$kYhTZ" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYf$r" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfq8" role="jymVt">
      <property role="TrG5h" value="doSyncFromMPS" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYfwB" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYfwZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYfqa" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYfX9" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfqc" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYfrM" role="jymVt">
      <property role="TrG5h" value="doSyncToMPS" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYfxP" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYfyd" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYfrO" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYfYM" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfrQ" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYi1M" role="jymVt">
      <property role="TrG5h" value="doActivate" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYi1O" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkwZ" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYi1Q" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYiaE" role="jymVt">
      <property role="TrG5h" value="doDeactivate" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYiaF" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkAy" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYiaH" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfwh" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYg5r" role="jymVt">
      <property role="TrG5h" value="syncFromMPS" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYgZt" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYh1W" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYg5t" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYg5u" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYg5v" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$kYgap" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$kYgas" role="3cpWs9">
            <property role="TrG5h" value="wasSynchronizing" />
            <node concept="10P_77" id="7ZZZU$kYgao" role="1tU5fm" />
            <node concept="37vLTw" id="7ZZZU$kYgbC" role="33vP2m">
              <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7ZZZU$kYgdQ" role="3cqZAp">
          <node concept="3clFbS" id="7ZZZU$kYgdS" role="1zxBo7">
            <node concept="3clFbF" id="7ZZZU$kYgAy" role="3cqZAp">
              <node concept="37vLTI" id="7ZZZU$kYgU6" role="3clFbG">
                <node concept="3clFbT" id="7ZZZU$kYgVk" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7ZZZU$kYgAw" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ZZZU$kYgXF" role="3cqZAp">
              <node concept="1rXfSq" id="7ZZZU$kYgXD" role="3clFbG">
                <ref role="37wK5l" node="7ZZZU$kYfq8" resolve="doSyncFromMPS" />
                <node concept="37vLTw" id="7ZZZU$kYh3c" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$kYgZt" resolve="allowDelete" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7ZZZU$kYgf6" role="1zxBo6">
            <node concept="3clFbS" id="7ZZZU$kYgf7" role="1wplMD">
              <node concept="3clFbF" id="7ZZZU$kYgfz" role="3cqZAp">
                <node concept="37vLTI" id="7ZZZU$kYgz5" role="3clFbG">
                  <node concept="37vLTw" id="7ZZZU$kYg_1" role="37vLTx">
                    <ref role="3cqZAo" node="7ZZZU$kYgas" resolve="wasSynchronizing" />
                  </node>
                  <node concept="37vLTw" id="7ZZZU$kYgfy" role="37vLTJ">
                    <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYh9r" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYh3P" role="jymVt">
      <property role="TrG5h" value="syncToMPS" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYh3Q" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYh3R" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYh3S" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYh3T" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYh3U" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$kYh3V" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$kYh3W" role="3cpWs9">
            <property role="TrG5h" value="wasSynchronizing" />
            <node concept="10P_77" id="7ZZZU$kYh3X" role="1tU5fm" />
            <node concept="37vLTw" id="7ZZZU$kYh3Y" role="33vP2m">
              <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7ZZZU$kYh3Z" role="3cqZAp">
          <node concept="3clFbS" id="7ZZZU$kYh40" role="1zxBo7">
            <node concept="3clFbF" id="7ZZZU$kYh41" role="3cqZAp">
              <node concept="37vLTI" id="7ZZZU$kYh42" role="3clFbG">
                <node concept="3clFbT" id="7ZZZU$kYh43" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7ZZZU$kYh44" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ZZZU$kYh45" role="3cqZAp">
              <node concept="1rXfSq" id="7ZZZU$kYh46" role="3clFbG">
                <ref role="37wK5l" node="7ZZZU$kYfrM" resolve="doSyncToMPS" />
                <node concept="37vLTw" id="7ZZZU$kYh47" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$kYh3Q" resolve="allowDelete" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7ZZZU$kYh48" role="1zxBo6">
            <node concept="3clFbS" id="7ZZZU$kYh49" role="1wplMD">
              <node concept="3clFbF" id="7ZZZU$kYh4a" role="3cqZAp">
                <node concept="37vLTI" id="7ZZZU$kYh4b" role="3clFbG">
                  <node concept="37vLTw" id="7ZZZU$kYh4c" role="37vLTx">
                    <ref role="3cqZAo" node="7ZZZU$kYh3W" resolve="wasSynchronizing" />
                  </node>
                  <node concept="37vLTw" id="7ZZZU$kYh4d" role="37vLTJ">
                    <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYg16" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfBz" role="jymVt">
      <property role="TrG5h" value="mpsChanged" />
      <node concept="3cqZAl" id="7ZZZU$kYfB_" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfBA" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfBB" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYfFT" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYfGt" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYfFV" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYfHQ" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjh2" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjh0" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYg5r" resolve="syncFromMPS" />
            <node concept="3clFbT" id="7ZZZU$kYjj2" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfCV" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfE2" role="jymVt">
      <property role="TrG5h" value="serverChanged" />
      <node concept="3cqZAl" id="7ZZZU$kYfE4" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfE5" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfE6" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYfIa" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYfII" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYfIc" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYfKf" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjmn" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjml" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYg5r" resolve="syncFromMPS" />
            <node concept="3clFbT" id="7ZZZU$kYjoz" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfAZ" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfzu" role="jymVt">
      <property role="TrG5h" value="activate" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYfzw" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfzx" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfzy" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYjqz" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYjr7" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYjq_" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYjsO" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjut" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjur" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYi1M" resolve="doActivate" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjy6" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$kYjQ7" role="3clFbG">
            <node concept="3clFbT" id="7ZZZU$kYjS6" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="7ZZZU$kYjy4" role="37vLTJ">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYhqk" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYhwJ" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYhwL" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYhwM" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYhwN" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYjX0" role="3cqZAp">
          <node concept="3fqX7Q" id="7ZZZU$kYjXs" role="3clFbw">
            <node concept="37vLTw" id="7ZZZU$kYjY4" role="3fr31v">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
          <node concept="3clFbS" id="7ZZZU$kYjX2" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYk03" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYk1N" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYk1L" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYiaE" resolve="doDeactivate" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYk5I" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$kYkq2" role="3clFbG">
            <node concept="3clFbT" id="7ZZZU$kYksd" role="37vLTx" />
            <node concept="37vLTw" id="7ZZZU$kYk5G" role="37vLTJ">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfpF" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kYfoV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kYkNf">
    <property role="TrG5h" value="ModuleSynchronizer" />
    <node concept="2tJIrI" id="7ZZZU$kYkZr" role="jymVt" />
    <node concept="312cEg" id="7ZZZU$kYl$v" role="jymVt">
      <property role="TrG5h" value="mpsModule" />
      <node concept="3Tm6S6" id="7ZZZU$kYl$w" role="1B3o_S" />
      <node concept="3uibUv" id="7ZZZU$kYlD4" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
    <node concept="312cEg" id="7ZZZU$kYlOX" role="jymVt">
      <property role="TrG5h" value="cloudModule" />
      <node concept="3Tm6S6" id="7ZZZU$kYlOY" role="1B3o_S" />
      <node concept="3Tqbb2" id="7ZZZU$kYmof" role="1tU5fm">
        <ref role="ehGHo" to="jh6v:qmkA5fOskf" resolve="Module" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYm5b" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kYkNg" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kYkO1" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kYfoU" resolve="Synchronizer" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOh" role="jymVt">
      <property role="TrG5h" value="doActivate" />
      <node concept="3cqZAl" id="7ZZZU$kYkOi" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOj" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOl" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOn" role="jymVt">
      <property role="TrG5h" value="doDeactivate" />
      <node concept="3cqZAl" id="7ZZZU$kYkOo" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOp" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOr" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOt" role="jymVt">
      <property role="TrG5h" value="doSyncFromMPS" />
      <node concept="37vLTG" id="7ZZZU$kYkOu" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYkOv" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYkOw" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOx" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOz" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkO$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkO_" role="jymVt">
      <property role="TrG5h" value="doSyncToMPS" />
      <node concept="37vLTG" id="7ZZZU$kYkOA" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYkOB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYkOC" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOD" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOF" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$ltW6S">
    <property role="TrG5h" value="_Synchronizer" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="7ZZZU$lupS0" role="jymVt">
      <property role="TrG5h" value="cloudParentId" />
      <node concept="3Tm6S6" id="7ZZZU$lupS1" role="1B3o_S" />
      <node concept="3cpWsb" id="7ZZZU$lvUnb" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7ZZZU$luvn9" role="jymVt">
      <property role="TrG5h" value="cloudRole" />
      <node concept="3Tm6S6" id="7ZZZU$luvna" role="1B3o_S" />
      <node concept="17QB3L" id="7ZZZU$luwSJ" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$ltXOa" role="jymVt" />
    <node concept="3clFbW" id="7ZZZU$lwUCC" role="jymVt">
      <node concept="3cqZAl" id="7ZZZU$lwUCD" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$lwUCE" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lwUCG" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$lwUCK" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$lwUCM" role="3clFbG">
            <node concept="2OqwBi" id="7ZZZU$lwUCQ" role="37vLTJ">
              <node concept="Xjq3P" id="7ZZZU$lwUCR" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ZZZU$lwUCS" role="2OqNvi">
                <ref role="2Oxat5" node="7ZZZU$lupS0" resolve="cloudParentId" />
              </node>
            </node>
            <node concept="37vLTw" id="7ZZZU$lwUCT" role="37vLTx">
              <ref role="3cqZAo" node="7ZZZU$lwUCJ" resolve="cloudParentId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$lwUCW" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$lwUCY" role="3clFbG">
            <node concept="2OqwBi" id="7ZZZU$lwUD2" role="37vLTJ">
              <node concept="Xjq3P" id="7ZZZU$lwUD3" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ZZZU$lwUD4" role="2OqNvi">
                <ref role="2Oxat5" node="7ZZZU$luvn9" resolve="cloudRole" />
              </node>
            </node>
            <node concept="37vLTw" id="7ZZZU$lwUD5" role="37vLTx">
              <ref role="3cqZAo" node="7ZZZU$lwUCV" resolve="cloudRole" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lwUCJ" role="3clF46">
        <property role="TrG5h" value="cloudParentId" />
        <node concept="3cpWsb" id="7ZZZU$lwUCI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ZZZU$lwUCV" role="3clF46">
        <property role="TrG5h" value="cloudRole" />
        <node concept="17QB3L" id="7ZZZU$lwUCU" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$lx3PS" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJkeD6" role="jymVt">
      <property role="TrG5h" value="getCloudParentId" />
      <node concept="3cpWsb" id="4_k_9wJkeD7" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJkeD8" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJkeD9" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJkeDa" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJkeD3" role="3clFbG">
            <node concept="Xjq3P" id="4_k_9wJkeD4" role="2Oq$k0" />
            <node concept="2OwXpG" id="4_k_9wJkeD5" role="2OqNvi">
              <ref role="2Oxat5" node="7ZZZU$lupS0" resolve="cloudParentId" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJki$4" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lucp8" role="jymVt">
      <property role="TrG5h" value="getCloudChildren" />
      <node concept="37vLTG" id="7ZZZU$luj3x" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="7ZZZU$luliK" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="A3Dl8" id="7ZZZU$lugi6" role="3clF45">
        <node concept="3cpWsb" id="7ZZZU$lyz9v" role="A3Ik2" />
      </node>
      <node concept="3Tmbuc" id="7ZZZU$lwdQu" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lucpc" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$lyB9j" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lyB9k" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="7ZZZU$lyB_g" role="1tU5fm">
              <node concept="3uibUv" id="7ZZZU$lyB_i" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZZZU$lyB9l" role="33vP2m">
              <node concept="37vLTw" id="7ZZZU$lyB9m" role="2Oq$k0">
                <ref role="3cqZAo" node="7ZZZU$luj3x" resolve="tree" />
              </node>
              <node concept="liA8E" id="7ZZZU$lyB9n" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getChildren(long,java.lang.String)" resolve="getChildren" />
                <node concept="37vLTw" id="7ZZZU$lyB9o" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$lupS0" resolve="cloudParentId" />
                </node>
                <node concept="37vLTw" id="7ZZZU$lyB9p" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$luvn9" resolve="cloudRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$luiTD" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$lyB9q" role="3clFbG">
            <ref role="3cqZAo" node="7ZZZU$lyB9k" resolve="children" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$luB2b" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$luCzn" role="jymVt">
      <property role="TrG5h" value="getMPSChildren" />
      <property role="1EzhhJ" value="true" />
      <node concept="A3Dl8" id="7ZZZU$luTtx" role="3clF45">
        <node concept="16syzq" id="7ZZZU$luTty" role="A3Ik2">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
      <node concept="3Tmbuc" id="7ZZZU$lw9MX" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$luCzr" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$ltXRF" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lv_0Y" role="jymVt">
      <property role="TrG5h" value="createMPSChild" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$lvM73" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="7ZZZU$lvNIP" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lvRGS" role="3clF46">
        <property role="TrG5h" value="cloudChildId" />
        <node concept="3cpWsb" id="7ZZZU$lvTyR" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="7ZZZU$lvHhB" role="3clF45">
        <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
      </node>
      <node concept="3Tmbuc" id="7ZZZU$lwcLo" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lv_12" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$lwlor" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$l$8K9" role="jymVt">
      <property role="TrG5h" value="createCloudChild" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$l$b72" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="7ZZZU$l$bHZ" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$l$c7O" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="16syzq" id="7ZZZU$l$cPe" role="1tU5fm">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
      <node concept="3cpWsb" id="7ZZZU$l$dg1" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$l$8Kc" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$l$8Kd" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$l$7ZH" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lwnU_" role="jymVt">
      <property role="TrG5h" value="removeMPSChild" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$lwBrt" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="16syzq" id="7ZZZU$lwCVG" role="1tU5fm">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$lwnUB" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$lwnUC" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lwnUD" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$lvyxo" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lxqdm" role="jymVt">
      <property role="TrG5h" value="associate" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$ly4LW" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="7ZZZU$ly8mn" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lxCz7" role="3clF46">
        <property role="TrG5h" value="cloudChildren" />
        <node concept="_YKpA" id="7ZZZU$lxGCk" role="1tU5fm">
          <node concept="3cpWsb" id="7ZZZU$lxGPA" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lxHbw" role="3clF46">
        <property role="TrG5h" value="mpsChildren" />
        <node concept="_YKpA" id="7ZZZU$lxLnw" role="1tU5fm">
          <node concept="16syzq" id="7ZZZU$lxLyc" role="_ZDj9">
            <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJhbQB" role="3clF46">
        <property role="TrG5h" value="direction" />
        <node concept="3uibUv" id="4_k_9wJhgRO" role="1tU5fm">
          <ref role="3uigEE" node="4_k_9wJhes5" resolve="SyncDirection" />
        </node>
      </node>
      <node concept="3rvAFt" id="7ZZZU$lxLRO" role="3clF45">
        <node concept="3cpWsb" id="7ZZZU$lxQkS" role="3rvQeY" />
        <node concept="16syzq" id="7ZZZU$lxQl3" role="3rvSg0">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$lxqdp" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lxqdq" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$lxmHL" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$ltJ7Z" role="jymVt">
      <property role="TrG5h" value="syncToMPS" />
      <node concept="37vLTG" id="7ZZZU$ltJ80" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="7ZZZU$ltJ81" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3rvAFt" id="4_k_9wJnVRK" role="3clF45">
        <node concept="3cpWsb" id="4_k_9wJnWMy" role="3rvQeY" />
        <node concept="16syzq" id="4_k_9wJnWSD" role="3rvSg0">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$lwfns" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$ltJ84" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$ltJ85" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$ltJ86" role="3cpWs9">
            <property role="TrG5h" value="expectedChildren" />
            <node concept="_YKpA" id="7ZZZU$lykEi" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$lywMC" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7ZZZU$lyeoS" role="33vP2m">
              <node concept="1rXfSq" id="7ZZZU$luyCv" role="2Oq$k0">
                <ref role="37wK5l" node="7ZZZU$lucp8" resolve="getCloudChildren" />
                <node concept="37vLTw" id="7ZZZU$lu_eR" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$ltJ80" resolve="tree" />
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$lygxM" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZZZU$ly94L" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$ly94M" role="3cpWs9">
            <property role="TrG5h" value="existingChildren" />
            <node concept="_YKpA" id="7ZZZU$lynlT" role="1tU5fm">
              <node concept="16syzq" id="7ZZZU$lynlV" role="_ZDj9">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZZZU$lycZy" role="33vP2m">
              <node concept="1rXfSq" id="7ZZZU$ly94N" role="2Oq$k0">
                <ref role="37wK5l" node="7ZZZU$luCzn" resolve="getMPSChildren" />
              </node>
              <node concept="ANE8D" id="7ZZZU$lydzO" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$lyo_8" role="3cqZAp" />
        <node concept="3cpWs8" id="7ZZZU$lyBQg" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lyBQh" role="3cpWs9">
            <property role="TrG5h" value="mappings" />
            <node concept="3rvAFt" id="7ZZZU$ly_Vb" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$ly_Vg" role="3rvQeY" />
              <node concept="16syzq" id="7ZZZU$ly_Vh" role="3rvSg0">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="1rXfSq" id="7ZZZU$lyBQi" role="33vP2m">
              <ref role="37wK5l" node="7ZZZU$lxqdm" resolve="associate" />
              <node concept="37vLTw" id="7ZZZU$lyBQj" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$ltJ80" resolve="tree" />
              </node>
              <node concept="37vLTw" id="7ZZZU$lyBQk" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$ltJ86" resolve="expectedChildren" />
              </node>
              <node concept="37vLTw" id="7ZZZU$lyBQl" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$ly94M" resolve="existingChildren" />
              </node>
              <node concept="Rm8GO" id="4_k_9wJhjPl" role="37wK5m">
                <ref role="Rm8GQ" node="4_k_9wJhfRm" resolve="TO_MPS" />
                <ref role="1Px2BO" node="4_k_9wJhes5" resolve="SyncDirection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$lyFPd" role="3cqZAp" />
        <node concept="3cpWs8" id="7ZZZU$lyPP1" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lyPP2" role="3cpWs9">
            <property role="TrG5h" value="toAdd" />
            <node concept="_YKpA" id="7ZZZU$lyPMl" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$lyPMo" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7ZZZU$lyPP3" role="33vP2m">
              <node concept="2OqwBi" id="7ZZZU$lyPP4" role="2Oq$k0">
                <node concept="37vLTw" id="7ZZZU$lyPP5" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZZZU$ltJ86" resolve="expectedChildren" />
                </node>
                <node concept="66VNe" id="7ZZZU$lyPP6" role="2OqNvi">
                  <node concept="2OqwBi" id="7ZZZU$lyPP7" role="576Qk">
                    <node concept="37vLTw" id="7ZZZU$lyPP8" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZZZU$lyBQh" resolve="mappings" />
                    </node>
                    <node concept="3lbrtF" id="7ZZZU$lyPP9" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$lyPPa" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZZZU$lz7Fq" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lz7Fr" role="3cpWs9">
            <property role="TrG5h" value="toRemove" />
            <node concept="_YKpA" id="7ZZZU$lz7xQ" role="1tU5fm">
              <node concept="16syzq" id="7ZZZU$lz7xT" role="_ZDj9">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZZZU$lz7Fs" role="33vP2m">
              <node concept="2OqwBi" id="7ZZZU$lz7Ft" role="2Oq$k0">
                <node concept="37vLTw" id="7ZZZU$lz7Fu" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZZZU$ly94M" resolve="existingChildren" />
                </node>
                <node concept="66VNe" id="7ZZZU$lz7Fv" role="2OqNvi">
                  <node concept="2OqwBi" id="7ZZZU$lz7Fw" role="576Qk">
                    <node concept="37vLTw" id="7ZZZU$lz7Fx" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZZZU$lyBQh" resolve="mappings" />
                    </node>
                    <node concept="T8wYR" id="7ZZZU$lz7Fy" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$lz7Fz" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$lzbIL" role="3cqZAp" />
        <node concept="3clFbF" id="7ZZZU$lzhty" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$lzjPb" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$lzhtw" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$lz7Fr" resolve="toRemove" />
            </node>
            <node concept="2es0OD" id="7ZZZU$lzmNN" role="2OqNvi">
              <node concept="1bVj0M" id="7ZZZU$lzmNP" role="23t8la">
                <node concept="3clFbS" id="7ZZZU$lzmNQ" role="1bW5cS">
                  <node concept="3clFbF" id="7ZZZU$lzmUi" role="3cqZAp">
                    <node concept="1rXfSq" id="7ZZZU$lzmUh" role="3clFbG">
                      <ref role="37wK5l" node="7ZZZU$lwnU_" resolve="removeMPSChild" />
                      <node concept="37vLTw" id="7ZZZU$lzndC" role="37wK5m">
                        <ref role="3cqZAo" node="7ZZZU$lzmNR" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7ZZZU$lzmNR" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7ZZZU$lzmNS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$lzHMb" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$lzKtA" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$lzHM9" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$lyPP2" resolve="toAdd" />
            </node>
            <node concept="2es0OD" id="7ZZZU$lzMBH" role="2OqNvi">
              <node concept="1bVj0M" id="7ZZZU$lzMBJ" role="23t8la">
                <node concept="3clFbS" id="7ZZZU$lzMBK" role="1bW5cS">
                  <node concept="3clFbF" id="7ZZZU$lzMIg" role="3cqZAp">
                    <node concept="37vLTI" id="4_k_9wJnYj8" role="3clFbG">
                      <node concept="3EllGN" id="4_k_9wJnXZk" role="37vLTJ">
                        <node concept="37vLTw" id="4_k_9wJnY9S" role="3ElVtu">
                          <ref role="3cqZAo" node="7ZZZU$lzMBL" resolve="it" />
                        </node>
                        <node concept="37vLTw" id="4_k_9wJnXxb" role="3ElQJh">
                          <ref role="3cqZAo" node="7ZZZU$lyBQh" resolve="mappings" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="7ZZZU$lzMIf" role="37vLTx">
                        <ref role="37wK5l" node="7ZZZU$lv_0Y" resolve="createMPSChild" />
                        <node concept="37vLTw" id="7ZZZU$lzN2y" role="37wK5m">
                          <ref role="3cqZAo" node="7ZZZU$ltJ80" resolve="tree" />
                        </node>
                        <node concept="37vLTw" id="7ZZZU$lzNt0" role="37wK5m">
                          <ref role="3cqZAo" node="7ZZZU$lzMBL" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7ZZZU$lzMBL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7ZZZU$lzMBM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJo1ex" role="3cqZAp" />
        <node concept="3cpWs6" id="4_k_9wJnZeh" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJo0kf" role="3cqZAk">
            <ref role="3cqZAo" node="7ZZZU$lyBQh" resolve="mappings" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$lwGvS" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lwD7H" role="jymVt">
      <property role="TrG5h" value="syncToCloud" />
      <node concept="37vLTG" id="7ZZZU$lwD7I" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="7ZZZU$lzTDf" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$lwD7L" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lwD7M" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$lzV3I" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lzV3L" role="3cpWs9">
            <property role="TrG5h" value="expectedChildren" />
            <node concept="_YKpA" id="7ZZZU$lzV3E" role="1tU5fm">
              <node concept="16syzq" id="7ZZZU$lzV76" role="_ZDj9">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZZZU$lzVJT" role="33vP2m">
              <node concept="1rXfSq" id="7ZZZU$lzVmP" role="2Oq$k0">
                <ref role="37wK5l" node="7ZZZU$luCzn" resolve="getMPSChildren" />
              </node>
              <node concept="ANE8D" id="7ZZZU$lzWat" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZZZU$lzSI8" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lzSIb" role="3cpWs9">
            <property role="TrG5h" value="existingChildren" />
            <node concept="_YKpA" id="7ZZZU$lzSI6" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$lzUnC" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7ZZZU$lzUCJ" role="33vP2m">
              <node concept="1rXfSq" id="7ZZZU$lzSXj" role="2Oq$k0">
                <ref role="37wK5l" node="7ZZZU$lucp8" resolve="getCloudChildren" />
                <node concept="2OqwBi" id="7ZZZU$lzTpf" role="37wK5m">
                  <node concept="37vLTw" id="7ZZZU$lzTeI" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ZZZU$lwD7I" resolve="t" />
                  </node>
                  <node concept="liA8E" id="7ZZZU$lzU8Q" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IWriteTransaction.getTree()" resolve="getTree" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$lzUZ2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$lzWdN" role="3cqZAp" />
        <node concept="3cpWs8" id="7ZZZU$lzXIm" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$lzXIn" role="3cpWs9">
            <property role="TrG5h" value="mappings" />
            <node concept="3rvAFt" id="7ZZZU$lzXFh" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$lzXFm" role="3rvQeY" />
              <node concept="16syzq" id="7ZZZU$lzXFn" role="3rvSg0">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="1rXfSq" id="7ZZZU$lzXIo" role="33vP2m">
              <ref role="37wK5l" node="7ZZZU$lxqdm" resolve="associate" />
              <node concept="2OqwBi" id="7ZZZU$lzXIp" role="37wK5m">
                <node concept="37vLTw" id="7ZZZU$lzXIq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZZZU$lwD7I" resolve="t" />
                </node>
                <node concept="liA8E" id="7ZZZU$lzXIr" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IWriteTransaction.getTree()" resolve="getTree" />
                </node>
              </node>
              <node concept="37vLTw" id="7ZZZU$lzXIs" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$lzSIb" resolve="existingChildren" />
              </node>
              <node concept="37vLTw" id="7ZZZU$lzXIt" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$lzV3L" resolve="expectedChildren" />
              </node>
              <node concept="Rm8GO" id="4_k_9wJhlaT" role="37wK5m">
                <ref role="Rm8GQ" node="4_k_9wJhglC" resolve="TO_CLOUD" />
                <ref role="1Px2BO" node="4_k_9wJhes5" resolve="SyncDirection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$lzYcr" role="3cqZAp" />
        <node concept="3cpWs8" id="7ZZZU$l$0If" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$l$0Ig" role="3cpWs9">
            <property role="TrG5h" value="toAdd" />
            <node concept="_YKpA" id="7ZZZU$l$0GL" role="1tU5fm">
              <node concept="16syzq" id="7ZZZU$l$0GO" role="_ZDj9">
                <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZZZU$l$0Ih" role="33vP2m">
              <node concept="2OqwBi" id="7ZZZU$l$0Ii" role="2Oq$k0">
                <node concept="37vLTw" id="7ZZZU$l$0Ij" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZZZU$lzV3L" resolve="expectedChildren" />
                </node>
                <node concept="66VNe" id="7ZZZU$l$0Ik" role="2OqNvi">
                  <node concept="2OqwBi" id="7ZZZU$l$0Il" role="576Qk">
                    <node concept="37vLTw" id="7ZZZU$l$0Im" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZZZU$lzXIn" resolve="mappings" />
                    </node>
                    <node concept="T8wYR" id="7ZZZU$l$0In" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$l$0Io" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZZZU$l$3yP" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$l$3yQ" role="3cpWs9">
            <property role="TrG5h" value="toRemove" />
            <node concept="_YKpA" id="7ZZZU$l$3xp" role="1tU5fm">
              <node concept="3cpWsb" id="7ZZZU$l$3xs" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7ZZZU$l$3yR" role="33vP2m">
              <node concept="2OqwBi" id="7ZZZU$l$3yS" role="2Oq$k0">
                <node concept="37vLTw" id="7ZZZU$l$3yT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ZZZU$lzSIb" resolve="existingChildren" />
                </node>
                <node concept="66VNe" id="7ZZZU$l$3yU" role="2OqNvi">
                  <node concept="2OqwBi" id="7ZZZU$l$3yV" role="576Qk">
                    <node concept="37vLTw" id="7ZZZU$l$3yW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZZZU$lzXIn" resolve="mappings" />
                    </node>
                    <node concept="3lbrtF" id="7ZZZU$l$3yX" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7ZZZU$l$3yY" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ZZZU$l$40c" role="3cqZAp" />
        <node concept="3clFbF" id="7ZZZU$l$4sj" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$l$4P8" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$l$4sh" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$l$3yQ" resolve="toRemove" />
            </node>
            <node concept="2es0OD" id="7ZZZU$l$5jn" role="2OqNvi">
              <node concept="1bVj0M" id="7ZZZU$l$5jp" role="23t8la">
                <node concept="3clFbS" id="7ZZZU$l$5jq" role="1bW5cS">
                  <node concept="3clFbF" id="7ZZZU$l$5VF" role="3cqZAp">
                    <node concept="2OqwBi" id="7ZZZU$l$65E" role="3clFbG">
                      <node concept="37vLTw" id="7ZZZU$l$5VC" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ZZZU$lwD7I" resolve="t" />
                      </node>
                      <node concept="liA8E" id="7ZZZU$l$6sj" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IWriteTransaction.deleteNode(long)" resolve="deleteNode" />
                        <node concept="37vLTw" id="7ZZZU$l$6wy" role="37wK5m">
                          <ref role="3cqZAo" node="7ZZZU$l$5jr" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7ZZZU$l$5jr" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7ZZZU$l$5js" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$l$6OH" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$l$7fW" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$l$6OF" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$l$0Ig" resolve="toAdd" />
            </node>
            <node concept="2es0OD" id="7ZZZU$l$7So" role="2OqNvi">
              <node concept="1bVj0M" id="7ZZZU$l$7Sq" role="23t8la">
                <node concept="3clFbS" id="7ZZZU$l$7Sr" role="1bW5cS">
                  <node concept="3clFbF" id="7ZZZU$l$eJC" role="3cqZAp">
                    <node concept="37vLTI" id="4_k_9wJo60v" role="3clFbG">
                      <node concept="37vLTw" id="4_k_9wJo66J" role="37vLTx">
                        <ref role="3cqZAo" node="7ZZZU$l$7Ss" resolve="it" />
                      </node>
                      <node concept="3EllGN" id="4_k_9wJo5$F" role="37vLTJ">
                        <node concept="37vLTw" id="4_k_9wJo56t" role="3ElQJh">
                          <ref role="3cqZAo" node="7ZZZU$lzXIn" resolve="mappings" />
                        </node>
                        <node concept="1rXfSq" id="7ZZZU$l$eJB" role="3ElVtu">
                          <ref role="37wK5l" node="7ZZZU$l$8K9" resolve="createCloudChild" />
                          <node concept="37vLTw" id="7ZZZU$l$f3m" role="37wK5m">
                            <ref role="3cqZAo" node="7ZZZU$lwD7I" resolve="t" />
                          </node>
                          <node concept="37vLTw" id="7ZZZU$l$fx_" role="37wK5m">
                            <ref role="3cqZAo" node="7ZZZU$l$7Ss" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7ZZZU$l$7Ss" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7ZZZU$l$7St" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJo37c" role="3cqZAp" />
        <node concept="3cpWs6" id="4_k_9wJo3by" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJo3CS" role="3cqZAk">
            <ref role="3cqZAo" node="7ZZZU$lzXIn" resolve="mappings" />
          </node>
        </node>
      </node>
      <node concept="3rvAFt" id="4_k_9wJo2a3" role="3clF45">
        <node concept="3cpWsb" id="4_k_9wJo2a4" role="3rvQeY" />
        <node concept="16syzq" id="4_k_9wJo2a5" role="3rvSg0">
          <ref role="16sUi3" node="7ZZZU$luMv0" resolve="MPSChildT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$ltW7W" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$ltW6T" role="1B3o_S" />
    <node concept="16euLQ" id="7ZZZU$luMv0" role="16eVyc">
      <property role="TrG5h" value="MPSChildT" />
    </node>
    <node concept="3UR2Jj" id="7ZZZU$lyRHv" role="lGtFl">
      <node concept="TZ5HA" id="7ZZZU$lyRHw" role="TZ5H$">
        <node concept="1dT_AC" id="7ZZZU$lyRHx" role="1dT_Ay">
          <property role="1dT_AB" value="Synchronizes an unordered list of children" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$lwQ4b">
    <property role="TrG5h" value="_ModelsSynchronizer" />
    <node concept="2tJIrI" id="7ZZZU$lwQ5M" role="jymVt" />
    <node concept="312cEg" id="7ZZZU$lwQdD" role="jymVt">
      <property role="TrG5h" value="module" />
      <node concept="3Tm6S6" id="7ZZZU$lwQdE" role="1B3o_S" />
      <node concept="3uibUv" id="7ZZZU$lx6sn" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$lwQce" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$lwQ4c" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$lwQ5_" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$ltW6S" resolve="_Synchronizer" />
      <node concept="3uibUv" id="7ZZZU$lx79m" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="3clFbW" id="7ZZZU$lx6wp" role="jymVt">
      <node concept="3cqZAl" id="7ZZZU$lx6wq" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$lx6wr" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lx6wt" role="3clF47">
        <node concept="XkiVB" id="7ZZZU$lx6wv" role="3cqZAp">
          <ref role="37wK5l" node="7ZZZU$lwUCC" resolve="_Synchronizer" />
          <node concept="37vLTw" id="7ZZZU$lx6wz" role="37wK5m">
            <ref role="3cqZAo" node="7ZZZU$lx6ww" resolve="cloudParentId" />
          </node>
          <node concept="2OqwBi" id="7ZZZU$lux0P" role="37wK5m">
            <node concept="359W_D" id="7ZZZU$lux0Q" role="2Oq$k0">
              <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
              <ref role="359W_F" to="jh6v:qmkA5fOski" resolve="models" />
            </node>
            <node concept="liA8E" id="7ZZZU$lux0R" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$lx6wE" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$lx6wG" role="3clFbG">
            <node concept="2OqwBi" id="7ZZZU$lx6wK" role="37vLTJ">
              <node concept="Xjq3P" id="7ZZZU$lx6wL" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ZZZU$lx6wM" role="2OqNvi">
                <ref role="2Oxat5" node="7ZZZU$lwQdD" resolve="module" />
              </node>
            </node>
            <node concept="37vLTw" id="7ZZZU$lx6wN" role="37vLTx">
              <ref role="3cqZAo" node="7ZZZU$lx6wD" resolve="module" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lx6ww" role="3clF46">
        <property role="TrG5h" value="cloudParentId" />
        <node concept="3cpWsb" id="7ZZZU$lx6wy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ZZZU$lx6wD" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7ZZZU$lx6wC" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$lx6FT" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJjdMD" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <node concept="3uibUv" id="4_k_9wJjfEe" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="4_k_9wJjdMG" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJjdMH" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJjgrE" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJjgrD" role="3clFbG">
            <ref role="3cqZAo" node="7ZZZU$lwQdD" resolve="module" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJjd2C" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lwQ7c" role="jymVt">
      <property role="TrG5h" value="getMPSChildren" />
      <node concept="A3Dl8" id="7ZZZU$lwQ7d" role="3clF45">
        <node concept="3uibUv" id="7ZZZU$lx7dU" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tmbuc" id="7ZZZU$lwQ7f" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lwQ7i" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$lx6IO" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$lx6S4" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$lx6IN" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$lwQdD" resolve="module" />
            </node>
            <node concept="AQDAd" id="4_k_9wJiZU8" role="2OqNvi">
              <ref role="37wK5l" to="csg2:52cRlzW9NPt" resolve="getModelsWithoutDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$lwQ7j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJiZX$" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lxlDm" role="jymVt">
      <property role="TrG5h" value="createMPSChild" />
      <node concept="37vLTG" id="7ZZZU$lxlDn" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="7ZZZU$lxlDo" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZZZU$lxlDp" role="3clF46">
        <property role="TrG5h" value="cloudChildId" />
        <node concept="3cpWsb" id="7ZZZU$lxlDq" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7ZZZU$lxlDu" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tmbuc" id="7ZZZU$lxlDs" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lxlDv" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$ltJ8J" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$ltJ8K" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="4_k_9wJiM8L" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
            </node>
            <node concept="1rXfSq" id="4_k_9wJi$CB" role="33vP2m">
              <ref role="37wK5l" node="4_k_9wJhLKK" resolve="getModelId" />
              <node concept="37vLTw" id="4_k_9wJi_1J" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$lxlDn" resolve="tree" />
              </node>
              <node concept="37vLTw" id="4_k_9wJi_wW" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$lxlDp" resolve="cloudChildId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_k_9wJiXg9" role="3cqZAp">
          <node concept="3clFbS" id="4_k_9wJiXgb" role="3clFbx">
            <node concept="3clFbF" id="4_k_9wJiXJH" role="3cqZAp">
              <node concept="37vLTI" id="4_k_9wJiXO4" role="3clFbG">
                <node concept="37vLTw" id="4_k_9wJiXJF" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZZZU$ltJ8K" resolve="id" />
                </node>
                <node concept="2YIFZM" id="4_k_9wJiPNj" role="37vLTx">
                  <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                  <ref role="37wK5l" to="w1kc:~SModelId.foreign(java.lang.String)" resolve="foreign" />
                  <node concept="3cpWs3" id="4_k_9wJiPNk" role="37wK5m">
                    <node concept="37vLTw" id="4_k_9wJiYgr" role="3uHU7w">
                      <ref role="3cqZAo" node="7ZZZU$lxlDp" resolve="cloudChildId" />
                    </node>
                    <node concept="Xl_RD" id="4_k_9wJiPNm" role="3uHU7B">
                      <property role="Xl_RC" value="cloud-" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4_k_9wJiXy5" role="3clFbw">
            <node concept="10Nm6u" id="4_k_9wJiXGu" role="3uHU7w" />
            <node concept="37vLTw" id="4_k_9wJiXot" role="3uHU7B">
              <ref role="3cqZAo" node="7ZZZU$ltJ8K" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_k_9wJivLQ" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJivLR" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="4_k_9wJivLS" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJivLT" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJivLU" role="2Oq$k0">
                <ref role="3cqZAo" node="7ZZZU$lxlDn" resolve="tree" />
              </node>
              <node concept="liA8E" id="4_k_9wJivLV" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                <node concept="37vLTw" id="4_k_9wJivLW" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$lxlDp" resolve="cloudChildId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJivLX" role="37wK5m">
                  <node concept="355D3s" id="4_k_9wJivLY" role="2Oq$k0">
                    <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                    <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJivLZ" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJjDLU" role="3cqZAp">
          <node concept="1rXfSq" id="4_k_9wJjDZo" role="3cqZAk">
            <ref role="37wK5l" node="4_k_9wJj$E4" resolve="createModel" />
            <node concept="37vLTw" id="4_k_9wJjEBB" role="37wK5m">
              <ref role="3cqZAo" node="4_k_9wJivLR" resolve="name" />
            </node>
            <node concept="37vLTw" id="4_k_9wJjFRk" role="37wK5m">
              <ref role="3cqZAo" node="7ZZZU$ltJ8K" resolve="id" />
            </node>
            <node concept="37vLTw" id="4_k_9wJk7Xi" role="37wK5m">
              <ref role="3cqZAo" node="7ZZZU$lxlDp" resolve="cloudChildId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$lxlDw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJjwwv" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJj$E4" role="jymVt">
      <property role="TrG5h" value="createModel" />
      <node concept="37vLTG" id="4_k_9wJjCbw" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4_k_9wJjCJF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_k_9wJjAoR" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="4_k_9wJjASD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJk1jr" role="3clF46">
        <property role="TrG5h" value="modelNodeId" />
        <node concept="3cpWsb" id="4_k_9wJk1Uy" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJjDbL" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJj_it" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJj$E8" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJiwoL" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJiwT4" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJiwoJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$lwQdD" resolve="module" />
            </node>
            <node concept="AQDAd" id="4_k_9wJizhn" role="2OqNvi">
              <ref role="37wK5l" to="csg2:KjelMl8wUk" resolve="createModel" />
              <node concept="37vLTw" id="4_k_9wJjIbM" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJjCbw" resolve="name" />
              </node>
              <node concept="37vLTw" id="4_k_9wJjIGU" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJjAoR" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$lxlaU" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$lxlX8" role="jymVt">
      <property role="TrG5h" value="removeMPSChild" />
      <node concept="37vLTG" id="7ZZZU$lxlX9" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="3uibUv" id="7ZZZU$lxlXe" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$lxlXb" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$lxlXc" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$lxlXf" role="3clF47">
        <node concept="3clFbF" id="52cRlzW59rN" role="3cqZAp">
          <node concept="2OqwBi" id="52cRlzW59rO" role="3clFbG">
            <node concept="2ShNRf" id="52cRlzW59rP" role="2Oq$k0">
              <node concept="1pGfFk" id="52cRlzW59rQ" role="2ShVmc">
                <ref role="37wK5l" to="ztoz:~ModelDeleteHelper.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelDeleteHelper" />
                <node concept="37vLTw" id="4_k_9wJjuVu" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$lxlX9" resolve="mpsChild" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="52cRlzW59rU" role="2OqNvi">
              <ref role="37wK5l" to="ztoz:~ModelDeleteHelper.delete()" resolve="delete" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$lxlXg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJgbd4" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJgawB" role="jymVt">
      <property role="TrG5h" value="associate" />
      <node concept="37vLTG" id="4_k_9wJgawC" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4_k_9wJgawD" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJgawE" role="3clF46">
        <property role="TrG5h" value="cloudChildren" />
        <node concept="_YKpA" id="4_k_9wJgawF" role="1tU5fm">
          <node concept="3cpWsb" id="4_k_9wJgawG" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJgawH" role="3clF46">
        <property role="TrG5h" value="mpsChildren" />
        <node concept="_YKpA" id="4_k_9wJgawI" role="1tU5fm">
          <node concept="3uibUv" id="4_k_9wJgawQ" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJhm3i" role="3clF46">
        <property role="TrG5h" value="direction" />
        <node concept="3uibUv" id="4_k_9wJhm3j" role="1tU5fm">
          <ref role="3uigEE" node="4_k_9wJhes5" resolve="SyncDirection" />
        </node>
      </node>
      <node concept="3rvAFt" id="4_k_9wJgawK" role="3clF45">
        <node concept="3cpWsb" id="4_k_9wJgawL" role="3rvQeY" />
        <node concept="3uibUv" id="4_k_9wJgawP" role="3rvSg0">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4_k_9wJgawN" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJgawR" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJhqtl" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJhqto" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3rvAFt" id="4_k_9wJhqtf" role="1tU5fm">
              <node concept="3cpWsb" id="4_k_9wJhq_L" role="3rvQeY" />
              <node concept="3uibUv" id="4_k_9wJhqGr" role="3rvSg0">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_k_9wJhred" role="33vP2m">
              <node concept="3rGOSV" id="4_k_9wJhrbn" role="2ShVmc">
                <node concept="3cpWsb" id="4_k_9wJhrbo" role="3rHrn6" />
                <node concept="3uibUv" id="4_k_9wJhrbp" role="3rHtpV">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_k_9wJiatY" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJiau1" role="3cpWs9">
            <property role="TrG5h" value="availableModels" />
            <node concept="_YKpA" id="4_k_9wJiatU" role="1tU5fm">
              <node concept="3uibUv" id="4_k_9wJiaCR" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_k_9wJib_Y" role="33vP2m">
              <node concept="Tc6Ow" id="4_k_9wJibvi" role="2ShVmc">
                <node concept="3uibUv" id="4_k_9wJibvj" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="37vLTw" id="4_k_9wJict9" role="I$8f6">
                  <ref role="3cqZAo" node="4_k_9wJgawH" resolve="mpsChildren" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJhC2y" role="3cqZAp" />
        <node concept="2Gpval" id="4_k_9wJhrDy" role="3cqZAp">
          <node concept="2GrKxI" id="4_k_9wJhrD$" role="2Gsz3X">
            <property role="TrG5h" value="cloudModelId" />
          </node>
          <node concept="37vLTw" id="4_k_9wJhDEX" role="2GsD0m">
            <ref role="3cqZAo" node="4_k_9wJgawE" resolve="cloudChildren" />
          </node>
          <node concept="3clFbS" id="4_k_9wJhrDC" role="2LFqv$">
            <node concept="3cpWs8" id="4_k_9wJhsE8" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJhsE9" role="3cpWs9">
                <property role="TrG5h" value="id" />
                <node concept="3uibUv" id="4_k_9wJiLvm" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
                </node>
                <node concept="1rXfSq" id="4_k_9wJhR89" role="33vP2m">
                  <ref role="37wK5l" node="4_k_9wJhLKK" resolve="getModelId" />
                  <node concept="37vLTw" id="4_k_9wJhRz_" role="37wK5m">
                    <ref role="3cqZAo" node="4_k_9wJgawC" resolve="tree" />
                  </node>
                  <node concept="2GrUjf" id="4_k_9wJhSex" role="37wK5m">
                    <ref role="2Gs0qQ" node="4_k_9wJhrD$" resolve="cloudModelId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_k_9wJhsEi" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJhsEj" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="4_k_9wJhsEk" role="1tU5fm" />
                <node concept="2OqwBi" id="4_k_9wJhsEl" role="33vP2m">
                  <node concept="37vLTw" id="4_k_9wJhsEm" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJgawC" resolve="tree" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJhsEn" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                    <node concept="2GrUjf" id="4_k_9wJhJrG" role="37wK5m">
                      <ref role="2Gs0qQ" node="4_k_9wJhrD$" resolve="cloudModelId" />
                    </node>
                    <node concept="2OqwBi" id="4_k_9wJhsEp" role="37wK5m">
                      <node concept="355D3s" id="4_k_9wJhsEq" role="2Oq$k0">
                        <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="liA8E" id="4_k_9wJhsEr" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4_k_9wJicUN" role="3cqZAp" />
            <node concept="3SKdUt" id="4_k_9wJis4m" role="3cqZAp">
              <node concept="1PaTwC" id="4_k_9wJis4n" role="1aUNEU">
                <node concept="3oM_SD" id="4_k_9wJis4o" role="1PaTwD">
                  <property role="3oM_SC" value="There" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJisjX" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJiskg" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJislE" role="1PaTwD">
                  <property role="3oM_SC" value="models" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit8M" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJisj6" role="1PaTwD">
                  <property role="3oM_SC" value="duplicate" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJisjp" role="1PaTwD">
                  <property role="3oM_SC" value="names." />
                </node>
                <node concept="3oM_SD" id="4_k_9wJism1" role="1PaTwD">
                  <property role="3oM_SC" value="That's" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit2e" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit2n" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit2D" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit3c" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit7o" role="1PaTwD">
                  <property role="3oM_SC" value="search" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit7P" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit83" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJit8i" role="1PaTwD">
                  <property role="3oM_SC" value="map." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_k_9wJig7M" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJig7N" role="3cpWs9">
                <property role="TrG5h" value="itr" />
                <node concept="2YL$Hu" id="4_k_9wJig5m" role="1tU5fm">
                  <node concept="3uibUv" id="4_k_9wJig5p" role="uOL27">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4_k_9wJig7O" role="33vP2m">
                  <node concept="37vLTw" id="4_k_9wJig7P" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJiau1" resolve="availableModels" />
                  </node>
                  <node concept="uNJiE" id="4_k_9wJig7Q" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="4_k_9wJigJz" role="3cqZAp">
              <node concept="3clFbS" id="4_k_9wJigJ_" role="2LFqv$">
                <node concept="3cpWs8" id="4_k_9wJihWu" role="3cqZAp">
                  <node concept="3cpWsn" id="4_k_9wJihWv" role="3cpWs9">
                    <property role="TrG5h" value="it" />
                    <node concept="3uibUv" id="4_k_9wJihWl" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="4_k_9wJihWw" role="33vP2m">
                      <node concept="37vLTw" id="4_k_9wJihWx" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_k_9wJig7N" resolve="itr" />
                      </node>
                      <node concept="v1n4t" id="4_k_9wJihWy" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4_k_9wJikg1" role="3cqZAp">
                  <node concept="3clFbS" id="4_k_9wJikg3" role="3clFbx">
                    <node concept="3clFbF" id="4_k_9wJioV1" role="3cqZAp">
                      <node concept="37vLTI" id="4_k_9wJipDv" role="3clFbG">
                        <node concept="37vLTw" id="4_k_9wJipNo" role="37vLTx">
                          <ref role="3cqZAo" node="4_k_9wJihWv" resolve="it" />
                        </node>
                        <node concept="3EllGN" id="4_k_9wJippc" role="37vLTJ">
                          <node concept="2GrUjf" id="4_k_9wJipB7" role="3ElVtu">
                            <ref role="2Gs0qQ" node="4_k_9wJhrD$" resolve="cloudModelId" />
                          </node>
                          <node concept="37vLTw" id="4_k_9wJioUZ" role="3ElQJh">
                            <ref role="3cqZAo" node="4_k_9wJhqto" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4_k_9wJiq5L" role="3cqZAp">
                      <node concept="2OqwBi" id="4_k_9wJiqo_" role="3clFbG">
                        <node concept="37vLTw" id="4_k_9wJiq5J" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_k_9wJig7N" resolve="itr" />
                        </node>
                        <node concept="2YMH90" id="4_k_9wJir1L" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3zACq4" id="4_k_9wJir6V" role="3cqZAp" />
                  </node>
                  <node concept="22lmx$" id="4_k_9wJinvG" role="3clFbw">
                    <node concept="17R0WA" id="4_k_9wJioGl" role="3uHU7w">
                      <node concept="37vLTw" id="4_k_9wJioM_" role="3uHU7w">
                        <ref role="3cqZAo" node="4_k_9wJhsEj" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="4_k_9wJiodb" role="3uHU7B">
                        <node concept="2OqwBi" id="4_k_9wJinYm" role="2Oq$k0">
                          <node concept="37vLTw" id="4_k_9wJinTr" role="2Oq$k0">
                            <ref role="3cqZAo" node="4_k_9wJihWv" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4_k_9wJio4v" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4_k_9wJionu" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="4_k_9wJilw6" role="3uHU7B">
                      <node concept="3y3z36" id="4_k_9wJiLV6" role="3uHU7B">
                        <node concept="10Nm6u" id="4_k_9wJiM6U" role="3uHU7w" />
                        <node concept="37vLTw" id="4_k_9wJikkr" role="3uHU7B">
                          <ref role="3cqZAo" node="4_k_9wJhsE9" resolve="id" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="4_k_9wJimFv" role="3uHU7w">
                        <node concept="2OqwBi" id="4_k_9wJilGs" role="3uHU7B">
                          <node concept="37vLTw" id="4_k_9wJilCZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="4_k_9wJihWv" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4_k_9wJilLM" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4_k_9wJin4G" role="3uHU7w">
                          <ref role="3cqZAo" node="4_k_9wJhsE9" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJihe1" role="2$JKZa">
                <node concept="37vLTw" id="4_k_9wJigW9" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_k_9wJig7N" resolve="itr" />
                </node>
                <node concept="v0PNk" id="4_k_9wJihov" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJhndh" role="3cqZAp" />
        <node concept="3cpWs6" id="4_k_9wJitwi" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJitwk" role="3cqZAk">
            <ref role="3cqZAo" node="4_k_9wJhqto" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJgawS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJhKUy" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJhLKK" role="jymVt">
      <property role="TrG5h" value="getModelId" />
      <node concept="37vLTG" id="4_k_9wJhNGw" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4_k_9wJhO4G" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJhOr3" role="3clF46">
        <property role="TrG5h" value="cloudModelId" />
        <node concept="3cpWsb" id="4_k_9wJhOQf" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJiCmT" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJhPJY" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJhLKO" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJiCW_" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJiCWA" role="3cpWs9">
            <property role="TrG5h" value="serializedId" />
            <node concept="17QB3L" id="4_k_9wJiDdl" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJiCWB" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJiCWC" role="2Oq$k0">
                <ref role="3cqZAo" node="4_k_9wJhNGw" resolve="tree" />
              </node>
              <node concept="liA8E" id="4_k_9wJiCWD" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                <node concept="37vLTw" id="4_k_9wJiCWE" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJhOr3" resolve="cloudModelId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJiCWF" role="37wK5m">
                  <node concept="355D3s" id="4_k_9wJiCWG" role="2Oq$k0">
                    <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                    <ref role="355D3u" to="jh6v:2hbxkgeTB8i" resolve="id" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJiCWH" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_k_9wJiDIZ" role="3cqZAp">
          <node concept="3clFbS" id="4_k_9wJiDJ1" role="3clFbx">
            <node concept="3cpWs6" id="4_k_9wJiEVV" role="3cqZAp">
              <node concept="10Nm6u" id="4_k_9wJiW10" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="4_k_9wJiE57" role="3clFbw">
            <node concept="37vLTw" id="4_k_9wJiDQ$" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJiCWA" resolve="serializedId" />
            </node>
            <node concept="17RlXB" id="4_k_9wJiEOD" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJiJRP" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJiJRR" role="3cqZAk">
            <node concept="2YIFZM" id="4_k_9wJiJRS" role="2Oq$k0">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="liA8E" id="4_k_9wJiJRT" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.createModelId(java.lang.String)" resolve="createModelId" />
              <node concept="37vLTw" id="4_k_9wJiJRU" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJiCWA" resolve="serializedId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJgbxd" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJgawT" role="jymVt">
      <property role="TrG5h" value="createCloudChild" />
      <node concept="37vLTG" id="4_k_9wJgawU" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="4_k_9wJgawV" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJgawW" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="3uibUv" id="4_k_9wJgax1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3cpWsb" id="4_k_9wJgawY" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJgawZ" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJgax2" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJkoI5" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJkoI6" role="3cpWs9">
            <property role="TrG5h" value="modelNodeId" />
            <node concept="3cpWsb" id="4_k_9wJkot$" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJkoI7" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJkoI8" role="2Oq$k0">
                <ref role="3cqZAo" node="4_k_9wJgawU" resolve="t" />
              </node>
              <node concept="liA8E" id="4_k_9wJkoI9" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                <node concept="1rXfSq" id="4_k_9wJkoIa" role="37wK5m">
                  <ref role="37wK5l" node="4_k_9wJkeD6" resolve="getCloudParentId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJkoIb" role="37wK5m">
                  <node concept="359W_D" id="4_k_9wJkoIc" role="2Oq$k0">
                    <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="359W_F" to="jh6v:qmkA5fOski" resolve="models" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJkoId" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="3cmrfG" id="4_k_9wJkoIe" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="2YIFZM" id="4_k_9wJkoIf" role="37wK5m">
                  <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                  <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <node concept="35c_gC" id="4_k_9wJkoIg" role="37wK5m">
                    <ref role="35c_gD" to="jh6v:qmkA5fOskc" resolve="Model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJkq6l" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJkqpT" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJkq6j" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJgawU" resolve="t" />
            </node>
            <node concept="liA8E" id="4_k_9wJkr4F" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="4_k_9wJkrb3" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJkoI6" resolve="modelNodeId" />
              </node>
              <node concept="2OqwBi" id="4_k_9wJkwYG" role="37wK5m">
                <node concept="355D3s" id="4_k_9wJkroN" role="2Oq$k0">
                  <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                  <ref role="355D3u" to="jh6v:2hbxkgeTB8i" resolve="id" />
                </node>
                <node concept="liA8E" id="4_k_9wJkxoH" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJku8N" role="37wK5m">
                <node concept="2OqwBi" id="4_k_9wJkrZ0" role="2Oq$k0">
                  <node concept="37vLTw" id="4_k_9wJkrxs" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJgawW" resolve="mpsChild" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJkss1" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                  </node>
                </node>
                <node concept="liA8E" id="4_k_9wJkuAp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJkzKS" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJkzKT" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJkzKU" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJgawU" resolve="t" />
            </node>
            <node concept="liA8E" id="4_k_9wJkzKV" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="4_k_9wJkzKW" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJkoI6" resolve="modelNodeId" />
              </node>
              <node concept="2OqwBi" id="4_k_9wJkzKX" role="37wK5m">
                <node concept="355D3s" id="4_k_9wJkzKY" role="2Oq$k0">
                  <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="liA8E" id="4_k_9wJkzKZ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJk_vo" role="37wK5m">
                <node concept="2OqwBi" id="4_k_9wJkzL1" role="2Oq$k0">
                  <node concept="37vLTw" id="4_k_9wJkzL2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJgawW" resolve="mpsChild" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJk_mW" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="4_k_9wJkA1H" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJkpmr" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJkpmt" role="3cqZAk">
            <ref role="3cqZAo" node="4_k_9wJkoI6" resolve="modelNodeId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJgax3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJgbPn" role="jymVt" />
  </node>
  <node concept="312cEu" id="4_k_9wJjb38">
    <property role="TrG5h" value="_TransientModelsSynchronizer" />
    <node concept="2tJIrI" id="4_k_9wJjc4x" role="jymVt" />
    <node concept="312cEg" id="4_k_9wJjYHX" role="jymVt">
      <property role="TrG5h" value="branch" />
      <node concept="3Tm6S6" id="4_k_9wJjYHY" role="1B3o_S" />
      <node concept="3uibUv" id="4_k_9wJjZls" role="1tU5fm">
        <ref role="3uigEE" to="5440:~IIndirectBranch" resolve="IIndirectBranch" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJjZBZ" role="jymVt" />
    <node concept="3clFbW" id="4_k_9wJjjRj" role="jymVt">
      <node concept="3cqZAl" id="4_k_9wJjjRk" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJjjRl" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJjjRn" role="3clF47">
        <node concept="XkiVB" id="4_k_9wJjjRp" role="3cqZAp">
          <ref role="37wK5l" node="7ZZZU$lx6wp" resolve="_ModelsSynchronizer" />
          <node concept="37vLTw" id="4_k_9wJjjRt" role="37wK5m">
            <ref role="3cqZAo" node="4_k_9wJjjRq" resolve="cloudParentId" />
          </node>
          <node concept="37vLTw" id="4_k_9wJjjRx" role="37wK5m">
            <ref role="3cqZAo" node="4_k_9wJjjRu" resolve="module" />
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJkahn" role="3cqZAp">
          <node concept="37vLTI" id="4_k_9wJkbeP" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJkbrg" role="37vLTx">
              <ref role="3cqZAo" node="4_k_9wJjYA5" resolve="branch" />
            </node>
            <node concept="2OqwBi" id="4_k_9wJka$n" role="37vLTJ">
              <node concept="Xjq3P" id="4_k_9wJkahl" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_k_9wJkaRj" role="2OqNvi">
                <ref role="2Oxat5" node="4_k_9wJjYHX" resolve="branch" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJjjRq" role="3clF46">
        <property role="TrG5h" value="cloudParentId" />
        <node concept="3cpWsb" id="4_k_9wJjjRs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_k_9wJjjRu" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="4_k_9wJjkiR" role="1tU5fm">
          <ref role="3uigEE" to="csg2:115Xaa43tZI" resolve="CloudTransientModule" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJjYA5" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="4_k_9wJjYH6" role="1tU5fm">
          <ref role="3uigEE" to="5440:~IIndirectBranch" resolve="IIndirectBranch" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJjk5u" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJjh9T" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <node concept="3uibUv" id="4_k_9wJji4E" role="3clF45">
        <ref role="3uigEE" to="csg2:115Xaa43tZI" resolve="CloudTransientModule" />
      </node>
      <node concept="3Tm1VV" id="4_k_9wJjh9V" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJjh9Z" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJjha2" role="3cqZAp">
          <node concept="10QFUN" id="4_k_9wJjiwL" role="3clFbG">
            <node concept="3nyPlj" id="4_k_9wJjiwK" role="10QFUP">
              <ref role="37wK5l" node="4_k_9wJjdMD" resolve="getModule" />
            </node>
            <node concept="3uibUv" id="4_k_9wJjiMe" role="10QFUM">
              <ref role="3uigEE" to="csg2:115Xaa43tZI" resolve="CloudTransientModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJjha0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJjK5w" role="jymVt" />
    <node concept="3Tm1VV" id="4_k_9wJjb39" role="1B3o_S" />
    <node concept="3uibUv" id="4_k_9wJjb44" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$lwQ4b" resolve="_ModelsSynchronizer" />
    </node>
    <node concept="3clFb_" id="4_k_9wJjJLQ" role="jymVt">
      <property role="TrG5h" value="createModel" />
      <node concept="37vLTG" id="4_k_9wJjJLR" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4_k_9wJjJLS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_k_9wJjJLT" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="4_k_9wJjJLU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJk8Hv" role="3clF46">
        <property role="TrG5h" value="modelNodeId" />
        <node concept="3cpWsb" id="4_k_9wJk8Hw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJjJLV" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJjJLW" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJjJM4" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJjLzs" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJjLzt" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="4_k_9wJjLd6" role="1tU5fm">
              <ref role="3uigEE" to="csg2:4QZGLsLEOdM" resolve="CloudTransientModel" />
            </node>
            <node concept="2ShNRf" id="4_k_9wJjLzu" role="33vP2m">
              <node concept="1pGfFk" id="4_k_9wJjLzv" role="2ShVmc">
                <ref role="37wK5l" to="csg2:4QZGLsLEOdX" resolve="CloudTransientModel" />
                <node concept="1rXfSq" id="4_k_9wJjODV" role="37wK5m">
                  <ref role="37wK5l" node="4_k_9wJjh9T" resolve="getModule" />
                </node>
                <node concept="37vLTw" id="4_k_9wJjLzx" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJjJLR" resolve="name" />
                </node>
                <node concept="37vLTw" id="4_k_9wJjSit" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJjJLT" resolve="id" />
                </node>
                <node concept="37vLTw" id="4_k_9wJk0c4" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJjYHX" resolve="branch" />
                </node>
                <node concept="37vLTw" id="4_k_9wJk9h1" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJk8Hv" resolve="modelNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBkafS" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBkblu" role="3clFbG">
            <node concept="1rXfSq" id="4_k_9wJk9Q2" role="2Oq$k0">
              <ref role="37wK5l" node="4_k_9wJjh9T" resolve="getModule" />
            </node>
            <node concept="liA8E" id="EMWAvBkchh" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SModuleBase.registerModel(jetbrains.mps.extapi.model.SModelBase)" resolve="registerModel" />
              <node concept="37vLTw" id="4_k_9wJka4a" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJjLzt" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJjMOJ" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJjNZG" role="3cqZAk">
            <ref role="3cqZAo" node="4_k_9wJjLzt" resolve="model" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJjJM5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4_k_9wJm9Lz">
    <property role="TrG5h" value="_ProjectModulesSynchronizer" />
    <node concept="2tJIrI" id="4_k_9wJm9L$" role="jymVt" />
    <node concept="312cEg" id="4_k_9wJm9L_" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="4_k_9wJm9LA" role="1B3o_S" />
      <node concept="3uibUv" id="4_k_9wJmlfe" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9LC" role="jymVt" />
    <node concept="3Tm1VV" id="4_k_9wJm9LD" role="1B3o_S" />
    <node concept="3uibUv" id="4_k_9wJm9LE" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$ltW6S" resolve="_Synchronizer" />
      <node concept="3uibUv" id="4_k_9wJmdOF" role="11_B2D">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
    <node concept="3clFbW" id="4_k_9wJm9LG" role="jymVt">
      <node concept="3cqZAl" id="4_k_9wJm9LH" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJm9LI" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9LJ" role="3clF47">
        <node concept="XkiVB" id="4_k_9wJm9LK" role="3cqZAp">
          <ref role="37wK5l" node="7ZZZU$lwUCC" resolve="_Synchronizer" />
          <node concept="37vLTw" id="4_k_9wJm9LL" role="37wK5m">
            <ref role="3cqZAo" node="4_k_9wJm9LV" resolve="cloudParentId" />
          </node>
          <node concept="2OqwBi" id="4_k_9wJm9LM" role="37wK5m">
            <node concept="359W_D" id="4_k_9wJm9LN" role="2Oq$k0">
              <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
              <ref role="359W_F" to="jh6v:qmkA5fOski" resolve="models" />
            </node>
            <node concept="liA8E" id="4_k_9wJm9LO" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJm9LP" role="3cqZAp">
          <node concept="37vLTI" id="4_k_9wJm9LQ" role="3clFbG">
            <node concept="2OqwBi" id="4_k_9wJm9LR" role="37vLTJ">
              <node concept="Xjq3P" id="4_k_9wJm9LS" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_k_9wJm9LT" role="2OqNvi">
                <ref role="2Oxat5" node="4_k_9wJm9L_" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="4_k_9wJm9LU" role="37vLTx">
              <ref role="3cqZAo" node="4_k_9wJm9LX" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9LV" role="3clF46">
        <property role="TrG5h" value="cloudParentId" />
        <node concept="3cpWsb" id="4_k_9wJm9LW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_k_9wJm9LX" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4_k_9wJmn4K" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9LZ" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9M0" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="4_k_9wJmot0" role="3clF45">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3Tm1VV" id="4_k_9wJm9M2" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9M3" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJm9M4" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJm9M5" role="3clFbG">
            <ref role="3cqZAo" node="4_k_9wJm9L_" resolve="project" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9M6" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9M7" role="jymVt">
      <property role="TrG5h" value="getMPSChildren" />
      <node concept="A3Dl8" id="4_k_9wJm9M8" role="3clF45">
        <node concept="3uibUv" id="4_k_9wJmpbA" role="A3Ik2">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4_k_9wJm9Ma" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9Mb" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJm9Mc" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJm9Md" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJm9Me" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9L_" resolve="project" />
            </node>
            <node concept="liA8E" id="4_k_9wJmqkh" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJm9Mg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9Mh" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9Mi" role="jymVt">
      <property role="TrG5h" value="createMPSChild" />
      <node concept="37vLTG" id="4_k_9wJm9Mj" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4_k_9wJm9Mk" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9Ml" role="3clF46">
        <property role="TrG5h" value="cloudChildId" />
        <node concept="3cpWsb" id="4_k_9wJm9Mm" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJmqt1" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJm9Mo" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9Mp" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJm9Mq" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9Mr" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="4_k_9wJmE$P" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
            </node>
            <node concept="1rXfSq" id="4_k_9wJm9Mt" role="33vP2m">
              <ref role="37wK5l" node="4_k_9wJm9Pq" resolve="getModuleId" />
              <node concept="37vLTw" id="4_k_9wJm9Mu" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Mj" resolve="tree" />
              </node>
              <node concept="37vLTw" id="4_k_9wJm9Mv" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Ml" resolve="cloudChildId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_k_9wJm9Mw" role="3cqZAp">
          <node concept="3clFbS" id="4_k_9wJm9Mx" role="3clFbx">
            <node concept="3clFbF" id="4_k_9wJm9My" role="3cqZAp">
              <node concept="37vLTI" id="4_k_9wJm9Mz" role="3clFbG">
                <node concept="37vLTw" id="4_k_9wJm9M$" role="37vLTJ">
                  <ref role="3cqZAo" node="4_k_9wJm9Mr" resolve="id" />
                </node>
                <node concept="2YIFZM" id="4_k_9wJm9M_" role="37vLTx">
                  <ref role="1Pybhc" to="z1c4:~ModuleId" resolve="ModuleId" />
                  <ref role="37wK5l" to="z1c4:~ModuleId.foreign(java.lang.String)" resolve="foreign" />
                  <node concept="3cpWs3" id="4_k_9wJm9MA" role="37wK5m">
                    <node concept="37vLTw" id="4_k_9wJm9MB" role="3uHU7w">
                      <ref role="3cqZAo" node="4_k_9wJm9Ml" resolve="cloudChildId" />
                    </node>
                    <node concept="Xl_RD" id="4_k_9wJm9MC" role="3uHU7B">
                      <property role="Xl_RC" value="cloud-" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4_k_9wJm9MD" role="3clFbw">
            <node concept="10Nm6u" id="4_k_9wJm9ME" role="3uHU7w" />
            <node concept="37vLTw" id="4_k_9wJm9MF" role="3uHU7B">
              <ref role="3cqZAo" node="4_k_9wJm9Mr" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_k_9wJm9MG" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9MH" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="4_k_9wJm9MI" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJm9MJ" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJm9MK" role="2Oq$k0">
                <ref role="3cqZAo" node="4_k_9wJm9Mj" resolve="tree" />
              </node>
              <node concept="liA8E" id="4_k_9wJm9ML" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                <node concept="37vLTw" id="4_k_9wJm9MM" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJm9Ml" resolve="cloudChildId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJm9MN" role="37wK5m">
                  <node concept="355D3s" id="4_k_9wJm9MO" role="2Oq$k0">
                    <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                    <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJm9MP" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJm9MQ" role="3cqZAp">
          <node concept="1rXfSq" id="4_k_9wJm9MR" role="3cqZAk">
            <ref role="37wK5l" node="4_k_9wJm9MX" resolve="createModule" />
            <node concept="37vLTw" id="4_k_9wJm9MS" role="37wK5m">
              <ref role="3cqZAo" node="4_k_9wJm9MH" resolve="name" />
            </node>
            <node concept="37vLTw" id="4_k_9wJm9MT" role="37wK5m">
              <ref role="3cqZAo" node="4_k_9wJm9Mr" resolve="id" />
            </node>
            <node concept="37vLTw" id="4_k_9wJm9MU" role="37wK5m">
              <ref role="3cqZAo" node="4_k_9wJm9Ml" resolve="cloudChildId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJm9MV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9MW" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9MX" role="jymVt">
      <property role="TrG5h" value="createModule" />
      <node concept="37vLTG" id="4_k_9wJm9MY" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4_k_9wJm9MZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_k_9wJm9N0" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="4_k_9wJn7Fy" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9N2" role="3clF46">
        <property role="TrG5h" value="modelNodeId" />
        <node concept="3cpWsb" id="4_k_9wJm9N3" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJn3Ok" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJm9N5" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9N6" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJm9N7" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJn1gy" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJn1gz" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9L_" resolve="project" />
            </node>
            <node concept="AQDAd" id="4_k_9wJn1g$" role="2OqNvi">
              <ref role="37wK5l" to="csg2:lO9TSUC_oI" resolve="createModule" />
              <node concept="37vLTw" id="4_k_9wJn1g_" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9MY" resolve="name" />
              </node>
              <node concept="10QFUN" id="4_k_9wJn1gA" role="37wK5m">
                <node concept="37vLTw" id="4_k_9wJn1gB" role="10QFUP">
                  <ref role="3cqZAo" node="4_k_9wJm9N0" resolve="id" />
                </node>
                <node concept="3uibUv" id="4_k_9wJn1gC" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~ModuleId" resolve="ModuleId" />
                </node>
              </node>
              <node concept="Xjq3P" id="4_k_9wJn1gD" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9Nd" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9Ne" role="jymVt">
      <property role="TrG5h" value="removeMPSChild" />
      <node concept="37vLTG" id="4_k_9wJm9Nf" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="3uibUv" id="4_k_9wJn9jM" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="4_k_9wJm9Nh" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJm9Ni" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9Nj" role="3clF47">
        <node concept="3clFbF" id="4_k_9wJniHD" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJnkdP" role="3clFbG">
            <node concept="2ShNRf" id="4_k_9wJniH_" role="2Oq$k0">
              <node concept="1pGfFk" id="4_k_9wJnjvT" role="2ShVmc">
                <ref role="37wK5l" to="j8aq:~ModuleDeleteHelper.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ModuleDeleteHelper" />
                <node concept="37vLTw" id="4_k_9wJnjz0" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJm9L_" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4_k_9wJnkOj" role="2OqNvi">
              <ref role="37wK5l" to="j8aq:~ModuleDeleteHelper.deleteModules(java.util.List,boolean,boolean)" resolve="deleteModules" />
              <node concept="2YIFZM" id="4_k_9wJnluY" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="4_k_9wJnlAX" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJm9Nf" resolve="mpsChild" />
                </node>
              </node>
              <node concept="3clFbT" id="4_k_9wJnmjB" role="37wK5m" />
              <node concept="3clFbT" id="4_k_9wJnm$u" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7fzD_A4r1v9" role="3cqZAp">
          <node concept="2OqwBi" id="7fzD_A4r2m1" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJngQe" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9L_" resolve="project" />
            </node>
            <node concept="liA8E" id="7fzD_A4r3bO" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.removeModule(org.jetbrains.mps.openapi.module.SModule)" resolve="removeModule" />
              <node concept="37vLTw" id="4_k_9wJnhxO" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Nf" resolve="mpsChild" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJm9Nq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9Nr" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9Ns" role="jymVt">
      <property role="TrG5h" value="associate" />
      <node concept="37vLTG" id="4_k_9wJm9Nt" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4_k_9wJm9Nu" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9Nv" role="3clF46">
        <property role="TrG5h" value="cloudChildren" />
        <node concept="_YKpA" id="4_k_9wJm9Nw" role="1tU5fm">
          <node concept="3cpWsb" id="4_k_9wJm9Nx" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9Ny" role="3clF46">
        <property role="TrG5h" value="mpsChildren" />
        <node concept="_YKpA" id="4_k_9wJm9Nz" role="1tU5fm">
          <node concept="3uibUv" id="4_k_9wJnrmm" role="_ZDj9">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9N_" role="3clF46">
        <property role="TrG5h" value="direction" />
        <node concept="3uibUv" id="4_k_9wJm9NA" role="1tU5fm">
          <ref role="3uigEE" node="4_k_9wJhes5" resolve="SyncDirection" />
        </node>
      </node>
      <node concept="3rvAFt" id="4_k_9wJm9NB" role="3clF45">
        <node concept="3cpWsb" id="4_k_9wJm9NC" role="3rvQeY" />
        <node concept="3uibUv" id="4_k_9wJnqx3" role="3rvSg0">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4_k_9wJm9NE" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9NF" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJm9NG" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9NH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3rvAFt" id="4_k_9wJm9NI" role="1tU5fm">
              <node concept="3cpWsb" id="4_k_9wJm9NJ" role="3rvQeY" />
              <node concept="3uibUv" id="4_k_9wJnslg" role="3rvSg0">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_k_9wJm9NL" role="33vP2m">
              <node concept="3rGOSV" id="4_k_9wJm9NM" role="2ShVmc">
                <node concept="3cpWsb" id="4_k_9wJm9NN" role="3rHrn6" />
                <node concept="3uibUv" id="4_k_9wJntaQ" role="3rHtpV">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_k_9wJm9NP" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9NQ" role="3cpWs9">
            <property role="TrG5h" value="availableModules" />
            <node concept="_YKpA" id="4_k_9wJm9NR" role="1tU5fm">
              <node concept="3uibUv" id="4_k_9wJnvii" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4_k_9wJm9NT" role="33vP2m">
              <node concept="Tc6Ow" id="4_k_9wJm9NU" role="2ShVmc">
                <node concept="3uibUv" id="4_k_9wJntWw" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="37vLTw" id="4_k_9wJm9NW" role="I$8f6">
                  <ref role="3cqZAo" node="4_k_9wJm9Ny" resolve="mpsChildren" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJm9NX" role="3cqZAp" />
        <node concept="2Gpval" id="4_k_9wJm9NY" role="3cqZAp">
          <node concept="2GrKxI" id="4_k_9wJm9NZ" role="2Gsz3X">
            <property role="TrG5h" value="cloudModuleId" />
          </node>
          <node concept="37vLTw" id="4_k_9wJm9O0" role="2GsD0m">
            <ref role="3cqZAo" node="4_k_9wJm9Nv" resolve="cloudChildren" />
          </node>
          <node concept="3clFbS" id="4_k_9wJm9O1" role="2LFqv$">
            <node concept="3cpWs8" id="4_k_9wJm9O2" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJm9O3" role="3cpWs9">
                <property role="TrG5h" value="id" />
                <node concept="3uibUv" id="4_k_9wJnuIY" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
                </node>
                <node concept="1rXfSq" id="4_k_9wJm9O5" role="33vP2m">
                  <ref role="37wK5l" node="4_k_9wJm9Pq" resolve="getModuleId" />
                  <node concept="37vLTw" id="4_k_9wJm9O6" role="37wK5m">
                    <ref role="3cqZAo" node="4_k_9wJm9Nt" resolve="tree" />
                  </node>
                  <node concept="2GrUjf" id="4_k_9wJm9O7" role="37wK5m">
                    <ref role="2Gs0qQ" node="4_k_9wJm9NZ" resolve="cloudModuleId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_k_9wJm9O8" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJm9O9" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="4_k_9wJm9Oa" role="1tU5fm" />
                <node concept="2OqwBi" id="4_k_9wJm9Ob" role="33vP2m">
                  <node concept="37vLTw" id="4_k_9wJm9Oc" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJm9Nt" resolve="tree" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJm9Od" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                    <node concept="2GrUjf" id="4_k_9wJm9Oe" role="37wK5m">
                      <ref role="2Gs0qQ" node="4_k_9wJm9NZ" resolve="cloudModuleId" />
                    </node>
                    <node concept="2OqwBi" id="4_k_9wJm9Of" role="37wK5m">
                      <node concept="355D3s" id="4_k_9wJm9Og" role="2Oq$k0">
                        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                        <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                      </node>
                      <node concept="liA8E" id="4_k_9wJm9Oh" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4_k_9wJm9Oi" role="3cqZAp" />
            <node concept="3SKdUt" id="4_k_9wJm9Oj" role="3cqZAp">
              <node concept="1PaTwC" id="4_k_9wJm9Ok" role="1aUNEU">
                <node concept="3oM_SD" id="4_k_9wJm9Ol" role="1PaTwD">
                  <property role="3oM_SC" value="There" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Om" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9On" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Oo" role="1PaTwD">
                  <property role="3oM_SC" value="modules" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Op" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Oq" role="1PaTwD">
                  <property role="3oM_SC" value="duplicate" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Or" role="1PaTwD">
                  <property role="3oM_SC" value="names." />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Os" role="1PaTwD">
                  <property role="3oM_SC" value="That's" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Ot" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Ou" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Ov" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Ow" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Ox" role="1PaTwD">
                  <property role="3oM_SC" value="search" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Oy" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9Oz" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="4_k_9wJm9O$" role="1PaTwD">
                  <property role="3oM_SC" value="map." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_k_9wJm9O_" role="3cqZAp">
              <node concept="3cpWsn" id="4_k_9wJm9OA" role="3cpWs9">
                <property role="TrG5h" value="itr" />
                <node concept="2YL$Hu" id="4_k_9wJm9OB" role="1tU5fm">
                  <node concept="3uibUv" id="4_k_9wJnw9b" role="uOL27">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4_k_9wJm9OD" role="33vP2m">
                  <node concept="37vLTw" id="4_k_9wJm9OE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJm9NQ" resolve="availableModules" />
                  </node>
                  <node concept="uNJiE" id="4_k_9wJm9OF" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="4_k_9wJm9OG" role="3cqZAp">
              <node concept="3clFbS" id="4_k_9wJm9OH" role="2LFqv$">
                <node concept="3cpWs8" id="4_k_9wJm9OI" role="3cqZAp">
                  <node concept="3cpWsn" id="4_k_9wJm9OJ" role="3cpWs9">
                    <property role="TrG5h" value="it" />
                    <node concept="3uibUv" id="4_k_9wJnwDs" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="4_k_9wJm9OL" role="33vP2m">
                      <node concept="37vLTw" id="4_k_9wJm9OM" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_k_9wJm9OA" resolve="itr" />
                      </node>
                      <node concept="v1n4t" id="4_k_9wJm9ON" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4_k_9wJm9OO" role="3cqZAp">
                  <node concept="3clFbS" id="4_k_9wJm9OP" role="3clFbx">
                    <node concept="3clFbF" id="4_k_9wJm9OQ" role="3cqZAp">
                      <node concept="37vLTI" id="4_k_9wJm9OR" role="3clFbG">
                        <node concept="37vLTw" id="4_k_9wJm9OS" role="37vLTx">
                          <ref role="3cqZAo" node="4_k_9wJm9OJ" resolve="it" />
                        </node>
                        <node concept="3EllGN" id="4_k_9wJm9OT" role="37vLTJ">
                          <node concept="2GrUjf" id="4_k_9wJm9OU" role="3ElVtu">
                            <ref role="2Gs0qQ" node="4_k_9wJm9NZ" resolve="cloudModuleId" />
                          </node>
                          <node concept="37vLTw" id="4_k_9wJm9OV" role="3ElQJh">
                            <ref role="3cqZAo" node="4_k_9wJm9NH" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4_k_9wJm9OW" role="3cqZAp">
                      <node concept="2OqwBi" id="4_k_9wJm9OX" role="3clFbG">
                        <node concept="37vLTw" id="4_k_9wJm9OY" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_k_9wJm9OA" resolve="itr" />
                        </node>
                        <node concept="2YMH90" id="4_k_9wJm9OZ" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3zACq4" id="4_k_9wJm9P0" role="3cqZAp" />
                  </node>
                  <node concept="22lmx$" id="4_k_9wJm9P1" role="3clFbw">
                    <node concept="17R0WA" id="4_k_9wJm9P2" role="3uHU7w">
                      <node concept="37vLTw" id="4_k_9wJm9P3" role="3uHU7w">
                        <ref role="3cqZAo" node="4_k_9wJm9O9" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="4_k_9wJm9P5" role="3uHU7B">
                        <node concept="37vLTw" id="4_k_9wJm9P6" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_k_9wJm9OJ" resolve="it" />
                        </node>
                        <node concept="liA8E" id="4_k_9wJnxcn" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="4_k_9wJm9P9" role="3uHU7B">
                      <node concept="3y3z36" id="4_k_9wJm9Pa" role="3uHU7B">
                        <node concept="10Nm6u" id="4_k_9wJm9Pb" role="3uHU7w" />
                        <node concept="37vLTw" id="4_k_9wJm9Pc" role="3uHU7B">
                          <ref role="3cqZAo" node="4_k_9wJm9O3" resolve="id" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="4_k_9wJm9Pd" role="3uHU7w">
                        <node concept="2OqwBi" id="4_k_9wJm9Pe" role="3uHU7B">
                          <node concept="37vLTw" id="4_k_9wJm9Pf" role="2Oq$k0">
                            <ref role="3cqZAo" node="4_k_9wJm9OJ" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4_k_9wJnx9k" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4_k_9wJm9Ph" role="3uHU7w">
                          <ref role="3cqZAo" node="4_k_9wJm9O3" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJm9Pi" role="2$JKZa">
                <node concept="37vLTw" id="4_k_9wJm9Pj" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_k_9wJm9OA" resolve="itr" />
                </node>
                <node concept="v0PNk" id="4_k_9wJm9Pk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4_k_9wJm9Pl" role="3cqZAp" />
        <node concept="3cpWs6" id="4_k_9wJm9Pm" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJm9Pn" role="3cqZAk">
            <ref role="3cqZAo" node="4_k_9wJm9NH" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJm9Po" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9Pp" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9Pq" role="jymVt">
      <property role="TrG5h" value="getModuleId" />
      <node concept="37vLTG" id="4_k_9wJm9Pr" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4_k_9wJm9Ps" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9Pt" role="3clF46">
        <property role="TrG5h" value="cloudModuleId" />
        <node concept="3cpWsb" id="4_k_9wJm9Pu" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_k_9wJm$Xy" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
      </node>
      <node concept="3Tmbuc" id="4_k_9wJm9Pw" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9Px" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJm9Py" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9Pz" role="3cpWs9">
            <property role="TrG5h" value="serializedId" />
            <node concept="17QB3L" id="4_k_9wJm9P$" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJm9P_" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJm9PA" role="2Oq$k0">
                <ref role="3cqZAo" node="4_k_9wJm9Pr" resolve="tree" />
              </node>
              <node concept="liA8E" id="4_k_9wJm9PB" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                <node concept="37vLTw" id="4_k_9wJm9PC" role="37wK5m">
                  <ref role="3cqZAo" node="4_k_9wJm9Pt" resolve="cloudModuleId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJm9PD" role="37wK5m">
                  <node concept="355D3s" id="4_k_9wJm9PE" role="2Oq$k0">
                    <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="355D3u" to="jh6v:3Ezg1fME0bw" resolve="id" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJm9PF" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_k_9wJm9PG" role="3cqZAp">
          <node concept="3clFbS" id="4_k_9wJm9PH" role="3clFbx">
            <node concept="3cpWs6" id="4_k_9wJm9PI" role="3cqZAp">
              <node concept="10Nm6u" id="4_k_9wJm9PJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="4_k_9wJm9PK" role="3clFbw">
            <node concept="37vLTw" id="4_k_9wJm9PL" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9Pz" resolve="serializedId" />
            </node>
            <node concept="17RlXB" id="4_k_9wJm9PM" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJm9PN" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJm9PO" role="3cqZAk">
            <node concept="2YIFZM" id="4_k_9wJm9PP" role="2Oq$k0">
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4_k_9wJm9PQ" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleId(java.lang.String)" resolve="createModuleId" />
              <node concept="37vLTw" id="4_k_9wJm9PR" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Pz" resolve="serializedId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_k_9wJm9PS" role="jymVt" />
    <node concept="3clFb_" id="4_k_9wJm9PT" role="jymVt">
      <property role="TrG5h" value="createCloudChild" />
      <node concept="37vLTG" id="4_k_9wJm9PU" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="4_k_9wJm9PV" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="4_k_9wJm9PW" role="3clF46">
        <property role="TrG5h" value="mpsChild" />
        <node concept="3uibUv" id="4_k_9wJnps2" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cpWsb" id="4_k_9wJm9PY" role="3clF45" />
      <node concept="3Tm1VV" id="4_k_9wJm9PZ" role="1B3o_S" />
      <node concept="3clFbS" id="4_k_9wJm9Q0" role="3clF47">
        <node concept="3cpWs8" id="4_k_9wJm9Q1" role="3cqZAp">
          <node concept="3cpWsn" id="4_k_9wJm9Q2" role="3cpWs9">
            <property role="TrG5h" value="modelNodeId" />
            <node concept="3cpWsb" id="4_k_9wJm9Q3" role="1tU5fm" />
            <node concept="2OqwBi" id="4_k_9wJm9Q4" role="33vP2m">
              <node concept="37vLTw" id="4_k_9wJm9Q5" role="2Oq$k0">
                <ref role="3cqZAo" node="4_k_9wJm9PU" resolve="t" />
              </node>
              <node concept="liA8E" id="4_k_9wJm9Q6" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                <node concept="1rXfSq" id="4_k_9wJm9Q7" role="37wK5m">
                  <ref role="37wK5l" node="4_k_9wJkeD6" resolve="getCloudParentId" />
                </node>
                <node concept="2OqwBi" id="4_k_9wJm9Q8" role="37wK5m">
                  <node concept="359W_D" id="4_k_9wJm9Q9" role="2Oq$k0">
                    <ref role="359W_E" to="jh6v:3uw$nPCBu_p" resolve="Project" />
                    <ref role="359W_F" to="jh6v:3uw$nPCBuBy" resolve="modules" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJm9Qa" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="3cmrfG" id="4_k_9wJm9Qb" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="2YIFZM" id="4_k_9wJm9Qc" role="37wK5m">
                  <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                  <node concept="35c_gC" id="4_k_9wJm9Qd" role="37wK5m">
                    <ref role="35c_gD" to="jh6v:qmkA5fOskf" resolve="Module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJm9Qe" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJm9Qf" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJm9Qg" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9PU" resolve="t" />
            </node>
            <node concept="liA8E" id="4_k_9wJm9Qh" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="4_k_9wJm9Qi" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Q2" resolve="modelNodeId" />
              </node>
              <node concept="2OqwBi" id="4_k_9wJm9Qj" role="37wK5m">
                <node concept="355D3s" id="4_k_9wJm9Qk" role="2Oq$k0">
                  <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                  <ref role="355D3u" to="jh6v:3Ezg1fME0bw" resolve="id" />
                </node>
                <node concept="liA8E" id="4_k_9wJm9Ql" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJm9Qm" role="37wK5m">
                <node concept="2OqwBi" id="4_k_9wJm9Qn" role="2Oq$k0">
                  <node concept="37vLTw" id="4_k_9wJm9Qo" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_k_9wJm9PW" resolve="mpsChild" />
                  </node>
                  <node concept="liA8E" id="4_k_9wJnpYd" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
                <node concept="liA8E" id="4_k_9wJm9Qq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_k_9wJm9Qr" role="3cqZAp">
          <node concept="2OqwBi" id="4_k_9wJm9Qs" role="3clFbG">
            <node concept="37vLTw" id="4_k_9wJm9Qt" role="2Oq$k0">
              <ref role="3cqZAo" node="4_k_9wJm9PU" resolve="t" />
            </node>
            <node concept="liA8E" id="4_k_9wJm9Qu" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="4_k_9wJm9Qv" role="37wK5m">
                <ref role="3cqZAo" node="4_k_9wJm9Q2" resolve="modelNodeId" />
              </node>
              <node concept="2OqwBi" id="4_k_9wJm9Qw" role="37wK5m">
                <node concept="355D3s" id="4_k_9wJm9Qx" role="2Oq$k0">
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                  <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                </node>
                <node concept="liA8E" id="4_k_9wJm9Qy" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="4_k_9wJm9Q$" role="37wK5m">
                <node concept="37vLTw" id="4_k_9wJm9Q_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_k_9wJm9PW" resolve="mpsChild" />
                </node>
                <node concept="liA8E" id="4_k_9wJnq0S" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4_k_9wJm9QC" role="3cqZAp">
          <node concept="37vLTw" id="4_k_9wJm9QD" role="3cqZAk">
            <ref role="3cqZAo" node="4_k_9wJm9Q2" resolve="modelNodeId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_k_9wJm9QE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="4_k_9wJhes5">
    <property role="TrG5h" value="SyncDirection" />
    <node concept="QsSxf" id="4_k_9wJhfRm" role="Qtgdg">
      <property role="TrG5h" value="TO_MPS" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4_k_9wJhglC" role="Qtgdg">
      <property role="TrG5h" value="TO_CLOUD" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="4_k_9wJhes6" role="1B3o_S" />
  </node>
</model>

