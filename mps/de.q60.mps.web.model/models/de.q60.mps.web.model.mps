<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:88aa2c17-3990-45f2-9b79-06884112d260(de.q60.mps.web.model)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="jon5" ref="r:49169b91-8585-49ee-98e0-962a243b40d4(de.q60.mps.web.model.lazy)" />
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="6shs" ref="r:3ca2f5b1-1b25-441b-b059-2ddba424a0b1(de.q60.mps.web.model.persistent)" />
    <import index="ydze" ref="r:c65aa0cf-b22b-4cca-bd88-3210b1c2f55f(de.q60.mps.web.model.operations)" />
    <import index="5ka6" ref="ecfb9949-7433-4db5-85de-0f84d172e4ce/java:gnu.trove.map.hash(de.q60.mps.libs/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="e8no" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.containers(MPS.IDEA/)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="3HP615" id="2$MJqfiZrgX">
    <property role="TrG5h" value="IKeyListener" />
    <node concept="3clFb_" id="2$MJqfiZriG" role="jymVt">
      <property role="TrG5h" value="changed" />
      <node concept="37vLTG" id="2$MJqfiZrkl" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="2$MJqfiZsSh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2$MJqfiZrp3" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2$MJqfiZsSH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2$MJqfiZriI" role="3clF45" />
      <node concept="3Tm1VV" id="2$MJqfiZriJ" role="1B3o_S" />
      <node concept="3clFbS" id="2$MJqfiZriK" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="2$MJqfiZrgY" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1SVbIFIiXye">
    <property role="TrG5h" value="IKeyValueStore" />
    <node concept="3clFb_" id="1SVbIFIiXyE" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="1SVbIFIiX$K" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="1SVbIFIiX_7" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1SVbIFIiX$u" role="3clF45" />
      <node concept="3Tm1VV" id="1SVbIFIiXyH" role="1B3o_S" />
      <node concept="3clFbS" id="1SVbIFIiXyI" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1SVbIFIiX_K" role="jymVt">
      <property role="TrG5h" value="put" />
      <node concept="37vLTG" id="1SVbIFIiX_L" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="1SVbIFIiX_M" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1SVbIFIiXCg" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1SVbIFIiXCR" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1SVbIFIiXBK" role="3clF45" />
      <node concept="3Tm1VV" id="1SVbIFIiX_O" role="1B3o_S" />
      <node concept="3clFbS" id="1SVbIFIiX_P" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5nE7Pe9dLXy" role="jymVt" />
    <node concept="3clFb_" id="68JFWayaRX7" role="jymVt">
      <property role="TrG5h" value="listen" />
      <node concept="37vLTG" id="68JFWaybdro" role="3clF46">
        <property role="TrG5h" value="key" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="68JFWaybeZ4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="68JFWaybvg_" role="3clF46">
        <property role="TrG5h" value="listener" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2$MJqfiZrw9" role="1tU5fm">
          <ref role="3uigEE" node="2$MJqfiZrgX" resolve="IKeyListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="68JFWayaRX9" role="3clF45" />
      <node concept="3Tm1VV" id="68JFWayaRXa" role="1B3o_S" />
      <node concept="3clFbS" id="68JFWayaRXb" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1UedZiFomxu" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="1UedZiFomxv" role="3clF46">
        <property role="TrG5h" value="key" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="1UedZiFomxw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1UedZiFomxx" role="3clF46">
        <property role="TrG5h" value="listener" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1UedZiFomxy" role="1tU5fm">
          <ref role="3uigEE" node="2$MJqfiZrgX" resolve="IKeyListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="1UedZiFomxz" role="3clF45" />
      <node concept="3Tm1VV" id="1UedZiFomx$" role="1B3o_S" />
      <node concept="3clFbS" id="1UedZiFomx_" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1SVbIFIiXyf" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="51I69Mo8WTU">
    <property role="TrG5h" value="VersionMerger" />
    <node concept="2tJIrI" id="51I69Mo8WUS" role="jymVt" />
    <node concept="312cEg" id="51I69Mo9$RN" role="jymVt">
      <property role="TrG5h" value="mergeLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="51I69Mo9$RO" role="1B3o_S" />
      <node concept="3uibUv" id="51I69Mo9$WY" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="51I69Mo9AJE" role="33vP2m">
        <node concept="1pGfFk" id="51I69Mo9_d8" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51I69MoaWOE" role="jymVt" />
    <node concept="312cEg" id="51I69MoaX6I" role="jymVt">
      <property role="TrG5h" value="storeCache" />
      <node concept="3Tm6S6" id="51I69MoaX6J" role="1B3o_S" />
      <node concept="3uibUv" id="51I69MoaY2D" role="1tU5fm">
        <ref role="3uigEE" to="jon5:4_P7CAmwzDr" resolve="IDeserializingKeyValueStore" />
      </node>
    </node>
    <node concept="312cEg" id="51I69MochqK" role="jymVt">
      <property role="TrG5h" value="idGenerator" />
      <node concept="3Tm6S6" id="51I69MochqL" role="1B3o_S" />
      <node concept="3uibUv" id="51I69MochWv" role="1tU5fm">
        <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
      </node>
    </node>
    <node concept="2tJIrI" id="51I69Mo8XdA" role="jymVt" />
    <node concept="3clFbW" id="51I69Mopel7" role="jymVt">
      <node concept="3cqZAl" id="51I69Mopel8" role="3clF45" />
      <node concept="3Tm1VV" id="51I69Mopel9" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Mopelb" role="3clF47">
        <node concept="3clFbF" id="51I69Mopelr" role="3cqZAp">
          <node concept="37vLTI" id="51I69Mopelt" role="3clFbG">
            <node concept="2OqwBi" id="51I69Mopelx" role="37vLTJ">
              <node concept="Xjq3P" id="51I69Mopely" role="2Oq$k0" />
              <node concept="2OwXpG" id="51I69Mopelz" role="2OqNvi">
                <ref role="2Oxat5" node="51I69MoaX6I" resolve="storeCache" />
              </node>
            </node>
            <node concept="37vLTw" id="51I69Mopel$" role="37vLTx">
              <ref role="3cqZAo" node="51I69Mopelq" resolve="storeCache" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="51I69Mopelf" role="3cqZAp">
          <node concept="37vLTI" id="51I69Mopelh" role="3clFbG">
            <node concept="2OqwBi" id="51I69Mopell" role="37vLTJ">
              <node concept="Xjq3P" id="51I69Mopelm" role="2Oq$k0" />
              <node concept="2OwXpG" id="51I69Mopeln" role="2OqNvi">
                <ref role="2Oxat5" node="51I69MochqK" resolve="idGenerator" />
              </node>
            </node>
            <node concept="37vLTw" id="51I69Mopelo" role="37vLTx">
              <ref role="3cqZAo" node="51I69Mopele" resolve="idGenerator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="51I69Mopelq" role="3clF46">
        <property role="TrG5h" value="storeCache" />
        <node concept="3uibUv" id="51I69Mopelp" role="1tU5fm">
          <ref role="3uigEE" to="jon5:4_P7CAmwzDr" resolve="IDeserializingKeyValueStore" />
        </node>
      </node>
      <node concept="37vLTG" id="51I69Mopele" role="3clF46">
        <property role="TrG5h" value="idGenerator" />
        <node concept="3uibUv" id="51I69Mopeld" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wu1c06ReCT" role="jymVt" />
    <node concept="3clFb_" id="51I69Mo9$19" role="jymVt">
      <property role="TrG5h" value="mergeChange" />
      <node concept="37vLTG" id="Onv88ZSQvZ" role="3clF46">
        <property role="TrG5h" value="lastMergedVersion" />
        <node concept="3uibUv" id="Onv88ZSRAU" role="1tU5fm">
          <ref role="3uigEE" to="jon5:2D0HTQhahjL" resolve="CLVersion" />
        </node>
      </node>
      <node concept="37vLTG" id="51I69Mo9$64" role="3clF46">
        <property role="TrG5h" value="newVersion" />
        <node concept="3uibUv" id="LXqpntZM5K" role="1tU5fm">
          <ref role="3uigEE" to="jon5:2D0HTQhahjL" resolve="CLVersion" />
        </node>
        <node concept="2AHcQZ" id="5PN764YAyOJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="LXqpntZOQC" role="3clF45">
        <ref role="3uigEE" to="jon5:2D0HTQhahjL" resolve="CLVersion" />
      </node>
      <node concept="3Tm1VV" id="51I69Mo9$1c" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Mo9$1d" role="3clF47">
        <node concept="1HWtB8" id="51I69Mo9CaI" role="3cqZAp">
          <node concept="37vLTw" id="51I69Mo9CmV" role="1HWFw0">
            <ref role="3cqZAo" node="51I69Mo9$RN" resolve="mergeLock" />
          </node>
          <node concept="3clFbS" id="51I69Mo9CaK" role="1HWHxc">
            <node concept="3clFbJ" id="5PN764YB0Vh" role="3cqZAp">
              <node concept="3clFbS" id="5PN764YB0Vj" role="3clFbx">
                <node concept="3clFbF" id="5PN764YB3Tf" role="3cqZAp">
                  <node concept="37vLTI" id="5PN764YB4iI" role="3clFbG">
                    <node concept="37vLTw" id="5PN764YB4vG" role="37vLTx">
                      <ref role="3cqZAo" node="51I69Mo9$64" resolve="newVersion" />
                    </node>
                    <node concept="37vLTw" id="5PN764YB3Td" role="37vLTJ">
                      <ref role="3cqZAo" node="Onv88ZSQvZ" resolve="lastMergedVersion" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5PN764YB4P3" role="3cqZAp">
                  <node concept="37vLTw" id="5PN764YB52j" role="3cqZAk">
                    <ref role="3cqZAo" node="51I69Mo9$64" resolve="newVersion" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5PN764YB3oW" role="3clFbw">
                <node concept="37vLTw" id="5PN764YB2xo" role="3uHU7B">
                  <ref role="3cqZAo" node="Onv88ZSQvZ" resolve="lastMergedVersion" />
                </node>
                <node concept="10Nm6u" id="5PN764YB38e" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="5PN764YB6tF" role="9aQIa">
                <node concept="3clFbS" id="5PN764YB6tG" role="9aQI4">
                  <node concept="3clFbJ" id="51I69Movht1" role="3cqZAp">
                    <node concept="3clFbS" id="51I69Movht3" role="3clFbx">
                      <node concept="3cpWs6" id="51I69MovnJs" role="3cqZAp">
                        <node concept="37vLTw" id="51I69Movo7H" role="3cqZAk">
                          <ref role="3cqZAo" node="Onv88ZSQvZ" resolve="lastMergedVersion" />
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="51I69MovkEh" role="3clFbw">
                      <node concept="2OqwBi" id="5PN764YAZe1" role="3uHU7w">
                        <node concept="37vLTw" id="51I69MovlaF" role="2Oq$k0">
                          <ref role="3cqZAo" node="Onv88ZSQvZ" resolve="lastMergedVersion" />
                        </node>
                        <node concept="liA8E" id="51I69Movnx8" role="2OqNvi">
                          <ref role="37wK5l" to="jon5:2D0HTQhaui_" resolve="getHash" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="51I69MovjSG" role="3uHU7B">
                        <node concept="37vLTw" id="51I69MoviD3" role="2Oq$k0">
                          <ref role="3cqZAo" node="51I69Mo9$64" resolve="newVersion" />
                        </node>
                        <node concept="liA8E" id="51I69Movkjp" role="2OqNvi">
                          <ref role="37wK5l" to="jon5:2D0HTQhaui_" resolve="getHash" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="51I69Mooptz" role="3cqZAp">
                    <node concept="3cpWsn" id="51I69Moopt$" role="3cpWs9">
                      <property role="TrG5h" value="merged" />
                      <node concept="3uibUv" id="LXqpnu02ag" role="1tU5fm">
                        <ref role="3uigEE" to="jon5:2D0HTQhahjL" resolve="CLVersion" />
                      </node>
                      <node concept="2ShNRf" id="LXqpntZTLd" role="33vP2m">
                        <node concept="1pGfFk" id="LXqpntZW80" role="2ShVmc">
                          <ref role="37wK5l" to="jon5:2D0HTQharc9" resolve="CLVersion" />
                          <node concept="1rXfSq" id="51I69Moopt_" role="37wK5m">
                            <ref role="37wK5l" node="51I69Mobump" resolve="mergeHistory" />
                            <node concept="2OqwBi" id="51I69MooptA" role="37wK5m">
                              <node concept="37vLTw" id="51I69MooptB" role="2Oq$k0">
                                <ref role="3cqZAo" node="Onv88ZSQvZ" resolve="lastMergedVersion" />
                              </node>
                              <node concept="liA8E" id="51I69MooptC" role="2OqNvi">
                                <ref role="37wK5l" to="jon5:2D0HTQhaui_" resolve="getHash" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="51I69MooptD" role="37wK5m">
                              <node concept="37vLTw" id="51I69MooptE" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69Mo9$64" resolve="newVersion" />
                              </node>
                              <node concept="liA8E" id="51I69MooptF" role="2OqNvi">
                                <ref role="37wK5l" to="jon5:2D0HTQhaui_" resolve="getHash" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="LXqpnu00TG" role="37wK5m">
                            <ref role="3cqZAo" node="51I69MoaX6I" resolve="storeCache" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="51I69MooYia" role="3cqZAp">
                    <node concept="37vLTw" id="51I69MooYwK" role="3cqZAk">
                      <ref role="3cqZAo" node="51I69Moopt$" resolve="merged" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5PN764YCVfZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="51I69Mobu0D" role="jymVt" />
    <node concept="3clFb_" id="51I69Mobump" role="jymVt">
      <property role="TrG5h" value="mergeHistory" />
      <node concept="37vLTG" id="51I69Mobx9u" role="3clF46">
        <property role="TrG5h" value="leftVersionHash" />
        <node concept="17QB3L" id="51I69Mobyh2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="51I69Mobxwu" role="3clF46">
        <property role="TrG5h" value="rightVersionHash" />
        <node concept="17QB3L" id="51I69MobxJD" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="51I69MoofbE" role="3clF45">
        <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
      </node>
      <node concept="3Tmbuc" id="51I69MooZvA" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Mobumt" role="3clF47">
        <node concept="3cpWs8" id="51I69Mob$6R" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Mob$6S" role="3cpWs9">
            <property role="TrG5h" value="commonBase" />
            <node concept="17QB3L" id="51I69Mob$6N" role="1tU5fm" />
            <node concept="1rXfSq" id="51I69Mob$6T" role="33vP2m">
              <ref role="37wK5l" node="51I69Moa0GU" resolve="commonBaseVersion" />
              <node concept="37vLTw" id="51I69Mob$6U" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mobx9u" resolve="leftVersionHash" />
              </node>
              <node concept="37vLTw" id="51I69Mob$6V" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mobxwu" resolve="rightVersionHash" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51I69MokJJi" role="3cqZAp" />
        <node concept="3cpWs8" id="51I69Moc7oZ" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Moc7p0" role="3cpWs9">
            <property role="TrG5h" value="leftHistory" />
            <node concept="_YKpA" id="51I69Moc7oT" role="1tU5fm">
              <node concept="3uibUv" id="51I69Moc7oW" role="_ZDj9">
                <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
              </node>
            </node>
            <node concept="1rXfSq" id="51I69Moc7p1" role="33vP2m">
              <ref role="37wK5l" node="51I69Mob$Kp" resolve="getHistory" />
              <node concept="37vLTw" id="51I69Moc7p2" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mobx9u" resolve="leftVersionHash" />
              </node>
              <node concept="37vLTw" id="51I69Moc8AB" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mob$6S" resolve="commonBase" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51I69Moc7DY" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Moc7DZ" role="3cpWs9">
            <property role="TrG5h" value="rightHistory" />
            <node concept="_YKpA" id="51I69Moc7E0" role="1tU5fm">
              <node concept="3uibUv" id="51I69Moc7E1" role="_ZDj9">
                <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
              </node>
            </node>
            <node concept="1rXfSq" id="51I69Moc7E2" role="33vP2m">
              <ref role="37wK5l" node="51I69Mob$Kp" resolve="getHistory" />
              <node concept="37vLTw" id="51I69Moc80L" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mobxwu" resolve="rightVersionHash" />
              </node>
              <node concept="37vLTw" id="51I69Moc93Q" role="37wK5m">
                <ref role="3cqZAo" node="51I69Mob$6S" resolve="commonBase" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51I69MokVOP" role="3cqZAp">
          <node concept="3cpWsn" id="51I69MokVOQ" role="3cpWs9">
            <property role="TrG5h" value="mergedVersion" />
            <node concept="3uibUv" id="51I69MokVOR" role="1tU5fm">
              <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
            </node>
            <node concept="10Nm6u" id="51I69MokXwe" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="51I69MokOwz" role="3cqZAp" />
        <node concept="3cpWs8" id="5PN764YCodb" role="3cqZAp">
          <node concept="3cpWsn" id="5PN764YCodc" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="5PN764YCpmI" role="1tU5fm">
              <ref role="3uigEE" to="jon5:1SVbIFIiXt2" resolve="CLTree" />
            </node>
            <node concept="10QFUN" id="5PN764YCq5L" role="33vP2m">
              <node concept="1rXfSq" id="5PN764YCq5I" role="10QFUP">
                <ref role="37wK5l" node="51I69Mocd4o" resolve="getTree" />
                <node concept="1rXfSq" id="5PN764YCq5J" role="37wK5m">
                  <ref role="37wK5l" node="51I69Moag7L" resolve="getVersion" />
                  <node concept="37vLTw" id="5PN764YCq5K" role="37wK5m">
                    <ref role="3cqZAo" node="51I69Mob$6S" resolve="commonBase" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="5PN764YCq5H" role="10QFUM">
                <ref role="3uigEE" to="jon5:1SVbIFIiXt2" resolve="CLTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5PN764YCs0A" role="3cqZAp">
          <node concept="3clFbS" id="5PN764YCs0C" role="3clFbx">
            <node concept="3clFbF" id="5PN764YCuUC" role="3cqZAp">
              <node concept="37vLTI" id="5PN764YCvjh" role="3clFbG">
                <node concept="2ShNRf" id="5PN764YCvI6" role="37vLTx">
                  <node concept="1pGfFk" id="5PN764YCvy9" role="2ShVmc">
                    <ref role="37wK5l" to="jon5:ifAKfhOLqs" resolve="CLTree" />
                    <node concept="37vLTw" id="5PN764YCw7y" role="37wK5m">
                      <ref role="3cqZAo" node="51I69MoaX6I" resolve="storeCache" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5PN764YCuUA" role="37vLTJ">
                  <ref role="3cqZAo" node="5PN764YCodc" resolve="tree" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5PN764YCtWl" role="3clFbw">
            <node concept="10Nm6u" id="5PN764YCuIg" role="3uHU7w" />
            <node concept="37vLTw" id="5PN764YCt8F" role="3uHU7B">
              <ref role="3cqZAo" node="5PN764YCodc" resolve="tree" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51I69Mocb4r" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Mocb4s" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="51I69Mocb4t" role="1tU5fm">
              <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
            </node>
            <node concept="2ShNRf" id="51I69Mocb_9" role="33vP2m">
              <node concept="1pGfFk" id="51I69Moccji" role="2ShVmc">
                <ref role="37wK5l" to="3hky:1CWZn1pMM04" resolve="PBranch" />
                <node concept="37vLTw" id="5PN764YCodg" role="37wK5m">
                  <ref role="3cqZAo" node="5PN764YCodc" resolve="tree" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="51I69Mocn5O" role="3cqZAp">
          <node concept="2OqwBi" id="51I69MocnKA" role="3clFbG">
            <node concept="37vLTw" id="51I69Mocn5M" role="2Oq$k0">
              <ref role="3cqZAo" node="51I69Mocb4s" resolve="branch" />
            </node>
            <node concept="liA8E" id="51I69Mocr6E" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0jWS" resolve="runWrite" />
              <node concept="1bVj0M" id="51I69Mocrw7" role="37wK5m">
                <node concept="3clFbS" id="51I69Mocrw8" role="1bW5cS">
                  <node concept="3cpWs8" id="51I69Mocslg" role="3cqZAp">
                    <node concept="3cpWsn" id="51I69Mocslh" role="3cpWs9">
                      <property role="TrG5h" value="t" />
                      <node concept="3uibUv" id="51I69Mocsl5" role="1tU5fm">
                        <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
                      </node>
                      <node concept="2OqwBi" id="51I69Mocsli" role="33vP2m">
                        <node concept="37vLTw" id="51I69Mocslj" role="2Oq$k0">
                          <ref role="3cqZAo" node="51I69Mocb4s" resolve="branch" />
                        </node>
                        <node concept="liA8E" id="51I69Mocslk" role="2OqNvi">
                          <ref role="37wK5l" to="3hky:4_SQzDOeg8s" resolve="getWriteTransaction" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="51I69Mocstl" role="3cqZAp" />
                  <node concept="3cpWs8" id="63wwZGi_pXr" role="3cqZAp">
                    <node concept="3cpWsn" id="63wwZGi_pXs" role="3cpWs9">
                      <property role="TrG5h" value="leftAppliedOps" />
                      <node concept="_YKpA" id="63wwZGi_pXt" role="1tU5fm">
                        <node concept="3uibUv" id="63wwZGi_LBw" role="_ZDj9">
                          <ref role="3uigEE" to="ydze:1U0efzLyBFX" resolve="IAppliedOperation" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="63wwZGi_pXv" role="33vP2m">
                        <node concept="Tc6Ow" id="63wwZGi_pXw" role="2ShVmc">
                          <node concept="3uibUv" id="63wwZGi_NZq" role="HW$YZ">
                            <ref role="3uigEE" to="ydze:1U0efzLyBFX" resolve="IAppliedOperation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="63wwZGi_ueF" role="3cqZAp">
                    <node concept="3cpWsn" id="63wwZGi_ueG" role="3cpWs9">
                      <property role="TrG5h" value="rightAppliedOps" />
                      <node concept="_YKpA" id="63wwZGi_ueH" role="1tU5fm">
                        <node concept="3uibUv" id="63wwZGi_MlQ" role="_ZDj9">
                          <ref role="3uigEE" to="ydze:1U0efzLyBFX" resolve="IAppliedOperation" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="63wwZGi_ueJ" role="33vP2m">
                        <node concept="Tc6Ow" id="63wwZGi_ueK" role="2ShVmc">
                          <node concept="3uibUv" id="63wwZGi_Opi" role="HW$YZ">
                            <ref role="3uigEE" to="ydze:1U0efzLyBFX" resolve="IAppliedOperation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="51I69MocSv$" role="3cqZAp">
                    <node concept="3clFbS" id="51I69MocSvA" role="2LFqv$">
                      <node concept="3cpWs8" id="51I69MocNXO" role="3cqZAp">
                        <node concept="3cpWsn" id="51I69MocNXP" role="3cpWs9">
                          <property role="TrG5h" value="useLeft" />
                          <node concept="10P_77" id="51I69MocNXs" role="1tU5fm" />
                          <node concept="22lmx$" id="51I69ModuN6" role="33vP2m">
                            <node concept="2OqwBi" id="51I69ModwOv" role="3uHU7B">
                              <node concept="37vLTw" id="51I69Modvzf" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69Moc7DZ" resolve="rightHistory" />
                              </node>
                              <node concept="1v1jN8" id="51I69Mod_ud" role="2OqNvi" />
                            </node>
                            <node concept="1Wc70l" id="51I69Modo2V" role="3uHU7w">
                              <node concept="2OqwBi" id="51I69ModpLn" role="3uHU7B">
                                <node concept="37vLTw" id="51I69ModoCi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="51I69Moc7p0" resolve="leftHistory" />
                                </node>
                                <node concept="3GX2aA" id="51I69Moduhj" role="2OqNvi" />
                              </node>
                              <node concept="3eOVzh" id="51I69MocNXQ" role="3uHU7w">
                                <node concept="2OqwBi" id="51I69MocNXR" role="3uHU7w">
                                  <node concept="2OqwBi" id="51I69MocNXS" role="2Oq$k0">
                                    <node concept="37vLTw" id="51I69MocNXT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="51I69Moc7DZ" resolve="rightHistory" />
                                    </node>
                                    <node concept="1yVyf7" id="51I69MocNXU" role="2OqNvi" />
                                  </node>
                                  <node concept="2OwXpG" id="51I69MocNXV" role="2OqNvi">
                                    <ref role="2Oxat5" to="6shs:51I69Mo9Ss5" resolve="id" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="51I69MocNXW" role="3uHU7B">
                                  <node concept="2OqwBi" id="51I69MocNXX" role="2Oq$k0">
                                    <node concept="37vLTw" id="51I69MocNXY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="51I69Moc7p0" resolve="leftHistory" />
                                    </node>
                                    <node concept="1yVyf7" id="51I69MocNXZ" role="2OqNvi" />
                                  </node>
                                  <node concept="2OwXpG" id="51I69MocNY0" role="2OqNvi">
                                    <ref role="2Oxat5" to="6shs:51I69Mo9Ss5" resolve="id" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="51I69Modanj" role="3cqZAp">
                        <node concept="3cpWsn" id="51I69Modank" role="3cpWs9">
                          <property role="TrG5h" value="versionToApply" />
                          <node concept="3uibUv" id="51I69Modanl" role="1tU5fm">
                            <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
                          </node>
                          <node concept="3K4zz7" id="51I69ModbTD" role="33vP2m">
                            <node concept="2OqwBi" id="51I69Moddey" role="3K4E3e">
                              <node concept="37vLTw" id="51I69ModclH" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69Moc7p0" resolve="leftHistory" />
                              </node>
                              <node concept="2Kt5_m" id="51I69ModhuM" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="51I69Modjlt" role="3K4GZi">
                              <node concept="37vLTw" id="51I69Modi3T" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69Moc7DZ" resolve="rightHistory" />
                              </node>
                              <node concept="2Kt5_m" id="51I69ModnCo" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="51I69Modbhx" role="3K4Cdx">
                              <ref role="3cqZAo" node="51I69MocNXP" resolve="useLeft" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="63wwZGiBjAD" role="3cqZAp">
                        <node concept="3cpWsn" id="63wwZGiBjAE" role="3cpWs9">
                          <property role="TrG5h" value="oppositeAppliedOps" />
                          <node concept="A3Dl8" id="63wwZGiBj_5" role="1tU5fm">
                            <node concept="3uibUv" id="63wwZGiBj_8" role="A3Ik2">
                              <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="63wwZGiBjAF" role="33vP2m">
                            <node concept="1eOMI4" id="63wwZGiBjAG" role="2Oq$k0">
                              <node concept="3K4zz7" id="63wwZGiBjAH" role="1eOMHV">
                                <node concept="37vLTw" id="63wwZGiBjAI" role="3K4E3e">
                                  <ref role="3cqZAo" node="63wwZGi_ueG" resolve="rightAppliedOps" />
                                </node>
                                <node concept="37vLTw" id="63wwZGiBjAJ" role="3K4GZi">
                                  <ref role="3cqZAo" node="63wwZGi_pXs" resolve="leftAppliedOps" />
                                </node>
                                <node concept="37vLTw" id="63wwZGiBjAK" role="3K4Cdx">
                                  <ref role="3cqZAo" node="51I69MocNXP" resolve="useLeft" />
                                </node>
                              </node>
                            </node>
                            <node concept="3$u5V9" id="63wwZGiBjAL" role="2OqNvi">
                              <node concept="1bVj0M" id="63wwZGiBjAM" role="23t8la">
                                <node concept="3clFbS" id="63wwZGiBjAN" role="1bW5cS">
                                  <node concept="3clFbF" id="63wwZGiBjAO" role="3cqZAp">
                                    <node concept="2OqwBi" id="63wwZGiBjAP" role="3clFbG">
                                      <node concept="37vLTw" id="63wwZGiBjAQ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="63wwZGiBjAS" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="63wwZGiBjAR" role="2OqNvi">
                                        <ref role="37wK5l" to="ydze:1U0efzLyRfF" resolve="getOriginalOp" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="63wwZGiBjAS" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="63wwZGiBjAT" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="51I69MojC2f" role="3cqZAp">
                        <node concept="3cpWsn" id="51I69MojC2g" role="3cpWs9">
                          <property role="TrG5h" value="operationsToApply" />
                          <node concept="_YKpA" id="51I69MojC1m" role="1tU5fm">
                            <node concept="3uibUv" id="51I69MojC1p" role="_ZDj9">
                              <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="51I69MojC2h" role="33vP2m">
                            <node concept="2OqwBi" id="51I69MojC2i" role="2Oq$k0">
                              <node concept="2OqwBi" id="51I69MojC2j" role="2Oq$k0">
                                <node concept="2OqwBi" id="51I69MojC2k" role="2Oq$k0">
                                  <node concept="37vLTw" id="51I69MojC2l" role="2Oq$k0">
                                    <ref role="3cqZAo" node="51I69Modank" resolve="versionToApply" />
                                  </node>
                                  <node concept="2OwXpG" id="51I69MojC2m" role="2OqNvi">
                                    <ref role="2Oxat5" to="6shs:plPun8k$z_" resolve="operations" />
                                  </node>
                                </node>
                                <node concept="39bAoz" id="51I69MojC2n" role="2OqNvi" />
                              </node>
                              <node concept="3$u5V9" id="51I69MojC2o" role="2OqNvi">
                                <node concept="1bVj0M" id="51I69MojC2p" role="23t8la">
                                  <node concept="3clFbS" id="51I69MojC2q" role="1bW5cS">
                                    <node concept="3clFbF" id="51I69MojC2r" role="3cqZAp">
                                      <node concept="1rXfSq" id="51I69MojC2s" role="3clFbG">
                                        <ref role="37wK5l" node="51I69MogEcI" resolve="transformOperation" />
                                        <node concept="37vLTw" id="51I69MojC2t" role="37wK5m">
                                          <ref role="3cqZAo" node="51I69MojC2v" resolve="it" />
                                        </node>
                                        <node concept="37vLTw" id="63wwZGiBndc" role="37wK5m">
                                          <ref role="3cqZAo" node="63wwZGiBjAE" resolve="oppositeAppliedOps" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="51I69MojC2v" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="51I69MojC2w" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="51I69MojC2x" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="51I69MojPS5" role="3cqZAp">
                        <node concept="2GrKxI" id="51I69MojPS7" role="2Gsz3X">
                          <property role="TrG5h" value="op" />
                        </node>
                        <node concept="37vLTw" id="51I69MojQV8" role="2GsD0m">
                          <ref role="3cqZAo" node="51I69MojC2g" resolve="operationsToApply" />
                        </node>
                        <node concept="3clFbS" id="51I69MojPSb" role="2LFqv$">
                          <node concept="3cpWs8" id="63wwZGi_PjL" role="3cqZAp">
                            <node concept="3cpWsn" id="63wwZGi_PjM" role="3cpWs9">
                              <property role="TrG5h" value="appliedOp" />
                              <node concept="3uibUv" id="63wwZGi_PhR" role="1tU5fm">
                                <ref role="3uigEE" to="ydze:1U0efzLyBFX" resolve="IAppliedOperation" />
                              </node>
                              <node concept="2OqwBi" id="63wwZGi_PjN" role="33vP2m">
                                <node concept="2GrUjf" id="63wwZGi_PjO" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="51I69MojPS7" resolve="op" />
                                </node>
                                <node concept="liA8E" id="63wwZGi_PjP" role="2OqNvi">
                                  <ref role="37wK5l" to="ydze:1U0efzLyR7X" resolve="apply" />
                                  <node concept="37vLTw" id="63wwZGi_PjQ" role="37wK5m">
                                    <ref role="3cqZAo" node="51I69Mocslh" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="63wwZGi_QSp" role="3cqZAp">
                            <node concept="3clFbS" id="63wwZGi_QSr" role="3clFbx">
                              <node concept="3clFbF" id="63wwZGi_Sm9" role="3cqZAp">
                                <node concept="2OqwBi" id="63wwZGi_TwM" role="3clFbG">
                                  <node concept="37vLTw" id="63wwZGi_Sm7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="63wwZGi_pXs" resolve="leftAppliedOps" />
                                  </node>
                                  <node concept="TSZUe" id="63wwZGi_Wi_" role="2OqNvi">
                                    <node concept="37vLTw" id="63wwZGiA32a" role="25WWJ7">
                                      <ref role="3cqZAo" node="63wwZGi_PjM" resolve="appliedOp" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="63wwZGi_RBn" role="3clFbw">
                              <ref role="3cqZAo" node="51I69MocNXP" resolve="useLeft" />
                            </node>
                            <node concept="9aQIb" id="63wwZGi_Xsr" role="9aQIa">
                              <node concept="3clFbS" id="63wwZGi_Xss" role="9aQI4">
                                <node concept="3clFbF" id="63wwZGi_Ycs" role="3cqZAp">
                                  <node concept="2OqwBi" id="63wwZGi_Zoy" role="3clFbG">
                                    <node concept="37vLTw" id="63wwZGi_Ycr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="63wwZGi_ueG" resolve="rightAppliedOps" />
                                    </node>
                                    <node concept="TSZUe" id="63wwZGiA2dU" role="2OqNvi">
                                      <node concept="37vLTw" id="63wwZGiA3NH" role="25WWJ7">
                                        <ref role="3cqZAo" node="63wwZGi_PjM" resolve="appliedOp" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="51I69MokXzO" role="3cqZAp" />
                      <node concept="3clFbF" id="51I69Mol1dY" role="3cqZAp">
                        <node concept="37vLTI" id="51I69Mol1R2" role="3clFbG">
                          <node concept="2ShNRf" id="51I69Mol2B8" role="37vLTx">
                            <node concept="1pGfFk" id="51I69Mol2qH" role="2ShVmc">
                              <ref role="37wK5l" to="6shs:68rqGk3eY2" resolve="CPVersion" />
                              <node concept="2OqwBi" id="51I69Mol4JJ" role="37wK5m">
                                <node concept="37vLTw" id="51I69Mol3_c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="51I69Modank" resolve="versionToApply" />
                                </node>
                                <node concept="2OwXpG" id="51I69MolDw$" role="2OqNvi">
                                  <ref role="2Oxat5" to="6shs:51I69Mo9Ss5" resolve="id" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="51I69MolF23" role="37wK5m">
                                <node concept="37vLTw" id="51I69MolEsR" role="2Oq$k0">
                                  <ref role="3cqZAo" node="51I69Modank" resolve="versionToApply" />
                                </node>
                                <node concept="2OwXpG" id="51I69MomgeV" role="2OqNvi">
                                  <ref role="2Oxat5" to="6shs:68rqGk3bzy" resolve="time" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="51I69MomhVH" role="37wK5m">
                                <node concept="37vLTw" id="51I69MomhlJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="51I69Modank" resolve="versionToApply" />
                                </node>
                                <node concept="2OwXpG" id="51I69MomRC0" role="2OqNvi">
                                  <ref role="2Oxat5" to="6shs:68rqGk3c$r" resolve="author" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="51I69MomZCh" role="37wK5m">
                                <node concept="1eOMI4" id="51I69MomYZw" role="2Oq$k0">
                                  <node concept="10QFUN" id="51I69MomXRi" role="1eOMHV">
                                    <node concept="2OqwBi" id="51I69MomXRf" role="10QFUP">
                                      <node concept="37vLTw" id="51I69MomXRg" role="2Oq$k0">
                                        <ref role="3cqZAo" node="51I69Mocslh" resolve="t" />
                                      </node>
                                      <node concept="liA8E" id="51I69MomXRh" role="2OqNvi">
                                        <ref role="37wK5l" to="3hky:4_SQzDOqQAG" resolve="getTree" />
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="51I69MomYzU" role="10QFUM">
                                      <ref role="3uigEE" to="jon5:1SVbIFIiXt2" resolve="CLTree" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="51I69Mon0xh" role="2OqNvi">
                                  <ref role="37wK5l" to="jon5:4_P7CAmtU8w" resolve="getHash" />
                                </node>
                              </node>
                              <node concept="3K4zz7" id="51I69Mon3yc" role="37wK5m">
                                <node concept="2OqwBi" id="51I69Mon63V" role="3K4E3e">
                                  <node concept="37vLTw" id="51I69Mon4Wp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                                  </node>
                                  <node concept="liA8E" id="51I69Mon76Z" role="2OqNvi">
                                    <ref role="37wK5l" to="6shs:4_P7CAmtU8w" resolve="getHash" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="51I69Mon8Mc" role="3K4GZi">
                                  <node concept="37vLTw" id="51I69Mon7WS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="51I69Modank" resolve="versionToApply" />
                                  </node>
                                  <node concept="2OwXpG" id="51I69Mon9bX" role="2OqNvi">
                                    <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                                  </node>
                                </node>
                                <node concept="3y3z36" id="51I69Mon470" role="3K4Cdx">
                                  <node concept="37vLTw" id="51I69Mon1G5" role="3uHU7B">
                                    <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                                  </node>
                                  <node concept="10Nm6u" id="51I69Mon2YA" role="3uHU7w" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="51I69MonbV6" role="37wK5m">
                                <node concept="37vLTw" id="51I69MonaCA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="51I69MojC2g" resolve="operationsToApply" />
                                </node>
                                <node concept="3_kTaI" id="51I69MoodJv" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="51I69Mol1dW" role="37vLTJ">
                            <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5PN764YEXpI" role="3cqZAp">
                        <node concept="2OqwBi" id="5PN764YEYi3" role="3clFbG">
                          <node concept="37vLTw" id="5PN764YEXpG" role="2Oq$k0">
                            <ref role="3cqZAo" node="51I69MoaX6I" resolve="storeCache" />
                          </node>
                          <node concept="liA8E" id="5PN764YEYZU" role="2OqNvi">
                            <ref role="37wK5l" to="jon5:4_P7CAmwzU1" resolve="put" />
                            <node concept="2OqwBi" id="5PN764YF2Ze" role="37wK5m">
                              <node concept="37vLTw" id="5PN764YEZNN" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                              </node>
                              <node concept="liA8E" id="5PN764YF3Tj" role="2OqNvi">
                                <ref role="37wK5l" to="6shs:4_P7CAmtU8w" resolve="getHash" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5PN764YF1Ry" role="37wK5m">
                              <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                            </node>
                            <node concept="2OqwBi" id="5PN764YF6jw" role="37wK5m">
                              <node concept="37vLTw" id="5PN764YF5qv" role="2Oq$k0">
                                <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
                              </node>
                              <node concept="liA8E" id="5PN764YF7dI" role="2OqNvi">
                                <ref role="37wK5l" to="6shs:68rqGk2XgH" resolve="serialize" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="51I69Mod7vF" role="2$JKZa">
                      <node concept="2OqwBi" id="51I69MocTVW" role="3uHU7B">
                        <node concept="37vLTw" id="51I69MocSVK" role="2Oq$k0">
                          <ref role="3cqZAo" node="51I69Moc7p0" resolve="leftHistory" />
                        </node>
                        <node concept="3GX2aA" id="51I69MocYcl" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="51I69Mod3ko" role="3uHU7w">
                        <node concept="37vLTw" id="51I69Mod2kb" role="2Oq$k0">
                          <ref role="3cqZAo" node="51I69Moc7DZ" resolve="rightHistory" />
                        </node>
                        <node concept="3GX2aA" id="51I69Mod7sa" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PN764YCZK_" role="3cqZAp" />
        <node concept="3clFbJ" id="5PN764YDaQn" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="5PN764YDaQp" role="3clFbx">
            <node concept="YS8fn" id="5PN764YDeD2" role="3cqZAp">
              <node concept="2ShNRf" id="5PN764YDePm" role="YScLw">
                <node concept="1pGfFk" id="5PN764YDyGg" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="5PN764YD_nR" role="37wK5m">
                    <node concept="37vLTw" id="5PN764YDA23" role="3uHU7w">
                      <ref role="3cqZAo" node="51I69Mobxwu" resolve="rightVersionHash" />
                    </node>
                    <node concept="3cpWs3" id="5PN764YD$t9" role="3uHU7B">
                      <node concept="3cpWs3" id="5PN764YDzjU" role="3uHU7B">
                        <node concept="Xl_RD" id="5PN764YDyTQ" role="3uHU7B">
                          <property role="Xl_RC" value="Failed to merge " />
                        </node>
                        <node concept="37vLTw" id="5PN764YDzHS" role="3uHU7w">
                          <ref role="3cqZAo" node="51I69Mobx9u" resolve="leftVersionHash" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5PN764YD$D8" role="3uHU7w">
                        <property role="Xl_RC" value=" and " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5PN764YDdjf" role="3clFbw">
            <node concept="10Nm6u" id="5PN764YDenx" role="3uHU7w" />
            <node concept="37vLTw" id="5PN764YDcyC" role="3uHU7B">
              <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51I69Mocmwr" role="3cqZAp" />
        <node concept="3cpWs6" id="51I69Moc9n2" role="3cqZAp">
          <node concept="37vLTw" id="51I69MoogDZ" role="3cqZAk">
            <ref role="3cqZAo" node="51I69MokVOQ" resolve="mergedVersion" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5PN764YCX49" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="51I69MogDc0" role="jymVt" />
    <node concept="3clFb_" id="51I69MogEcI" role="jymVt">
      <property role="TrG5h" value="transformOperation" />
      <node concept="37vLTG" id="51I69MogI5_" role="3clF46">
        <property role="TrG5h" value="opToTransform" />
        <node concept="3uibUv" id="51I69MogJ58" role="1tU5fm">
          <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="51I69MogJMc" role="3clF46">
        <property role="TrG5h" value="previousOps" />
        <node concept="A3Dl8" id="51I69MogKDm" role="1tU5fm">
          <node concept="3uibUv" id="51I69MogKVN" role="A3Ik2">
            <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="51I69MogMPc" role="3clF45">
        <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tmbuc" id="51I69Mop0uS" role="1B3o_S" />
      <node concept="3clFbS" id="51I69MogEcM" role="3clF47">
        <node concept="3cpWs8" id="51I69MogMwJ" role="3cqZAp">
          <node concept="3cpWsn" id="51I69MogMwK" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="51I69MogMwL" role="1tU5fm">
              <ref role="3uigEE" to="ydze:1U0efzLyBFz" resolve="IOperation" />
            </node>
            <node concept="37vLTw" id="51I69MogO0K" role="33vP2m">
              <ref role="3cqZAo" node="51I69MogI5_" resolve="opToTransform" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="51I69MogO_q" role="3cqZAp">
          <node concept="2GrKxI" id="51I69MogO_s" role="2Gsz3X">
            <property role="TrG5h" value="previous" />
          </node>
          <node concept="37vLTw" id="51I69MogOZI" role="2GsD0m">
            <ref role="3cqZAo" node="51I69MogJMc" resolve="previousOps" />
          </node>
          <node concept="3clFbS" id="51I69MogO_w" role="2LFqv$">
            <node concept="3clFbF" id="51I69MogPM9" role="3cqZAp">
              <node concept="37vLTI" id="51I69MogQsx" role="3clFbG">
                <node concept="2OqwBi" id="51I69MogQVd" role="37vLTx">
                  <node concept="37vLTw" id="51I69MogQDd" role="2Oq$k0">
                    <ref role="3cqZAo" node="51I69MogMwK" resolve="result" />
                  </node>
                  <node concept="liA8E" id="51I69MogRrY" role="2OqNvi">
                    <ref role="37wK5l" to="ydze:1U0efzLyRc6" resolve="transform" />
                    <node concept="2GrUjf" id="51I69MogRPB" role="37wK5m">
                      <ref role="2Gs0qQ" node="51I69MogO_s" resolve="previous" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="51I69MogPM8" role="37vLTJ">
                  <ref role="3cqZAo" node="51I69MogMwK" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="51I69MogPos" role="3cqZAp">
          <node concept="37vLTw" id="51I69MogP_4" role="3cqZAk">
            <ref role="3cqZAo" node="51I69MogMwK" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51I69Moa0xw" role="jymVt" />
    <node concept="3clFb_" id="51I69Mob$Kp" role="jymVt">
      <property role="TrG5h" value="getHistory" />
      <node concept="37vLTG" id="51I69MobBfz" role="3clF46">
        <property role="TrG5h" value="fromVersion" />
        <node concept="17QB3L" id="51I69MobB$2" role="1tU5fm" />
        <node concept="2AHcQZ" id="51I69MobIbg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="51I69MobBTt" role="3clF46">
        <property role="TrG5h" value="toVersionExclusive" />
        <node concept="17QB3L" id="51I69MobCea" role="1tU5fm" />
        <node concept="2AHcQZ" id="51I69MobIlA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="_YKpA" id="51I69MobANE" role="3clF45">
        <node concept="3uibUv" id="51I69MobBbS" role="_ZDj9">
          <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
        </node>
      </node>
      <node concept="3Tmbuc" id="51I69Mop1Iw" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Mob$Kt" role="3clF47">
        <node concept="3cpWs8" id="51I69MobCM7" role="3cqZAp">
          <node concept="3cpWsn" id="51I69MobCMa" role="3cpWs9">
            <property role="TrG5h" value="history" />
            <node concept="_YKpA" id="51I69MobCM5" role="1tU5fm">
              <node concept="3uibUv" id="51I69MobCUi" role="_ZDj9">
                <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
              </node>
            </node>
            <node concept="2ShNRf" id="51I69MobDr5" role="33vP2m">
              <node concept="Tc6Ow" id="51I69MobDeh" role="2ShVmc">
                <node concept="3uibUv" id="51I69MobDei" role="HW$YZ">
                  <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51I69MobOAi" role="3cqZAp">
          <node concept="3clFbS" id="51I69MobOAk" role="3clFbx">
            <node concept="3cpWs6" id="51I69MobQmO" role="3cqZAp">
              <node concept="37vLTw" id="51I69MobQzr" role="3cqZAk">
                <ref role="3cqZAo" node="51I69MobCMa" resolve="history" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="51I69MobPCo" role="3clFbw">
            <node concept="37vLTw" id="51I69MobQ5I" role="3uHU7w">
              <ref role="3cqZAo" node="51I69MobBTt" resolve="toVersionExclusive" />
            </node>
            <node concept="37vLTw" id="51I69MobP22" role="3uHU7B">
              <ref role="3cqZAo" node="51I69MobBfz" resolve="fromVersion" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51I69MobDXs" role="3cqZAp">
          <node concept="3cpWsn" id="51I69MobDXt" role="3cpWs9">
            <property role="TrG5h" value="version" />
            <node concept="3uibUv" id="51I69MobDXu" role="1tU5fm">
              <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
            </node>
            <node concept="1rXfSq" id="51I69MobEsg" role="33vP2m">
              <ref role="37wK5l" node="51I69Moag7L" resolve="getVersion" />
              <node concept="37vLTw" id="51I69MobEUq" role="37wK5m">
                <ref role="3cqZAo" node="51I69MobBfz" resolve="fromVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="51I69MobFdE" role="3cqZAp">
          <node concept="3clFbS" id="51I69MobFdG" role="2LFqv$">
            <node concept="3clFbJ" id="5PN764YBVxc" role="3cqZAp">
              <node concept="3clFbS" id="5PN764YBVxe" role="3clFbx">
                <node concept="3zACq4" id="5PN764YBWDW" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="5PN764YBWf3" role="3clFbw">
                <node concept="10Nm6u" id="5PN764YBWto" role="3uHU7w" />
                <node concept="37vLTw" id="5PN764YBVVx" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51I69MobJui" role="3cqZAp">
              <node concept="2OqwBi" id="51I69MobKly" role="3clFbG">
                <node concept="37vLTw" id="51I69MobJuh" role="2Oq$k0">
                  <ref role="3cqZAo" node="51I69MobCMa" resolve="history" />
                </node>
                <node concept="TSZUe" id="51I69MobMML" role="2OqNvi">
                  <node concept="37vLTw" id="51I69MobN2b" role="25WWJ7">
                    <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51I69MobYZi" role="3cqZAp">
              <node concept="3clFbS" id="51I69MobYZk" role="3clFbx">
                <node concept="3zACq4" id="51I69Moc5vn" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="51I69Moc1QQ" role="3clFbw">
                <node concept="10Nm6u" id="51I69Moc2dR" role="3uHU7w" />
                <node concept="2OqwBi" id="51I69MobZP8" role="3uHU7B">
                  <node concept="37vLTw" id="51I69MobZx9" role="2Oq$k0">
                    <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                  </node>
                  <node concept="2OwXpG" id="51I69Moc0HO" role="2OqNvi">
                    <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51I69MobRlj" role="3cqZAp">
              <node concept="3clFbS" id="51I69MobRll" role="3clFbx">
                <node concept="3zACq4" id="51I69Moc61n" role="3cqZAp" />
              </node>
              <node concept="17R0WA" id="51I69MobTLY" role="3clFbw">
                <node concept="37vLTw" id="51I69MobUcP" role="3uHU7w">
                  <ref role="3cqZAo" node="51I69MobBTt" resolve="toVersionExclusive" />
                </node>
                <node concept="2OqwBi" id="51I69MobRPc" role="3uHU7B">
                  <node concept="37vLTw" id="51I69MobRy5" role="2Oq$k0">
                    <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                  </node>
                  <node concept="2OwXpG" id="51I69MobSHK" role="2OqNvi">
                    <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51I69MobVPH" role="3cqZAp">
              <node concept="37vLTI" id="51I69MobWsc" role="3clFbG">
                <node concept="1rXfSq" id="51I69MobWRf" role="37vLTx">
                  <ref role="37wK5l" node="51I69Moag7L" resolve="getVersion" />
                  <node concept="2OqwBi" id="51I69MobXuT" role="37wK5m">
                    <node concept="37vLTw" id="51I69MobXb8" role="2Oq$k0">
                      <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                    </node>
                    <node concept="2OwXpG" id="51I69MobYpH" role="2OqNvi">
                      <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="51I69MobVPF" role="37vLTJ">
                  <ref role="3cqZAo" node="51I69MobDXt" resolve="version" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="51I69MobJgH" role="2$JKZa">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3cpWs6" id="51I69Moc4d$" role="3cqZAp">
          <node concept="37vLTw" id="51I69Moc4WQ" role="3cqZAk">
            <ref role="3cqZAo" node="51I69MobCMa" resolve="history" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="51I69MokLZM" role="lGtFl">
        <node concept="TZ5HA" id="51I69MokLZN" role="TZ5H$">
          <node concept="1dT_AC" id="51I69MokLZO" role="1dT_Ay" />
        </node>
        <node concept="TUZQ0" id="51I69MokLZP" role="3nqlJM">
          <property role="TUZQ4" value="The newest version" />
          <node concept="zr_55" id="51I69MokLZR" role="zr_5Q">
            <ref role="zr_51" node="51I69MobBfz" resolve="fromVersion" />
          </node>
        </node>
        <node concept="TUZQ0" id="51I69MokLZS" role="3nqlJM">
          <property role="TUZQ4" value="The oldest version" />
          <node concept="zr_55" id="51I69MokLZU" role="zr_5Q">
            <ref role="zr_51" node="51I69MobBTt" resolve="toVersionExclusive" />
          </node>
        </node>
        <node concept="x79VA" id="51I69MokLZV" role="3nqlJM">
          <property role="x79VB" value="Newest version first" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51I69Mob$om" role="jymVt" />
    <node concept="3clFb_" id="51I69Moa0GU" role="jymVt">
      <property role="TrG5h" value="commonBaseVersion" />
      <node concept="37vLTG" id="51I69Moa1EF" role="3clF46">
        <property role="TrG5h" value="leftHash" />
        <node concept="17QB3L" id="51I69MoagTY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="51I69Moa1Ug" role="3clF46">
        <property role="TrG5h" value="rightHash" />
        <node concept="17QB3L" id="51I69Moahy_" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="51I69Moajj6" role="3clF45" />
      <node concept="3Tmbuc" id="51I69Mop2Ao" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Moa0GY" role="3clF47">
        <node concept="3clFbH" id="51I69Moa1pG" role="3cqZAp" />
        <node concept="3cpWs8" id="51I69Moa1_U" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Moa1_X" role="3cpWs9">
            <property role="TrG5h" value="leftVersions" />
            <node concept="2hMVRd" id="51I69Moa1_Q" role="1tU5fm">
              <node concept="17QB3L" id="51I69Moa1Ef" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="51I69Moa2$j" role="33vP2m">
              <node concept="2i4dXS" id="51I69Moa2ol" role="2ShVmc">
                <node concept="17QB3L" id="51I69Moa2om" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51I69Moa33u" role="3cqZAp">
          <node concept="3cpWsn" id="51I69Moa33v" role="3cpWs9">
            <property role="TrG5h" value="rightVersions" />
            <node concept="2hMVRd" id="51I69Moa33w" role="1tU5fm">
              <node concept="17QB3L" id="51I69Moa33x" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="51I69Moa33y" role="33vP2m">
              <node concept="2i4dXS" id="51I69Moa33z" role="2ShVmc">
                <node concept="17QB3L" id="51I69Moa33$" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51I69Moa2_5" role="3cqZAp" />
        <node concept="2$JKZl" id="51I69Moa3sz" role="3cqZAp">
          <node concept="3clFbS" id="51I69Moa3s_" role="2LFqv$">
            <node concept="3clFbJ" id="51I69Moa$OX" role="3cqZAp">
              <node concept="3clFbS" id="51I69Moa$OZ" role="3clFbx">
                <node concept="3clFbF" id="51I69Moa5yP" role="3cqZAp">
                  <node concept="2OqwBi" id="51I69Moa6pl" role="3clFbG">
                    <node concept="37vLTw" id="51I69Moa5yN" role="2Oq$k0">
                      <ref role="3cqZAo" node="51I69Moa1_X" resolve="leftVersions" />
                    </node>
                    <node concept="TSZUe" id="51I69Moa8Pa" role="2OqNvi">
                      <node concept="37vLTw" id="51I69Moa9lx" role="25WWJ7">
                        <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaAcI" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaAoR" role="3uHU7w" />
                <node concept="37vLTw" id="51I69Moa_CP" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51I69MoaC2Q" role="3cqZAp">
              <node concept="3clFbS" id="51I69MoaC2S" role="3clFbx">
                <node concept="3clFbF" id="51I69Moa9V5" role="3cqZAp">
                  <node concept="2OqwBi" id="51I69Moa9V6" role="3clFbG">
                    <node concept="37vLTw" id="51I69MoaaAh" role="2Oq$k0">
                      <ref role="3cqZAo" node="51I69Moa33v" resolve="rightVersions" />
                    </node>
                    <node concept="TSZUe" id="51I69Moa9V8" role="2OqNvi">
                      <node concept="37vLTw" id="51I69Moab6X" role="25WWJ7">
                        <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaDCu" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaDR9" role="3uHU7w" />
                <node concept="37vLTw" id="51I69MoaD4_" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="51I69Moarxn" role="3cqZAp" />
            <node concept="3clFbJ" id="51I69MoaFef" role="3cqZAp">
              <node concept="3clFbS" id="51I69MoaFeh" role="3clFbx">
                <node concept="3clFbJ" id="51I69Moabn0" role="3cqZAp">
                  <node concept="3clFbS" id="51I69Moabn2" role="3clFbx">
                    <node concept="3cpWs6" id="51I69Moak3Q" role="3cqZAp">
                      <node concept="37vLTw" id="51I69Moak3S" role="3cqZAk">
                        <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="51I69MoadpM" role="3clFbw">
                    <node concept="37vLTw" id="51I69MoacyY" role="2Oq$k0">
                      <ref role="3cqZAo" node="51I69Moa33v" resolve="rightVersions" />
                    </node>
                    <node concept="3JPx81" id="51I69MoafOz" role="2OqNvi">
                      <node concept="37vLTw" id="51I69Moabzp" role="25WWJ7">
                        <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaG_p" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaGO4" role="3uHU7w" />
                <node concept="37vLTw" id="51I69MoaG0G" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51I69MoaIWe" role="3cqZAp">
              <node concept="3clFbS" id="51I69MoaIWg" role="3clFbx">
                <node concept="3clFbJ" id="51I69MoakEP" role="3cqZAp">
                  <node concept="3clFbS" id="51I69MoakER" role="3clFbx">
                    <node concept="3cpWs6" id="51I69Moap9l" role="3cqZAp">
                      <node concept="37vLTw" id="51I69MoapGu" role="3cqZAk">
                        <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="51I69Moam54" role="3clFbw">
                    <node concept="37vLTw" id="51I69MoaldP" role="2Oq$k0">
                      <ref role="3cqZAo" node="51I69Moa1_X" resolve="leftVersions" />
                    </node>
                    <node concept="3JPx81" id="51I69Moaow9" role="2OqNvi">
                      <node concept="37vLTw" id="51I69MoaoTU" role="25WWJ7">
                        <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaKke" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaKyT" role="3uHU7w" />
                <node concept="37vLTw" id="51I69MoaJKl" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="51I69MoabaF" role="3cqZAp" />
            <node concept="3clFbJ" id="51I69MoaMw4" role="3cqZAp">
              <node concept="3clFbS" id="51I69MoaMw6" role="3clFbx">
                <node concept="3clFbF" id="51I69MoaqCm" role="3cqZAp">
                  <node concept="37vLTI" id="51I69MoasDV" role="3clFbG">
                    <node concept="2EnYce" id="5PN764YBzid" role="37vLTx">
                      <node concept="1rXfSq" id="51I69Moat8f" role="2Oq$k0">
                        <ref role="37wK5l" node="51I69Moag7L" resolve="getVersion" />
                        <node concept="37vLTw" id="51I69MoavxM" role="37wK5m">
                          <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="51I69MoavTi" role="2OqNvi">
                        <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="51I69MoaqCk" role="37vLTJ">
                      <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaNRV" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaO6A" role="3uHU7w" />
                <node concept="37vLTw" id="51I69MoaNk2" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="51I69MoaPvO" role="3cqZAp">
              <node concept="3clFbS" id="51I69MoaPvQ" role="3clFbx">
                <node concept="3clFbF" id="51I69MoawI9" role="3cqZAp">
                  <node concept="37vLTI" id="51I69MoaxAo" role="3clFbG">
                    <node concept="2EnYce" id="5PN764YBzZB" role="37vLTx">
                      <node concept="1rXfSq" id="51I69Moay0O" role="2Oq$k0">
                        <ref role="37wK5l" node="51I69Moag7L" resolve="getVersion" />
                        <node concept="37vLTw" id="51I69Moayxn" role="37wK5m">
                          <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="51I69Moazk9" role="2OqNvi">
                        <ref role="2Oxat5" to="6shs:68rqGk3ewl" resolve="previousVersion" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="51I69MoawI7" role="37vLTJ">
                      <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="51I69MoaQDY" role="3clFbw">
                <node concept="10Nm6u" id="51I69MoaQSD" role="3uHU7w" />
                <node concept="37vLTw" id="51I69MoaQ65" role="3uHU7B">
                  <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="51I69MoaTjj" role="2$JKZa">
            <node concept="3y3z36" id="51I69MoaSvv" role="3uHU7B">
              <node concept="37vLTw" id="51I69MoaRL5" role="3uHU7B">
                <ref role="3cqZAo" node="51I69Moa1EF" resolve="leftHash" />
              </node>
              <node concept="10Nm6u" id="51I69MoaT6F" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="51I69MoaW7L" role="3uHU7w">
              <node concept="10Nm6u" id="51I69MoaWmJ" role="3uHU7w" />
              <node concept="37vLTw" id="51I69MoaUkB" role="3uHU7B">
                <ref role="3cqZAo" node="51I69Moa1Ug" resolve="rightHash" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51I69Moa3aI" role="3cqZAp" />
        <node concept="3cpWs6" id="51I69Moa2Lt" role="3cqZAp">
          <node concept="10Nm6u" id="51I69Moa2Y0" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51I69MoafTP" role="jymVt" />
    <node concept="3clFb_" id="51I69Moag7L" role="jymVt">
      <property role="TrG5h" value="getVersion" />
      <node concept="37vLTG" id="51I69MoagCE" role="3clF46">
        <property role="TrG5h" value="hash" />
        <node concept="17QB3L" id="51I69MoagMd" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="51I69MoagyN" role="3clF45">
        <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
      </node>
      <node concept="3Tm6S6" id="51I69Mob2XZ" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Moag7P" role="3clF47">
        <node concept="3clFbJ" id="51I69MobFu_" role="3cqZAp">
          <node concept="3clFbS" id="51I69MobFuB" role="3clFbx">
            <node concept="3cpWs6" id="51I69MobGIS" role="3cqZAp">
              <node concept="10Nm6u" id="51I69MobGVt" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="51I69MobG5W" role="3clFbw">
            <node concept="10Nm6u" id="51I69MobGyg" role="3uHU7w" />
            <node concept="37vLTw" id="51I69MobFI2" role="3uHU7B">
              <ref role="3cqZAo" node="51I69MoagCE" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="51I69MoaYAR" role="3cqZAp">
          <node concept="2OqwBi" id="51I69MoaYVC" role="3clFbG">
            <node concept="37vLTw" id="51I69MoaYAQ" role="2Oq$k0">
              <ref role="3cqZAo" node="51I69MoaX6I" resolve="storeCache" />
            </node>
            <node concept="liA8E" id="51I69Mob0HY" role="2OqNvi">
              <ref role="37wK5l" to="jon5:4_P7CAmwzTl" resolve="get" />
              <node concept="37vLTw" id="51I69Mob1nh" role="37wK5m">
                <ref role="3cqZAo" node="51I69MoagCE" resolve="hash" />
              </node>
              <node concept="1bVj0M" id="51I69Mob1Ql" role="37wK5m">
                <node concept="37vLTG" id="51I69Mob1Sx" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="51I69Mob24x" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="51I69Mob1Qn" role="1bW5cS">
                  <node concept="3clFbF" id="51I69Mob2_C" role="3cqZAp">
                    <node concept="2YIFZM" id="51I69Mob2DP" role="3clFbG">
                      <ref role="37wK5l" to="6shs:68rqGk2XfV" resolve="deserialize" />
                      <ref role="1Pybhc" to="6shs:68rqGk2XfT" resolve="CPVersion" />
                      <node concept="37vLTw" id="51I69Mob2V3" role="37wK5m">
                        <ref role="3cqZAo" node="51I69Mob1Sx" resolve="s" />
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
    <node concept="2tJIrI" id="51I69Moccy9" role="jymVt" />
    <node concept="3clFb_" id="51I69Mocd4o" role="jymVt">
      <property role="TrG5h" value="getTree" />
      <node concept="37vLTG" id="51I69MoceEp" role="3clF46">
        <property role="TrG5h" value="version" />
        <node concept="3uibUv" id="51I69Mocf69" role="1tU5fm">
          <ref role="3uigEE" to="6shs:68rqGk2XfT" resolve="CPVersion" />
        </node>
      </node>
      <node concept="3uibUv" id="51I69Mocemd" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOqQ5x" resolve="ITree" />
      </node>
      <node concept="3Tmbuc" id="51I69Mop4m6" role="1B3o_S" />
      <node concept="3clFbS" id="51I69Mocd4s" role="3clF47">
        <node concept="3clFbJ" id="5PN764YClJg" role="3cqZAp">
          <node concept="3clFbS" id="5PN764YClJi" role="3clFbx">
            <node concept="3cpWs6" id="5PN764YCmYs" role="3cqZAp">
              <node concept="10Nm6u" id="5PN764YCnbn" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5PN764YCmrb" role="3clFbw">
            <node concept="10Nm6u" id="5PN764YCmIc" role="3uHU7w" />
            <node concept="37vLTw" id="5PN764YClZG" role="3uHU7B">
              <ref role="3cqZAo" node="51I69MoceEp" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="51I69Mocfx4" role="3cqZAp">
          <node concept="2ShNRf" id="51I69Mocfx2" role="3clFbG">
            <node concept="1pGfFk" id="51I69MocgWd" role="2ShVmc">
              <ref role="37wK5l" to="jon5:KwHEfXf6e4" resolve="CLTree" />
              <node concept="2OqwBi" id="51I69MociIK" role="37wK5m">
                <node concept="37vLTw" id="51I69Mocisg" role="2Oq$k0">
                  <ref role="3cqZAo" node="51I69MoceEp" resolve="version" />
                </node>
                <node concept="2OwXpG" id="51I69MociXF" role="2OqNvi">
                  <ref role="2Oxat5" to="6shs:68rqGk2Xgf" resolve="treeHash" />
                </node>
              </node>
              <node concept="37vLTw" id="51I69Mocj$w" role="37wK5m">
                <ref role="3cqZAo" node="51I69MoaX6I" resolve="storeCache" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="51I69Mo8WTV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3lWEPzuC4Is">
    <property role="TrG5h" value="KeyValueStoreCache" />
    <node concept="2tJIrI" id="3lWEPzuC4L$" role="jymVt" />
    <node concept="312cEg" id="3lWEPzuCkjM" role="jymVt">
      <property role="TrG5h" value="store" />
      <node concept="3Tm6S6" id="3lWEPzuCkjN" role="1B3o_S" />
      <node concept="3uibUv" id="3lWEPzuCkBI" role="1tU5fm">
        <ref role="3uigEE" node="1SVbIFIiXye" resolve="IKeyValueStore" />
      </node>
    </node>
    <node concept="312cEg" id="7A36R9$WoAD" role="jymVt">
      <property role="TrG5h" value="cache" />
      <node concept="3Tm6S6" id="7A36R9$WoAE" role="1B3o_S" />
      <node concept="3uibUv" id="7A36R9$WoBC" role="1tU5fm">
        <ref role="3uigEE" node="7UL57Pezb2O" resolve="SynchronizedSLRUMap" />
        <node concept="17QB3L" id="7A36R9$WoCe" role="11_B2D" />
        <node concept="17QB3L" id="3lWEPzuC9Uh" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="7A36R9$WoFH" role="33vP2m">
        <node concept="1pGfFk" id="7UL57Percoo" role="2ShVmc">
          <ref role="37wK5l" node="7UL57PezbAy" resolve="SynchronizedSLRUMap" />
          <node concept="17QB3L" id="7UL57Perddo" role="1pMfVU" />
          <node concept="17QB3L" id="7UL57PerdUI" role="1pMfVU" />
          <node concept="3cmrfG" id="7UL57PermJf" role="37wK5m">
            <property role="3cmrfH" value="10000" />
          </node>
          <node concept="3cmrfG" id="7UL57PernRE" role="37wK5m">
            <property role="3cmrfH" value="10000" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lWEPzuCzIy" role="jymVt" />
    <node concept="3clFbW" id="3lWEPzuCyzp" role="jymVt">
      <node concept="3cqZAl" id="3lWEPzuCyzq" role="3clF45" />
      <node concept="3Tm1VV" id="3lWEPzuCyzr" role="1B3o_S" />
      <node concept="3clFbS" id="3lWEPzuCyzt" role="3clF47">
        <node concept="3clFbF" id="3lWEPzuCyzx" role="3cqZAp">
          <node concept="37vLTI" id="3lWEPzuCyzz" role="3clFbG">
            <node concept="2OqwBi" id="3lWEPzuCyzB" role="37vLTJ">
              <node concept="Xjq3P" id="3lWEPzuCyzC" role="2Oq$k0" />
              <node concept="2OwXpG" id="3lWEPzuCyzD" role="2OqNvi">
                <ref role="2Oxat5" node="3lWEPzuCkjM" resolve="store" />
              </node>
            </node>
            <node concept="37vLTw" id="3lWEPzuCyzE" role="37vLTx">
              <ref role="3cqZAo" node="3lWEPzuCyzw" resolve="store" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lWEPzuCyzw" role="3clF46">
        <property role="TrG5h" value="store" />
        <node concept="3uibUv" id="3lWEPzuCyzv" role="1tU5fm">
          <ref role="3uigEE" node="1SVbIFIiXye" resolve="IKeyValueStore" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lWEPzuC8nV" role="jymVt" />
    <node concept="3Tm1VV" id="3lWEPzuC4It" role="1B3o_S" />
    <node concept="3uibUv" id="3lWEPzuC4KC" role="EKbjA">
      <ref role="3uigEE" node="1SVbIFIiXye" resolve="IKeyValueStore" />
    </node>
    <node concept="3clFb_" id="3lWEPzuC4Mj" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="3lWEPzuC4Mk" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="3lWEPzuC4Ml" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="3lWEPzuC4Mm" role="3clF45" />
      <node concept="3Tm1VV" id="3lWEPzuC4Mn" role="1B3o_S" />
      <node concept="3clFbS" id="3lWEPzuC4Mp" role="3clF47">
        <node concept="3cpWs8" id="3lWEPzuCdt8" role="3cqZAp">
          <node concept="3cpWsn" id="3lWEPzuCdt9" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="3lWEPzuCddk" role="1tU5fm" />
            <node concept="2OqwBi" id="3lWEPzuCdta" role="33vP2m">
              <node concept="37vLTw" id="3lWEPzuCdtb" role="2Oq$k0">
                <ref role="3cqZAo" node="7A36R9$WoAD" resolve="cache" />
              </node>
              <node concept="liA8E" id="3lWEPzuCdtc" role="2OqNvi">
                <ref role="37wK5l" node="7UL57Pezd36" resolve="get" />
                <node concept="37vLTw" id="3lWEPzuCdtd" role="37wK5m">
                  <ref role="3cqZAo" node="3lWEPzuC4Mk" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lWEPzuChvs" role="3cqZAp">
          <node concept="3clFbS" id="3lWEPzuChvu" role="3clFbx">
            <node concept="3clFbF" id="3lWEPzuCjoS" role="3cqZAp">
              <node concept="37vLTI" id="3lWEPzuCjUD" role="3clFbG">
                <node concept="2OqwBi" id="3lWEPzuClSN" role="37vLTx">
                  <node concept="37vLTw" id="3lWEPzuClx9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lWEPzuCkjM" resolve="store" />
                  </node>
                  <node concept="liA8E" id="3lWEPzuCmi$" role="2OqNvi">
                    <ref role="37wK5l" node="1SVbIFIiXyE" resolve="get" />
                    <node concept="37vLTw" id="3lWEPzuCmD9" role="37wK5m">
                      <ref role="3cqZAo" node="3lWEPzuC4Mk" resolve="key" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3lWEPzuCjoR" role="37vLTJ">
                  <ref role="3cqZAo" node="3lWEPzuCdt9" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3lWEPzuCn5f" role="3cqZAp">
              <node concept="2OqwBi" id="3lWEPzuCnFu" role="3clFbG">
                <node concept="37vLTw" id="3lWEPzuCn5d" role="2Oq$k0">
                  <ref role="3cqZAo" node="7A36R9$WoAD" resolve="cache" />
                </node>
                <node concept="liA8E" id="3lWEPzuCoCN" role="2OqNvi">
                  <ref role="37wK5l" node="7UL57Pezeje" resolve="put" />
                  <node concept="37vLTw" id="3lWEPzuCp5j" role="37wK5m">
                    <ref role="3cqZAo" node="3lWEPzuC4Mk" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="3lWEPzuCpFa" role="37wK5m">
                    <ref role="3cqZAo" node="3lWEPzuCdt9" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3lWEPzuCijk" role="3clFbw">
            <node concept="10Nm6u" id="3lWEPzuCiNT" role="3uHU7w" />
            <node concept="37vLTw" id="3lWEPzuChGk" role="3uHU7B">
              <ref role="3cqZAo" node="3lWEPzuCdt9" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lWEPzuCe8a" role="3cqZAp">
          <node concept="37vLTw" id="3lWEPzuCqj$" role="3clFbG">
            <ref role="3cqZAo" node="3lWEPzuCdt9" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lWEPzuC4Mq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lWEPzuC$7e" role="jymVt" />
    <node concept="3clFb_" id="3lWEPzuC4Mr" role="jymVt">
      <property role="TrG5h" value="listen" />
      <node concept="37vLTG" id="3lWEPzuC4Ms" role="3clF46">
        <property role="TrG5h" value="key" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="3lWEPzuC4Mt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3lWEPzuC4Mu" role="3clF46">
        <property role="TrG5h" value="listener" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3lWEPzuC4Mv" role="1tU5fm">
          <ref role="3uigEE" node="2$MJqfiZrgX" resolve="IKeyListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="3lWEPzuC4Mw" role="3clF45" />
      <node concept="3Tm1VV" id="3lWEPzuC4Mx" role="1B3o_S" />
      <node concept="3clFbS" id="3lWEPzuC4Mz" role="3clF47">
        <node concept="3clFbF" id="3lWEPzuCqG9" role="3cqZAp">
          <node concept="2OqwBi" id="3lWEPzuCqYN" role="3clFbG">
            <node concept="37vLTw" id="3lWEPzuCqG8" role="2Oq$k0">
              <ref role="3cqZAo" node="3lWEPzuCkjM" resolve="store" />
            </node>
            <node concept="liA8E" id="3lWEPzuCrgC" role="2OqNvi">
              <ref role="37wK5l" node="68JFWayaRX7" resolve="listen" />
              <node concept="37vLTw" id="3lWEPzuCrz0" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4Ms" resolve="key" />
              </node>
              <node concept="37vLTw" id="3lWEPzuCs4u" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4Mu" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lWEPzuC4M$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lWEPzuC$ym" role="jymVt" />
    <node concept="3clFb_" id="3lWEPzuC4M_" role="jymVt">
      <property role="TrG5h" value="put" />
      <node concept="37vLTG" id="3lWEPzuC4MA" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="3lWEPzuC4MB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3lWEPzuC4MC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="3lWEPzuC4MD" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3lWEPzuC4ME" role="3clF45" />
      <node concept="3Tm1VV" id="3lWEPzuC4MF" role="1B3o_S" />
      <node concept="3clFbS" id="3lWEPzuC4MH" role="3clF47">
        <node concept="3clFbF" id="3lWEPzuCtKT" role="3cqZAp">
          <node concept="2OqwBi" id="3lWEPzuCukR" role="3clFbG">
            <node concept="37vLTw" id="3lWEPzuCtKR" role="2Oq$k0">
              <ref role="3cqZAo" node="7A36R9$WoAD" resolve="cache" />
            </node>
            <node concept="liA8E" id="3lWEPzuCvfX" role="2OqNvi">
              <ref role="37wK5l" node="7UL57Pezeje" resolve="put" />
              <node concept="37vLTw" id="3lWEPzuCvFu" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MA" resolve="key" />
              </node>
              <node concept="37vLTw" id="3lWEPzuCwhX" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MC" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lWEPzuCsny" role="3cqZAp">
          <node concept="2OqwBi" id="3lWEPzuCsDy" role="3clFbG">
            <node concept="37vLTw" id="3lWEPzuCsnx" role="2Oq$k0">
              <ref role="3cqZAo" node="3lWEPzuCkjM" resolve="store" />
            </node>
            <node concept="liA8E" id="3lWEPzuCsPi" role="2OqNvi">
              <ref role="37wK5l" node="1SVbIFIiX_K" resolve="put" />
              <node concept="37vLTw" id="3lWEPzuCt8u" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MA" resolve="key" />
              </node>
              <node concept="37vLTw" id="3lWEPzuCtsd" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MC" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lWEPzuC4MI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lWEPzuC$V6" role="jymVt" />
    <node concept="3clFb_" id="3lWEPzuC4MJ" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="3lWEPzuC4MK" role="3clF46">
        <property role="TrG5h" value="key" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="3lWEPzuC4ML" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3lWEPzuC4MM" role="3clF46">
        <property role="TrG5h" value="listener" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3lWEPzuC4MN" role="1tU5fm">
          <ref role="3uigEE" node="2$MJqfiZrgX" resolve="IKeyListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="3lWEPzuC4MO" role="3clF45" />
      <node concept="3Tm1VV" id="3lWEPzuC4MP" role="1B3o_S" />
      <node concept="3clFbS" id="3lWEPzuC4MR" role="3clF47">
        <node concept="3clFbF" id="3lWEPzuCx2I" role="3cqZAp">
          <node concept="2OqwBi" id="3lWEPzuCxlo" role="3clFbG">
            <node concept="37vLTw" id="3lWEPzuCx2H" role="2Oq$k0">
              <ref role="3cqZAo" node="3lWEPzuCkjM" resolve="store" />
            </node>
            <node concept="liA8E" id="3lWEPzuCxBr" role="2OqNvi">
              <ref role="37wK5l" node="1UedZiFomxu" resolve="removeListener" />
              <node concept="37vLTw" id="3lWEPzuCxU7" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MK" resolve="key" />
              </node>
              <node concept="37vLTw" id="3lWEPzuCyqV" role="37wK5m">
                <ref role="3cqZAo" node="3lWEPzuC4MM" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lWEPzuC4MS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7UL57Pezb2O">
    <property role="TrG5h" value="SynchronizedSLRUMap" />
    <node concept="312cEg" id="7UL57Pezb6Q" role="jymVt">
      <property role="TrG5h" value="map" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7UL57Pezb6R" role="1B3o_S" />
      <node concept="3uibUv" id="7UL57Pezbbj" role="1tU5fm">
        <ref role="3uigEE" to="e8no:~SLRUMap" resolve="SLRUMap" />
        <node concept="16syzq" id="7UL57Pezbgg" role="11_B2D">
          <ref role="16sUi3" node="7UL57Pezb3X" resolve="K" />
        </node>
        <node concept="16syzq" id="7UL57PezbiI" role="11_B2D">
          <ref role="16sUi3" node="7UL57Pezb4f" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7UL57PezbxS" role="jymVt" />
    <node concept="3clFbW" id="7UL57PezbAy" role="jymVt">
      <node concept="37vLTG" id="7UL57Per8EO" role="3clF46">
        <property role="TrG5h" value="protectedQueueSize" />
        <node concept="10Oyi0" id="7UL57Per8EN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7UL57Per8EQ" role="3clF46">
        <property role="TrG5h" value="probationalQueueSize" />
        <node concept="10Oyi0" id="7UL57Per8EP" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7UL57PezbA$" role="3clF45" />
      <node concept="3Tm1VV" id="7UL57PezbA_" role="1B3o_S" />
      <node concept="3clFbS" id="7UL57PezbAA" role="3clF47">
        <node concept="3clFbF" id="7UL57PezbTk" role="3cqZAp">
          <node concept="37vLTI" id="7UL57Pezc9P" role="3clFbG">
            <node concept="2ShNRf" id="7UL57PezcqQ" role="37vLTx">
              <node concept="1pGfFk" id="7UL57Pezcin" role="2ShVmc">
                <ref role="37wK5l" to="e8no:~SLRUMap.&lt;init&gt;(int,int)" resolve="SLRUMap" />
                <node concept="16syzq" id="7UL57Pezcio" role="1pMfVU">
                  <ref role="16sUi3" node="7UL57Pezb3X" resolve="K" />
                </node>
                <node concept="16syzq" id="7UL57Pezcip" role="1pMfVU">
                  <ref role="16sUi3" node="7UL57Pezb4f" resolve="V" />
                </node>
                <node concept="37vLTw" id="7UL57PezcE5" role="37wK5m">
                  <ref role="3cqZAo" node="7UL57Per8EO" resolve="protectedQueueSize" />
                </node>
                <node concept="37vLTw" id="7UL57PezcWv" role="37wK5m">
                  <ref role="3cqZAo" node="7UL57Per8EQ" resolve="probationalQueueSize" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7UL57PezbTj" role="37vLTJ">
              <ref role="3cqZAo" node="7UL57Pezb6Q" resolve="map" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7UL57PezcYg" role="jymVt" />
    <node concept="3clFb_" id="7UL57Pezd36" role="jymVt">
      <property role="TrG5h" value="get" />
      <property role="od$2w" value="true" />
      <node concept="37vLTG" id="7UL57Pezd7S" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="7UL57PezdcQ" role="1tU5fm">
          <ref role="16sUi3" node="7UL57Pezb3X" resolve="K" />
        </node>
      </node>
      <node concept="16syzq" id="7UL57Pezdg7" role="3clF45">
        <ref role="16sUi3" node="7UL57Pezb4f" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="7UL57Pezd39" role="1B3o_S" />
      <node concept="3clFbS" id="7UL57Pezd3a" role="3clF47">
        <node concept="3clFbF" id="7UL57Pezdvf" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57PezdM3" role="3clFbG">
            <node concept="37vLTw" id="7UL57Pezdve" role="2Oq$k0">
              <ref role="3cqZAo" node="7UL57Pezb6Q" resolve="map" />
            </node>
            <node concept="liA8E" id="7UL57PezdYt" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~SLRUMap.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="7UL57Peze7T" role="37wK5m">
                <ref role="3cqZAo" node="7UL57Pezd7S" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7UL57Pezecn" role="jymVt" />
    <node concept="3clFb_" id="7UL57Pezeje" role="jymVt">
      <property role="TrG5h" value="put" />
      <property role="od$2w" value="true" />
      <node concept="37vLTG" id="7UL57Pezeu4" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="7UL57PezezY" role="1tU5fm">
          <ref role="16sUi3" node="7UL57Pezb3X" resolve="K" />
        </node>
      </node>
      <node concept="37vLTG" id="7UL57Peze$w" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="7UL57PezeFm" role="1tU5fm">
          <ref role="16sUi3" node="7UL57Pezb4f" resolve="V" />
        </node>
      </node>
      <node concept="3cqZAl" id="7UL57Pezejg" role="3clF45" />
      <node concept="3Tm1VV" id="7UL57Pezejh" role="1B3o_S" />
      <node concept="3clFbS" id="7UL57Pezeji" role="3clF47">
        <node concept="3clFbF" id="7UL57PezeU1" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57Pezfb4" role="3clFbG">
            <node concept="37vLTw" id="7UL57PezeU0" role="2Oq$k0">
              <ref role="3cqZAo" node="7UL57Pezb6Q" resolve="map" />
            </node>
            <node concept="liA8E" id="7UL57Pezfot" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~SLRUMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7UL57Pezfys" role="37wK5m">
                <ref role="3cqZAo" node="7UL57Pezeu4" resolve="key" />
              </node>
              <node concept="37vLTw" id="7UL57PezfIp" role="37wK5m">
                <ref role="3cqZAo" node="7UL57Peze$w" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7UL57PezkNG" role="jymVt" />
    <node concept="3clFb_" id="7UL57PezkX_" role="jymVt">
      <property role="TrG5h" value="clear" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="7UL57PezkXB" role="3clF45" />
      <node concept="3Tm1VV" id="7UL57PezkXC" role="1B3o_S" />
      <node concept="3clFbS" id="7UL57PezkXD" role="3clF47">
        <node concept="3clFbF" id="7UL57Pezlqg" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57PezlFr" role="3clFbG">
            <node concept="37vLTw" id="7UL57Pezlqf" role="2Oq$k0">
              <ref role="3cqZAo" node="7UL57Pezb6Q" resolve="map" />
            </node>
            <node concept="liA8E" id="7UL57Pezm4u" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~SLRUMap.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7UL57Pezb2P" role="1B3o_S" />
    <node concept="16euLQ" id="7UL57Pezb3X" role="16eVyc">
      <property role="TrG5h" value="K" />
    </node>
    <node concept="16euLQ" id="7UL57Pezb4f" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
</model>

