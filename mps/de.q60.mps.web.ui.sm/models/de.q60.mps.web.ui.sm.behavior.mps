<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c4bc58b-9da3-4f5f-8ea2-32f043278ab7(de.q60.mps.web.ui.sm.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation" version="1" />
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(de.q60.mps.web.ui.sm.structure)" />
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(de.q60.mps.web.ui.sm.transformations)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="wb4m" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.link(MPS.Core/)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="pwx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.property(MPS.Core/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(de.q60.mps.web.ui.common)" />
    <import index="gq2t" ref="r:f17c1662-bb91-47a6-b206-16c06f86f401(de.q60.mps.web.ui.sm.pf)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="p18k" ref="r:d0783334-7096-4e48-8bbe-f220770f23d8(de.q60.mps.web.ui.sm.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="rzjr" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.ref(MPS.Core/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation">
      <concept id="7207189200502820768" name="de.q60.mps.shadowmodels.transformation.structure.OperationCall" flags="ng" index="p1pJ4">
        <reference id="7207189200502820817" name="operation" index="p1pIP" />
        <child id="7207189200503148686" name="parameterValues" index="p08jE" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="6870613620391345436" name="jetbrains.mps.lang.smodel.structure.ConceptShortDescriptionOperation" flags="ng" index="3neUYN" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions">
      <concept id="3814377006350445070" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionCall" flags="ng" index="2M0cAz">
        <reference id="3814377006350445193" name="decl" index="2M0c$$" />
        <child id="3814377006350445199" name="parameterValues" index="2M0c$y" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="6g556hWPoJR">
    <property role="TrG5h" value="KeyStroke" />
    <node concept="312cEg" id="6g556hWPoLc" role="jymVt">
      <property role="TrG5h" value="key" />
      <node concept="3Tm1VV" id="6g556hWPoPP" role="1B3o_S" />
      <node concept="17QB3L" id="6g556hWPoLz" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6g556hWPoMg" role="jymVt">
      <property role="TrG5h" value="ctrlDown" />
      <node concept="3Tm1VV" id="6g556hWPoQ4" role="1B3o_S" />
      <node concept="10P_77" id="6g556hWPoMH" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6g556hWPoNt" role="jymVt">
      <property role="TrG5h" value="shiftDown" />
      <node concept="3Tm1VV" id="6g556hWPoQj" role="1B3o_S" />
      <node concept="10P_77" id="6g556hWPoNv" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6g556hWPoNM" role="jymVt">
      <property role="TrG5h" value="altDown" />
      <node concept="3Tm1VV" id="6g556hWPoQy" role="1B3o_S" />
      <node concept="10P_77" id="6g556hWPoNO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6g556hWPoOd" role="jymVt">
      <property role="TrG5h" value="metaDown" />
      <node concept="3Tm1VV" id="6g556hWPoQL" role="1B3o_S" />
      <node concept="10P_77" id="6g556hWPoOf" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6g556hWPoR0" role="jymVt" />
    <node concept="3Tm1VV" id="6g556hWPoJS" role="1B3o_S" />
    <node concept="3clFbW" id="6X_rIqRwgHl" role="jymVt">
      <node concept="3cqZAl" id="6X_rIqRwgHm" role="3clF45" />
      <node concept="3Tm1VV" id="6X_rIqRwgHn" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRwgHp" role="3clF47">
        <node concept="1VxSAg" id="6X_rIqRwkm0" role="3cqZAp">
          <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
          <node concept="37vLTw" id="6X_rIqRwkpy" role="37wK5m">
            <ref role="3cqZAo" node="6X_rIqRwgHs" resolve="key" />
          </node>
          <node concept="3clFbT" id="6X_rIqRwksy" role="37wK5m" />
          <node concept="3clFbT" id="6X_rIqRwksU" role="37wK5m" />
          <node concept="3clFbT" id="6X_rIqRwktk" role="37wK5m" />
          <node concept="3clFbT" id="6X_rIqRwktK" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="6X_rIqRwgHs" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="6X_rIqRwgHr" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRwjdL" role="jymVt" />
    <node concept="3clFbW" id="6g556hWPoSl" role="jymVt">
      <node concept="3cqZAl" id="6g556hWPoSm" role="3clF45" />
      <node concept="3Tm1VV" id="6g556hWPoSn" role="1B3o_S" />
      <node concept="3clFbS" id="6g556hWPoSp" role="3clF47">
        <node concept="3clFbF" id="6g556hWPoSt" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPoSv" role="3clFbG">
            <node concept="2OqwBi" id="6g556hWPoSz" role="37vLTJ">
              <node concept="Xjq3P" id="6g556hWPoS$" role="2Oq$k0" />
              <node concept="2OwXpG" id="6g556hWPoS_" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoLc" resolve="key" />
              </node>
            </node>
            <node concept="3K4zz7" id="6g556hWPxyh" role="37vLTx">
              <node concept="10Nm6u" id="6g556hWPx$8" role="3K4E3e" />
              <node concept="3clFbC" id="6g556hWPxoa" role="3K4Cdx">
                <node concept="10Nm6u" id="6g556hWPxtc" role="3uHU7w" />
                <node concept="37vLTw" id="6g556hWPx1E" role="3uHU7B">
                  <ref role="3cqZAo" node="6g556hWPoSs" resolve="key" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWPpqu" role="3K4GZi">
                <node concept="37vLTw" id="6g556hWPoSA" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g556hWPoSs" resolve="key" />
                </node>
                <node concept="liA8E" id="6g556hWPq60" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPoSD" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPoSF" role="3clFbG">
            <node concept="2OqwBi" id="6g556hWPoSJ" role="37vLTJ">
              <node concept="Xjq3P" id="6g556hWPoSK" role="2Oq$k0" />
              <node concept="2OwXpG" id="6g556hWPoSL" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPoSM" role="37vLTx">
              <ref role="3cqZAo" node="6g556hWPoSC" resolve="ctrlDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPoSP" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPoSR" role="3clFbG">
            <node concept="2OqwBi" id="6g556hWPoSV" role="37vLTJ">
              <node concept="Xjq3P" id="6g556hWPoSW" role="2Oq$k0" />
              <node concept="2OwXpG" id="6g556hWPoSX" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPoSY" role="37vLTx">
              <ref role="3cqZAo" node="6g556hWPoSO" resolve="shiftDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPoT1" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPoT3" role="3clFbG">
            <node concept="2OqwBi" id="6g556hWPoT7" role="37vLTJ">
              <node concept="Xjq3P" id="6g556hWPoT8" role="2Oq$k0" />
              <node concept="2OwXpG" id="6g556hWPoT9" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoNM" resolve="altDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPoTa" role="37vLTx">
              <ref role="3cqZAo" node="6g556hWPoT0" resolve="altDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPoTd" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPoTf" role="3clFbG">
            <node concept="2OqwBi" id="6g556hWPoTj" role="37vLTJ">
              <node concept="Xjq3P" id="6g556hWPoTk" role="2Oq$k0" />
              <node concept="2OwXpG" id="6g556hWPoTl" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPoTm" role="37vLTx">
              <ref role="3cqZAo" node="6g556hWPoTc" resolve="metaDown" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6g556hWPoSs" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="6g556hWPoSr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6g556hWPoSC" role="3clF46">
        <property role="TrG5h" value="ctrlDown" />
        <node concept="10P_77" id="6g556hWPoSB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6g556hWPoSO" role="3clF46">
        <property role="TrG5h" value="shiftDown" />
        <node concept="10P_77" id="6g556hWPoSN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6g556hWPoT0" role="3clF46">
        <property role="TrG5h" value="altDown" />
        <node concept="10P_77" id="6g556hWPoSZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6g556hWPoTc" role="3clF46">
        <property role="TrG5h" value="metaDown" />
        <node concept="10P_77" id="6g556hWPoTb" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRvN5G" role="jymVt" />
    <node concept="3clFb_" id="6X_rIqRw9H3" role="jymVt">
      <property role="TrG5h" value="withKey" />
      <node concept="37vLTG" id="6X_rIqRwe4S" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="6X_rIqRwfba" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6X_rIqRwcSi" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3Tm1VV" id="6X_rIqRw9H6" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRw9H7" role="3clF47">
        <node concept="3clFbF" id="6X_rIqRwflh" role="3cqZAp">
          <node concept="2ShNRf" id="6X_rIqRwfli" role="3clFbG">
            <node concept="1pGfFk" id="6X_rIqRwflj" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="37vLTw" id="6X_rIqRwflk" role="37wK5m">
                <ref role="3cqZAo" node="6X_rIqRwe4S" resolve="key" />
              </node>
              <node concept="37vLTw" id="6X_rIqRwftO" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRwflm" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRwfln" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRwflo" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRw8EE" role="jymVt" />
    <node concept="3clFb_" id="6X_rIqRvO3T" role="jymVt">
      <property role="TrG5h" value="withCtrlDown" />
      <node concept="3uibUv" id="6X_rIqRvR2f" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3Tm1VV" id="6X_rIqRvO3W" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRvO3X" role="3clF47">
        <node concept="3clFbF" id="6X_rIqRvRJ7" role="3cqZAp">
          <node concept="2ShNRf" id="6X_rIqRvRJ5" role="3clFbG">
            <node concept="1pGfFk" id="6X_rIqRvTa3" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="37vLTw" id="6X_rIqRvTcL" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
              </node>
              <node concept="3clFbT" id="6X_rIqRvTtz" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvTQC" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvTXS" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvU2C" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRvVfz" role="jymVt" />
    <node concept="3clFb_" id="6X_rIqRvU7C" role="jymVt">
      <property role="TrG5h" value="withShiftDown" />
      <node concept="3uibUv" id="6X_rIqRvU7D" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3Tm1VV" id="6X_rIqRvU7E" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRvU7F" role="3clF47">
        <node concept="3clFbF" id="6X_rIqRvU7G" role="3cqZAp">
          <node concept="2ShNRf" id="6X_rIqRvU7H" role="3clFbG">
            <node concept="1pGfFk" id="6X_rIqRvU7I" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="37vLTw" id="6X_rIqRvU7J" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvX80" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
              <node concept="3clFbT" id="6X_rIqRvYlp" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvU7M" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvU7N" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRvZ_y" role="jymVt" />
    <node concept="3clFb_" id="6X_rIqRvYqC" role="jymVt">
      <property role="TrG5h" value="withAltDown" />
      <node concept="3uibUv" id="6X_rIqRvYqD" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3Tm1VV" id="6X_rIqRvYqE" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRvYqF" role="3clF47">
        <node concept="3clFbF" id="6X_rIqRvYqG" role="3cqZAp">
          <node concept="2ShNRf" id="6X_rIqRvYqH" role="3clFbG">
            <node concept="1pGfFk" id="6X_rIqRvYqI" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="37vLTw" id="6X_rIqRvYqJ" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvYqK" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvYqL" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
              <node concept="3clFbT" id="6X_rIqRw8pT" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="6X_rIqRvYqN" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6X_rIqRw2nl" role="jymVt" />
    <node concept="3clFb_" id="6X_rIqRw1vC" role="jymVt">
      <property role="TrG5h" value="withMetaDown" />
      <node concept="3uibUv" id="6X_rIqRw1vD" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3Tm1VV" id="6X_rIqRw1vE" role="1B3o_S" />
      <node concept="3clFbS" id="6X_rIqRw1vF" role="3clF47">
        <node concept="3clFbF" id="6X_rIqRw1vG" role="3cqZAp">
          <node concept="2ShNRf" id="6X_rIqRw1vH" role="3clFbG">
            <node concept="1pGfFk" id="6X_rIqRw1vI" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="37vLTw" id="6X_rIqRw1vJ" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
              </node>
              <node concept="37vLTw" id="6X_rIqRw1vK" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRw1vL" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
              <node concept="37vLTw" id="6X_rIqRw1vM" role="37wK5m">
                <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
              </node>
              <node concept="3clFbT" id="6X_rIqRw8w6" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6g556hWPqbQ" role="jymVt" />
    <node concept="3clFb_" id="6g556hWPqnB" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="6g556hWPqnC" role="3clF45" />
      <node concept="3Tm1VV" id="6g556hWPqnD" role="1B3o_S" />
      <node concept="3clFbS" id="6g556hWPqnE" role="3clF47">
        <node concept="3clFbJ" id="6g556hWPqnF" role="3cqZAp">
          <node concept="3clFbS" id="6g556hWPqnG" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqnH" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqnI" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6g556hWPqnJ" role="3clFbw">
            <node concept="Xjq3P" id="6g556hWPqnA" role="3uHU7B" />
            <node concept="37vLTw" id="6g556hWPqnK" role="3uHU7w">
              <ref role="3cqZAo" node="6g556hWPqo7" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqnL" role="3cqZAp">
          <node concept="3clFbS" id="6g556hWPqnM" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqnN" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqnO" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="6g556hWPqnP" role="3clFbw">
            <node concept="3clFbC" id="6g556hWPqnQ" role="3uHU7B">
              <node concept="37vLTw" id="6g556hWPqnR" role="3uHU7B">
                <ref role="3cqZAo" node="6g556hWPqo7" resolve="o" />
              </node>
              <node concept="10Nm6u" id="6g556hWPqnS" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="6g556hWPqnT" role="3uHU7w">
              <node concept="2OqwBi" id="6g556hWPqnU" role="3uHU7B">
                <node concept="Xjq3P" id="6g556hWPqnV" role="2Oq$k0" />
                <node concept="liA8E" id="6g556hWPqnW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWPqnX" role="3uHU7w">
                <node concept="37vLTw" id="6g556hWPqnY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g556hWPqo7" resolve="o" />
                </node>
                <node concept="liA8E" id="6g556hWPqnZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6g556hWPqo0" role="3cqZAp" />
        <node concept="3cpWs8" id="6g556hWPqo1" role="3cqZAp">
          <node concept="3cpWsn" id="6g556hWPqo2" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="6g556hWPqo3" role="1tU5fm">
              <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
            </node>
            <node concept="10QFUN" id="6g556hWPqo4" role="33vP2m">
              <node concept="3uibUv" id="6g556hWPqo5" role="10QFUM">
                <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
              </node>
              <node concept="37vLTw" id="6g556hWPqo6" role="10QFUP">
                <ref role="3cqZAo" node="6g556hWPqo7" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqoh" role="3cqZAp">
          <node concept="3clFbS" id="6g556hWPqoi" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqoj" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqok" role="3cqZAk" />
            </node>
          </node>
          <node concept="3K4zz7" id="6g556hWPqol" role="3clFbw">
            <node concept="3fqX7Q" id="6g556hWPqom" role="3K4E3e">
              <node concept="2OqwBi" id="6g556hWPqon" role="3fr31v">
                <node concept="liA8E" id="6g556hWPqoo" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="6g556hWPqop" role="37wK5m">
                    <node concept="37vLTw" id="6g556hWPqoa" role="2Oq$k0">
                      <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="6g556hWPqod" role="2OqNvi">
                      <ref role="2Oxat5" node="6g556hWPoLc" resolve="key" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6g556hWPqoq" role="2Oq$k0">
                  <node concept="10QFUN" id="6g556hWPqor" role="1eOMHV">
                    <node concept="3uibUv" id="6g556hWPqos" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="6g556hWPqoe" role="10QFUP">
                      <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6g556hWPqot" role="3K4Cdx">
              <node concept="10Nm6u" id="6g556hWPqou" role="3uHU7w" />
              <node concept="37vLTw" id="6g556hWPqof" role="3uHU7B">
                <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
              </node>
            </node>
            <node concept="3y3z36" id="6g556hWPqov" role="3K4GZi">
              <node concept="10Nm6u" id="6g556hWPqow" role="3uHU7w" />
              <node concept="2OqwBi" id="6g556hWPqox" role="3uHU7B">
                <node concept="37vLTw" id="6g556hWPqoy" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
                </node>
                <node concept="2OwXpG" id="6g556hWPqog" role="2OqNvi">
                  <ref role="2Oxat5" node="6g556hWPoLc" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqo_" role="3cqZAp">
          <node concept="3y3z36" id="6g556hWPqoA" role="3clFbw">
            <node concept="2OqwBi" id="6g556hWPqoB" role="3uHU7w">
              <node concept="37vLTw" id="6g556hWPqoC" role="2Oq$k0">
                <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6g556hWPqoz" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoMg" resolve="ctrlDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqo$" role="3uHU7B">
              <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
            </node>
          </node>
          <node concept="3clFbS" id="6g556hWPqoD" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqoE" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqoF" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqoI" role="3cqZAp">
          <node concept="3y3z36" id="6g556hWPqoJ" role="3clFbw">
            <node concept="2OqwBi" id="6g556hWPqoK" role="3uHU7w">
              <node concept="37vLTw" id="6g556hWPqoL" role="2Oq$k0">
                <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6g556hWPqoG" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoNt" resolve="shiftDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqoH" role="3uHU7B">
              <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
            </node>
          </node>
          <node concept="3clFbS" id="6g556hWPqoM" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqoN" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqoO" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqoR" role="3cqZAp">
          <node concept="3y3z36" id="6g556hWPqoS" role="3clFbw">
            <node concept="2OqwBi" id="6g556hWPqoT" role="3uHU7w">
              <node concept="37vLTw" id="6g556hWPqoU" role="2Oq$k0">
                <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6g556hWPqoP" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoNM" resolve="altDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqoQ" role="3uHU7B">
              <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
            </node>
          </node>
          <node concept="3clFbS" id="6g556hWPqoV" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqoW" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqoX" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g556hWPqp0" role="3cqZAp">
          <node concept="3y3z36" id="6g556hWPqp1" role="3clFbw">
            <node concept="2OqwBi" id="6g556hWPqp2" role="3uHU7w">
              <node concept="37vLTw" id="6g556hWPqp3" role="2Oq$k0">
                <ref role="3cqZAo" node="6g556hWPqo2" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6g556hWPqoY" role="2OqNvi">
                <ref role="2Oxat5" node="6g556hWPoOd" resolve="metaDown" />
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqoZ" role="3uHU7B">
              <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
            </node>
          </node>
          <node concept="3clFbS" id="6g556hWPqp4" role="3clFbx">
            <node concept="3cpWs6" id="6g556hWPqp5" role="3cqZAp">
              <node concept="3clFbT" id="6g556hWPqp6" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6g556hWPqp7" role="3cqZAp" />
        <node concept="3clFbF" id="6g556hWPqp8" role="3cqZAp">
          <node concept="3clFbT" id="6g556hWPqp9" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6g556hWPqo7" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6g556hWPqo8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6g556hWPqo9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6g556hWPtP9" role="jymVt" />
    <node concept="3clFb_" id="6g556hWPqpa" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="6g556hWPqpb" role="3clF45" />
      <node concept="3Tm1VV" id="6g556hWPqpc" role="1B3o_S" />
      <node concept="3clFbS" id="6g556hWPqpd" role="3clF47">
        <node concept="3cpWs8" id="6g556hWPqpf" role="3cqZAp">
          <node concept="3cpWsn" id="6g556hWPqpg" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="6g556hWPqph" role="1tU5fm" />
            <node concept="3cmrfG" id="6g556hWPqpi" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqps" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPqpt" role="3clFbG">
            <node concept="37vLTw" id="6g556hWPqpu" role="37vLTJ">
              <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
            </node>
            <node concept="3cpWs3" id="6g556hWPqpv" role="37vLTx">
              <node concept="17qRlL" id="6g556hWPqpo" role="3uHU7B">
                <node concept="3cmrfG" id="6g556hWPqpp" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6g556hWPqpj" role="3uHU7w">
                  <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6g556hWPqpw" role="3uHU7w">
                <node concept="3K4zz7" id="6g556hWPqpx" role="1eOMHV">
                  <node concept="3cmrfG" id="6g556hWPqpy" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="6g556hWPqpz" role="3K4Cdx">
                    <node concept="10Nm6u" id="6g556hWPqp$" role="3uHU7w" />
                    <node concept="37vLTw" id="6g556hWPqpq" role="3uHU7B">
                      <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6g556hWPqp_" role="3K4E3e">
                    <node concept="2YIFZM" id="6g556hWPqpA" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <node concept="37vLTw" id="6g556hWPqpr" role="37wK5m">
                        <ref role="3cqZAo" node="6g556hWPoLc" resolve="key" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6g556hWPqpB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqpH" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPqpI" role="3clFbG">
            <node concept="3cpWs3" id="6g556hWPqpJ" role="37vLTx">
              <node concept="1eOMI4" id="6g556hWPqpK" role="3uHU7w">
                <node concept="3K4zz7" id="6g556hWPqpL" role="1eOMHV">
                  <node concept="3cmrfG" id="6g556hWPqpM" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6g556hWPqpF" role="3K4Cdx">
                    <ref role="3cqZAo" node="6g556hWPoMg" resolve="ctrlDown" />
                  </node>
                  <node concept="3cmrfG" id="6g556hWPrC$" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="6g556hWPqpC" role="3uHU7B">
                <node concept="3cmrfG" id="6g556hWPqpD" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6g556hWPqpE" role="3uHU7w">
                  <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqpU" role="37vLTJ">
              <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqq0" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPqq1" role="3clFbG">
            <node concept="3cpWs3" id="6g556hWPqq2" role="37vLTx">
              <node concept="17qRlL" id="6g556hWPqpV" role="3uHU7B">
                <node concept="3cmrfG" id="6g556hWPqpW" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6g556hWPqpX" role="3uHU7w">
                  <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6g556hWPrWG" role="3uHU7w">
                <node concept="3K4zz7" id="6g556hWPrWH" role="1eOMHV">
                  <node concept="3cmrfG" id="6g556hWPrWI" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6g556hWPt2h" role="3K4Cdx">
                    <ref role="3cqZAo" node="6g556hWPoNt" resolve="shiftDown" />
                  </node>
                  <node concept="3cmrfG" id="6g556hWPrWK" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqqd" role="37vLTJ">
              <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqqj" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPqqk" role="3clFbG">
            <node concept="3cpWs3" id="6g556hWPqql" role="37vLTx">
              <node concept="17qRlL" id="6g556hWPqqe" role="3uHU7B">
                <node concept="3cmrfG" id="6g556hWPqqf" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6g556hWPqqg" role="3uHU7w">
                  <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6g556hWPsh1" role="3uHU7w">
                <node concept="3K4zz7" id="6g556hWPsh2" role="1eOMHV">
                  <node concept="3cmrfG" id="6g556hWPsh3" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6g556hWPtjh" role="3K4Cdx">
                    <ref role="3cqZAo" node="6g556hWPoNM" resolve="altDown" />
                  </node>
                  <node concept="3cmrfG" id="6g556hWPsh5" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqqw" role="37vLTJ">
              <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqqA" role="3cqZAp">
          <node concept="37vLTI" id="6g556hWPqqB" role="3clFbG">
            <node concept="3cpWs3" id="6g556hWPqqC" role="37vLTx">
              <node concept="17qRlL" id="6g556hWPqqx" role="3uHU7B">
                <node concept="3cmrfG" id="6g556hWPqqy" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6g556hWPqqz" role="3uHU7w">
                  <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6g556hWPs_k" role="3uHU7w">
                <node concept="3K4zz7" id="6g556hWPs_l" role="1eOMHV">
                  <node concept="3cmrfG" id="6g556hWPs_m" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6g556hWPt$h" role="3K4Cdx">
                    <ref role="3cqZAo" node="6g556hWPoOd" resolve="metaDown" />
                  </node>
                  <node concept="3cmrfG" id="6g556hWPs_o" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6g556hWPqqN" role="37vLTJ">
              <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g556hWPqqO" role="3cqZAp">
          <node concept="37vLTw" id="6g556hWPqqP" role="3clFbG">
            <ref role="3cqZAo" node="6g556hWPqpg" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6g556hWPqpe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6g556hWPvdH">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:6g556hWLifl" resolve="KeyStroke" />
    <node concept="13i0hz" id="6g556hWPvdS" role="13h7CS">
      <property role="TrG5h" value="toJava" />
      <node concept="3Tm1VV" id="6g556hWPvdT" role="1B3o_S" />
      <node concept="3uibUv" id="6g556hWPvec" role="3clF45">
        <ref role="3uigEE" node="6g556hWPoJR" resolve="KeyStroke" />
      </node>
      <node concept="3clFbS" id="6g556hWPvdV" role="3clF47">
        <node concept="3clFbF" id="6g556hWPvf3" role="3cqZAp">
          <node concept="2ShNRf" id="6g556hWPvf1" role="3clFbG">
            <node concept="1pGfFk" id="6g556hWPwl6" role="2ShVmc">
              <ref role="37wK5l" node="6g556hWPoSl" resolve="KeyStroke" />
              <node concept="2OqwBi" id="6g556hWPwuY" role="37wK5m">
                <node concept="13iPFW" id="6g556hWPwlq" role="2Oq$k0" />
                <node concept="3TrcHB" id="6g556hWPwDr" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:6g556hWLFOw" resolve="key" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWPxW0" role="37wK5m">
                <node concept="13iPFW" id="6g556hWPxMe" role="2Oq$k0" />
                <node concept="3TrcHB" id="6g556hWPysw" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:6g556hWLFOx" resolve="ctrlDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWPyHR" role="37wK5m">
                <node concept="13iPFW" id="6g556hWPyxM" role="2Oq$k0" />
                <node concept="3TrcHB" id="6g556hWPz9N" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:6g556hWLFO$" resolve="shiftDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWPzuU" role="37wK5m">
                <node concept="13iPFW" id="6g556hWPzkI" role="2Oq$k0" />
                <node concept="3TrcHB" id="6g556hWPzV5" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:6g556hWLFOy" resolve="altDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="6g556hWP$dE" role="37wK5m">
                <node concept="13iPFW" id="6g556hWP$17" role="2Oq$k0" />
                <node concept="3TrcHB" id="6g556hWP$xQ" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:6g556hWLFOz" resolve="metaDown" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6g556hWPvdI" role="13h7CW">
      <node concept="3clFbS" id="6g556hWPvdJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5HO1kYmA37b">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:AkkmJBMaEB" resolve="Cell" />
    <node concept="13i0hz" id="5HO1kYmA37m" role="13h7CS">
      <property role="TrG5h" value="nextLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5HO1kYmA37n" role="1B3o_S" />
      <node concept="3Tqbb2" id="5HO1kYmA54S" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="5HO1kYmA37p" role="3clF47">
        <node concept="3cpWs8" id="6SPevSMDBeL" role="3cqZAp">
          <node concept="3cpWsn" id="6SPevSMDBeM" role="3cpWs9">
            <property role="TrG5h" value="nextSibling" />
            <node concept="3Tqbb2" id="6SPevSMDBeN" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="6SPevSMDBn3" role="33vP2m">
              <ref role="37wK5l" node="5HO1kYmA9Qw" resolve="nextSibling" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6SPevSMDBeP" role="3cqZAp">
          <node concept="3K4zz7" id="6SPevSMDBeQ" role="3clFbG">
            <node concept="2OqwBi" id="6SPevSMDBeR" role="3K4GZi">
              <node concept="1PxgMI" id="6SPevSMDBeS" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="6SPevSMDBeT" role="3oSUPX">
                  <ref role="cht4Q" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
                <node concept="2OqwBi" id="6SPevSMDBeU" role="1m5AlR">
                  <node concept="13iPFW" id="6SPevSMDBeV" role="2Oq$k0" />
                  <node concept="1mfA1w" id="6SPevSMDBeW" role="2OqNvi" />
                </node>
              </node>
              <node concept="2qgKlT" id="6SPevSMDBNM" role="2OqNvi">
                <ref role="37wK5l" node="5HO1kYmA37m" resolve="nextLeaf" />
              </node>
            </node>
            <node concept="2OqwBi" id="6SPevSMDBeY" role="3K4Cdx">
              <node concept="37vLTw" id="6SPevSMDBeZ" role="2Oq$k0">
                <ref role="3cqZAo" node="6SPevSMDBeM" resolve="nextSibling" />
              </node>
              <node concept="3x8VRR" id="6SPevSMDBf0" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="6SPevSMDBf1" role="3K4E3e">
              <node concept="37vLTw" id="6SPevSMDBf2" role="2Oq$k0">
                <ref role="3cqZAo" node="6SPevSMDBeM" resolve="nextSibling" />
              </node>
              <node concept="2qgKlT" id="6SPevSMDBH6" role="2OqNvi">
                <ref role="37wK5l" node="5HO1kYmAidB" resolve="firstLeaf" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6SPevSMCszn" role="13h7CS">
      <property role="TrG5h" value="previousLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="6SPevSMCszo" role="1B3o_S" />
      <node concept="3Tqbb2" id="6SPevSMCszp" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="6SPevSMCszq" role="3clF47">
        <node concept="3cpWs8" id="6SPevSMD$Mn" role="3cqZAp">
          <node concept="3cpWsn" id="6SPevSMD$Mo" role="3cpWs9">
            <property role="TrG5h" value="previousSibling" />
            <node concept="3Tqbb2" id="6SPevSMD$Cz" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="6SPevSMD$Mp" role="33vP2m">
              <ref role="37wK5l" node="6SPevSMCpZa" resolve="previousSibling" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6SPevSMD_3Q" role="3cqZAp">
          <node concept="3K4zz7" id="6SPevSMD_UO" role="3clFbG">
            <node concept="2OqwBi" id="6SPevSMDAXA" role="3K4GZi">
              <node concept="1PxgMI" id="6SPevSMDAIf" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="6SPevSMDAOM" role="3oSUPX">
                  <ref role="cht4Q" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
                <node concept="2OqwBi" id="6SPevSMDAnu" role="1m5AlR">
                  <node concept="13iPFW" id="6SPevSMDAfl" role="2Oq$k0" />
                  <node concept="1mfA1w" id="6SPevSMDA_E" role="2OqNvi" />
                </node>
              </node>
              <node concept="2qgKlT" id="6SPevSMDBdN" role="2OqNvi">
                <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
              </node>
            </node>
            <node concept="2OqwBi" id="6SPevSMD_hG" role="3K4Cdx">
              <node concept="37vLTw" id="6SPevSMD_3O" role="2Oq$k0">
                <ref role="3cqZAo" node="6SPevSMD$Mo" resolve="previousSibling" />
              </node>
              <node concept="3x8VRR" id="6SPevSMD_$V" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="6SPevSMDA2M" role="3K4E3e">
              <node concept="37vLTw" id="6SPevSMDA2N" role="2Oq$k0">
                <ref role="3cqZAo" node="6SPevSMD$Mo" resolve="previousSibling" />
              </node>
              <node concept="2qgKlT" id="6SPevSMDA2O" role="2OqNvi">
                <ref role="37wK5l" node="6SPevSMCs5i" resolve="lastLeaf" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrnOiVB" role="13h7CS">
      <property role="TrG5h" value="previousVisibleLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4cPrGrnOiVC" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGrnOiVD" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="4cPrGrnOiVE" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnOjfM" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnOjfN" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="3Tqbb2" id="4cPrGrnOjfx" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="4cPrGrnOjfO" role="33vP2m">
              <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4cPrGrnOjhc" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnOjhe" role="2LFqv$">
            <node concept="3clFbF" id="4cPrGrnOkFO" role="3cqZAp">
              <node concept="37vLTI" id="4cPrGrnOkNK" role="3clFbG">
                <node concept="2OqwBi" id="4cPrGrnPpa1" role="37vLTx">
                  <node concept="37vLTw" id="4cPrGrnPp3b" role="2Oq$k0">
                    <ref role="3cqZAo" node="4cPrGrnOjfN" resolve="leaf" />
                  </node>
                  <node concept="2qgKlT" id="4cPrGrnPpdd" role="2OqNvi">
                    <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
                  </node>
                </node>
                <node concept="37vLTw" id="4cPrGrnOkFN" role="37vLTJ">
                  <ref role="3cqZAo" node="4cPrGrnOjfN" resolve="leaf" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4cPrGrnOjXm" role="2$JKZa">
            <node concept="3fqX7Q" id="4cPrGrnOk_v" role="3uHU7w">
              <node concept="2OqwBi" id="4cPrGrnOk_x" role="3fr31v">
                <node concept="37vLTw" id="4cPrGrnOk_y" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnOjfN" resolve="leaf" />
                </node>
                <node concept="2qgKlT" id="4cPrGrnOk_z" role="2OqNvi">
                  <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGrnOjrx" role="3uHU7B">
              <node concept="37vLTw" id="4cPrGrnOjhO" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrnOjfN" resolve="leaf" />
              </node>
              <node concept="3x8VRR" id="4cPrGrnOjA5" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrnOm4G" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrnOm4I" role="3cqZAk">
            <ref role="3cqZAo" node="4cPrGrnOjfN" resolve="leaf" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5aNLs4Jy0lf" role="13h7CS">
      <property role="TrG5h" value="previousInvisibleLeafs" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5aNLs4Jy0lg" role="1B3o_S" />
      <node concept="A3Dl8" id="5aNLs4Jy13p" role="3clF45">
        <node concept="3Tqbb2" id="5aNLs4Jy13q" role="A3Ik2">
          <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
        </node>
      </node>
      <node concept="3clFbS" id="5aNLs4Jy0li" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JyCwE" role="3cqZAp">
          <node concept="2ShNRf" id="5aNLs4JyCwA" role="3clFbG">
            <node concept="YeOm9" id="5aNLs4JyEiU" role="2ShVmc">
              <node concept="1Y3b0j" id="5aNLs4JyEiX" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="wyt6:~Iterable" resolve="Iterable" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="5aNLs4JyEiY" role="1B3o_S" />
                <node concept="3clFb_" id="5aNLs4JyEj3" role="jymVt">
                  <property role="TrG5h" value="iterator" />
                  <node concept="3Tm1VV" id="5aNLs4JyEj4" role="1B3o_S" />
                  <node concept="3uibUv" id="5aNLs4JyEj6" role="3clF45">
                    <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                    <node concept="3Tqbb2" id="5aNLs4JyEz7" role="11_B2D">
                      <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5aNLs4JyEj8" role="3clF47">
                    <node concept="3clFbF" id="5aNLs4JyE_M" role="3cqZAp">
                      <node concept="2ShNRf" id="5aNLs4JyE_K" role="3clFbG">
                        <node concept="YeOm9" id="5aNLs4JyFnB" role="2ShVmc">
                          <node concept="1Y3b0j" id="5aNLs4JyFnE" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="33ny:~Iterator" resolve="Iterator" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="312cEg" id="5aNLs4JyFUD" role="jymVt">
                              <property role="TrG5h" value="leaf" />
                              <node concept="3Tm6S6" id="5aNLs4JyFUE" role="1B3o_S" />
                              <node concept="3Tqbb2" id="5aNLs4JyFZT" role="1tU5fm">
                                <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                              </node>
                              <node concept="2OqwBi" id="5aNLs4JyGjo" role="33vP2m">
                                <node concept="13iPFW" id="5aNLs4JyGcQ" role="2Oq$k0" />
                                <node concept="2qgKlT" id="5aNLs4JyGuL" role="2OqNvi">
                                  <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="5aNLs4JyFnF" role="1B3o_S" />
                            <node concept="3clFb_" id="5aNLs4JyFnK" role="jymVt">
                              <property role="TrG5h" value="hasNext" />
                              <node concept="3Tm1VV" id="5aNLs4JyFnL" role="1B3o_S" />
                              <node concept="10P_77" id="5aNLs4JyFnN" role="3clF45" />
                              <node concept="3clFbS" id="5aNLs4JyFnO" role="3clF47">
                                <node concept="3clFbF" id="5aNLs4JyGAV" role="3cqZAp">
                                  <node concept="1Wc70l" id="5aNLs4JyHpE" role="3clFbG">
                                    <node concept="3fqX7Q" id="5aNLs4JyIfA" role="3uHU7w">
                                      <node concept="2OqwBi" id="5aNLs4JyIfC" role="3fr31v">
                                        <node concept="37vLTw" id="5aNLs4JyIfD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5aNLs4JyFUD" resolve="leaf" />
                                        </node>
                                        <node concept="2qgKlT" id="5aNLs4JyIfE" role="2OqNvi">
                                          <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5aNLs4JyGKg" role="3uHU7B">
                                      <node concept="37vLTw" id="5aNLs4JyGAU" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5aNLs4JyFUD" resolve="leaf" />
                                      </node>
                                      <node concept="3x8VRR" id="5aNLs4JyGXG" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5aNLs4JyFnQ" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="2tJIrI" id="5aNLs4JyFnR" role="jymVt" />
                            <node concept="3clFb_" id="5aNLs4JyFnS" role="jymVt">
                              <property role="TrG5h" value="next" />
                              <node concept="3Tm1VV" id="5aNLs4JyFnT" role="1B3o_S" />
                              <node concept="3clFbS" id="5aNLs4JyFnW" role="3clF47">
                                <node concept="3cpWs8" id="5aNLs4JyIxP" role="3cqZAp">
                                  <node concept="3cpWsn" id="5aNLs4JyIxQ" role="3cpWs9">
                                    <property role="TrG5h" value="l" />
                                    <node concept="3Tqbb2" id="5aNLs4JyIt4" role="1tU5fm">
                                      <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                                    </node>
                                    <node concept="37vLTw" id="5aNLs4JyIxR" role="33vP2m">
                                      <ref role="3cqZAo" node="5aNLs4JyFUD" resolve="leaf" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="5aNLs4JyIG$" role="3cqZAp">
                                  <node concept="37vLTI" id="5aNLs4JyIOW" role="3clFbG">
                                    <node concept="2OqwBi" id="5aNLs4JyIVd" role="37vLTx">
                                      <node concept="37vLTw" id="5aNLs4JyJsr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5aNLs4JyFUD" resolve="leaf" />
                                      </node>
                                      <node concept="2qgKlT" id="5aNLs4JyJ9Z" role="2OqNvi">
                                        <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5aNLs4JyIGy" role="37vLTJ">
                                      <ref role="3cqZAo" node="5aNLs4JyFUD" resolve="leaf" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="5aNLs4JyJj5" role="3cqZAp">
                                  <node concept="37vLTw" id="5aNLs4JyJj7" role="3cqZAk">
                                    <ref role="3cqZAo" node="5aNLs4JyIxQ" resolve="l" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5aNLs4JyFnY" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                              <node concept="3Tqbb2" id="5aNLs4JyFHN" role="3clF45">
                                <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                              </node>
                            </node>
                            <node concept="3Tqbb2" id="5aNLs4JyFzH" role="2Ghqu4">
                              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="5aNLs4JyEja" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="5aNLs4JyEpQ" role="2Ghqu4">
                  <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrnOmb$" role="13h7CS">
      <property role="TrG5h" value="nextVisibleLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4cPrGrnOmb_" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGrnOmbA" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="4cPrGrnOmbB" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnOmbC" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnOmbD" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="3Tqbb2" id="4cPrGrnOmbE" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="4cPrGrnOmEu" role="33vP2m">
              <ref role="37wK5l" node="5HO1kYmA37m" resolve="nextLeaf" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4cPrGrnOmbG" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnOmbH" role="2LFqv$">
            <node concept="3clFbF" id="4cPrGrnOmbI" role="3cqZAp">
              <node concept="37vLTI" id="4cPrGrnOmbJ" role="3clFbG">
                <node concept="2OqwBi" id="4cPrGrnPpjT" role="37vLTx">
                  <node concept="37vLTw" id="4cPrGrnPphN" role="2Oq$k0">
                    <ref role="3cqZAo" node="4cPrGrnOmbD" resolve="leaf" />
                  </node>
                  <node concept="2qgKlT" id="4cPrGrnPplH" role="2OqNvi">
                    <ref role="37wK5l" node="5HO1kYmA37m" resolve="nextLeaf" />
                  </node>
                </node>
                <node concept="37vLTw" id="4cPrGrnOmbL" role="37vLTJ">
                  <ref role="3cqZAo" node="4cPrGrnOmbD" resolve="leaf" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4cPrGrnOmbM" role="2$JKZa">
            <node concept="3fqX7Q" id="4cPrGrnOmbN" role="3uHU7w">
              <node concept="2OqwBi" id="4cPrGrnOmbO" role="3fr31v">
                <node concept="37vLTw" id="4cPrGrnOmbP" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnOmbD" resolve="leaf" />
                </node>
                <node concept="2qgKlT" id="4cPrGrnOmbQ" role="2OqNvi">
                  <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGrnOmbR" role="3uHU7B">
              <node concept="37vLTw" id="4cPrGrnOmbS" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrnOmbD" resolve="leaf" />
              </node>
              <node concept="3x8VRR" id="4cPrGrnOmbT" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrnOmbU" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrnOmbV" role="3cqZAk">
            <ref role="3cqZAo" node="4cPrGrnOmbD" resolve="leaf" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5aNLs4Jy5bc" role="13h7CS">
      <property role="TrG5h" value="nextInvisibleLeafs" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5aNLs4Jy5bd" role="1B3o_S" />
      <node concept="A3Dl8" id="5aNLs4JybvK" role="3clF45">
        <node concept="3Tqbb2" id="5aNLs4JybvL" role="A3Ik2">
          <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
        </node>
      </node>
      <node concept="3clFbS" id="5aNLs4Jy5bf" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JyK3t" role="3cqZAp">
          <node concept="2ShNRf" id="5aNLs4JyK3u" role="3clFbG">
            <node concept="YeOm9" id="5aNLs4JyK3v" role="2ShVmc">
              <node concept="1Y3b0j" id="5aNLs4JyK3w" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="wyt6:~Iterable" resolve="Iterable" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="5aNLs4JyK3x" role="1B3o_S" />
                <node concept="3clFb_" id="5aNLs4JyK3y" role="jymVt">
                  <property role="TrG5h" value="iterator" />
                  <node concept="3Tm1VV" id="5aNLs4JyK3z" role="1B3o_S" />
                  <node concept="3uibUv" id="5aNLs4JyK3$" role="3clF45">
                    <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                    <node concept="3Tqbb2" id="5aNLs4JyK3_" role="11_B2D">
                      <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5aNLs4JyK3A" role="3clF47">
                    <node concept="3clFbF" id="5aNLs4JyK3B" role="3cqZAp">
                      <node concept="2ShNRf" id="5aNLs4JyK3C" role="3clFbG">
                        <node concept="YeOm9" id="5aNLs4JyK3D" role="2ShVmc">
                          <node concept="1Y3b0j" id="5aNLs4JyK3E" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <ref role="1Y3XeK" to="33ny:~Iterator" resolve="Iterator" />
                            <node concept="312cEg" id="5aNLs4JyK3F" role="jymVt">
                              <property role="TrG5h" value="leaf" />
                              <node concept="3Tm6S6" id="5aNLs4JyK3G" role="1B3o_S" />
                              <node concept="3Tqbb2" id="5aNLs4JyK3H" role="1tU5fm">
                                <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                              </node>
                              <node concept="2OqwBi" id="5aNLs4JyK3I" role="33vP2m">
                                <node concept="13iPFW" id="5aNLs4JyK3J" role="2Oq$k0" />
                                <node concept="2qgKlT" id="5aNLs4JyK3K" role="2OqNvi">
                                  <ref role="37wK5l" node="6SPevSMCszn" resolve="previousLeaf" />
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="5aNLs4JyK3L" role="1B3o_S" />
                            <node concept="3clFb_" id="5aNLs4JyK3M" role="jymVt">
                              <property role="TrG5h" value="hasNext" />
                              <node concept="3Tm1VV" id="5aNLs4JyK3N" role="1B3o_S" />
                              <node concept="10P_77" id="5aNLs4JyK3O" role="3clF45" />
                              <node concept="3clFbS" id="5aNLs4JyK3P" role="3clF47">
                                <node concept="3clFbF" id="5aNLs4JyK3Q" role="3cqZAp">
                                  <node concept="1Wc70l" id="5aNLs4JyK3R" role="3clFbG">
                                    <node concept="3fqX7Q" id="5aNLs4JyK3S" role="3uHU7w">
                                      <node concept="2OqwBi" id="5aNLs4JyK3T" role="3fr31v">
                                        <node concept="37vLTw" id="5aNLs4JyK3U" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5aNLs4JyK3F" resolve="leaf" />
                                        </node>
                                        <node concept="2qgKlT" id="5aNLs4JyK3V" role="2OqNvi">
                                          <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5aNLs4JyK3W" role="3uHU7B">
                                      <node concept="37vLTw" id="5aNLs4JyK3X" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5aNLs4JyK3F" resolve="leaf" />
                                      </node>
                                      <node concept="3x8VRR" id="5aNLs4JyK3Y" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5aNLs4JyK3Z" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="2tJIrI" id="5aNLs4JyK40" role="jymVt" />
                            <node concept="3clFb_" id="5aNLs4JyK41" role="jymVt">
                              <property role="TrG5h" value="next" />
                              <node concept="3Tm1VV" id="5aNLs4JyK42" role="1B3o_S" />
                              <node concept="3clFbS" id="5aNLs4JyK43" role="3clF47">
                                <node concept="3cpWs8" id="5aNLs4JyK44" role="3cqZAp">
                                  <node concept="3cpWsn" id="5aNLs4JyK45" role="3cpWs9">
                                    <property role="TrG5h" value="l" />
                                    <node concept="3Tqbb2" id="5aNLs4JyK46" role="1tU5fm">
                                      <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                                    </node>
                                    <node concept="37vLTw" id="5aNLs4JyK47" role="33vP2m">
                                      <ref role="3cqZAo" node="5aNLs4JyK3F" resolve="leaf" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="5aNLs4JyK48" role="3cqZAp">
                                  <node concept="37vLTI" id="5aNLs4JyK49" role="3clFbG">
                                    <node concept="2OqwBi" id="5aNLs4JyK4a" role="37vLTx">
                                      <node concept="37vLTw" id="5aNLs4JyK4b" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5aNLs4JyK3F" resolve="leaf" />
                                      </node>
                                      <node concept="2qgKlT" id="5aNLs4JyKDq" role="2OqNvi">
                                        <ref role="37wK5l" node="5HO1kYmA37m" resolve="nextLeaf" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5aNLs4JyK4d" role="37vLTJ">
                                      <ref role="3cqZAo" node="5aNLs4JyK3F" resolve="leaf" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="5aNLs4JyK4e" role="3cqZAp">
                                  <node concept="37vLTw" id="5aNLs4JyK4f" role="3cqZAk">
                                    <ref role="3cqZAo" node="5aNLs4JyK45" resolve="l" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="5aNLs4JyK4g" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                              <node concept="3Tqbb2" id="5aNLs4JyK4h" role="3clF45">
                                <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                              </node>
                            </node>
                            <node concept="3Tqbb2" id="5aNLs4JyK4i" role="2Ghqu4">
                              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="5aNLs4JyK4j" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="5aNLs4JyK4k" role="2Ghqu4">
                  <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrnPmoR" role="13h7CS">
      <property role="TrG5h" value="firstVisibleLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4cPrGrnPmoS" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGrnPmJO" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="4cPrGrnPmoU" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnPmLi" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnPmLj" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="3Tqbb2" id="4cPrGrnPmL9" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="4cPrGrnPmLk" role="33vP2m">
              <ref role="37wK5l" node="5HO1kYmAidB" resolve="firstLeaf" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGrnPoLe" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnPoLg" role="3clFbx">
            <node concept="3clFbF" id="4cPrGrnPoSJ" role="3cqZAp">
              <node concept="37vLTI" id="4cPrGrnPoUR" role="3clFbG">
                <node concept="2OqwBi" id="4cPrGrnPoZb" role="37vLTx">
                  <node concept="37vLTw" id="4cPrGrnPoX5" role="2Oq$k0">
                    <ref role="3cqZAo" node="4cPrGrnPmLj" resolve="leaf" />
                  </node>
                  <node concept="2qgKlT" id="4cPrGrnPpsj" role="2OqNvi">
                    <ref role="37wK5l" node="4cPrGrnOmb$" resolve="nextVisibleLeaf" />
                  </node>
                </node>
                <node concept="37vLTw" id="4cPrGrnPoSw" role="37vLTJ">
                  <ref role="3cqZAo" node="4cPrGrnPmLj" resolve="leaf" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4cPrGrnPneI" role="3clFbw">
            <node concept="3fqX7Q" id="4cPrGrnPny$" role="3uHU7w">
              <node concept="2OqwBi" id="4cPrGrnPnyA" role="3fr31v">
                <node concept="37vLTw" id="4cPrGrnPnyB" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnPmLj" resolve="leaf" />
                </node>
                <node concept="2qgKlT" id="4cPrGrnPnyC" role="2OqNvi">
                  <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGrnPmRd" role="3uHU7B">
              <node concept="37vLTw" id="4cPrGrnPmNs" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrnPmLj" resolve="leaf" />
              </node>
              <node concept="3x8VRR" id="4cPrGrnPmSR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrnPmKw" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrnPmLl" role="3clFbG">
            <ref role="3cqZAo" node="4cPrGrnPmLj" resolve="leaf" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrnPpwy" role="13h7CS">
      <property role="TrG5h" value="lastVisibleLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4cPrGrnPpwz" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGrnPpw$" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="4cPrGrnPpw_" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnPpwA" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnPpwB" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="3Tqbb2" id="4cPrGrnPpwC" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="BsUDl" id="4cPrGrnPq0G" role="33vP2m">
              <ref role="37wK5l" node="6SPevSMCs5i" resolve="lastLeaf" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGrnPpwE" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnPpwF" role="3clFbx">
            <node concept="3clFbF" id="4cPrGrnPpwG" role="3cqZAp">
              <node concept="37vLTI" id="4cPrGrnPpwH" role="3clFbG">
                <node concept="2OqwBi" id="4cPrGrnPpwI" role="37vLTx">
                  <node concept="37vLTw" id="4cPrGrnPpwJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4cPrGrnPpwB" resolve="leaf" />
                  </node>
                  <node concept="2qgKlT" id="4cPrGrnPq8V" role="2OqNvi">
                    <ref role="37wK5l" node="4cPrGrnOiVB" resolve="previousVisibleLeaf" />
                  </node>
                </node>
                <node concept="37vLTw" id="4cPrGrnPpwL" role="37vLTJ">
                  <ref role="3cqZAo" node="4cPrGrnPpwB" resolve="leaf" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4cPrGrnPpwM" role="3clFbw">
            <node concept="3fqX7Q" id="4cPrGrnPpwN" role="3uHU7w">
              <node concept="2OqwBi" id="4cPrGrnPpwO" role="3fr31v">
                <node concept="37vLTw" id="4cPrGrnPpwP" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnPpwB" resolve="leaf" />
                </node>
                <node concept="2qgKlT" id="4cPrGrnPpwQ" role="2OqNvi">
                  <ref role="37wK5l" node="4cPrGrnOi4Y" resolve="isVisible" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGrnPpwR" role="3uHU7B">
              <node concept="37vLTw" id="4cPrGrnPpwS" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrnPpwB" resolve="leaf" />
              </node>
              <node concept="3x8VRR" id="4cPrGrnPpwT" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrnPpwU" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrnPpwV" role="3clFbG">
            <ref role="3cqZAo" node="4cPrGrnPpwB" resolve="leaf" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5HO1kYmA9Qw" role="13h7CS">
      <property role="TrG5h" value="nextSibling" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5HO1kYmA9Qx" role="1B3o_S" />
      <node concept="3Tqbb2" id="5HO1kYmA9XO" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="5HO1kYmA9Qz" role="3clF47">
        <node concept="3cpWs8" id="5HO1kYmA9Yf" role="3cqZAp">
          <node concept="3cpWsn" id="5HO1kYmA9Yg" role="3cpWs9">
            <property role="TrG5h" value="parentCollection" />
            <node concept="3Tqbb2" id="5HO1kYmA9Yh" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
            </node>
            <node concept="1PxgMI" id="5HO1kYmA9Yi" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5HO1kYmA9Yj" role="3oSUPX">
                <ref role="cht4Q" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
              </node>
              <node concept="2OqwBi" id="5HO1kYmA9Yk" role="1m5AlR">
                <node concept="13iPFW" id="5HO1kYmA9Yl" role="2Oq$k0" />
                <node concept="1mfA1w" id="5HO1kYmA9Ym" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HO1kYmA9Yn" role="3cqZAp">
          <node concept="3clFbS" id="5HO1kYmA9Yo" role="3clFbx">
            <node concept="3cpWs6" id="5HO1kYmA9Yp" role="3cqZAp">
              <node concept="10Nm6u" id="5HO1kYmA9Yq" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="5HO1kYmA9Yr" role="3clFbw">
            <node concept="37vLTw" id="5HO1kYmA9Ys" role="2Oq$k0">
              <ref role="3cqZAo" node="5HO1kYmA9Yg" resolve="parentCollection" />
            </node>
            <node concept="3w_OXm" id="5HO1kYmA9Yt" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="5HO1kYmAa$G" role="3cqZAp">
          <node concept="3cpWsn" id="5HO1kYmAa$H" role="3cpWs9">
            <property role="TrG5h" value="siblings" />
            <node concept="2I9FWS" id="5HO1kYmAa$x" role="1tU5fm">
              <ref role="2I9WkF" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="2OqwBi" id="5HO1kYmAa$I" role="33vP2m">
              <node concept="37vLTw" id="5HO1kYmAa$J" role="2Oq$k0">
                <ref role="3cqZAo" node="5HO1kYmA9Yg" resolve="parentCollection" />
              </node>
              <node concept="3Tsc0h" id="5HO1kYmAa$K" role="2OqNvi">
                <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HO1kYmAb53" role="3cqZAp">
          <node concept="3cpWsn" id="5HO1kYmAb54" role="3cpWs9">
            <property role="TrG5h" value="nextIndex" />
            <node concept="10Oyi0" id="5HO1kYmAb0A" role="1tU5fm" />
            <node concept="3cpWs3" id="5HO1kYmAfoE" role="33vP2m">
              <node concept="3cmrfG" id="5HO1kYmAfoH" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5HO1kYmAb55" role="3uHU7B">
                <node concept="13iPFW" id="5HO1kYmAb56" role="2Oq$k0" />
                <node concept="2bSWHS" id="5HO1kYmAb57" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HO1kYmAbgJ" role="3cqZAp">
          <node concept="3clFbS" id="5HO1kYmAbgL" role="3clFbx">
            <node concept="3cpWs6" id="5HO1kYmAfJr" role="3cqZAp">
              <node concept="1y4W85" id="5HO1kYmAhHH" role="3cqZAk">
                <node concept="37vLTw" id="5HO1kYmAhPk" role="1y58nS">
                  <ref role="3cqZAo" node="5HO1kYmAb54" resolve="nextIndex" />
                </node>
                <node concept="37vLTw" id="5HO1kYmAfJR" role="1y566C">
                  <ref role="3cqZAo" node="5HO1kYmAa$H" resolve="siblings" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="5HO1kYmAfqD" role="3clFbw">
            <node concept="37vLTw" id="5HO1kYmAfrT" role="3uHU7B">
              <ref role="3cqZAo" node="5HO1kYmAb54" resolve="nextIndex" />
            </node>
            <node concept="2OqwBi" id="5HO1kYmAcSC" role="3uHU7w">
              <node concept="37vLTw" id="5HO1kYmAbix" role="2Oq$k0">
                <ref role="3cqZAo" node="5HO1kYmAa$H" resolve="siblings" />
              </node>
              <node concept="34oBXx" id="5HO1kYmAexN" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5HO1kYmAf$_" role="3cqZAp">
          <node concept="10Nm6u" id="5HO1kYmAfBF" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6SPevSMCpZa" role="13h7CS">
      <property role="TrG5h" value="previousSibling" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="6SPevSMCpZb" role="1B3o_S" />
      <node concept="3Tqbb2" id="6SPevSMCpZc" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="6SPevSMCpZd" role="3clF47">
        <node concept="3cpWs8" id="6SPevSMCpZe" role="3cqZAp">
          <node concept="3cpWsn" id="6SPevSMCpZf" role="3cpWs9">
            <property role="TrG5h" value="parentCollection" />
            <node concept="3Tqbb2" id="6SPevSMCpZg" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
            </node>
            <node concept="1PxgMI" id="6SPevSMCpZh" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="6SPevSMCpZi" role="3oSUPX">
                <ref role="cht4Q" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
              </node>
              <node concept="2OqwBi" id="6SPevSMCpZj" role="1m5AlR">
                <node concept="13iPFW" id="6SPevSMCpZk" role="2Oq$k0" />
                <node concept="1mfA1w" id="6SPevSMCpZl" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SPevSMCpZm" role="3cqZAp">
          <node concept="3clFbS" id="6SPevSMCpZn" role="3clFbx">
            <node concept="3cpWs6" id="6SPevSMCpZo" role="3cqZAp">
              <node concept="10Nm6u" id="6SPevSMCpZp" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SPevSMCpZq" role="3clFbw">
            <node concept="37vLTw" id="6SPevSMCpZr" role="2Oq$k0">
              <ref role="3cqZAo" node="6SPevSMCpZf" resolve="parentCollection" />
            </node>
            <node concept="3w_OXm" id="6SPevSMCpZs" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="6SPevSMCpZt" role="3cqZAp">
          <node concept="3cpWsn" id="6SPevSMCpZu" role="3cpWs9">
            <property role="TrG5h" value="siblings" />
            <node concept="2I9FWS" id="6SPevSMCpZv" role="1tU5fm">
              <ref role="2I9WkF" to="j481:AkkmJBMaEB" resolve="Cell" />
            </node>
            <node concept="2OqwBi" id="6SPevSMCpZw" role="33vP2m">
              <node concept="37vLTw" id="6SPevSMCpZx" role="2Oq$k0">
                <ref role="3cqZAo" node="6SPevSMCpZf" resolve="parentCollection" />
              </node>
              <node concept="3Tsc0h" id="6SPevSMCpZy" role="2OqNvi">
                <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6SPevSMCpZz" role="3cqZAp">
          <node concept="3cpWsn" id="6SPevSMCpZ$" role="3cpWs9">
            <property role="TrG5h" value="prevIndex" />
            <node concept="10Oyi0" id="6SPevSMCpZ_" role="1tU5fm" />
            <node concept="3cpWsd" id="6SPevSMCqxi" role="33vP2m">
              <node concept="2OqwBi" id="6SPevSMCpZC" role="3uHU7B">
                <node concept="13iPFW" id="6SPevSMCpZD" role="2Oq$k0" />
                <node concept="2bSWHS" id="6SPevSMCpZE" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="6SPevSMCpZB" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SPevSMCpZF" role="3cqZAp">
          <node concept="3clFbS" id="6SPevSMCpZG" role="3clFbx">
            <node concept="3cpWs6" id="6SPevSMCpZH" role="3cqZAp">
              <node concept="1y4W85" id="6SPevSMCpZI" role="3cqZAk">
                <node concept="37vLTw" id="6SPevSMCpZJ" role="1y58nS">
                  <ref role="3cqZAo" node="6SPevSMCpZ$" resolve="prevIndex" />
                </node>
                <node concept="37vLTw" id="6SPevSMCpZK" role="1y566C">
                  <ref role="3cqZAo" node="6SPevSMCpZu" resolve="siblings" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="6SPevSMCrSl" role="3clFbw">
            <node concept="3cmrfG" id="6SPevSMCs4L" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6SPevSMCqRo" role="3uHU7B">
              <ref role="3cqZAo" node="6SPevSMCpZ$" resolve="prevIndex" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6SPevSMCpZQ" role="3cqZAp">
          <node concept="10Nm6u" id="6SPevSMCpZR" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5HO1kYmAidB" role="13h7CS">
      <property role="TrG5h" value="firstLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5HO1kYmAidC" role="1B3o_S" />
      <node concept="3Tqbb2" id="5HO1kYmAioD" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="5HO1kYmAidE" role="3clF47">
        <node concept="3clFbF" id="5HO1kYmAizd" role="3cqZAp">
          <node concept="13iPFW" id="5HO1kYmAizc" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6SPevSMCs5i" role="13h7CS">
      <property role="TrG5h" value="lastLeaf" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="6SPevSMCs5j" role="1B3o_S" />
      <node concept="3Tqbb2" id="6SPevSMCs5k" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="6SPevSMCs5l" role="3clF47">
        <node concept="3clFbF" id="6SPevSMCs5m" role="3cqZAp">
          <node concept="13iPFW" id="6SPevSMCs5n" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1D6Sg8Px865" role="13h7CS">
      <property role="TrG5h" value="descendantCells" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="1D6Sg8Px8p8" role="3clF46">
        <property role="TrG5h" value="includeSelf" />
        <node concept="10P_77" id="1D6Sg8Px8pm" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1D6Sg8Px866" role="1B3o_S" />
      <node concept="A3Dl8" id="1D6Sg8Px8kX" role="3clF45">
        <node concept="3Tqbb2" id="1D6Sg8Px8la" role="A3Ik2">
          <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
        </node>
      </node>
      <node concept="3clFbS" id="1D6Sg8Px868" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8Px8rM" role="3cqZAp">
          <node concept="3K4zz7" id="1D6Sg8Px8Lw" role="3clFbG">
            <node concept="2ShNRf" id="1D6Sg8Px8LU" role="3K4E3e">
              <node concept="2HTt$P" id="1D6Sg8Px8ZP" role="2ShVmc">
                <node concept="3Tqbb2" id="1D6Sg8Px90q" role="2HTBi0">
                  <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
                <node concept="13iPFW" id="1D6Sg8Px91n" role="2HTEbv" />
              </node>
            </node>
            <node concept="2ShNRf" id="1D6Sg8Px91U" role="3K4GZi">
              <node concept="kMnCb" id="1D6Sg8Px9g6" role="2ShVmc">
                <node concept="3Tqbb2" id="1D6Sg8Px9h3" role="kMuH3">
                  <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1D6Sg8Px8rL" role="3K4Cdx">
              <ref role="3cqZAo" node="1D6Sg8Px8p8" resolve="includeSelf" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrnOi4Y" role="13h7CS">
      <property role="TrG5h" value="isVisible" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4cPrGrnOi4Z" role="1B3o_S" />
      <node concept="10P_77" id="4cPrGrnOilh" role="3clF45" />
      <node concept="3clFbS" id="4cPrGrnOi51" role="3clF47">
        <node concept="3clFbF" id="4cPrGrnOilP" role="3cqZAp">
          <node concept="3clFbT" id="4cPrGrnOilO" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1oBvzyi$LRT" role="13h7CS">
      <property role="TrG5h" value="getOwner" />
      <node concept="3Tm1VV" id="1oBvzyi$LRU" role="1B3o_S" />
      <node concept="3Tqbb2" id="1oBvzyi$Mi2" role="3clF45" />
      <node concept="3clFbS" id="1oBvzyi$LRW" role="3clF47">
        <node concept="3clFbF" id="1oBvzyi$Miu" role="3cqZAp">
          <node concept="2OqwBi" id="1oBvzyi$Vk2" role="3clFbG">
            <node concept="2OqwBi" id="1oBvzyi$U_e" role="2Oq$k0">
              <node concept="2OqwBi" id="1oBvzyi$Qx5" role="2Oq$k0">
                <node concept="2OqwBi" id="1oBvzyi$Mr7" role="2Oq$k0">
                  <node concept="13iPFW" id="1oBvzyi$Mit" role="2Oq$k0" />
                  <node concept="z$bX8" id="1oBvzyi$M_C" role="2OqNvi">
                    <node concept="1xMEDy" id="1oBvzyi$OAg" role="1xVPHs">
                      <node concept="chp4Y" id="1oBvzyi$OUv" role="ri$Ld">
                        <ref role="cht4Q" to="j481:AkkmJBMaEB" resolve="Cell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="13MTOL" id="1oBvzyi$SuS" role="2OqNvi">
                  <ref role="13MTZf" to="j481:4j3vk5Z9tZq" resolve="node" />
                </node>
              </node>
              <node concept="1KnU$U" id="1oBvzyi$UWK" role="2OqNvi" />
            </node>
            <node concept="1uHKPH" id="1oBvzyi$Vq4" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5HO1kYmA37c" role="13h7CW">
      <node concept="3clFbS" id="5HO1kYmA37d" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5HO1kYmAj9O">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
    <node concept="13hLZK" id="5HO1kYmAj9P" role="13h7CW">
      <node concept="3clFbS" id="5HO1kYmAj9Q" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5HO1kYmAjb1" role="13h7CS">
      <property role="TrG5h" value="firstLeaf" />
      <ref role="13i0hy" node="5HO1kYmAidB" resolve="firstLeaf" />
      <node concept="3Tm1VV" id="5HO1kYmAjb2" role="1B3o_S" />
      <node concept="3clFbS" id="5HO1kYmAjb7" role="3clF47">
        <node concept="3clFbF" id="5HO1kYmAjoC" role="3cqZAp">
          <node concept="3K4zz7" id="5HO1kYmAqL$" role="3clFbG">
            <node concept="13iPFW" id="5HO1kYmAqLP" role="3K4E3e" />
            <node concept="2OqwBi" id="5HO1kYmAxDo" role="3K4GZi">
              <node concept="2OqwBi" id="5HO1kYmAuKx" role="2Oq$k0">
                <node concept="2OqwBi" id="5HO1kYmAqY9" role="2Oq$k0">
                  <node concept="13iPFW" id="5HO1kYmAqOX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5HO1kYmArbH" role="2OqNvi">
                    <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                  </node>
                </node>
                <node concept="1uHKPH" id="5HO1kYmAw5V" role="2OqNvi" />
              </node>
              <node concept="2qgKlT" id="5HO1kYmAxPM" role="2OqNvi">
                <ref role="37wK5l" node="5HO1kYmAidB" resolve="firstLeaf" />
              </node>
            </node>
            <node concept="2OqwBi" id="5HO1kYmAlvE" role="3K4Cdx">
              <node concept="2OqwBi" id="5HO1kYmAjxr" role="2Oq$k0">
                <node concept="13iPFW" id="5HO1kYmAjoB" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5HO1kYmAjG7" role="2OqNvi">
                  <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                </node>
              </node>
              <node concept="1v1jN8" id="5HO1kYmAp1$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5HO1kYmAjb8" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
    </node>
    <node concept="13i0hz" id="6SPevSMCu7E" role="13h7CS">
      <property role="TrG5h" value="lastLeaf" />
      <ref role="13i0hy" node="6SPevSMCs5i" resolve="lastLeaf" />
      <node concept="3Tm1VV" id="6SPevSMCu7F" role="1B3o_S" />
      <node concept="3clFbS" id="6SPevSMCu7K" role="3clF47">
        <node concept="3clFbF" id="6SPevSMCuet" role="3cqZAp">
          <node concept="3K4zz7" id="6SPevSMCueu" role="3clFbG">
            <node concept="13iPFW" id="6SPevSMCuev" role="3K4E3e" />
            <node concept="2OqwBi" id="6SPevSMCuew" role="3K4GZi">
              <node concept="2OqwBi" id="6SPevSMCuex" role="2Oq$k0">
                <node concept="2OqwBi" id="6SPevSMCuey" role="2Oq$k0">
                  <node concept="13iPFW" id="6SPevSMCuez" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6SPevSMCue$" role="2OqNvi">
                    <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                  </node>
                </node>
                <node concept="1yVyf7" id="6SPevSMCvKF" role="2OqNvi" />
              </node>
              <node concept="2qgKlT" id="6SPevSMCw2r" role="2OqNvi">
                <ref role="37wK5l" node="6SPevSMCs5i" resolve="lastLeaf" />
              </node>
            </node>
            <node concept="2OqwBi" id="6SPevSMCueB" role="3K4Cdx">
              <node concept="2OqwBi" id="6SPevSMCueC" role="2Oq$k0">
                <node concept="13iPFW" id="6SPevSMCueD" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6SPevSMCueE" role="2OqNvi">
                  <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                </node>
              </node>
              <node concept="1v1jN8" id="6SPevSMCueF" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6SPevSMCu7L" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
    </node>
    <node concept="13i0hz" id="1D6Sg8Px9ym" role="13h7CS">
      <property role="TrG5h" value="descendantCells" />
      <ref role="13i0hy" node="1D6Sg8Px865" resolve="descendantCells" />
      <node concept="3Tm1VV" id="1D6Sg8Px9yp" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8Px9yB" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8Px9Rt" role="3cqZAp">
          <node concept="3K4zz7" id="1D6Sg8PxadX" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8PxaGg" role="3K4E3e">
              <node concept="2ShNRf" id="1D6Sg8PxaiE" role="2Oq$k0">
                <node concept="2HTt$P" id="1D6Sg8PxawF" role="2ShVmc">
                  <node concept="3Tqbb2" id="1D6Sg8Pxaxm" role="2HTBi0">
                    <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
                  </node>
                  <node concept="13iPFW" id="1D6Sg8Pxayv" role="2HTEbv" />
                </node>
              </node>
              <node concept="3QWeyG" id="1D6Sg8PxaNp" role="2OqNvi">
                <node concept="BsUDl" id="1D6Sg8PxaOR" role="576Qk">
                  <ref role="37wK5l" node="1D6Sg8Px865" resolve="descendantCells" />
                  <node concept="3clFbT" id="1D6Sg8PxaQv" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1D6Sg8Pxdk$" role="3K4GZi">
              <node concept="2OqwBi" id="1D6Sg8PxbrH" role="2Oq$k0">
                <node concept="13iPFW" id="1D6Sg8PxaSb" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1D6Sg8PxbM7" role="2OqNvi">
                  <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                </node>
              </node>
              <node concept="3goQfb" id="1D6Sg8PxgO0" role="2OqNvi">
                <node concept="1bVj0M" id="1D6Sg8PxgO2" role="23t8la">
                  <node concept="3clFbS" id="1D6Sg8PxgO3" role="1bW5cS">
                    <node concept="3clFbF" id="1D6Sg8PxgWR" role="3cqZAp">
                      <node concept="2OqwBi" id="1D6Sg8PxhbJ" role="3clFbG">
                        <node concept="37vLTw" id="1D6Sg8PxgWQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1D6Sg8PxgO4" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="1D6Sg8Pxhje" role="2OqNvi">
                          <ref role="37wK5l" node="1D6Sg8Px865" resolve="descendantCells" />
                          <node concept="3clFbT" id="1D6Sg8PxhsI" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1D6Sg8PxgO4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1D6Sg8PxgO5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1D6Sg8Px9Rr" role="3K4Cdx">
              <ref role="3cqZAo" node="1D6Sg8Px9yC" resolve="includeSelf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1D6Sg8Px9yC" role="3clF46">
        <property role="TrG5h" value="includeSelf" />
        <node concept="10P_77" id="1D6Sg8Px9yD" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1D6Sg8Px9yE" role="3clF45">
        <node concept="3Tqbb2" id="1D6Sg8Px9yF" role="A3Ik2">
          <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1nlzgMD9Y_b">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:1nlzgMD9WVV" resolve="IAction" />
    <node concept="13i0hz" id="1nlzgMD9YAI" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="64FHHkQ8zC7" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="64FHHkQ8zCA" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1nlzgMD9YAJ" role="1B3o_S" />
      <node concept="3cqZAl" id="1nlzgMD9YAY" role="3clF45" />
      <node concept="3clFbS" id="1nlzgMD9YAL" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9QMHo" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getActionSource" />
      <node concept="3Tm1VV" id="5Nhi$S9QMHp" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Nhi$S9QMHI" role="3clF45">
        <ref role="ehGHo" to="j481:5Nhi$S9QKFe" resolve="IActionSource" />
      </node>
      <node concept="3clFbS" id="5Nhi$S9QMHr" role="3clF47" />
    </node>
    <node concept="13hLZK" id="1nlzgMD9Y_c" role="13h7CW">
      <node concept="3clFbS" id="1nlzgMD9Y_d" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7zDl3zklPuw" role="13h7CS">
      <property role="TrG5h" value="getActions" />
      <ref role="13i0hy" node="7zDl3zklxHf" resolve="getActions" />
      <node concept="3Tm1VV" id="7zDl3zklPuz" role="1B3o_S" />
      <node concept="3clFbS" id="7zDl3zklPuB" role="3clF47">
        <node concept="3clFbF" id="7zDl3zklxTp" role="3cqZAp">
          <node concept="2ShNRf" id="7zDl3zklxTn" role="3clFbG">
            <node concept="2HTt$P" id="7zDl3zklxZC" role="2ShVmc">
              <node concept="3Tqbb2" id="7zDl3zkly0h" role="2HTBi0">
                <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
              </node>
              <node concept="13iPFW" id="7zDl3zkly2W" role="2HTEbv" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7zDl3zklPuC" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="7zDl3zklPuD" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="7zDl3zklPuE" role="3clF45">
        <node concept="3Tqbb2" id="7zDl3zklPuF" role="A3Ik2">
          <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7zDl3zksHky" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getMatchingText" />
      <node concept="3Tm1VV" id="7zDl3zksHkz" role="1B3o_S" />
      <node concept="17QB3L" id="7zDl3zksHlD" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zksHk_" role="3clF47">
        <node concept="3clFbF" id="7zDl3zksHqT" role="3cqZAp">
          <node concept="10Nm6u" id="7zDl3zksHqS" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7zDl3zksHrc" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getActionDescription" />
      <node concept="3Tm1VV" id="7zDl3zksHrd" role="1B3o_S" />
      <node concept="17QB3L" id="7zDl3zksHsp" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zksHrf" role="3clF47">
        <node concept="3clFbF" id="7zDl3zksHxD" role="3cqZAp">
          <node concept="10Nm6u" id="7zDl3zksHxC" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9QMNN">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5Nhi$S9QMFF" resolve="AbstractAction" />
    <node concept="13hLZK" id="5Nhi$S9QMNO" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9QMNP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9QMPm" role="13h7CS">
      <property role="TrG5h" value="getActionSource" />
      <ref role="13i0hy" node="5Nhi$S9QMHo" resolve="getActionSource" />
      <node concept="3Tm1VV" id="5Nhi$S9QMPn" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9QMPq" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9QMPD" role="3cqZAp">
          <node concept="2OqwBi" id="5Nhi$S9QN0d" role="3clFbG">
            <node concept="13iPFW" id="5Nhi$S9QMPC" role="2Oq$k0" />
            <node concept="3TrEf2" id="5Nhi$S9QNaT" role="2OqNvi">
              <ref role="3Tt5mk" to="j481:5Nhi$S9QMH4" resolve="actionSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5Nhi$S9QMPr" role="3clF45">
        <ref role="ehGHo" to="j481:5Nhi$S9QKFe" resolve="IActionSource" />
      </node>
    </node>
    <node concept="13i0hz" id="1D6Sg8Psyqp" role="13h7CS">
      <property role="TrG5h" value="getMatchingText" />
      <ref role="13i0hy" node="7zDl3zksHky" resolve="getMatchingText" />
      <node concept="3Tm1VV" id="1D6Sg8Psyqq" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8Psyqv" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8Psy$_" role="3cqZAp">
          <node concept="2OqwBi" id="1D6Sg8PsyI5" role="3clFbG">
            <node concept="13iPFW" id="1D6Sg8Psy$$" role="2Oq$k0" />
            <node concept="3TrcHB" id="1D6Sg8PsyWM" role="2OqNvi">
              <ref role="3TsBF5" to="j481:1D6Sg8Psyny" resolve="matchingText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1D6Sg8Psyqw" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1D6Sg8Psyq_" role="13h7CS">
      <property role="TrG5h" value="getActionDescription" />
      <ref role="13i0hy" node="7zDl3zksHrc" resolve="getActionDescription" />
      <node concept="3Tm1VV" id="1D6Sg8PsyqA" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8PsyqF" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8PsyZw" role="3cqZAp">
          <node concept="2OqwBi" id="1D6Sg8Psz90" role="3clFbG">
            <node concept="13iPFW" id="1D6Sg8PsyZv" role="2Oq$k0" />
            <node concept="3TrcHB" id="1D6Sg8PsznH" role="2OqNvi">
              <ref role="3TsBF5" to="j481:1D6Sg8Psyn$" resolve="actionDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1D6Sg8PsyqG" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9R7uH">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:1nlzgMD9WYW" resolve="CellKeyHandlerAction" />
    <node concept="13hLZK" id="5Nhi$S9R7uI" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9R7uJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9R7wg" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5Nhi$S9R7wj" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9R7wm" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9R7xs" role="3cqZAp">
          <node concept="2OqwBi" id="5Nhi$S9R80V" role="3clFbG">
            <node concept="2OqwBi" id="5Nhi$S9R7EU" role="2Oq$k0">
              <node concept="13iPFW" id="5Nhi$S9R7xr" role="2Oq$k0" />
              <node concept="3TrEf2" id="5Nhi$S9R7SM" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:1nlzgMD9X0n" resolve="handler" />
              </node>
            </node>
            <node concept="p1pJ4" id="5Nhi$S9RiAR" role="2OqNvi">
              <ref role="p1pIP" to="m3vg:6g556hWLiAf" resolve="execute" />
              <node concept="37vLTw" id="5Nhi$S9RlMS" role="p08jE">
                <ref role="3cqZAo" node="5Nhi$S9R7wn" resolve="viewerState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9R7wn" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5Nhi$S9R7wo" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Nhi$S9R7wp" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9RyQ0">
    <property role="3GE5qa" value="conceptRef" />
    <ref role="13h7C2" to="j481:5Nhi$S9RyOj" resolve="SContainmentLinkRef" />
    <node concept="13i0hz" id="5Nhi$S9RyRz" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="fromContainmentLink" />
      <node concept="37vLTG" id="5Nhi$S9Rz16" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="5Nhi$S9Rz2G" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Nhi$S9RyR$" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Nhi$S9RyWj" role="3clF45">
        <ref role="ehGHo" to="j481:5Nhi$S9RyOj" resolve="SContainmentLinkRef" />
      </node>
      <node concept="3clFbS" id="5Nhi$S9RyRA" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9Rz4t" role="3cqZAp">
          <node concept="2pJPEk" id="5Nhi$S9Rz4r" role="3clFbG">
            <node concept="2pJPED" id="5Nhi$S9Rz7X" role="2pJPEn">
              <ref role="2pJxaS" to="j481:5Nhi$S9RyOj" resolve="SContainmentLinkRef" />
              <node concept="2pJxcG" id="5Nhi$S9Rzae" role="2pJxcM">
                <ref role="2pJxcJ" to="j481:5Nhi$S9RyPG" resolve="serialized" />
                <node concept="BsUDl" id="3EG7IPowqHf" role="28ntcv">
                  <ref role="37wK5l" node="3EG7IPowq8E" resolve="serialize" />
                  <node concept="37vLTw" id="3EG7IPowqHM" role="37wK5m">
                    <ref role="3cqZAo" node="5Nhi$S9Rz16" resolve="link" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Nhi$S9REAa" role="13h7CS">
      <property role="TrG5h" value="resolve" />
      <node concept="3Tm1VV" id="5Nhi$S9REAb" role="1B3o_S" />
      <node concept="3uibUv" id="5Nhi$S9REAK" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3clFbS" id="5Nhi$S9REAd" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9RGE6" role="3cqZAp">
          <node concept="2YIFZM" id="5Nhi$S9RGIS" role="3clFbG">
            <ref role="37wK5l" to="wb4m:~SContainmentLinkAdapter.deserialize(java.lang.String)" resolve="deserialize" />
            <ref role="1Pybhc" to="wb4m:~SContainmentLinkAdapter" resolve="SContainmentLinkAdapter" />
            <node concept="2OqwBi" id="5Nhi$S9RGNm" role="37wK5m">
              <node concept="13iPFW" id="5Nhi$S9RGLc" role="2Oq$k0" />
              <node concept="3TrcHB" id="5Nhi$S9RGON" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5Nhi$S9RyPG" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3EG7IPowq8E" role="13h7CS">
      <property role="TrG5h" value="serialize" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="3EG7IPowqxJ" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3EG7IPowqzS" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3EG7IPowq8F" role="1B3o_S" />
      <node concept="17QB3L" id="3EG7IPowqtK" role="3clF45" />
      <node concept="3clFbS" id="3EG7IPowq8H" role="3clF47">
        <node concept="3clFbF" id="3EG7IPowq$h" role="3cqZAp">
          <node concept="2OqwBi" id="3EG7IPowq$j" role="3clFbG">
            <node concept="1eOMI4" id="3EG7IPowq$k" role="2Oq$k0">
              <node concept="10QFUN" id="3EG7IPowq$l" role="1eOMHV">
                <node concept="3uibUv" id="3EG7IPowq$m" role="10QFUM">
                  <ref role="3uigEE" to="wb4m:~SContainmentLinkAdapter" resolve="SContainmentLinkAdapter" />
                </node>
                <node concept="37vLTw" id="3EG7IPowq$n" role="10QFUP">
                  <ref role="3cqZAo" node="3EG7IPowqxJ" resolve="link" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3EG7IPowq$o" role="2OqNvi">
              <ref role="37wK5l" to="wb4m:~SContainmentLinkAdapter.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5Nhi$S9RyQ1" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9RyQ2" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9RJNU">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:1nlzgMD9WXk" resolve="AddNewChildAction" />
    <node concept="13hLZK" id="5Nhi$S9RJNV" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9RJNW" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9RJQf" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5Nhi$S9RJQi" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9RJQl" role="3clF47">
        <node concept="3cpWs8" id="4j3vk5Z88tB" role="3cqZAp">
          <node concept="3cpWsn" id="4j3vk5Z88tC" role="3cpWs9">
            <property role="TrG5h" value="addedNode" />
            <node concept="3uibUv" id="4j3vk5Z8708" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Nhi$S9RND8" role="3cqZAp">
          <node concept="3clFbS" id="5Nhi$S9RNDa" role="3clFbx">
            <node concept="3clFbF" id="4j3vk5Z89gH" role="3cqZAp">
              <node concept="37vLTI" id="4j3vk5Z89gJ" role="3clFbG">
                <node concept="2YIFZM" id="4j3vk5Z88tD" role="37vLTx">
                  <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                  <ref role="37wK5l" to="l6bp:30TKBrMaab5" resolve="addNewChild" />
                  <node concept="2OqwBi" id="4j3vk5Z88tE" role="37wK5m">
                    <node concept="13iPFW" id="4j3vk5Z88tF" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4j3vk5Z88tG" role="2OqNvi">
                      <ref role="3Tt5mk" to="j481:1nlzgMD9WYH" resolve="parentNode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4j3vk5Z88tH" role="37wK5m">
                    <node concept="2OqwBi" id="4j3vk5Z88tI" role="2Oq$k0">
                      <node concept="13iPFW" id="4j3vk5Z88tJ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4j3vk5Z88tK" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:5Nhi$S9RHoI" resolve="slink" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4j3vk5Z88tL" role="2OqNvi">
                      <ref role="37wK5l" node="5Nhi$S9REAa" resolve="resolve" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4j3vk5Z88tM" role="37wK5m">
                    <node concept="13iPFW" id="4j3vk5Z88tN" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4j3vk5Z88tO" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:1nlzgMD9WYS" resolve="index" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4j3vk5Z89gN" role="37vLTJ">
                  <ref role="3cqZAo" node="4j3vk5Z88tC" resolve="addedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5Nhi$S9RObS" role="3clFbw">
            <node concept="2OqwBi" id="5Nhi$S9RNQ1" role="2Oq$k0">
              <node concept="13iPFW" id="5Nhi$S9RNL6" role="2Oq$k0" />
              <node concept="3TrEf2" id="5Nhi$S9RNZ0" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5Nhi$S9RNvO" resolve="childConcept" />
              </node>
            </node>
            <node concept="3w_OXm" id="5Nhi$S9ROvh" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="5Nhi$S9ROTA" role="9aQIa">
            <node concept="3clFbS" id="5Nhi$S9ROTB" role="9aQI4">
              <node concept="3clFbF" id="4j3vk5Z89lC" role="3cqZAp">
                <node concept="37vLTI" id="4j3vk5Z89lE" role="3clFbG">
                  <node concept="2YIFZM" id="4j3vk5Z88Na" role="37vLTx">
                    <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                    <ref role="37wK5l" to="l6bp:30TKBrMe336" resolve="addNewChild" />
                    <node concept="2OqwBi" id="4j3vk5Z88Nb" role="37wK5m">
                      <node concept="13iPFW" id="4j3vk5Z88Nc" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4j3vk5Z88Nd" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:1nlzgMD9WYH" resolve="parentNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4j3vk5Z88Ne" role="37wK5m">
                      <node concept="2OqwBi" id="4j3vk5Z88Nf" role="2Oq$k0">
                        <node concept="13iPFW" id="4j3vk5Z88Ng" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4j3vk5Z88Nh" role="2OqNvi">
                          <ref role="3Tt5mk" to="j481:5Nhi$S9RHoI" resolve="slink" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4j3vk5Z88Ni" role="2OqNvi">
                        <ref role="37wK5l" node="5Nhi$S9REAa" resolve="resolve" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4j3vk5Z88Nj" role="37wK5m">
                      <node concept="13iPFW" id="4j3vk5Z88Nk" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4j3vk5Z88Nl" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:1nlzgMD9WYS" resolve="index" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4j3vk5Z88Nm" role="37wK5m">
                      <node concept="2OqwBi" id="4j3vk5Z88Nn" role="2Oq$k0">
                        <node concept="13iPFW" id="4j3vk5Z88No" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4j3vk5Z88Np" role="2OqNvi">
                          <ref role="3Tt5mk" to="j481:5Nhi$S9RNvO" resolve="childConcept" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4j3vk5Z88Nq" role="2OqNvi">
                        <ref role="37wK5l" node="5Nhi$S9RMaT" resolve="resolve" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4j3vk5Z89Se" role="37vLTJ">
                    <ref role="3cqZAo" node="4j3vk5Z88tC" resolve="addedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4j3vk5Z8eH1" role="3cqZAp">
          <node concept="2YIFZM" id="4j3vk5Z8f5H" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="4j3vk5Z8g8u" role="37wK5m">
              <node concept="2pJPED" id="4j3vk5Z8gdM" role="2pJPEn">
                <ref role="2pJxaS" to="j481:4j3vk5Z85Yf" resolve="SelectAddedNode" />
                <node concept="2pIpSj" id="4j3vk5Z8gi0" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:4j3vk5Z863p" resolve="addedNode" />
                  <node concept="36biLy" id="4j3vk5Z8gww" role="28nt2d">
                    <node concept="37vLTw" id="4j3vk5Z8gzE" role="36biLW">
                      <ref role="3cqZAo" node="4j3vk5Z88tC" resolve="addedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4j3vk5Z8fq_" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9RJQm" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="4j3vk5Z8fwy" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="4j3vk5Z8fFe" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9RJQm" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5Nhi$S9RJQn" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Nhi$S9RJQo" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9RM3H">
    <property role="3GE5qa" value="conceptRef" />
    <ref role="13h7C2" to="j481:5Nhi$S9RM2i" resolve="SConceptRef" />
    <node concept="13i0hz" id="5Nhi$S9RMaD" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="fromConcept" />
      <node concept="37vLTG" id="5Nhi$S9RMaE" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5Nhi$S9RMtw" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Nhi$S9RMaG" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Nhi$S9RMaH" role="3clF45">
        <ref role="ehGHo" to="j481:5Nhi$S9RM2i" resolve="SConceptRef" />
      </node>
      <node concept="3clFbS" id="5Nhi$S9RMaI" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9RMaJ" role="3cqZAp">
          <node concept="2pJPEk" id="5Nhi$S9RMaK" role="3clFbG">
            <node concept="2pJPED" id="5Nhi$S9RMaL" role="2pJPEn">
              <ref role="2pJxaS" to="j481:5Nhi$S9RM2i" resolve="SConceptRef" />
              <node concept="2pJxcG" id="5Nhi$S9RMaM" role="2pJxcM">
                <ref role="2pJxcJ" to="j481:5Nhi$S9RM3F" resolve="serialized" />
                <node concept="2OqwBi" id="5Nhi$S9RMaN" role="28ntcv">
                  <node concept="1eOMI4" id="5Nhi$S9RMaO" role="2Oq$k0">
                    <node concept="10QFUN" id="5Nhi$S9RMaP" role="1eOMHV">
                      <node concept="3uibUv" id="5Nhi$S9RMI6" role="10QFUM">
                        <ref role="3uigEE" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                      </node>
                      <node concept="37vLTw" id="5Nhi$S9RMaR" role="10QFUP">
                        <ref role="3cqZAo" node="5Nhi$S9RMaE" resolve="concept" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5Nhi$S9RMaS" role="2OqNvi">
                    <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.serialize()" resolve="serialize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Nhi$S9RMaT" role="13h7CS">
      <property role="TrG5h" value="resolve" />
      <node concept="3Tm1VV" id="5Nhi$S9RMaU" role="1B3o_S" />
      <node concept="3uibUv" id="5Nhi$S9RN4t" role="3clF45">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
      <node concept="3clFbS" id="5Nhi$S9RMaW" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9RMaX" role="3cqZAp">
          <node concept="2YIFZM" id="5Nhi$S9RMZ8" role="3clFbG">
            <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.deserialize(java.lang.String)" resolve="deserialize" />
            <ref role="1Pybhc" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
            <node concept="2OqwBi" id="5Nhi$S9RMZ9" role="37wK5m">
              <node concept="13iPFW" id="5Nhi$S9RMZa" role="2Oq$k0" />
              <node concept="3TrcHB" id="5Nhi$S9RMZb" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5Nhi$S9RM3F" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5Nhi$S9RM3I" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9RM3J" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9RQGv">
    <property role="3GE5qa" value="actions.changeText" />
    <ref role="13h7C2" to="j481:5Nhi$S9QMEg" resolve="InsertTextAction" />
    <node concept="13hLZK" id="5Nhi$S9RQGw" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9RQGx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5X1StJEK2PU" role="13h7CS">
      <property role="TrG5h" value="getNewText" />
      <ref role="13i0hy" node="5X1StJEJRAb" resolve="getNewText" />
      <node concept="3Tm1VV" id="5X1StJEK2PV" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEK2PY" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEBKyB" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEBKyC" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJEBKyD" role="1tU5fm" />
            <node concept="BsUDl" id="5X1StJEKa9j" role="33vP2m">
              <ref role="37wK5l" node="5X1StJEJWXx" resolve="getCurrentText" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJEBKyQ" role="3cqZAp">
          <node concept="37vLTI" id="5X1StJEBKyR" role="3clFbG">
            <node concept="3cpWs3" id="5X1StJEBKyS" role="37vLTx">
              <node concept="2OqwBi" id="5X1StJEBKyT" role="3uHU7w">
                <node concept="liA8E" id="5X1StJEBKyU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                  <node concept="2OqwBi" id="5X1StJEBKyV" role="37wK5m">
                    <node concept="13iPFW" id="5X1StJEBKyW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEBKyX" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5Nhi$S9QNff" resolve="position" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5X1StJEBKyY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5X1StJEBKyC" resolve="text" />
                </node>
              </node>
              <node concept="3cpWs3" id="5X1StJEBKyZ" role="3uHU7B">
                <node concept="2OqwBi" id="5X1StJEBKz0" role="3uHU7B">
                  <node concept="liA8E" id="5X1StJEBKz1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="5X1StJEBKz2" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5X1StJEBKz3" role="37wK5m">
                      <node concept="13iPFW" id="5X1StJEBKz4" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5X1StJEBKz5" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:5Nhi$S9QNff" resolve="position" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5X1StJEBKz6" role="2Oq$k0">
                    <ref role="3cqZAo" node="5X1StJEBKyC" resolve="text" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5X1StJEBKz7" role="3uHU7w">
                  <node concept="13iPFW" id="5X1StJEBKz8" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5X1StJEBKz9" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:5Nhi$S9QNfd" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5X1StJEBLf_" role="37vLTJ">
              <ref role="3cqZAo" node="5X1StJEBKyC" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJEBLz5" role="3cqZAp">
          <node concept="37vLTw" id="5X1StJEBLNz" role="3cqZAk">
            <ref role="3cqZAo" node="5X1StJEBKyC" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEK2PZ" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEKarm" role="13h7CS">
      <property role="TrG5h" value="newCaretPosition" />
      <ref role="13i0hy" node="5X1StJEJTuX" resolve="newCaretPosition" />
      <node concept="3Tm1VV" id="5X1StJEKarn" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEKaru" role="3clF47">
        <node concept="3clFbF" id="5X1StJEKaGn" role="3cqZAp">
          <node concept="3cpWs3" id="5X1StJEKcJ1" role="3clFbG">
            <node concept="2OqwBi" id="5X1StJEKdAQ" role="3uHU7w">
              <node concept="2OqwBi" id="5X1StJEKd8N" role="2Oq$k0">
                <node concept="13iPFW" id="5X1StJEKcJc" role="2Oq$k0" />
                <node concept="3TrcHB" id="5X1StJEKdc6" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:5Nhi$S9QNfd" resolve="text" />
                </node>
              </node>
              <node concept="liA8E" id="5X1StJEKdWr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
            <node concept="2OqwBi" id="5X1StJEKaQV" role="3uHU7B">
              <node concept="13iPFW" id="5X1StJEKaGi" role="2Oq$k0" />
              <node concept="3TrcHB" id="5X1StJEKbtD" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5Nhi$S9QNff" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="5X1StJEKarv" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEKzsB" role="13h7CS">
      <property role="TrG5h" value="getPatternForTransformAction" />
      <ref role="13i0hy" node="5X1StJEKygQ" resolve="getPatternForTransformAction" />
      <node concept="3Tm1VV" id="5X1StJEKzsE" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEKzsH" role="3clF47">
        <node concept="3KaCP$" id="5X1StJEKztG" role="3cqZAp">
          <node concept="37vLTw" id="5X1StJEKztQ" role="3KbGdf">
            <ref role="3cqZAo" node="5X1StJEKzsI" resolve="side" />
          </node>
          <node concept="3KbdKl" id="5X1StJEKztT" role="3KbHQx">
            <node concept="Rm8GO" id="5X1StJEKzuw" role="3Kbmr1">
              <ref role="Rm8GQ" to="gq2t:7zDl3zkd9RG" resolve="LEFT" />
              <ref role="1Px2BO" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
            </node>
            <node concept="3clFbS" id="5X1StJEKztV" role="3Kbo56">
              <node concept="3cpWs6" id="5X1StJEK$vW" role="3cqZAp">
                <node concept="3K4zz7" id="5X1StJEKA9I" role="3cqZAk">
                  <node concept="2OqwBi" id="5X1StJEKAj6" role="3K4E3e">
                    <node concept="13iPFW" id="5X1StJEKAa4" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEKAvB" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5Nhi$S9QNfd" resolve="text" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="5X1StJEKAvR" role="3K4GZi" />
                  <node concept="3clFbC" id="5X1StJEK_WN" role="3K4Cdx">
                    <node concept="3cmrfG" id="5X1StJEK_WY" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5X1StJEK$IE" role="3uHU7B">
                      <node concept="13iPFW" id="5X1StJEK$w3" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5X1StJEK$UT" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:5Nhi$S9QNff" resolve="position" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="5X1StJEKzu$" role="3KbHQx">
            <node concept="Rm8GO" id="5X1StJEKzvv" role="3Kbmr1">
              <ref role="Rm8GQ" to="gq2t:7zDl3zkd9UK" resolve="RIGHT" />
              <ref role="1Px2BO" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
            </node>
            <node concept="3clFbS" id="5X1StJEKzuA" role="3Kbo56">
              <node concept="3cpWs6" id="5X1StJEKAvX" role="3cqZAp">
                <node concept="3K4zz7" id="5X1StJEKG5Q" role="3cqZAk">
                  <node concept="2OqwBi" id="5X1StJEKGk$" role="3K4E3e">
                    <node concept="13iPFW" id="5X1StJEKG6j" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEKGAh" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5Nhi$S9QNfd" resolve="text" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="5X1StJEKGAk" role="3K4GZi" />
                  <node concept="3clFbC" id="5X1StJEKBG5" role="3K4Cdx">
                    <node concept="2EnYce" id="5X1StJEKFgy" role="3uHU7w">
                      <node concept="2OqwBi" id="5X1StJEKC_7" role="2Oq$k0">
                        <node concept="2OqwBi" id="5X1StJEKC8b" role="2Oq$k0">
                          <node concept="13iPFW" id="5X1StJEKBGg" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5X1StJEKCld" role="2OqNvi">
                            <ref role="3Tt5mk" to="j481:5X1StJEJSDJ" resolve="targetCell" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="5X1StJEKEaS" role="2OqNvi">
                          <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5X1StJEKF6Q" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5X1StJEKAHC" role="3uHU7B">
                      <node concept="13iPFW" id="5X1StJEKAw4" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5X1StJEKAZ0" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:5Nhi$S9QNff" resolve="position" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="5X1StJEKzuK" role="3KbHQx">
            <node concept="Rm8GO" id="5X1StJEKzw0" role="3Kbmr1">
              <ref role="Rm8GQ" to="gq2t:7zDl3zkd9XB" resolve="CENTER" />
              <ref role="1Px2BO" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
            </node>
            <node concept="3clFbS" id="5X1StJEKzuM" role="3Kbo56">
              <node concept="3cpWs6" id="5X1StJEKGAq" role="3cqZAp">
                <node concept="BsUDl" id="5X1StJEKGAZ" role="3cqZAk">
                  <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5X1StJEKzw2" role="3Kb1Dw">
            <node concept="YS8fn" id="5X1StJEKzw7" role="3cqZAp">
              <node concept="2ShNRf" id="5X1StJEKzwd" role="YScLw">
                <node concept="1pGfFk" id="5X1StJEKzHZ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="5X1StJEK$vJ" role="37wK5m">
                    <node concept="37vLTw" id="5X1StJEK$vQ" role="3uHU7w">
                      <ref role="3cqZAo" node="5X1StJEKzsI" resolve="side" />
                    </node>
                    <node concept="Xl_RD" id="5X1StJEKzI2" role="3uHU7B">
                      <property role="Xl_RC" value="Unknown: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJEKzsI" role="3clF46">
        <property role="TrG5h" value="side" />
        <node concept="3uibUv" id="5X1StJEKzsJ" role="1tU5fm">
          <ref role="3uigEE" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEKzsK" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9S5DI">
    <property role="3GE5qa" value="actions.changeText" />
    <ref role="13h7C2" to="j481:5Nhi$S9S5Ce" resolve="DeleteTextAction" />
    <node concept="13hLZK" id="5Nhi$S9S5DJ" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9S5DK" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5X1StJEK19Z" role="13h7CS">
      <property role="TrG5h" value="getNewText" />
      <ref role="13i0hy" node="5X1StJEJRAb" resolve="getNewText" />
      <node concept="3Tm1VV" id="5X1StJEK1a0" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEK1a3" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEJZLW" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEJZLX" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJEJZL6" role="1tU5fm" />
            <node concept="BsUDl" id="5X1StJEJZLY" role="33vP2m">
              <ref role="37wK5l" node="5X1StJEJWXx" resolve="getCurrentText" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJECmOO" role="3cqZAp">
          <node concept="3cpWs3" id="5X1StJEClKx" role="3cqZAk">
            <node concept="2OqwBi" id="5X1StJEClKy" role="3uHU7w">
              <node concept="37vLTw" id="5X1StJEClKz" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJZLX" resolve="text" />
              </node>
              <node concept="liA8E" id="5X1StJEClK$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cpWs3" id="5X1StJEClK_" role="37wK5m">
                  <node concept="2OqwBi" id="5X1StJEClKA" role="3uHU7w">
                    <node concept="13iPFW" id="5X1StJEClKB" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEClKC" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5Nhi$S9S5DF" resolve="length" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5X1StJEClKD" role="3uHU7B">
                    <node concept="13iPFW" id="5X1StJEClKE" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEClKF" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5Nhi$S9S5DD" resolve="start" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5X1StJEClKG" role="3uHU7B">
              <node concept="37vLTw" id="5X1StJEClKH" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJZLX" resolve="text" />
              </node>
              <node concept="liA8E" id="5X1StJEClKI" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="5X1StJEClKJ" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="5X1StJEClKK" role="37wK5m">
                  <node concept="13iPFW" id="5X1StJEClKL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5X1StJEClKM" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:5Nhi$S9S5DD" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEK1a4" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEK8HJ" role="13h7CS">
      <property role="TrG5h" value="newCaretPosition" />
      <ref role="13i0hy" node="5X1StJEJTuX" resolve="newCaretPosition" />
      <node concept="3Tm1VV" id="5X1StJEK8HK" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEK8HR" role="3clF47">
        <node concept="3clFbF" id="5X1StJEK8X3" role="3cqZAp">
          <node concept="2OqwBi" id="5X1StJEK97B" role="3clFbG">
            <node concept="13iPFW" id="5X1StJEK8WY" role="2Oq$k0" />
            <node concept="3TrcHB" id="5X1StJEK9kf" role="2OqNvi">
              <ref role="3TsBF5" to="j481:5Nhi$S9S5DD" resolve="start" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="5X1StJEK8HS" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEKyiK" role="13h7CS">
      <property role="TrG5h" value="getPatternForTransformAction" />
      <ref role="13i0hy" node="5X1StJEKygQ" resolve="getPatternForTransformAction" />
      <node concept="3Tm1VV" id="5X1StJEKyiN" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEKyiQ" role="3clF47">
        <node concept="3clFbF" id="5X1StJEKyj$" role="3cqZAp">
          <node concept="3K4zz7" id="5X1StJEKzsl" role="3clFbG">
            <node concept="BsUDl" id="5X1StJEKzsy" role="3K4E3e">
              <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
            </node>
            <node concept="10Nm6u" id="5X1StJEKAa1" role="3K4GZi" />
            <node concept="17R0WA" id="5X1StJEKz7m" role="3K4Cdx">
              <node concept="Rm8GO" id="5X1StJEKzff" role="3uHU7w">
                <ref role="Rm8GQ" to="gq2t:7zDl3zkd9XB" resolve="CENTER" />
                <ref role="1Px2BO" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
              </node>
              <node concept="37vLTw" id="5X1StJEKyjz" role="3uHU7B">
                <ref role="3cqZAo" node="5X1StJEKyiR" resolve="side" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJEKyiR" role="3clF46">
        <property role="TrG5h" value="side" />
        <node concept="3uibUv" id="5X1StJEKyiS" role="1tU5fm">
          <ref role="3uigEE" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEKyiT" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9SFKr">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5Nhi$S9SFJ0" resolve="ChangeSelectionAction" />
    <node concept="13hLZK" id="5Nhi$S9SFKs" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9SFKt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9SFLY" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5Nhi$S9SFM1" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9SFM4" role="3clF47">
        <node concept="3clFbF" id="7p9$dhpdePP" role="3cqZAp">
          <node concept="2YIFZM" id="7p9$dhpdeZ7" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="13iPFW" id="7p9$dhpdf0E" role="37wK5m" />
            <node concept="37vLTw" id="7p9$dhpdf5F" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9SFM5" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="7p9$dhpdfaG" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="7p9$dhpdfk5" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9SFM5" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5Nhi$S9SFM6" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Nhi$S9SFM7" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7p9$dhpdehe" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="4j3vk5Z868M" resolve="apply" />
      <node concept="3Tm1VV" id="7p9$dhpdehj" role="1B3o_S" />
      <node concept="3clFbS" id="7p9$dhpdehm" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9VkPw" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJF1jX1" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2OqwBi" id="5X1StJF1jX2" role="37wK5m">
              <node concept="13iPFW" id="5X1StJF1jX3" role="2Oq$k0" />
              <node concept="3TrEf2" id="5X1StJF1jX4" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5Nhi$S9SFKp" resolve="newSelection" />
              </node>
            </node>
            <node concept="37vLTw" id="5X1StJF1jX5" role="37wK5m">
              <ref role="3cqZAo" node="7p9$dhpdehn" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJF1jX6" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhpdehn" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="7p9$dhpdeho" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhpdehp" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="7p9$dhpdehq" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3cqZAl" id="7p9$dhpdehr" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9VwZ2">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5Nhi$S9VwXB" resolve="ChangeCCMenuSelectionAction" />
    <node concept="13hLZK" id="5Nhi$S9VwZ3" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9VwZ4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9Vx1g" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5Nhi$S9Vx1j" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9Vx1m" role="3clF47">
        <node concept="3clFbF" id="5Nhi$S9Vx1F" role="3cqZAp">
          <node concept="37vLTI" id="5Nhi$S9Vy2T" role="3clFbG">
            <node concept="2OqwBi" id="5Nhi$S9Vyf8" role="37vLTx">
              <node concept="13iPFW" id="5Nhi$S9Vy3r" role="2Oq$k0" />
              <node concept="3TrcHB" id="5Nhi$S9VyxU" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5Nhi$S9VwZ0" resolve="newIndex" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Nhi$S9VxCy" role="37vLTJ">
              <node concept="2OqwBi" id="5Nhi$S9Vx9$" role="2Oq$k0">
                <node concept="37vLTw" id="5Nhi$S9Vx1E" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Nhi$S9Vx1n" resolve="viewerState" />
                </node>
                <node concept="3TrEf2" id="5Nhi$S9Vxk2" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:3zTK92LqFrE" resolve="ccMenu" />
                </node>
              </node>
              <node concept="3TrcHB" id="5Nhi$S9VxOs" role="2OqNvi">
                <ref role="3TsBF5" to="j481:3zTK92LqFrC" resolve="selectionIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9Vx1n" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5Nhi$S9Vx1o" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Nhi$S9Vx1p" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Nhi$S9V_pF">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5Nhi$S9V_pf" resolve="ShowCCMenuAction" />
    <node concept="13hLZK" id="5Nhi$S9V_pG" role="13h7CW">
      <node concept="3clFbS" id="5Nhi$S9V_pH" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Nhi$S9V_re" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5Nhi$S9V_rh" role="1B3o_S" />
      <node concept="3clFbS" id="5Nhi$S9V_rk" role="3clF47">
        <node concept="3clFbF" id="3zTK92Lus9i" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJFobr3" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="5X1StJFobr4" role="37wK5m">
              <node concept="2pJPED" id="5X1StJFobr5" role="2pJPEn">
                <ref role="2pJxaS" to="j481:3zTK92LqFr_" resolve="CCMenuState" />
                <node concept="2pIpSj" id="5X1StJFobr6" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:3zTK92LqFrA" resolve="hostCell" />
                  <node concept="36biLy" id="5X1StJFobr7" role="28nt2d">
                    <node concept="2OqwBi" id="5X1StJFobr8" role="36biLW">
                      <node concept="13iPFW" id="5X1StJFobr9" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5X1StJFobra" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:5Nhi$S9V_pg" resolve="hostCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="5X1StJFobrb" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:7p9$dhpkB84" resolve="actionProviders" />
                  <node concept="36biLy" id="5X1StJFobrc" role="28nt2d">
                    <node concept="2OqwBi" id="5X1StJFobrd" role="36biLW">
                      <node concept="2OqwBi" id="5X1StJFobre" role="2Oq$k0">
                        <node concept="13iPFW" id="5X1StJFobrf" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="5X1StJFobrg" role="2OqNvi">
                          <ref role="3TtcxE" to="j481:7p9$dhpxGmO" resolve="actionProviders" />
                        </node>
                      </node>
                      <node concept="3$u5V9" id="5X1StJFobrh" role="2OqNvi">
                        <node concept="1bVj0M" id="5X1StJFobri" role="23t8la">
                          <node concept="3clFbS" id="5X1StJFobrj" role="1bW5cS">
                            <node concept="3clFbF" id="5X1StJFobrk" role="3cqZAp">
                              <node concept="2YIFZM" id="5X1StJFobrl" role="3clFbG">
                                <ref role="37wK5l" to="l6bp:6IHVO0thumm" resolve="copyAsMPSNode" />
                                <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                                <node concept="37vLTw" id="5X1StJFobrm" role="37wK5m">
                                  <ref role="3cqZAo" node="5X1StJFobrn" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5X1StJFobrn" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5X1StJFobro" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5X1StJFobrp" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9V_rl" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJFobrq" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:3zTK92LqFrE" resolve="ccMenu" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9V_rl" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5Nhi$S9V_rm" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Nhi$S9V_rn" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="TSXTNiS5i6">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:AkkmJBMaED" resolve="TextCell" />
    <node concept="13i0hz" id="TSXTNiS5iE" role="13h7CS">
      <property role="TrG5h" value="getVisibleText" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="TSXTNiS5iF" role="1B3o_S" />
      <node concept="17QB3L" id="TSXTNiS5DF" role="3clF45" />
      <node concept="3clFbS" id="TSXTNiS5iH" role="3clF47">
        <node concept="3cpWs8" id="TSXTNiSayg" role="3cqZAp">
          <node concept="3cpWsn" id="TSXTNiSayh" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="TSXTNiSavM" role="1tU5fm" />
            <node concept="3K4zz7" id="TSXTNiSayi" role="33vP2m">
              <node concept="2OqwBi" id="TSXTNiSayj" role="3K4E3e">
                <node concept="13iPFW" id="TSXTNiSayk" role="2Oq$k0" />
                <node concept="3TrcHB" id="TSXTNiSayl" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
                </node>
              </node>
              <node concept="2OqwBi" id="TSXTNiSaym" role="3K4Cdx">
                <node concept="2OqwBi" id="TSXTNiSayn" role="2Oq$k0">
                  <node concept="13iPFW" id="TSXTNiSayo" role="2Oq$k0" />
                  <node concept="3TrcHB" id="TSXTNiSayp" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
                  </node>
                </node>
                <node concept="17RvpY" id="TSXTNiSayq" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="TSXTNiSayr" role="3K4GZi">
                <node concept="13iPFW" id="TSXTNiSays" role="2Oq$k0" />
                <node concept="3TrcHB" id="TSXTNiSayt" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:TSXTNiRUzY" resolve="placeholderText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="TSXTNiS5Fq" role="3cqZAp">
          <node concept="3K4zz7" id="TSXTNiSbnQ" role="3clFbG">
            <node concept="37vLTw" id="TSXTNiSbos" role="3K4E3e">
              <ref role="3cqZAo" node="TSXTNiSayh" resolve="text" />
            </node>
            <node concept="Xl_RD" id="TSXTNiSboT" role="3K4GZi">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="3y3z36" id="TSXTNiSbjI" role="3K4Cdx">
              <node concept="10Nm6u" id="TSXTNiSbjP" role="3uHU7w" />
              <node concept="37vLTw" id="TSXTNiSayu" role="3uHU7B">
                <ref role="3cqZAo" node="TSXTNiSayh" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7zDl3zkduly" role="13h7CS">
      <property role="TrG5h" value="isValidText" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="7zDl3zkdur1" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7zDl3zkduso" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7zDl3zkdulz" role="1B3o_S" />
      <node concept="10P_77" id="7zDl3zkdun3" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zkdul_" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdutT" role="3cqZAp">
          <node concept="3K4zz7" id="7zDl3zkdvA5" role="3clFbG">
            <node concept="17R0WA" id="7p9$dhp2XaZ" role="3K4E3e">
              <node concept="2OqwBi" id="7p9$dhp2Xpv" role="3uHU7w">
                <node concept="13iPFW" id="7p9$dhp2Xc5" role="2Oq$k0" />
                <node concept="3TrcHB" id="7p9$dhp2XG0" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
                </node>
              </node>
              <node concept="37vLTw" id="7p9$dhp2Wcp" role="3uHU7B">
                <ref role="3cqZAo" node="7zDl3zkdur1" resolve="text" />
              </node>
            </node>
            <node concept="2OqwBi" id="7zDl3zkdxh2" role="3K4GZi">
              <node concept="2OqwBi" id="7zDl3zkdwgp" role="2Oq$k0">
                <node concept="13iPFW" id="7zDl3zkdvGZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="7zDl3zkdwtj" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7zDl3zkdpen" resolve="validator" />
                </node>
              </node>
              <node concept="2qgKlT" id="7zDl3zkdxsZ" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zkdpfH" resolve="isValid" />
                <node concept="37vLTw" id="7zDl3zkdx_h" role="37wK5m">
                  <ref role="3cqZAo" node="7zDl3zkdur1" resolve="text" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7zDl3zkdv2B" role="3K4Cdx">
              <node concept="2OqwBi" id="7zDl3zkduCt" role="2Oq$k0">
                <node concept="13iPFW" id="7zDl3zkdutS" role="2Oq$k0" />
                <node concept="3TrEf2" id="7zDl3zkduOM" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7zDl3zkdpen" resolve="validator" />
                </node>
              </node>
              <node concept="3w_OXm" id="7zDl3zkdve8" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="TSXTNiS5i7" role="13h7CW">
      <node concept="3clFbS" id="TSXTNiS5i8" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4LQCwK51Qba">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:AkkmJBMp9x" resolve="Layout" />
    <node concept="13i0hz" id="4LQCwK51Qde" role="13h7CS">
      <property role="TrG5h" value="getCssClass" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4LQCwK51Qdf" role="1B3o_S" />
      <node concept="17QB3L" id="4LQCwK51Qp3" role="3clF45" />
      <node concept="3clFbS" id="4LQCwK51Qdh" role="3clF47">
        <node concept="3clFbF" id="4LQCwK51QBm" role="3cqZAp">
          <node concept="2OqwBi" id="4LQCwK51R8p" role="3clFbG">
            <node concept="2OqwBi" id="4LQCwK51QJa" role="2Oq$k0">
              <node concept="13iPFW" id="4LQCwK51QBl" role="2Oq$k0" />
              <node concept="2yIwOk" id="4LQCwK51QTF" role="2OqNvi" />
            </node>
            <node concept="3n3YKJ" id="4LQCwK51Rsn" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4LQCwK51Qbb" role="13h7CW">
      <node concept="3clFbS" id="4LQCwK51Qbc" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="3EG7IPowloL">
    <property role="TrG5h" value="ActionTypes" />
    <node concept="Wx3nA" id="3EG7IPowluH" role="jymVt">
      <property role="TrG5h" value="INSERT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlto" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlvn" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlup" role="33vP2m">
        <property role="Xl_RC" value="insert" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlxQ" role="jymVt">
      <property role="TrG5h" value="DELETE_RIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlxR" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlxS" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlxT" role="33vP2m">
        <property role="Xl_RC" value="deleteRight" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlyj" role="jymVt">
      <property role="TrG5h" value="DELETE_LEFT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlyk" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlyl" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlym" role="33vP2m">
        <property role="Xl_RC" value="deleteLeft" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlCv" role="jymVt">
      <property role="TrG5h" value="TAB" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlCw" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlCx" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlCy" role="33vP2m">
        <property role="Xl_RC" value="tab" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlFQ" role="jymVt">
      <property role="TrG5h" value="COMPLETE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlFR" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlFS" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlFT" role="33vP2m">
        <property role="Xl_RC" value="complete" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlHc" role="jymVt">
      <property role="TrG5h" value="LEFT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlHd" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlHe" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlHf" role="33vP2m">
        <property role="Xl_RC" value="left" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlI6" role="jymVt">
      <property role="TrG5h" value="RIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlI7" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlI8" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlI9" role="33vP2m">
        <property role="Xl_RC" value="right" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlJr" role="jymVt">
      <property role="TrG5h" value="UP" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlJs" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlJt" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlJu" role="33vP2m">
        <property role="Xl_RC" value="up" />
      </node>
    </node>
    <node concept="Wx3nA" id="3EG7IPowlKH" role="jymVt">
      <property role="TrG5h" value="DOWN" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3EG7IPowlKI" role="1tU5fm" />
      <node concept="3Tm1VV" id="3EG7IPowlKJ" role="1B3o_S" />
      <node concept="Xl_RD" id="3EG7IPowlKK" role="33vP2m">
        <property role="Xl_RC" value="down" />
      </node>
    </node>
    <node concept="Wx3nA" id="6X_rIqRvGDO" role="jymVt">
      <property role="TrG5h" value="SELECT_LEFT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6X_rIqRvGDP" role="1tU5fm" />
      <node concept="3Tm1VV" id="6X_rIqRvGDQ" role="1B3o_S" />
      <node concept="Xl_RD" id="6X_rIqRvGDR" role="33vP2m">
        <property role="Xl_RC" value="selectLeft" />
      </node>
    </node>
    <node concept="Wx3nA" id="6X_rIqRvGFr" role="jymVt">
      <property role="TrG5h" value="SELECT_RIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6X_rIqRvGFs" role="1tU5fm" />
      <node concept="3Tm1VV" id="6X_rIqRvGFt" role="1B3o_S" />
      <node concept="Xl_RD" id="6X_rIqRvGFu" role="33vP2m">
        <property role="Xl_RC" value="selectRight" />
      </node>
    </node>
    <node concept="Wx3nA" id="7zDl3zkk6gV" role="jymVt">
      <property role="TrG5h" value="SIDE_TRANSFORM" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="7zDl3zkk6gW" role="1tU5fm" />
      <node concept="3Tm1VV" id="7zDl3zkk6gX" role="1B3o_S" />
      <node concept="Xl_RD" id="7zDl3zkk6gY" role="33vP2m">
        <property role="Xl_RC" value="sideTransform" />
      </node>
    </node>
    <node concept="Wx3nA" id="1D6Sg8PwI6V" role="jymVt">
      <property role="TrG5h" value="SUBSTITUTE_TRANSFORM" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1D6Sg8PwI6W" role="1tU5fm" />
      <node concept="3Tm1VV" id="1D6Sg8PwI6X" role="1B3o_S" />
      <node concept="Xl_RD" id="1D6Sg8PwI6Y" role="33vP2m">
        <property role="Xl_RC" value="substituteTransform" />
      </node>
    </node>
    <node concept="Wx3nA" id="1D6Sg8PwB6z" role="jymVt">
      <property role="TrG5h" value="ESCAPE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1D6Sg8PwB6$" role="1tU5fm" />
      <node concept="3Tm1VV" id="1D6Sg8PwB6_" role="1B3o_S" />
      <node concept="Xl_RD" id="1D6Sg8PwB6A" role="33vP2m">
        <property role="Xl_RC" value="escape" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3EG7IPowloM" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="4j3vk5Z863w">
    <ref role="13h7C2" to="j481:4j3vk5Z85T7" resolve="ISelectionChangeRequest" />
    <node concept="13i0hz" id="4j3vk5Z868M" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="4j3vk5Z86q1" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="4j3vk5Z86vm" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="4j3vk5Z8CLA" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="4j3vk5Z8CRS" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4j3vk5Z868N" role="1B3o_S" />
      <node concept="3cqZAl" id="4j3vk5Z86kB" role="3clF45" />
      <node concept="3clFbS" id="4j3vk5Z868P" role="3clF47" />
    </node>
    <node concept="13hLZK" id="4j3vk5Z863x" role="13h7CW">
      <node concept="3clFbS" id="4j3vk5Z863y" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4j3vk5Z8Cpz">
    <ref role="13h7C2" to="j481:4j3vk5Z85Yf" resolve="SelectAddedNode" />
    <node concept="13hLZK" id="4j3vk5Z8Cp$" role="13h7CW">
      <node concept="3clFbS" id="4j3vk5Z8Cp_" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4j3vk5Z8D2V" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="4j3vk5Z868M" resolve="apply" />
      <node concept="3Tm1VV" id="4j3vk5Z8D30" role="1B3o_S" />
      <node concept="3clFbS" id="4j3vk5Z8D33" role="3clF47">
        <node concept="3cpWs8" id="4j3vk5Z9Irz" role="3cqZAp">
          <node concept="3cpWsn" id="4j3vk5Z9Ir$" role="3cpWs9">
            <property role="TrG5h" value="cellToSelect" />
            <node concept="3Tqbb2" id="4j3vk5Z9Ihv" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaED" resolve="TextCell" />
            </node>
            <node concept="2OqwBi" id="4j3vk5Z9Ir_" role="33vP2m">
              <node concept="2OqwBi" id="4j3vk5Z9IrA" role="2Oq$k0">
                <node concept="2OqwBi" id="4j3vk5Z9IrB" role="2Oq$k0">
                  <node concept="2OqwBi" id="4j3vk5Z9IrC" role="2Oq$k0">
                    <node concept="2OqwBi" id="4j3vk5Z9IrD" role="2Oq$k0">
                      <node concept="2OqwBi" id="4j3vk5Z9IrE" role="2Oq$k0">
                        <node concept="37vLTw" id="4j3vk5Z9IrF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4j3vk5Z8D36" resolve="viewer" />
                        </node>
                        <node concept="3TrEf2" id="4j3vk5Z9IrG" role="2OqNvi">
                          <ref role="3Tt5mk" to="j481:7vWAzuEMeRP" resolve="contentLayer" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="4j3vk5Z9IrH" role="2OqNvi">
                        <node concept="1xMEDy" id="4j3vk5Z9IrI" role="1xVPHs">
                          <node concept="chp4Y" id="4j3vk5Z9IrJ" role="ri$Ld">
                            <ref role="cht4Q" to="j481:AkkmJBMaEB" resolve="Cell" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="4j3vk5Z9IrK" role="2OqNvi">
                      <node concept="1bVj0M" id="4j3vk5Z9IrL" role="23t8la">
                        <node concept="3clFbS" id="4j3vk5Z9IrM" role="1bW5cS">
                          <node concept="3clFbF" id="4j3vk5Z9IrN" role="3cqZAp">
                            <node concept="17R0WA" id="4j3vk5Z9IrO" role="3clFbG">
                              <node concept="2OqwBi" id="4j3vk5Z9IrP" role="3uHU7w">
                                <node concept="13iPFW" id="4j3vk5Z9IrQ" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4j3vk5Z9IrR" role="2OqNvi">
                                  <ref role="3Tt5mk" to="j481:4j3vk5Z863p" resolve="addedNode" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4j3vk5Z9IrS" role="3uHU7B">
                                <node concept="37vLTw" id="4j3vk5Z9IrT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4j3vk5Z9IrV" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="4j3vk5Z9IrU" role="2OqNvi">
                                  <ref role="3Tt5mk" to="j481:4j3vk5Z9tZq" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="4j3vk5Z9IrV" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4j3vk5Z9IrW" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1uHKPH" id="4j3vk5Z9IrX" role="2OqNvi" />
                </node>
                <node concept="2Rf3mk" id="4j3vk5Z9IrY" role="2OqNvi">
                  <node concept="1xMEDy" id="4j3vk5Z9IrZ" role="1xVPHs">
                    <node concept="chp4Y" id="4j3vk5Z9Is0" role="ri$Ld">
                      <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4j3vk5Z9Is1" role="1xVPHs" />
                </node>
              </node>
              <node concept="1uHKPH" id="4j3vk5Z9Is2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4j3vk5Z9IS2" role="3cqZAp">
          <node concept="3clFbS" id="4j3vk5Z9IS4" role="3clFbx">
            <node concept="3clFbF" id="4j3vk5Z9Jvm" role="3cqZAp">
              <node concept="2YIFZM" id="5X1StJF1k$U" role="3clFbG">
                <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
                <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                <node concept="2pJPEk" id="5X1StJF1k$V" role="37wK5m">
                  <node concept="2pJPED" id="5X1StJF1k$W" role="2pJPEn">
                    <ref role="2pJxaS" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
                    <node concept="2pIpSj" id="5X1StJF1k$X" role="2pJxcM">
                      <ref role="2pIpSl" to="j481:7vWAzuEMigU" resolve="focusCell" />
                      <node concept="36biLy" id="5X1StJF1k$Y" role="28nt2d">
                        <node concept="37vLTw" id="5X1StJF1k$Z" role="36biLW">
                          <ref role="3cqZAo" node="4j3vk5Z9Ir$" resolve="cellToSelect" />
                        </node>
                      </node>
                    </node>
                    <node concept="2pJxcG" id="5X1StJF1k_0" role="2pJxcM">
                      <ref role="2pJxcJ" to="j481:7vWAzuEL3BP" resolve="position" />
                      <node concept="3cmrfG" id="5X1StJF1k_1" role="28ntcv">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5X1StJF1k_2" role="37wK5m">
                  <ref role="3cqZAo" node="4j3vk5Z8D34" resolve="viewerState" />
                </node>
                <node concept="359W_D" id="5X1StJF1k_3" role="37wK5m">
                  <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                  <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4j3vk5Z9Jdx" role="3clFbw">
            <node concept="37vLTw" id="4j3vk5Z9J0O" role="2Oq$k0">
              <ref role="3cqZAo" node="4j3vk5Z9Ir$" resolve="cellToSelect" />
            </node>
            <node concept="3x8VRR" id="4j3vk5Z9Jqi" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4j3vk5Z8D34" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="4j3vk5Z8D35" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="4j3vk5Z8D36" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="4j3vk5Z8D37" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3cqZAl" id="4j3vk5Z8D38" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zkdpep">
    <property role="3GE5qa" value="textValidator" />
    <ref role="13h7C2" to="j481:7zDl3zkdpdd" resolve="ITextValidator" />
    <node concept="13i0hz" id="7zDl3zkdpfH" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="7zDl3zkdpiE" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7zDl3zkdpk1" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7zDl3zkdpfI" role="1B3o_S" />
      <node concept="10P_77" id="7zDl3zkdpfX" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zkdpfK" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7zDl3zkdpeq" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zkdper" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zkdpvI">
    <property role="3GE5qa" value="conceptRef" />
    <ref role="13h7C2" to="j481:7zDl3zkdplx" resolve="SPropertyRef" />
    <node concept="13i0hz" id="7zDl3zkdpx2" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="fromProperty" />
      <node concept="37vLTG" id="7zDl3zkdpx3" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="7zDl3zkdpO6" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7zDl3zkdpx5" role="1B3o_S" />
      <node concept="3Tqbb2" id="7zDl3zkdpx6" role="3clF45">
        <ref role="ehGHo" to="j481:7zDl3zkdplx" resolve="SPropertyRef" />
      </node>
      <node concept="3clFbS" id="7zDl3zkdpx7" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdpx8" role="3cqZAp">
          <node concept="2pJPEk" id="7zDl3zkdpx9" role="3clFbG">
            <node concept="2pJPED" id="7zDl3zkdpxa" role="2pJPEn">
              <ref role="2pJxaS" to="j481:7zDl3zkdplx" resolve="SPropertyRef" />
              <node concept="2pJxcG" id="7zDl3zkdpxb" role="2pJxcM">
                <ref role="2pJxcJ" to="j481:7zDl3zkdpmF" resolve="serialized" />
                <node concept="BsUDl" id="7zDl3zkdpxc" role="28ntcv">
                  <ref role="37wK5l" node="7zDl3zkdpxn" resolve="serialize" />
                  <node concept="37vLTw" id="7zDl3zkdpxd" role="37wK5m">
                    <ref role="3cqZAo" node="7zDl3zkdpx3" resolve="property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7zDl3zkdpxe" role="13h7CS">
      <property role="TrG5h" value="resolve" />
      <node concept="3Tm1VV" id="7zDl3zkdpxf" role="1B3o_S" />
      <node concept="3uibUv" id="7zDl3zkdraR" role="3clF45">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3clFbS" id="7zDl3zkdpxh" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdpxi" role="3cqZAp">
          <node concept="2YIFZM" id="7zDl3zkdr6e" role="3clFbG">
            <ref role="37wK5l" to="pwx:~SPropertyAdapter.deserialize(java.lang.String)" resolve="deserialize" />
            <ref role="1Pybhc" to="pwx:~SPropertyAdapter" resolve="SPropertyAdapter" />
            <node concept="2OqwBi" id="7zDl3zkdr6f" role="37wK5m">
              <node concept="13iPFW" id="7zDl3zkdr6g" role="2Oq$k0" />
              <node concept="3TrcHB" id="7zDl3zkdr6h" role="2OqNvi">
                <ref role="3TsBF5" to="j481:7zDl3zkdpmF" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7zDl3zkdpxn" role="13h7CS">
      <property role="TrG5h" value="serialize" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="7zDl3zkdpxo" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="7zDl3zkdpSe" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7zDl3zkdpxq" role="1B3o_S" />
      <node concept="17QB3L" id="7zDl3zkdpxr" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zkdpxs" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdpxt" role="3cqZAp">
          <node concept="2OqwBi" id="7zDl3zkdpxu" role="3clFbG">
            <node concept="1eOMI4" id="7zDl3zkdpxv" role="2Oq$k0">
              <node concept="10QFUN" id="7zDl3zkdpxw" role="1eOMHV">
                <node concept="3uibUv" id="7zDl3zkdq$H" role="10QFUM">
                  <ref role="3uigEE" to="pwx:~SPropertyAdapter" resolve="SPropertyAdapter" />
                </node>
                <node concept="37vLTw" id="7zDl3zkdpxy" role="10QFUP">
                  <ref role="3cqZAo" node="7zDl3zkdpxo" resolve="property" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7zDl3zkdpxz" role="2OqNvi">
              <ref role="37wK5l" to="pwx:~SPropertyAdapter.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7zDl3zkdpvJ" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zkdpvK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zkdrfR">
    <property role="3GE5qa" value="textValidator" />
    <ref role="13h7C2" to="j481:7zDl3zkdreA" resolve="PropertyValidator" />
    <node concept="13hLZK" id="7zDl3zkdrfS" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zkdrfT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7zDl3zkdrhb" role="13h7CS">
      <property role="TrG5h" value="isValid" />
      <ref role="13i0hy" node="7zDl3zkdpfH" resolve="isValid" />
      <node concept="3Tm1VV" id="7zDl3zkdrhe" role="1B3o_S" />
      <node concept="3clFbS" id="7zDl3zkdrhh" role="3clF47">
        <node concept="3clFbF" id="7tcNvKIw$F6" role="3cqZAp">
          <node concept="2YIFZM" id="7tcNvKIw_6e" role="3clFbG">
            <ref role="1Pybhc" to="p18k:7tcNvKIqK30" resolve="ConstraintsUtil" />
            <ref role="37wK5l" to="p18k:7tcNvKIw_jB" resolve="isValidPropertyValue" />
            <node concept="2OqwBi" id="7tcNvKIwABq" role="37wK5m">
              <node concept="2OqwBi" id="7tcNvKIwABr" role="2Oq$k0">
                <node concept="13iPFW" id="7tcNvKIwABs" role="2Oq$k0" />
                <node concept="3TrEf2" id="7tcNvKIwABt" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7zDl3zkdrfO" resolve="propertyRef" />
                </node>
              </node>
              <node concept="2qgKlT" id="7tcNvKIwABu" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zkdpxe" resolve="resolve" />
              </node>
            </node>
            <node concept="2OqwBi" id="7tcNvKIwABn" role="37wK5m">
              <node concept="13iPFW" id="7tcNvKIwABo" role="2Oq$k0" />
              <node concept="3TrEf2" id="7tcNvKIwABp" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:7zDl3zkdrfM" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="7tcNvKIwABv" role="37wK5m">
              <ref role="3cqZAo" node="7zDl3zkdrhi" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7zDl3zkdrhi" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7zDl3zkdrhj" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7zDl3zkdrhk" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zkdtiH">
    <property role="3GE5qa" value="textValidator" />
    <ref role="13h7C2" to="j481:7zDl3zkdthv" resolve="ConstantValidator" />
    <node concept="13hLZK" id="7zDl3zkdtiI" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zkdtiJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7zDl3zkdtk1" role="13h7CS">
      <property role="TrG5h" value="isValid" />
      <ref role="13i0hy" node="7zDl3zkdpfH" resolve="isValid" />
      <node concept="3Tm1VV" id="7zDl3zkdtk4" role="1B3o_S" />
      <node concept="3clFbS" id="7zDl3zkdtk7" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdtoo" role="3cqZAp">
          <node concept="17R0WA" id="7zDl3zkdtIt" role="3clFbG">
            <node concept="2OqwBi" id="7zDl3zkdtZn" role="3uHU7w">
              <node concept="13iPFW" id="7zDl3zkdtMq" role="2Oq$k0" />
              <node concept="3TrcHB" id="7zDl3zkdubD" role="2OqNvi">
                <ref role="3TsBF5" to="j481:7zDl3zkdtiF" resolve="text" />
              </node>
            </node>
            <node concept="37vLTw" id="7zDl3zkdtol" role="3uHU7B">
              <ref role="3cqZAo" node="7zDl3zkdtk8" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7zDl3zkdtk8" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7zDl3zkdtk9" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7zDl3zkdtka" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zke5GD">
    <property role="3GE5qa" value="sideTransform" />
    <ref role="13h7C2" to="j481:7zDl3zke1L7" resolve="ChangeSideTransformState" />
    <node concept="13hLZK" id="7zDl3zke5GE" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zke5GF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7zDl3zke5HX" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="7zDl3zke5I0" role="1B3o_S" />
      <node concept="3clFbS" id="7zDl3zke5I3" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkdKaT" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJF6xWd" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2OqwBi" id="5X1StJF6xWe" role="37wK5m">
              <node concept="13iPFW" id="5X1StJF6xWf" role="2Oq$k0" />
              <node concept="3TrEf2" id="5X1StJF6xWg" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:7zDl3zke1Mh" resolve="newState" />
              </node>
            </node>
            <node concept="37vLTw" id="5X1StJF6xWh" role="37wK5m">
              <ref role="3cqZAo" node="7zDl3zke5I4" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJF6xWi" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7zDl3zkbpRo" resolve="sideTransformState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p9$dhp7RoS" role="3cqZAp">
          <node concept="2YIFZM" id="7p9$dhp7Ryk" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="13iPFW" id="7p9$dhp7S0K" role="37wK5m" />
            <node concept="37vLTw" id="7p9$dhp7Piq" role="37wK5m">
              <ref role="3cqZAo" node="7zDl3zke5I4" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="7p9$dhp7S6P" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="7p9$dhp7SfM" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7zDl3zke5I4" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="7zDl3zke5I5" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="7zDl3zke5I6" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7p9$dhp7ShA" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="4j3vk5Z868M" resolve="apply" />
      <node concept="3Tm1VV" id="7p9$dhp7ShF" role="1B3o_S" />
      <node concept="3clFbS" id="7p9$dhp7ShI" role="3clF47">
        <node concept="3cpWs8" id="7p9$dhp7XIY" role="3cqZAp">
          <node concept="3cpWsn" id="7p9$dhp7XIZ" role="3cpWs9">
            <property role="TrG5h" value="stCell" />
            <node concept="3Tqbb2" id="7p9$dhp7XEf" role="1tU5fm">
              <ref role="ehGHo" to="j481:7zDl3zkem5w" resolve="SideTransformCell" />
            </node>
            <node concept="2OqwBi" id="7p9$dhp7XJ0" role="33vP2m">
              <node concept="2OqwBi" id="7p9$dhp7XJ1" role="2Oq$k0">
                <node concept="2OqwBi" id="7p9$dhp7XJ2" role="2Oq$k0">
                  <node concept="37vLTw" id="7p9$dhp7XJ3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7p9$dhp7ShL" resolve="viewer" />
                  </node>
                  <node concept="3TrEf2" id="7p9$dhp7XJ4" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7vWAzuEMeTc" resolve="interactionLayer" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="7p9$dhp7XJ5" role="2OqNvi">
                  <node concept="1xMEDy" id="7p9$dhp7XJ6" role="1xVPHs">
                    <node concept="chp4Y" id="7p9$dhp7XJ7" role="ri$Ld">
                      <ref role="cht4Q" to="j481:7zDl3zkem5w" resolve="SideTransformCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="7p9$dhp7XJ8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7p9$dhp7XLV" role="3cqZAp">
          <node concept="3clFbS" id="7p9$dhp7XLX" role="3clFbx">
            <node concept="3clFbF" id="7p9$dhp7YjD" role="3cqZAp">
              <node concept="2YIFZM" id="5X1StJF1kaf" role="3clFbG">
                <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
                <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                <node concept="2pJPEk" id="5X1StJF1kag" role="37wK5m">
                  <node concept="2pJPED" id="5X1StJF1kah" role="2pJPEn">
                    <ref role="2pJxaS" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
                    <node concept="2pIpSj" id="5X1StJF1kai" role="2pJxcM">
                      <ref role="2pIpSl" to="j481:7vWAzuEMigU" resolve="focusCell" />
                      <node concept="36biLy" id="5X1StJF1kaj" role="28nt2d">
                        <node concept="37vLTw" id="5X1StJF1kak" role="36biLW">
                          <ref role="3cqZAo" node="7p9$dhp7XIZ" resolve="stCell" />
                        </node>
                      </node>
                    </node>
                    <node concept="2pJxcG" id="5X1StJF1kal" role="2pJxcM">
                      <ref role="2pJxcJ" to="j481:7vWAzuEL3BP" resolve="position" />
                      <node concept="2OqwBi" id="5X1StJF1kam" role="28ntcv">
                        <node concept="13iPFW" id="5X1StJF1kan" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5X1StJF1kao" role="2OqNvi">
                          <ref role="3TsBF5" to="j481:5X1StJEUmv1" resolve="caretPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5X1StJF1kap" role="37wK5m">
                  <ref role="3cqZAo" node="7p9$dhp7ShJ" resolve="viewerState" />
                </node>
                <node concept="359W_D" id="5X1StJF1kaq" role="37wK5m">
                  <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                  <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7p9$dhp7XY9" role="3clFbw">
            <node concept="3x8VRR" id="7p9$dhp7YcT" role="2OqNvi" />
            <node concept="37vLTw" id="5X1StJF6zOC" role="2Oq$k0">
              <ref role="3cqZAo" node="7p9$dhp7XIZ" resolve="stCell" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhp7ShJ" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="7p9$dhp7ShK" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhp7ShL" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="7p9$dhp7ShM" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3cqZAl" id="7p9$dhp7ShN" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zkkSeH">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7zDl3zkkSdq" resolve="SetPropertyAction" />
    <node concept="13hLZK" id="7zDl3zkkSeI" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zkkSeJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7zDl3zkkSg1" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="7zDl3zkkSg4" role="1B3o_S" />
      <node concept="3clFbS" id="7zDl3zkkSg7" role="3clF47">
        <node concept="3clFbF" id="7zDl3zkkSgs" role="3cqZAp">
          <node concept="2OqwBi" id="7zDl3zkkT8a" role="3clFbG">
            <node concept="2JrnkZ" id="7zDl3zkkSSE" role="2Oq$k0">
              <node concept="2OqwBi" id="7zDl3zkkSpU" role="2JrQYb">
                <node concept="13iPFW" id="7zDl3zkkSgr" role="2Oq$k0" />
                <node concept="3TrEf2" id="7zDl3zkkSDO" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7zDl3zkkSeC" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7zDl3zkkTiS" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="2OqwBi" id="7zDl3zkkUd8" role="37wK5m">
                <node concept="2OqwBi" id="7zDl3zkkTxS" role="2Oq$k0">
                  <node concept="13iPFW" id="7zDl3zkkTlV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7zDl3zkkTNt" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7zDl3zkkSe$" resolve="propertyRef" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7zDl3zkkUsg" role="2OqNvi">
                  <ref role="37wK5l" node="7zDl3zkdpxe" resolve="resolve" />
                </node>
              </node>
              <node concept="2OqwBi" id="7zDl3zkkULT" role="37wK5m">
                <node concept="13iPFW" id="7zDl3zkkU_B" role="2Oq$k0" />
                <node concept="3TrcHB" id="7zDl3zkkV0P" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:7zDl3zkkSeA" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7zDl3zkkSg8" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="7zDl3zkkSg9" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="7zDl3zkkSga" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zklxFV">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
    <node concept="13i0hz" id="7zDl3zklxHf" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getActions" />
      <node concept="37vLTG" id="7zDl3zkly7T" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="7zDl3zkly9g" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7zDl3zklxHg" role="1B3o_S" />
      <node concept="A3Dl8" id="7zDl3zklxHv" role="3clF45">
        <node concept="3Tqbb2" id="7zDl3zklxHG" role="A3Ik2">
          <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
        </node>
      </node>
      <node concept="3clFbS" id="7zDl3zklxHi" role="3clF47" />
    </node>
    <node concept="13i0hz" id="4cPrGrn_pPy" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="isSame" />
      <node concept="37vLTG" id="4cPrGrn_pQk" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="4cPrGrn_pQM" role="1tU5fm">
          <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4cPrGrn_pPz" role="1B3o_S" />
      <node concept="10P_77" id="4cPrGrn_pPT" role="3clF45" />
      <node concept="3clFbS" id="4cPrGrn_pP_" role="3clF47">
        <node concept="3clFbF" id="4cPrGrn_pRs" role="3cqZAp">
          <node concept="2YFouu" id="4cPrGrn_q0t" role="3clFbG">
            <node concept="37vLTw" id="4cPrGrn_q4E" role="3uHU7w">
              <ref role="3cqZAo" node="4cPrGrn_pQk" resolve="other" />
            </node>
            <node concept="13iPFW" id="4cPrGrn_pRr" role="3uHU7B" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrn_vX9" role="13h7CS">
      <property role="TrG5h" value="filterDuplicates" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="4cPrGrn_vZ8" role="3clF46">
        <property role="TrG5h" value="providers" />
        <node concept="A3Dl8" id="4cPrGrn_vZm" role="1tU5fm">
          <node concept="3Tqbb2" id="4cPrGrn_vZC" role="A3Ik2">
            <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4cPrGrn_vXa" role="1B3o_S" />
      <node concept="A3Dl8" id="4cPrGrn_vYa" role="3clF45">
        <node concept="3Tqbb2" id="4cPrGrn_vY_" role="A3Ik2">
          <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
        </node>
      </node>
      <node concept="3clFbS" id="4cPrGrn_vXc" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrn_w16" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrn_w19" role="3cpWs9">
            <property role="TrG5h" value="uniqueProviders" />
            <node concept="_YKpA" id="4cPrGrn_w14" role="1tU5fm">
              <node concept="3Tqbb2" id="4cPrGrn_w1s" role="_ZDj9">
                <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
              </node>
            </node>
            <node concept="2ShNRf" id="4cPrGrn_w2L" role="33vP2m">
              <node concept="Tc6Ow" id="4cPrGrn_w2u" role="2ShVmc">
                <node concept="3Tqbb2" id="4cPrGrn_w2v" role="HW$YZ">
                  <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4cPrGrn_w3C" role="3cqZAp">
          <node concept="2GrKxI" id="4cPrGrn_w3E" role="2Gsz3X">
            <property role="TrG5h" value="provider" />
          </node>
          <node concept="37vLTw" id="4cPrGrn_w4n" role="2GsD0m">
            <ref role="3cqZAo" node="4cPrGrn_vZ8" resolve="providers" />
          </node>
          <node concept="3clFbS" id="4cPrGrn_w3I" role="2LFqv$">
            <node concept="3clFbJ" id="4cPrGrn_w7J" role="3cqZAp">
              <node concept="3fqX7Q" id="4cPrGrn_z4M" role="3clFbw">
                <node concept="2OqwBi" id="4cPrGrn_z4O" role="3fr31v">
                  <node concept="37vLTw" id="4cPrGrn_z4P" role="2Oq$k0">
                    <ref role="3cqZAo" node="4cPrGrn_w19" resolve="uniqueProviders" />
                  </node>
                  <node concept="2HwmR7" id="4cPrGrn_z4Q" role="2OqNvi">
                    <node concept="1bVj0M" id="4cPrGrn_z4R" role="23t8la">
                      <node concept="3clFbS" id="4cPrGrn_z4S" role="1bW5cS">
                        <node concept="3clFbF" id="4cPrGrn_zag" role="3cqZAp">
                          <node concept="2OqwBi" id="4cPrGrn_zpn" role="3clFbG">
                            <node concept="37vLTw" id="4cPrGrn_zaf" role="2Oq$k0">
                              <ref role="3cqZAo" node="4cPrGrn_z4T" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="4cPrGrn_zFR" role="2OqNvi">
                              <ref role="37wK5l" node="4cPrGrn_pPy" resolve="isSame" />
                              <node concept="2GrUjf" id="4cPrGrn_zNY" role="37wK5m">
                                <ref role="2Gs0qQ" node="4cPrGrn_w3E" resolve="provider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4cPrGrn_z4T" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4cPrGrn_z4U" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4cPrGrn_w7L" role="3clFbx">
                <node concept="3clFbF" id="4cPrGrn_$eN" role="3cqZAp">
                  <node concept="2OqwBi" id="4cPrGrn__l0" role="3clFbG">
                    <node concept="37vLTw" id="4cPrGrn_$eM" role="2Oq$k0">
                      <ref role="3cqZAo" node="4cPrGrn_w19" resolve="uniqueProviders" />
                    </node>
                    <node concept="TSZUe" id="4cPrGrn__Q3" role="2OqNvi">
                      <node concept="2GrUjf" id="4cPrGrn__Un" role="25WWJ7">
                        <ref role="2Gs0qQ" node="4cPrGrn_w3E" resolve="provider" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrn_w5n" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrn_w6b" role="3cqZAk">
            <ref role="3cqZAo" node="4cPrGrn_w19" resolve="uniqueProviders" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7zDl3zklxFW" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zklxFX" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7p9$dhpgGDC">
    <property role="3GE5qa" value="sideTransform" />
    <ref role="13h7C2" to="j481:7zDl3zkem5w" resolve="SideTransformCell" />
    <node concept="13hLZK" id="7p9$dhpgGDD" role="13h7CW">
      <node concept="3clFbS" id="7p9$dhpgGDE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7p9$dhpgGRw" role="13h7CS">
      <property role="TrG5h" value="isValidText" />
      <ref role="13i0hy" node="7zDl3zkduly" resolve="isValidText" />
      <node concept="3Tm1VV" id="7p9$dhpgGRz" role="1B3o_S" />
      <node concept="3clFbS" id="7p9$dhpgGRS" role="3clF47">
        <node concept="3clFbF" id="7p9$dhpgH0h" role="3cqZAp">
          <node concept="3clFbT" id="7p9$dhpgH0g" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhpgGRT" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7p9$dhpgGRU" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7p9$dhpgGRV" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJFbL5e" role="13h7CS">
      <property role="TrG5h" value="getVisibleText" />
      <ref role="13i0hy" node="TSXTNiS5iE" resolve="getVisibleText" />
      <node concept="3Tm1VV" id="5X1StJFbL5f" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJFbL5C" role="3clF47">
        <node concept="3cpWs8" id="5X1StJFbL6l" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJFbL6m" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJFbL6i" role="1tU5fm" />
            <node concept="2OqwBi" id="5X1StJFbL6n" role="33vP2m">
              <node concept="13iAh5" id="5X1StJFbL6o" role="2Oq$k0" />
              <node concept="2qgKlT" id="5X1StJFbL6p" role="2OqNvi">
                <ref role="37wK5l" node="TSXTNiS5iE" resolve="getVisibleText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJFbL5H" role="3cqZAp">
          <node concept="3K4zz7" id="5X1StJFbLHw" role="3clFbG">
            <node concept="Xl_RD" id="5X1StJFbLHH" role="3K4E3e">
              <property role="Xl_RC" value=" " />
            </node>
            <node concept="37vLTw" id="5X1StJFbLHJ" role="3K4GZi">
              <ref role="3cqZAo" node="5X1StJFbL6m" resolve="text" />
            </node>
            <node concept="2OqwBi" id="5X1StJFbL7D" role="3K4Cdx">
              <node concept="37vLTw" id="5X1StJFbL6q" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJFbL6m" resolve="text" />
              </node>
              <node concept="17RlXB" id="5X1StJFbLqO" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJFbL5D" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7p9$dhpxPXE">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7p9$dhpxPP1" resolve="TransformActionProvider" />
    <node concept="13hLZK" id="7p9$dhpxPXF" role="13h7CW">
      <node concept="3clFbS" id="7p9$dhpxPXG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7p9$dhpxPYY" role="13h7CS">
      <property role="TrG5h" value="getActions" />
      <ref role="13i0hy" node="7zDl3zklxHf" resolve="getActions" />
      <node concept="3Tm1VV" id="7p9$dhpxPZ1" role="1B3o_S" />
      <node concept="3clFbS" id="7p9$dhpxPZ5" role="3clF47">
        <node concept="3cpWs8" id="7p9$dhpyus$" role="3cqZAp">
          <node concept="3cpWsn" id="7p9$dhpyus_" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="_YKpA" id="7p9$dhpyuqb" role="1tU5fm">
              <node concept="3Tqbb2" id="7p9$dhpyuqe" role="_ZDj9">
                <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
              </node>
            </node>
            <node concept="10Nm6u" id="7p9$dhpyw6Q" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="7p9$dhpyuZY" role="3cqZAp">
          <node concept="37vLTI" id="7p9$dhpyv00" role="3clFbG">
            <node concept="2OqwBi" id="7p9$dhpyusA" role="37vLTx">
              <node concept="2OqwBi" id="7p9$dhpyusB" role="2Oq$k0">
                <node concept="2M0cAz" id="7p9$dhpyusC" role="2Oq$k0">
                  <ref role="2M0c$$" to="gq2t:7zDl3zkd9Kf" resolve="getTransformActions" />
                  <node concept="2OqwBi" id="7p9$dhpyusD" role="2M0c$y">
                    <node concept="13iPFW" id="7p9$dhpyusE" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p9$dhpyusF" role="2OqNvi">
                      <ref role="3Tt5mk" to="j481:7p9$dhpxPTM" resolve="hostCell" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5xDm4ARTdl" role="2M0c$y">
                    <ref role="1Pybhc" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
                    <ref role="37wK5l" to="gq2t:5xDm4ARDp1" resolve="fromString" />
                    <node concept="2OqwBi" id="5xDm4ARTdm" role="37wK5m">
                      <node concept="13iPFW" id="5xDm4ARTdn" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5xDm4ARTdo" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:5xDm4ARCPi" resolve="side" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7p9$dhpyusM" role="2M0c$y">
                    <ref role="3cqZAo" node="7p9$dhpxPZ6" resolve="pattern" />
                  </node>
                </node>
                <node concept="3goQfb" id="7p9$dhpyusN" role="2OqNvi">
                  <node concept="1bVj0M" id="7p9$dhpyusO" role="23t8la">
                    <node concept="3clFbS" id="7p9$dhpyusP" role="1bW5cS">
                      <node concept="3clFbF" id="7p9$dhpyusQ" role="3cqZAp">
                        <node concept="37vLTw" id="7p9$dhpyusR" role="3clFbG">
                          <ref role="3cqZAo" node="7p9$dhpyusS" resolve="it" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7p9$dhpyusS" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7p9$dhpyusT" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7p9$dhpyusU" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7p9$dhpyv04" role="37vLTJ">
              <ref role="3cqZAo" node="7p9$dhpyus_" resolve="actions" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7p9$dhpyvKD" role="3cqZAp">
          <node concept="37vLTw" id="7p9$dhpyvYi" role="3cqZAk">
            <ref role="3cqZAo" node="7p9$dhpyus_" resolve="actions" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7p9$dhpxPZ6" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="7p9$dhpxPZ7" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="7p9$dhpxPZ8" role="3clF45">
        <node concept="3Tqbb2" id="7p9$dhpxPZ9" role="A3Ik2">
          <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1D6Sg8PuJ0b">
    <property role="3GE5qa" value="viewerState" />
    <ref role="13h7C2" to="j481:3zTK92LqFr_" resolve="CCMenuState" />
    <node concept="13i0hz" id="1D6Sg8PuJ1v" role="13h7CS">
      <property role="TrG5h" value="getActions" />
      <node concept="3Tm1VV" id="1D6Sg8PuJ1w" role="1B3o_S" />
      <node concept="A3Dl8" id="1D6Sg8PuJ1J" role="3clF45">
        <node concept="3Tqbb2" id="1D6Sg8PuJ1W" role="A3Ik2">
          <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
        </node>
      </node>
      <node concept="3clFbS" id="1D6Sg8PuJ1y" role="3clF47">
        <node concept="3cpWs8" id="1D6Sg8PuKi8" role="3cqZAp">
          <node concept="3cpWsn" id="1D6Sg8PuKi9" role="3cpWs9">
            <property role="TrG5h" value="pattern" />
            <node concept="17QB3L" id="1D6Sg8PuK9F" role="1tU5fm" />
            <node concept="BsUDl" id="5X1StJFkdIW" role="33vP2m">
              <ref role="37wK5l" node="5X1StJFfPC4" resolve="getPattern" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1D6Sg8PuLAy" role="3cqZAp">
          <node concept="2OqwBi" id="1D6Sg8PuMSx" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8PuLE5" role="2Oq$k0">
              <node concept="13iPFW" id="1D6Sg8PuLAw" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1D6Sg8PuLJv" role="2OqNvi">
                <ref role="3TtcxE" to="j481:7p9$dhpkB84" resolve="actionProviders" />
              </node>
            </node>
            <node concept="3goQfb" id="1D6Sg8PuPMn" role="2OqNvi">
              <node concept="1bVj0M" id="1D6Sg8PuPMp" role="23t8la">
                <node concept="3clFbS" id="1D6Sg8PuPMq" role="1bW5cS">
                  <node concept="3clFbF" id="1D6Sg8PuPSU" role="3cqZAp">
                    <node concept="2YIFZM" id="5X1StJFkdNw" role="3clFbG">
                      <ref role="37wK5l" to="gq2t:7tcNvKHLFyp" resolve="getActions" />
                      <ref role="1Pybhc" to="gq2t:7tcNvKHTYuM" resolve="ViewerCaches" />
                      <node concept="37vLTw" id="5X1StJFkdNy" role="37wK5m">
                        <ref role="3cqZAo" node="1D6Sg8PuPMr" resolve="it" />
                      </node>
                      <node concept="37vLTw" id="5X1StJFkdNK" role="37wK5m">
                        <ref role="3cqZAo" node="1D6Sg8PuKi9" resolve="pattern" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1D6Sg8PuPMr" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1D6Sg8PuPMs" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1D6Sg8Pv_yN" role="13h7CS">
      <property role="TrG5h" value="getSelectedAction" />
      <node concept="3Tm1VV" id="1D6Sg8Pv_yO" role="1B3o_S" />
      <node concept="3Tqbb2" id="1D6Sg8Pv_B$" role="3clF45">
        <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
      </node>
      <node concept="3clFbS" id="1D6Sg8Pv_yQ" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8Pv_I5" role="3cqZAp">
          <node concept="2OqwBi" id="1D6Sg8PvAKF" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8Pv_Wl" role="2Oq$k0">
              <node concept="BsUDl" id="1D6Sg8Pv_I4" role="2Oq$k0">
                <ref role="37wK5l" node="1D6Sg8PuJ1v" resolve="getActions" />
              </node>
              <node concept="7r0gD" id="1D6Sg8PvA7i" role="2OqNvi">
                <node concept="2OqwBi" id="1D6Sg8PvAkV" role="7T0AP">
                  <node concept="13iPFW" id="1D6Sg8PvA8o" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1D6Sg8PvAwc" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:3zTK92LqFrC" resolve="selectionIndex" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="1D6Sg8PvAYX" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5X1StJFfPC4" role="13h7CS">
      <property role="TrG5h" value="getPattern" />
      <node concept="3Tm1VV" id="5X1StJFfPC5" role="1B3o_S" />
      <node concept="17QB3L" id="5X1StJFfPD0" role="3clF45" />
      <node concept="3clFbS" id="5X1StJFfPC7" role="3clF47">
        <node concept="3cpWs8" id="5X1StJFfR9B" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJFfR9C" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJFfR5n" role="1tU5fm" />
            <node concept="2OqwBi" id="5X1StJFfR9D" role="33vP2m">
              <node concept="1PxgMI" id="5X1StJFfR9E" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5X1StJFfR9F" role="3oSUPX">
                  <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
                </node>
                <node concept="2OqwBi" id="5X1StJFfR9G" role="1m5AlR">
                  <node concept="13iPFW" id="5X1StJFfR9H" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5X1StJFfR9I" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:3zTK92LqFrA" resolve="hostCell" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="5X1StJFfR9J" role="2OqNvi">
                <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5X1StJFfRad" role="3cqZAp">
          <node concept="3clFbS" id="5X1StJFfRaf" role="3clFbx">
            <node concept="3clFbF" id="5X1StJFfRr_" role="3cqZAp">
              <node concept="37vLTI" id="5X1StJFfRs2" role="3clFbG">
                <node concept="Xl_RD" id="5X1StJFfRsg" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="5X1StJFfRrz" role="37vLTJ">
                  <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5X1StJFfRrp" role="3clFbw">
            <node concept="10Nm6u" id="5X1StJFfRrw" role="3uHU7w" />
            <node concept="37vLTw" id="5X1StJFfRay" role="3uHU7B">
              <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5X1StJFfRtq" role="3cqZAp">
          <node concept="3clFbS" id="5X1StJFfRts" role="3clFbx">
            <node concept="3cpWs6" id="5X1StJFfRIn" role="3cqZAp">
              <node concept="37vLTw" id="5X1StJFfRIt" role="3cqZAk">
                <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5X1StJFfRzH" role="3clFbw">
            <node concept="37vLTw" id="5X1StJFfRtS" role="2Oq$k0">
              <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
            </node>
            <node concept="17RlXB" id="5X1StJFfRIk" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="5X1StJFfSG8" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJFfSG9" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3Tqbb2" id="5X1StJFfSG1" role="1tU5fm">
              <ref role="ehGHo" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
            </node>
            <node concept="1PxgMI" id="5X1StJFfSGa" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5X1StJFfSGb" role="3oSUPX">
                <ref role="cht4Q" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
              </node>
              <node concept="2OqwBi" id="5X1StJFfSGc" role="1m5AlR">
                <node concept="2OqwBi" id="5X1StJFfSGd" role="2Oq$k0">
                  <node concept="13iPFW" id="5X1StJFfSGe" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="5X1StJFfSGf" role="2OqNvi">
                    <node concept="1xMEDy" id="5X1StJFfSGg" role="1xVPHs">
                      <node concept="chp4Y" id="5X1StJFfSGh" role="ri$Ld">
                        <ref role="cht4Q" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5X1StJFfSGi" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7vWAzuEDEWf" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5X1StJFfSHE" role="3cqZAp">
          <node concept="3clFbS" id="5X1StJFfSHG" role="3clFbx">
            <node concept="3clFbF" id="5X1StJFfTJU" role="3cqZAp">
              <node concept="37vLTI" id="5X1StJFfTO5" role="3clFbG">
                <node concept="2OqwBi" id="5X1StJFfTOH" role="37vLTx">
                  <node concept="37vLTw" id="5X1StJFfTOn" role="2Oq$k0">
                    <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
                  </node>
                  <node concept="liA8E" id="5X1StJFfTZG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="5X1StJFjZgr" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2YIFZM" id="5X1StJFfV9D" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                      <node concept="2OqwBi" id="5X1StJFfUjy" role="37wK5m">
                        <node concept="37vLTw" id="5X1StJFfU4m" role="2Oq$k0">
                          <ref role="3cqZAo" node="5X1StJFfSG9" resolve="selection" />
                        </node>
                        <node concept="3TrcHB" id="5X1StJFfU$j" role="2OqNvi">
                          <ref role="3TsBF5" to="j481:7vWAzuEL3BP" resolve="position" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5X1StJFfW9O" role="37wK5m">
                        <node concept="37vLTw" id="5X1StJFfVPS" role="2Oq$k0">
                          <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
                        </node>
                        <node concept="liA8E" id="5X1StJFfWkZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5X1StJFfTJS" role="37vLTJ">
                  <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="5X1StJFfTcq" role="3clFbw">
            <node concept="2OqwBi" id="5X1StJFfTqd" role="3uHU7w">
              <node concept="13iPFW" id="5X1StJFfTc_" role="2Oq$k0" />
              <node concept="3TrEf2" id="5X1StJFfTJ4" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:3zTK92LqFrA" resolve="hostCell" />
              </node>
            </node>
            <node concept="2OqwBi" id="5X1StJFfSVE" role="3uHU7B">
              <node concept="37vLTw" id="5X1StJFfSIs" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJFfSG9" resolve="selection" />
              </node>
              <node concept="3TrEf2" id="5X1StJFfT7W" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:7vWAzuEMigU" resolve="focusCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJFfUHl" role="3cqZAp">
          <node concept="37vLTw" id="5X1StJFfUIj" role="3cqZAk">
            <ref role="3cqZAo" node="5X1StJFfR9C" resolve="text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1D6Sg8PuJ0c" role="13h7CW">
      <node concept="3clFbS" id="1D6Sg8PuJ0d" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1D6Sg8PwpDq">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7zDl3zkliLy" resolve="SetOptionalForcedAction" />
    <node concept="13hLZK" id="1D6Sg8PwpDr" role="13h7CW">
      <node concept="3clFbS" id="1D6Sg8PwpDs" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1D6Sg8PwpEI" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="1D6Sg8PwpEL" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8PwpEO" role="3clF47">
        <node concept="3clFbF" id="1D6Sg8Pwq75" role="3cqZAp">
          <node concept="2YIFZM" id="1D6Sg8Pwq9K" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2OqwBi" id="1D6Sg8Pwqqi" role="37wK5m">
              <node concept="13iPFW" id="1D6Sg8Pwqfj" role="2Oq$k0" />
              <node concept="3TrEf2" id="1D6Sg8PwqF3" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:7zDl3zkliMG" resolve="forcedOptional" />
              </node>
            </node>
            <node concept="37vLTw" id="1D6Sg8PwqRQ" role="37wK5m">
              <ref role="3cqZAo" node="1D6Sg8PwpEP" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="1D6Sg8PwrgL" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7zDl3zkliLr" resolve="forcedOptionals" />
            </node>
            <node concept="3cmrfG" id="1D6Sg8PwrwY" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1D6Sg8PwpEP" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="1D6Sg8PwpEQ" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="1D6Sg8PwpER" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1D6Sg8PyGpl">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:1D6Sg8PyG7Q" resolve="ReplaceWithNewNodeAction" />
    <node concept="13hLZK" id="1D6Sg8PyGpm" role="13h7CW">
      <node concept="3clFbS" id="1D6Sg8PyGpn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1D6Sg8PyGqD" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="1D6Sg8PyGqG" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8PyGqJ" role="3clF47">
        <node concept="3cpWs8" id="7tcNvKIixPJ" role="3cqZAp">
          <node concept="3cpWsn" id="7tcNvKIixPK" role="3cpWs9">
            <property role="TrG5h" value="newNode" />
            <node concept="3Tqbb2" id="7tcNvKIixCG" role="1tU5fm" />
            <node concept="2OqwBi" id="7tcNvKIixPL" role="33vP2m">
              <node concept="2OqwBi" id="7tcNvKIixPM" role="2Oq$k0">
                <node concept="13iPFW" id="7tcNvKIixPN" role="2Oq$k0" />
                <node concept="3TrEf2" id="7tcNvKIixPO" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7tcNvKI53AW" resolve="substituteContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="7tcNvKIixPP" role="2OqNvi">
                <ref role="37wK5l" node="5xDm4AQy2X" resolve="replaceNode" />
                <node concept="BsUDl" id="7tcNvKIixPQ" role="37wK5m">
                  <ref role="37wK5l" node="1D6Sg8PyZDl" resolve="getNewConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tcNvKIiy4v" role="3cqZAp">
          <node concept="3clFbS" id="7tcNvKIiy4x" role="3clFbx">
            <node concept="3clFbF" id="7tcNvKIizjn" role="3cqZAp">
              <node concept="2OqwBi" id="7tcNvKIizyF" role="3clFbG">
                <node concept="2OqwBi" id="7tcNvKIizlN" role="2Oq$k0">
                  <node concept="13iPFW" id="7tcNvKIizjl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7tcNvKIizo2" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7tcNvKIixre" resolve="initializer" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7tcNvKIizJ9" role="2OqNvi">
                  <ref role="37wK5l" node="7tcNvKIixpA" resolve="initialize" />
                  <node concept="37vLTw" id="7tcNvKIizP_" role="37wK5m">
                    <ref role="3cqZAo" node="7tcNvKIixPK" resolve="newNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7tcNvKIiyWO" role="3clFbw">
            <node concept="2OqwBi" id="7tcNvKIiyos" role="2Oq$k0">
              <node concept="13iPFW" id="7tcNvKIiybv" role="2Oq$k0" />
              <node concept="3TrEf2" id="7tcNvKIiyJM" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:7tcNvKIixre" resolve="initializer" />
              </node>
            </node>
            <node concept="3x8VRR" id="7tcNvKIizfk" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1oBvzyiAnZj" role="3cqZAp" />
        <node concept="3clFbF" id="1oBvzyiAoLA" role="3cqZAp">
          <node concept="2YIFZM" id="1oBvzyiAoLB" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="1oBvzyiAoLC" role="37wK5m">
              <node concept="2pJPED" id="1oBvzyiAoLD" role="2pJPEn">
                <ref role="2pJxaS" to="j481:4cPrGro8wPC" resolve="NodeSelectionRequest" />
                <node concept="2pIpSj" id="1oBvzyiAoLE" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:4cPrGro8wPF" resolve="node" />
                  <node concept="36biLy" id="1oBvzyiAoLF" role="28nt2d">
                    <node concept="37vLTw" id="1oBvzyiApno" role="36biLW">
                      <ref role="3cqZAo" node="7tcNvKIixPK" resolve="newNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1oBvzyiAoLH" role="37wK5m">
              <ref role="3cqZAo" node="1D6Sg8PyGqK" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="1oBvzyiAoLI" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="1oBvzyiAoLJ" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1D6Sg8PyGqK" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="1D6Sg8PyGqL" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="1D6Sg8PyGqM" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1D6Sg8PyZDl" role="13h7CS">
      <property role="TrG5h" value="getNewConcept" />
      <node concept="3Tm1VV" id="1D6Sg8PyZDm" role="1B3o_S" />
      <node concept="3bZ5Sz" id="1D6Sg8PyZPN" role="3clF45" />
      <node concept="3clFbS" id="1D6Sg8PyZDo" role="3clF47">
        <node concept="3cpWs6" id="1D6Sg8Pz07F" role="3cqZAp">
          <node concept="3K4zz7" id="1D6Sg8Pz07H" role="3cqZAk">
            <node concept="2OqwBi" id="7tcNvKI57te" role="3K4GZi">
              <node concept="2OqwBi" id="7tcNvKI56qu" role="2Oq$k0">
                <node concept="13iPFW" id="7tcNvKI55wv" role="2Oq$k0" />
                <node concept="3TrEf2" id="7tcNvKI573p" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:7tcNvKI53AW" resolve="substituteContext" />
                </node>
              </node>
              <node concept="2qgKlT" id="7tcNvKI58cI" role="2OqNvi">
                <ref role="37wK5l" node="5xDm4AQxR9" resolve="getExpectedOutputConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="1D6Sg8Pz07L" role="3K4Cdx">
              <node concept="2OqwBi" id="1D6Sg8Pz07M" role="2Oq$k0">
                <node concept="13iPFW" id="1D6Sg8Pz07N" role="2Oq$k0" />
                <node concept="3TrEf2" id="1D6Sg8Pz07O" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:1D6Sg8PyG96" resolve="newConcept" />
                </node>
              </node>
              <node concept="3x8VRR" id="1D6Sg8Pz07P" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1D6Sg8Pz07Q" role="3K4E3e">
              <node concept="2OqwBi" id="1D6Sg8Pz07R" role="2Oq$k0">
                <node concept="13iPFW" id="1D6Sg8Pz07S" role="2Oq$k0" />
                <node concept="3TrEf2" id="1D6Sg8Pz07T" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:1D6Sg8PyG96" resolve="newConcept" />
                </node>
              </node>
              <node concept="2qgKlT" id="1D6Sg8Pz07U" role="2OqNvi">
                <ref role="37wK5l" node="5Nhi$S9RMaT" resolve="resolve" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1D6Sg8PyZg9" role="13h7CS">
      <property role="TrG5h" value="getMatchingText" />
      <ref role="13i0hy" node="7zDl3zksHky" resolve="getMatchingText" />
      <node concept="3Tm1VV" id="1D6Sg8PyZga" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8PyZgh" role="3clF47">
        <node concept="3cpWs8" id="7tcNvKItEbV" role="3cqZAp">
          <node concept="3cpWsn" id="7tcNvKItEbW" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tcNvKItE7j" role="1tU5fm" />
            <node concept="2OqwBi" id="7tcNvKItEbX" role="33vP2m">
              <node concept="13iAh5" id="7tcNvKItEbY" role="2Oq$k0" />
              <node concept="2qgKlT" id="7tcNvKItEbZ" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zksHky" resolve="getMatchingText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tcNvKItCK6" role="3cqZAp">
          <node concept="3clFbS" id="7tcNvKItCK8" role="3clFbx">
            <node concept="3cpWs6" id="7tcNvKItFaG" role="3cqZAp">
              <node concept="37vLTw" id="7tcNvKItFb0" role="3cqZAk">
                <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7tcNvKItF2p" role="3clFbw">
            <node concept="37vLTw" id="7tcNvKItEc0" role="2Oq$k0">
              <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
            </node>
            <node concept="17RvpY" id="7tcNvKItFal" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="1D6Sg8Pz1WA" role="3cqZAp">
          <node concept="3cpWsn" id="1D6Sg8Pz1WB" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="1D6Sg8Pz1Dq" role="1tU5fm" />
            <node concept="BsUDl" id="1D6Sg8Pz1WC" role="33vP2m">
              <ref role="37wK5l" node="1D6Sg8PyZDl" resolve="getNewConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tcNvKItE$5" role="3cqZAp">
          <node concept="37vLTI" id="7tcNvKItE$7" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8Pz1f_" role="37vLTx">
              <node concept="37vLTw" id="1D6Sg8Pz1WD" role="2Oq$k0">
                <ref role="3cqZAo" node="1D6Sg8Pz1WB" resolve="concept" />
              </node>
              <node concept="3n3YKJ" id="1D6Sg8Pz1fB" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7tcNvKItEF9" role="37vLTJ">
              <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1D6Sg8Pz1h_" role="3cqZAp">
          <node concept="3clFbS" id="1D6Sg8Pz1hB" role="3clFbx">
            <node concept="3clFbF" id="1D6Sg8Pz1Zw" role="3cqZAp">
              <node concept="37vLTI" id="1D6Sg8Pz2ho" role="3clFbG">
                <node concept="2OqwBi" id="1D6Sg8Pz2Bp" role="37vLTx">
                  <node concept="37vLTw" id="1D6Sg8Pz2m2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1D6Sg8Pz1WB" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="1D6Sg8Pz2UG" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="37vLTw" id="1D6Sg8Pz1Zu" role="37vLTJ">
                  <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1D6Sg8Pz1CM" role="3clFbw">
            <node concept="37vLTw" id="1D6Sg8Pz1ip" role="2Oq$k0">
              <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
            </node>
            <node concept="17RlXB" id="1D6Sg8Pz1We" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1D6Sg8Pz0GH" role="3cqZAp">
          <node concept="37vLTw" id="1D6Sg8Pz1fC" role="3clFbG">
            <ref role="3cqZAo" node="7tcNvKItEbW" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1D6Sg8PyZgi" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1D6Sg8Pz2Wm" role="13h7CS">
      <property role="TrG5h" value="getActionDescription" />
      <ref role="13i0hy" node="7zDl3zksHrc" resolve="getActionDescription" />
      <node concept="3Tm1VV" id="1D6Sg8Pz2Wn" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8Pz2Wu" role="3clF47">
        <node concept="3cpWs8" id="7tcNvKItFw6" role="3cqZAp">
          <node concept="3cpWsn" id="7tcNvKItFw7" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7tcNvKItFw8" role="1tU5fm" />
            <node concept="2OqwBi" id="7tcNvKItFw9" role="33vP2m">
              <node concept="13iAh5" id="7tcNvKItFwa" role="2Oq$k0" />
              <node concept="2qgKlT" id="7tcNvKItG0f" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zksHrc" resolve="getActionDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tcNvKItFwc" role="3cqZAp">
          <node concept="3clFbS" id="7tcNvKItFwd" role="3clFbx">
            <node concept="3cpWs6" id="7tcNvKItFwe" role="3cqZAp">
              <node concept="37vLTw" id="7tcNvKItFwf" role="3cqZAk">
                <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7tcNvKItFwg" role="3clFbw">
            <node concept="37vLTw" id="7tcNvKItFwh" role="2Oq$k0">
              <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
            </node>
            <node concept="17RvpY" id="7tcNvKItFwi" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="1D6Sg8Pz3kv" role="3cqZAp">
          <node concept="3cpWsn" id="1D6Sg8Pz3kw" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="1D6Sg8Pz3kx" role="1tU5fm" />
            <node concept="BsUDl" id="1D6Sg8Pz3ky" role="33vP2m">
              <ref role="37wK5l" node="1D6Sg8PyZDl" resolve="getNewConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tcNvKItG2Z" role="3cqZAp">
          <node concept="37vLTI" id="7tcNvKItG31" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8Pz3kA" role="37vLTx">
              <node concept="37vLTw" id="1D6Sg8Pz3kB" role="2Oq$k0">
                <ref role="3cqZAo" node="1D6Sg8Pz3kw" resolve="concept" />
              </node>
              <node concept="3neUYN" id="1D6Sg8Pz3s6" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7tcNvKItGk1" role="37vLTJ">
              <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1D6Sg8Pz3kD" role="3cqZAp">
          <node concept="3clFbS" id="1D6Sg8Pz3kE" role="3clFbx">
            <node concept="3clFbF" id="1D6Sg8Pz3kF" role="3cqZAp">
              <node concept="37vLTI" id="1D6Sg8Pz3kG" role="3clFbG">
                <node concept="3cpWs3" id="1D6Sg8Pz58D" role="37vLTx">
                  <node concept="2OqwBi" id="1D6Sg8Pz5th" role="3uHU7w">
                    <node concept="37vLTw" id="1D6Sg8Pz5jH" role="2Oq$k0">
                      <ref role="3cqZAo" node="1D6Sg8Pz3kw" resolve="concept" />
                    </node>
                    <node concept="liA8E" id="1D6Sg8Pz5CM" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="1D6Sg8Pz4Eo" role="3uHU7B">
                    <node concept="2OqwBi" id="1D6Sg8Pz4hO" role="3uHU7B">
                      <node concept="2OqwBi" id="1D6Sg8Pz3kH" role="2Oq$k0">
                        <node concept="37vLTw" id="1D6Sg8Pz3kI" role="2Oq$k0">
                          <ref role="3cqZAo" node="1D6Sg8Pz3kw" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="1D6Sg8Pz4a8" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1D6Sg8Pz4qm" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="1D6Sg8Pz4Er" role="3uHU7w">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1D6Sg8Pz3kK" role="37vLTJ">
                  <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1D6Sg8Pz3kL" role="3clFbw">
            <node concept="37vLTw" id="1D6Sg8Pz3kM" role="2Oq$k0">
              <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
            </node>
            <node concept="17RlXB" id="1D6Sg8Pz3kN" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1D6Sg8Pz3kO" role="3cqZAp">
          <node concept="37vLTw" id="1D6Sg8Pz3kP" role="3clFbG">
            <ref role="3cqZAo" node="7tcNvKItFw7" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1D6Sg8Pz2Wv" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1D6Sg8Qq3s5">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:1D6Sg8Qq3pM" resolve="ChooseCCMenuEntry" />
    <node concept="13hLZK" id="1D6Sg8Qq3s6" role="13h7CW">
      <node concept="3clFbS" id="1D6Sg8Qq3s7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1D6Sg8Qq3tG" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="1D6Sg8Qq3tJ" role="1B3o_S" />
      <node concept="3clFbS" id="1D6Sg8Qq3tM" role="3clF47">
        <node concept="3clFbF" id="5X1StJFdtGy" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJFdtJK" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1bgV" resolve="clearChildren" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="37vLTw" id="5X1StJFdtJM" role="37wK5m">
              <ref role="3cqZAo" node="1D6Sg8Qq3tN" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJFdtNg" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:3zTK92LqFrE" resolve="ccMenu" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJFdtRt" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJFdtRu" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1bgV" resolve="clearChildren" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="37vLTw" id="5X1StJFdtRv" role="37wK5m">
              <ref role="3cqZAo" node="1D6Sg8Qq3tN" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJFdtRw" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7zDl3zkbpRo" resolve="sideTransformState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1D6Sg8Qq3u7" role="3cqZAp">
          <node concept="2OqwBi" id="1D6Sg8Qq4mn" role="3clFbG">
            <node concept="2OqwBi" id="1D6Sg8Qq3Cr" role="2Oq$k0">
              <node concept="13iPFW" id="1D6Sg8Qq3u6" role="2Oq$k0" />
              <node concept="3TrEf2" id="j7dM4m4TAZ" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:j7dM4m4SsZ" resolve="actionToExecute" />
              </node>
            </node>
            <node concept="2qgKlT" id="1D6Sg8Qq4Mt" role="2OqNvi">
              <ref role="37wK5l" node="1nlzgMD9YAI" resolve="apply" />
              <node concept="37vLTw" id="1D6Sg8Qq4SY" role="37wK5m">
                <ref role="3cqZAo" node="1D6Sg8Qq3tN" resolve="viewerState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1D6Sg8Qq3tN" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="1D6Sg8Qq3tO" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="1D6Sg8Qq3tP" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="j7dM4mgWxi">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:j7dM4mgWvP" resolve="CloseCCMenuAction" />
    <node concept="13hLZK" id="j7dM4mgWxj" role="13h7CW">
      <node concept="3clFbS" id="j7dM4mgWxk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="j7dM4mgWyT" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="j7dM4mgWyW" role="1B3o_S" />
      <node concept="3clFbS" id="j7dM4mgWyZ" role="3clF47">
        <node concept="3clFbF" id="j7dM4mgWzq" role="3cqZAp">
          <node concept="2OqwBi" id="j7dM4mgX8j" role="3clFbG">
            <node concept="2OqwBi" id="j7dM4mgWFl" role="2Oq$k0">
              <node concept="37vLTw" id="j7dM4mgWzp" role="2Oq$k0">
                <ref role="3cqZAo" node="j7dM4mgWz0" resolve="viewerState" />
              </node>
              <node concept="3TrEf2" id="j7dM4mgWPS" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:3zTK92LqFrE" resolve="ccMenu" />
              </node>
            </node>
            <node concept="3YRAZt" id="j7dM4mgXmA" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="j7dM4mgWz0" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="j7dM4mgWz1" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="j7dM4mgWz2" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5xDm4AOCDG">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5xDm4AOCC9" resolve="CompositeAction" />
    <node concept="13hLZK" id="5xDm4AOCDH" role="13h7CW">
      <node concept="3clFbS" id="5xDm4AOCDI" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5xDm4AOCFj" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5xDm4AOCFm" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AOCFp" role="3clF47">
        <node concept="2Gpval" id="5xDm4AODh2" role="3cqZAp">
          <node concept="2GrKxI" id="5xDm4AODh3" role="2Gsz3X">
            <property role="TrG5h" value="a" />
          </node>
          <node concept="2OqwBi" id="5xDm4AODur" role="2GsD0m">
            <node concept="13iPFW" id="5xDm4AODhE" role="2Oq$k0" />
            <node concept="3Tsc0h" id="5xDm4AODJo" role="2OqNvi">
              <ref role="3TtcxE" to="j481:5xDm4AOCDD" resolve="actions" />
            </node>
          </node>
          <node concept="3clFbS" id="5xDm4AODh5" role="2LFqv$">
            <node concept="3clFbF" id="5xDm4AODMp" role="3cqZAp">
              <node concept="2OqwBi" id="5xDm4AODUS" role="3clFbG">
                <node concept="2GrUjf" id="5xDm4AODMo" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5xDm4AODh3" resolve="a" />
                </node>
                <node concept="2qgKlT" id="5xDm4AOEcz" role="2OqNvi">
                  <ref role="37wK5l" node="1nlzgMD9YAI" resolve="apply" />
                  <node concept="37vLTw" id="5xDm4AOEgL" role="37wK5m">
                    <ref role="3cqZAo" node="5xDm4AOCFq" resolve="viewerState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5xDm4AOCFq" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5xDm4AOCFr" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5xDm4AOCFs" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AOEha" role="13h7CS">
      <property role="TrG5h" value="getActionDescription" />
      <ref role="13i0hy" node="7zDl3zksHrc" resolve="getActionDescription" />
      <node concept="3Tm1VV" id="5xDm4AOEhb" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AOEhi" role="3clF47">
        <node concept="3clFbF" id="5xDm4AOEza" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AOJU1" role="3clFbG">
            <node concept="2OqwBi" id="5xDm4AOGT1" role="2Oq$k0">
              <node concept="2OqwBi" id="5xDm4AOEHy" role="2Oq$k0">
                <node concept="13iPFW" id="5xDm4AOEz9" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5xDm4AOFg5" role="2OqNvi">
                  <ref role="3TtcxE" to="j481:5xDm4AOCDD" resolve="actions" />
                </node>
              </node>
              <node concept="3$u5V9" id="5xDm4AOIPy" role="2OqNvi">
                <node concept="1bVj0M" id="5xDm4AOIP$" role="23t8la">
                  <node concept="3clFbS" id="5xDm4AOIP_" role="1bW5cS">
                    <node concept="3clFbF" id="5xDm4AOIUF" role="3cqZAp">
                      <node concept="2OqwBi" id="5xDm4AOJ7h" role="3clFbG">
                        <node concept="37vLTw" id="5xDm4AOIUE" role="2Oq$k0">
                          <ref role="3cqZAo" node="5xDm4AOIPA" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="5xDm4AOJ_O" role="2OqNvi">
                          <ref role="37wK5l" node="7zDl3zksHrc" resolve="getActionDescription" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5xDm4AOIPA" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5xDm4AOIPB" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="5xDm4AOKn6" role="2OqNvi">
              <node concept="Xl_RD" id="5xDm4AOKZo" role="3uJOhx">
                <property role="Xl_RC" value=" / " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5xDm4AOEhj" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5xDm4AONQv">
    <property role="3GE5qa" value="actions.changeText" />
    <ref role="13h7C2" to="j481:5xDm4AOLH3" resolve="ReplaceTextAction" />
    <node concept="13hLZK" id="5xDm4AONQw" role="13h7CW">
      <node concept="3clFbS" id="5xDm4AONQx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5X1StJEK6rU" role="13h7CS">
      <property role="TrG5h" value="newCaretPosition" />
      <ref role="13i0hy" node="5X1StJEJTuX" resolve="newCaretPosition" />
      <node concept="3Tm1VV" id="5X1StJEK6rV" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEK6s2" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEK7xt" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEK7xu" role="3cpWs9">
            <property role="TrG5h" value="textToInsert" />
            <node concept="17QB3L" id="5X1StJEK7xv" role="1tU5fm" />
            <node concept="3K4zz7" id="5X1StJEK7xw" role="33vP2m">
              <node concept="Xl_RD" id="5X1StJEK7xx" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="5X1StJEK7xy" role="3K4GZi">
                <node concept="13iPFW" id="5X1StJEK7xz" role="2Oq$k0" />
                <node concept="3TrcHB" id="5X1StJEK7x$" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:5xDm4AOLIz" resolve="text" />
                </node>
              </node>
              <node concept="3clFbC" id="5X1StJEK7x_" role="3K4Cdx">
                <node concept="10Nm6u" id="5X1StJEK7xA" role="3uHU7w" />
                <node concept="2OqwBi" id="5X1StJEK7xB" role="3uHU7B">
                  <node concept="13iPFW" id="5X1StJEK7xC" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5X1StJEK7xD" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:5xDm4AOLIz" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJEK7eh" role="3cqZAp">
          <node concept="3cpWs3" id="5X1StJEK7ej" role="3clFbG">
            <node concept="2OqwBi" id="5X1StJEK7ek" role="3uHU7w">
              <node concept="37vLTw" id="5X1StJEK7el" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEK7xu" resolve="textToInsert" />
              </node>
              <node concept="liA8E" id="5X1StJEK7em" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
            <node concept="2OqwBi" id="5X1StJEK7en" role="3uHU7B">
              <node concept="13iPFW" id="5X1StJEK7eo" role="2Oq$k0" />
              <node concept="3TrcHB" id="5X1StJEK7ep" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5xDm4AOLH4" resolve="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="5X1StJEK6s3" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEK4M1" role="13h7CS">
      <property role="TrG5h" value="getNewText" />
      <ref role="13i0hy" node="5X1StJEJRAb" resolve="getNewText" />
      <node concept="3Tm1VV" id="5X1StJEK4M2" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEK4M5" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEBPxs" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEBPxt" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJEBPxu" role="1tU5fm" />
            <node concept="BsUDl" id="5X1StJEK5_4" role="33vP2m">
              <ref role="37wK5l" node="5X1StJEJWXx" resolve="getCurrentText" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5X1StJEBPxy" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEBPxz" role="3cpWs9">
            <property role="TrG5h" value="textToInsert" />
            <node concept="17QB3L" id="5X1StJEBPx$" role="1tU5fm" />
            <node concept="3K4zz7" id="5X1StJEBPx_" role="33vP2m">
              <node concept="Xl_RD" id="5X1StJEBPxA" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="5X1StJEBPxB" role="3K4GZi">
                <node concept="13iPFW" id="5X1StJEBPxC" role="2Oq$k0" />
                <node concept="3TrcHB" id="5X1StJEBPxD" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:5xDm4AOLIz" resolve="text" />
                </node>
              </node>
              <node concept="3clFbC" id="5X1StJEBPxE" role="3K4Cdx">
                <node concept="10Nm6u" id="5X1StJEBPxF" role="3uHU7w" />
                <node concept="2OqwBi" id="5X1StJEBPxG" role="3uHU7B">
                  <node concept="13iPFW" id="5X1StJEBPxH" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5X1StJEBPxI" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:5xDm4AOLIz" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJEBQPj" role="3cqZAp">
          <node concept="3cpWs3" id="5X1StJEBPxL" role="3cqZAk">
            <node concept="2OqwBi" id="5X1StJEBPxM" role="3uHU7w">
              <node concept="37vLTw" id="5X1StJEBPxN" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEBPxt" resolve="text" />
              </node>
              <node concept="liA8E" id="5X1StJEBPxO" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cpWs3" id="5X1StJEBPxP" role="37wK5m">
                  <node concept="2OqwBi" id="5X1StJEBPxQ" role="3uHU7w">
                    <node concept="13iPFW" id="5X1StJEBPxR" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEBPxS" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5xDm4AOLH5" resolve="length" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5X1StJEBPxT" role="3uHU7B">
                    <node concept="13iPFW" id="5X1StJEBPxU" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEBPxV" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5xDm4AOLH4" resolve="start" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="5X1StJEBPxW" role="3uHU7B">
              <node concept="37vLTw" id="5X1StJEBPxX" role="3uHU7w">
                <ref role="3cqZAo" node="5X1StJEBPxz" resolve="textToInsert" />
              </node>
              <node concept="2OqwBi" id="5X1StJEBPxY" role="3uHU7B">
                <node concept="37vLTw" id="5X1StJEBPxZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5X1StJEBPxt" resolve="text" />
                </node>
                <node concept="liA8E" id="5X1StJEBPy0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                  <node concept="3cmrfG" id="5X1StJEBPy1" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="5X1StJEBPy2" role="37wK5m">
                    <node concept="13iPFW" id="5X1StJEBPy3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5X1StJEBPy4" role="2OqNvi">
                      <ref role="3TsBF5" to="j481:5xDm4AOLH4" resolve="start" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEK4M6" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEKGB2" role="13h7CS">
      <property role="TrG5h" value="getPatternForTransformAction" />
      <ref role="13i0hy" node="5X1StJEKygQ" resolve="getPatternForTransformAction" />
      <node concept="3Tm1VV" id="5X1StJEKGB5" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEKGB8" role="3clF47">
        <node concept="3clFbF" id="5X1StJEKH_7" role="3cqZAp">
          <node concept="3K4zz7" id="5X1StJEKH_8" role="3clFbG">
            <node concept="BsUDl" id="5X1StJEKH_9" role="3K4E3e">
              <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
            </node>
            <node concept="10Nm6u" id="5X1StJEKH_a" role="3K4GZi" />
            <node concept="17R0WA" id="5X1StJEKH_b" role="3K4Cdx">
              <node concept="Rm8GO" id="5X1StJEKH_c" role="3uHU7w">
                <ref role="Rm8GQ" to="gq2t:7zDl3zkd9XB" resolve="CENTER" />
                <ref role="1Px2BO" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
              </node>
              <node concept="37vLTw" id="5X1StJEKH_d" role="3uHU7B">
                <ref role="3cqZAo" node="5X1StJEKGB9" resolve="side" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJEKGB9" role="3clF46">
        <property role="TrG5h" value="side" />
        <node concept="3uibUv" id="5X1StJEKGBa" role="1tU5fm">
          <ref role="3uigEE" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
        </node>
      </node>
      <node concept="17QB3L" id="5X1StJEKGBb" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5xDm4AQxBf">
    <property role="3GE5qa" value="substitute" />
    <ref role="13h7C2" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
    <node concept="13i0hz" id="5xDm4AQxCQ" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getCurrentConcept" />
      <node concept="3Tm1VV" id="5xDm4AQxCR" role="1B3o_S" />
      <node concept="3bZ5Sz" id="5xDm4AQxDa" role="3clF45" />
      <node concept="3clFbS" id="5xDm4AQxCT" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5xDm4AQxGu" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getCurrentNode" />
      <node concept="3Tm1VV" id="5xDm4AQxGv" role="1B3o_S" />
      <node concept="3Tqbb2" id="5xDm4AQxIX" role="3clF45" />
      <node concept="3clFbS" id="5xDm4AQxGx" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5xDm4AQxJ9" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getLink" />
      <node concept="3Tm1VV" id="5xDm4AQxJa" role="1B3o_S" />
      <node concept="3uibUv" id="5xDm4AQxJH" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3clFbS" id="5xDm4AQxJc" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5xDm4AQxLt" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getParentContext" />
      <node concept="3Tm1VV" id="5xDm4AQxLu" role="1B3o_S" />
      <node concept="3Tqbb2" id="5xDm4AQxM9" role="3clF45">
        <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
      </node>
      <node concept="3clFbS" id="5xDm4AQxLw" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5xDm4AQxR9" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getExpectedOutputConcept" />
      <node concept="3Tm1VV" id="5xDm4AQxRa" role="1B3o_S" />
      <node concept="3bZ5Sz" id="5xDm4AQxRX" role="3clF45" />
      <node concept="3clFbS" id="5xDm4AQxRc" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5xDm4AQy2X" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="replaceNode" />
      <node concept="37vLTG" id="5xDm4AQy8D" role="3clF46">
        <property role="TrG5h" value="newConcept" />
        <node concept="3bZ5Sz" id="5xDm4AQyal" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5xDm4AQy2Y" role="1B3o_S" />
      <node concept="3Tqbb2" id="5xDm4AQy3T" role="3clF45" />
      <node concept="3clFbS" id="5xDm4AQy30" role="3clF47" />
    </node>
    <node concept="13i0hz" id="4cPrGrn_eio" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getCanonical" />
      <node concept="3Tm1VV" id="4cPrGrn_eip" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGrn_ej2" role="3clF45">
        <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
      </node>
      <node concept="3clFbS" id="4cPrGrn_eir" role="3clF47">
        <node concept="3clFbF" id="4cPrGrn_ejY" role="3cqZAp">
          <node concept="13iPFW" id="4cPrGrn_ejX" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1oBvzyiFE$v" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getFirstExistingNode" />
      <node concept="3Tm1VV" id="1oBvzyiFE$w" role="1B3o_S" />
      <node concept="3Tqbb2" id="1oBvzyiFE_s" role="3clF45" />
      <node concept="3clFbS" id="1oBvzyiFE$y" role="3clF47">
        <node concept="3cpWs8" id="1oBvzyiFEAN" role="3cqZAp">
          <node concept="3cpWsn" id="1oBvzyiFEAO" role="3cpWs9">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="1oBvzyiFEAy" role="1tU5fm" />
            <node concept="BsUDl" id="1oBvzyiFEAP" role="33vP2m">
              <ref role="37wK5l" node="5xDm4AQxGu" resolve="getCurrentNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oBvzyiFEAo" role="3cqZAp">
          <node concept="3K4zz7" id="1oBvzyiFFi0" role="3clFbG">
            <node concept="37vLTw" id="1oBvzyiFFlM" role="3K4E3e">
              <ref role="3cqZAo" node="1oBvzyiFEAO" resolve="currentNode" />
            </node>
            <node concept="2OqwBi" id="1oBvzyiFFOA" role="3K4GZi">
              <node concept="BsUDl" id="1oBvzyiFFpm" role="2Oq$k0">
                <ref role="37wK5l" node="5xDm4AQxLt" resolve="getParentContext" />
              </node>
              <node concept="2qgKlT" id="1oBvzyiFG3$" role="2OqNvi">
                <ref role="37wK5l" node="1oBvzyiFE$v" resolve="getFirstExistingNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1oBvzyiFEJQ" role="3K4Cdx">
              <node concept="37vLTw" id="1oBvzyiFEAQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1oBvzyiFEAO" resolve="currentNode" />
              </node>
              <node concept="3x8VRR" id="1oBvzyiFESd" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5xDm4AQxBg" role="13h7CW">
      <node concept="3clFbS" id="5xDm4AQxBh" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5xDm4AQyfZ">
    <property role="3GE5qa" value="substitute" />
    <ref role="13h7C2" to="j481:5xDm4AQye1" resolve="ExistingNodeSubstituteContext" />
    <node concept="13hLZK" id="5xDm4AQyg0" role="13h7CW">
      <node concept="3clFbS" id="5xDm4AQyg1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5xDm4AQyhA" role="13h7CS">
      <property role="TrG5h" value="getCurrentConcept" />
      <ref role="13i0hy" node="5xDm4AQxCQ" resolve="getCurrentConcept" />
      <node concept="3Tm1VV" id="5xDm4AQyhB" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyhE" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQ_6U" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQ_Ar" role="3clFbG">
            <node concept="2OqwBi" id="5xDm4AQ_hw" role="2Oq$k0">
              <node concept="13iPFW" id="5xDm4AQ_6T" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xDm4AQ_tv" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
              </node>
            </node>
            <node concept="2yIwOk" id="5xDm4AQ_MF" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="5xDm4AQyhF" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQyhG" role="13h7CS">
      <property role="TrG5h" value="getCurrentNode" />
      <ref role="13i0hy" node="5xDm4AQxGu" resolve="getCurrentNode" />
      <node concept="3Tm1VV" id="5xDm4AQyhH" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyhK" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQ_Pj" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQ_Y9" role="3clFbG">
            <node concept="13iPFW" id="5xDm4AQ_Pi" role="2Oq$k0" />
            <node concept="3TrEf2" id="5xDm4AQAax" role="2OqNvi">
              <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5xDm4AQyhL" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQyhM" role="13h7CS">
      <property role="TrG5h" value="getLink" />
      <ref role="13i0hy" node="5xDm4AQxJ9" resolve="getLink" />
      <node concept="3Tm1VV" id="5xDm4AQyhN" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyhQ" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQAeF" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQAI_" role="3clFbG">
            <node concept="2OqwBi" id="5xDm4AQAph" role="2Oq$k0">
              <node concept="13iPFW" id="5xDm4AQAeE" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xDm4AQA_D" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
              </node>
            </node>
            <node concept="2NL2c5" id="5xDm4AQAUP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5xDm4AQyhR" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="13i0hz" id="5xDm4AQyhU" role="13h7CS">
      <property role="TrG5h" value="getParentContext" />
      <ref role="13i0hy" node="5xDm4AQxLt" resolve="getParentContext" />
      <node concept="3Tm1VV" id="5xDm4AQyhV" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyhY" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQyk4" role="3cqZAp">
          <node concept="3K4zz7" id="5xDm4AQzRu" role="3clFbG">
            <node concept="2YIFZM" id="4cPrGrnBVOZ" role="3K4E3e">
              <ref role="37wK5l" to="l6bp:6IHVO0thsSJ" resolve="copyAsSimpleNode" />
              <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
              <node concept="2pJPEk" id="5xDm4AQzXP" role="37wK5m">
                <node concept="2pJPED" id="5xDm4AQ$3B" role="2pJPEn">
                  <ref role="2pJxaS" to="j481:5xDm4AQye1" resolve="ExistingNodeSubstituteContext" />
                  <node concept="2pIpSj" id="5xDm4AQ$3X" role="2pJxcM">
                    <ref role="2pIpSl" to="j481:5xDm4AQyfx" resolve="node" />
                    <node concept="36biLy" id="5xDm4AQ$l1" role="28nt2d">
                      <node concept="2OqwBi" id="5xDm4AQ$Nj" role="36biLW">
                        <node concept="2OqwBi" id="5xDm4AQ$uk" role="2Oq$k0">
                          <node concept="13iPFW" id="5xDm4AQ$lm" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5xDm4AQ$FU" role="2OqNvi">
                            <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
                          </node>
                        </node>
                        <node concept="1mfA1w" id="5xDm4AQ$ZA" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="5xDm4AQ_0g" role="3K4GZi" />
            <node concept="2OqwBi" id="5xDm4AQzf7" role="3K4Cdx">
              <node concept="2OqwBi" id="5xDm4AQyO3" role="2Oq$k0">
                <node concept="2OqwBi" id="5xDm4AQyt9" role="2Oq$k0">
                  <node concept="13iPFW" id="5xDm4AQyk3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5xDm4AQyEI" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
                  </node>
                </node>
                <node concept="1mfA1w" id="5xDm4AQz0j" role="2OqNvi" />
              </node>
              <node concept="3x8VRR" id="5xDm4AQzpV" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5xDm4AQyhZ" role="3clF45">
        <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
      </node>
    </node>
    <node concept="13i0hz" id="5xDm4AQyi0" role="13h7CS">
      <property role="TrG5h" value="getExpectedOutputConcept" />
      <ref role="13i0hy" node="5xDm4AQxR9" resolve="getExpectedOutputConcept" />
      <node concept="3Tm1VV" id="5xDm4AQyi1" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyi4" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQB1o" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQBlZ" role="3clFbG">
            <node concept="BsUDl" id="5xDm4AQB1n" role="2Oq$k0">
              <ref role="37wK5l" node="5xDm4AQxJ9" resolve="getLink" />
            </node>
            <node concept="liA8E" id="5xDm4AQBWV" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="5xDm4AQyi5" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQyi6" role="13h7CS">
      <property role="TrG5h" value="replaceNode" />
      <ref role="13i0hy" node="5xDm4AQy2X" resolve="replaceNode" />
      <node concept="3Tm1VV" id="5xDm4AQyi9" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQyic" role="3clF47">
        <node concept="3cpWs8" id="5xDm4AQDYO" role="3cqZAp">
          <node concept="3cpWsn" id="5xDm4AQDYP" role="3cpWs9">
            <property role="TrG5h" value="newNode" />
            <node concept="3Tqbb2" id="5xDm4AQE4f" role="1tU5fm" />
            <node concept="2YIFZM" id="5xDm4AQDYQ" role="33vP2m">
              <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
              <ref role="37wK5l" to="l6bp:30TKBrMe336" resolve="addNewChild" />
              <node concept="2OqwBi" id="5xDm4AQDYR" role="37wK5m">
                <node concept="2OqwBi" id="5xDm4AQDYS" role="2Oq$k0">
                  <node concept="13iPFW" id="5xDm4AQDYT" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5xDm4AQDYU" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
                  </node>
                </node>
                <node concept="1mfA1w" id="5xDm4AQDYV" role="2OqNvi" />
              </node>
              <node concept="BsUDl" id="5xDm4AQDYW" role="37wK5m">
                <ref role="37wK5l" node="5xDm4AQxJ9" resolve="getLink" />
              </node>
              <node concept="2OqwBi" id="5xDm4AQFdH" role="37wK5m">
                <node concept="2OqwBi" id="5xDm4AQE_N" role="2Oq$k0">
                  <node concept="13iPFW" id="5xDm4AQEoF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5xDm4AQEPG" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
                  </node>
                </node>
                <node concept="2bSWHS" id="5xDm4AQFof" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="5xDm4AQDYX" role="37wK5m">
                <ref role="3cqZAo" node="5xDm4AQyid" resolve="newConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5xDm4AQGVS" role="3cqZAp">
          <node concept="3cpWsn" id="5xDm4AQGVT" role="3cpWs9">
            <property role="TrG5h" value="existingNode" />
            <node concept="3Tqbb2" id="5xDm4AQGVH" role="1tU5fm">
              <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="5xDm4AQGVU" role="33vP2m">
              <node concept="13iPFW" id="5xDm4AQGVV" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xDm4AQGVW" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5xDm4AQyfx" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xDm4AQGpC" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQHc2" role="3clFbG">
            <node concept="37vLTw" id="5xDm4AQGVX" role="2Oq$k0">
              <ref role="3cqZAo" node="5xDm4AQGVT" resolve="existingNode" />
            </node>
            <node concept="3YRAZt" id="5xDm4AQHp$" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="5xDm4AQHyl" role="3cqZAp">
          <node concept="37vLTw" id="5xDm4AQHIx" role="3cqZAk">
            <ref role="3cqZAo" node="5xDm4AQDYP" resolve="newNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5xDm4AQyid" role="3clF46">
        <property role="TrG5h" value="newConcept" />
        <node concept="3bZ5Sz" id="5xDm4AQyie" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5xDm4AQyif" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5xDm4AQHR6">
    <property role="3GE5qa" value="substitute" />
    <ref role="13h7C2" to="j481:5xDm4AQHOg" resolve="PlaceholderSubstituteContext" />
    <node concept="13hLZK" id="5xDm4AQHR7" role="13h7CW">
      <node concept="3clFbS" id="5xDm4AQHR8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5xDm4AQHSH" role="13h7CS">
      <property role="TrG5h" value="getCurrentConcept" />
      <ref role="13i0hy" node="5xDm4AQxCQ" resolve="getCurrentConcept" />
      <node concept="3Tm1VV" id="5xDm4AQHSI" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHSL" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQHWC" role="3cqZAp">
          <node concept="10Nm6u" id="5xDm4AQHWB" role="3clFbG" />
        </node>
      </node>
      <node concept="3bZ5Sz" id="5xDm4AQHSM" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQHSN" role="13h7CS">
      <property role="TrG5h" value="getCurrentNode" />
      <ref role="13i0hy" node="5xDm4AQxGu" resolve="getCurrentNode" />
      <node concept="3Tm1VV" id="5xDm4AQHSO" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHSR" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrn_eZN" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrn_eZO" role="3cpWs9">
            <property role="TrG5h" value="parentNode" />
            <node concept="3Tqbb2" id="4cPrGrn_eW4" role="1tU5fm" />
            <node concept="2OqwBi" id="4cPrGrn_eZP" role="33vP2m">
              <node concept="BsUDl" id="4cPrGrn_eZQ" role="2Oq$k0">
                <ref role="37wK5l" node="5xDm4AQxLt" resolve="getParentContext" />
              </node>
              <node concept="2qgKlT" id="4cPrGrn_eZR" role="2OqNvi">
                <ref role="37wK5l" node="5xDm4AQxGu" resolve="getCurrentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGrn_fdh" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrn_fdj" role="3clFbx">
            <node concept="3cpWs6" id="4cPrGrn_fHP" role="3cqZAp">
              <node concept="13iPFW" id="4cPrGrn_fId" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="4cPrGrn_fuf" role="3clFbw">
            <node concept="37vLTw" id="4cPrGrn_fhE" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrn_eZO" resolve="parentNode" />
            </node>
            <node concept="3w_OXm" id="4cPrGrn_fEh" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrn_lUm" role="3cqZAp">
          <node concept="2OqwBi" id="4cPrGrn_lUo" role="3cqZAk">
            <node concept="2OqwBi" id="4cPrGrn_lUp" role="2Oq$k0">
              <node concept="2OqwBi" id="4cPrGrn_lUq" role="2Oq$k0">
                <node concept="37vLTw" id="4cPrGrn_lUr" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrn_eZO" resolve="parentNode" />
                </node>
                <node concept="32TBzR" id="4cPrGrn_lUs" role="2OqNvi">
                  <node concept="1aIX9F" id="4cPrGrn_lUt" role="1xVPHs">
                    <node concept="25Kdxt" id="4cPrGrn_lUu" role="1aIX9E">
                      <node concept="BsUDl" id="4cPrGrn_lUv" role="25KhWn">
                        <ref role="37wK5l" node="5xDm4AQxJ9" resolve="getLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="7r0gD" id="4cPrGrn_lUw" role="2OqNvi">
                <node concept="2OqwBi" id="4cPrGrn_lUx" role="7T0AP">
                  <node concept="13iPFW" id="4cPrGrn_lUy" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4cPrGrn_lUz" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:5xDm4AQHQd" resolve="index" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="4cPrGrn_lU$" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5xDm4AQHSS" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQHST" role="13h7CS">
      <property role="TrG5h" value="getLink" />
      <ref role="13i0hy" node="5xDm4AQxJ9" resolve="getLink" />
      <node concept="3Tm1VV" id="5xDm4AQHSU" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHSX" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQHXs" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQIwx" role="3clFbG">
            <node concept="2OqwBi" id="5xDm4AQI82" role="2Oq$k0">
              <node concept="13iPFW" id="5xDm4AQHXr" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xDm4AQIkq" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5xDm4AQHPN" resolve="link" />
              </node>
            </node>
            <node concept="2qgKlT" id="5xDm4AQIUH" role="2OqNvi">
              <ref role="37wK5l" node="5Nhi$S9REAa" resolve="resolve" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5xDm4AQHSY" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="13i0hz" id="5xDm4AQHT1" role="13h7CS">
      <property role="TrG5h" value="getParentContext" />
      <ref role="13i0hy" node="5xDm4AQxLt" resolve="getParentContext" />
      <node concept="3Tm1VV" id="5xDm4AQHT2" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHT5" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQJ0P" role="3cqZAp">
          <node concept="2YIFZM" id="4cPrGrnEaOg" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0thsSJ" resolve="copyAsSimpleNode" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="5xDm4AQJ0N" role="37wK5m">
              <node concept="2pJPED" id="5xDm4AQJ4o" role="2pJPEn">
                <ref role="2pJxaS" to="j481:5xDm4AQye1" resolve="ExistingNodeSubstituteContext" />
                <node concept="2pIpSj" id="5xDm4AQJ5F" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:5xDm4AQyfx" resolve="node" />
                  <node concept="36biLy" id="5xDm4AQJ6s" role="28nt2d">
                    <node concept="2OqwBi" id="5xDm4AQJc1" role="36biLW">
                      <node concept="13iPFW" id="5xDm4AQJ98" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5xDm4AQJfx" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:5xDm4AQHPK" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5xDm4AQHT6" role="3clF45">
        <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
      </node>
    </node>
    <node concept="13i0hz" id="5xDm4AQHT7" role="13h7CS">
      <property role="TrG5h" value="getExpectedOutputConcept" />
      <ref role="13i0hy" node="5xDm4AQxR9" resolve="getExpectedOutputConcept" />
      <node concept="3Tm1VV" id="5xDm4AQHT8" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHTb" role="3clF47">
        <node concept="3clFbF" id="5xDm4AQJYy" role="3cqZAp">
          <node concept="2OqwBi" id="5xDm4AQKjh" role="3clFbG">
            <node concept="BsUDl" id="5xDm4AQJYx" role="2Oq$k0">
              <ref role="37wK5l" node="5xDm4AQxJ9" resolve="getLink" />
            </node>
            <node concept="liA8E" id="5xDm4AQKBh" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="5xDm4AQHTc" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5xDm4AQHTd" role="13h7CS">
      <property role="TrG5h" value="replaceNode" />
      <ref role="13i0hy" node="5xDm4AQy2X" resolve="replaceNode" />
      <node concept="3Tm1VV" id="5xDm4AQHTg" role="1B3o_S" />
      <node concept="3clFbS" id="5xDm4AQHTj" role="3clF47">
        <node concept="3cpWs6" id="5xDm4AQLAn" role="3cqZAp">
          <node concept="2YIFZM" id="5xDm4AQLAp" role="3cqZAk">
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <ref role="37wK5l" to="l6bp:30TKBrMe336" resolve="addNewChild" />
            <node concept="2OqwBi" id="5xDm4AQLAq" role="37wK5m">
              <node concept="13iPFW" id="5xDm4AQLAr" role="2Oq$k0" />
              <node concept="3TrEf2" id="5xDm4AQLAs" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5xDm4AQHPK" resolve="parent" />
              </node>
            </node>
            <node concept="BsUDl" id="5xDm4AQLAt" role="37wK5m">
              <ref role="37wK5l" node="5xDm4AQxJ9" resolve="getLink" />
            </node>
            <node concept="3cmrfG" id="5xDm4AQLAu" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="5xDm4AQLAv" role="37wK5m">
              <ref role="3cqZAo" node="5xDm4AQHTk" resolve="newConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5xDm4AQHTk" role="3clF46">
        <property role="TrG5h" value="newConcept" />
        <node concept="3bZ5Sz" id="5xDm4AQHTl" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5xDm4AQHTm" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4cPrGrn_mhk" role="13h7CS">
      <property role="TrG5h" value="getCanonical" />
      <ref role="13i0hy" node="4cPrGrn_eio" resolve="getCanonical" />
      <node concept="3Tm1VV" id="4cPrGrn_mhl" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGrn_mhq" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrn_mF4" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrn_mF5" role="3cpWs9">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="4cPrGrn_mEN" role="1tU5fm" />
            <node concept="BsUDl" id="4cPrGrn_mF6" role="33vP2m">
              <ref role="37wK5l" node="5xDm4AQxGu" resolve="getCurrentNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrn_mD3" role="3cqZAp">
          <node concept="3K4zz7" id="4cPrGrn_n_i" role="3clFbG">
            <node concept="13iPFW" id="4cPrGrn_nD4" role="3K4E3e" />
            <node concept="2YIFZM" id="4cPrGrnBWtb" role="3K4GZi">
              <ref role="37wK5l" to="l6bp:6IHVO0thsSJ" resolve="copyAsSimpleNode" />
              <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
              <node concept="2pJPEk" id="4cPrGrn_nGD" role="37wK5m">
                <node concept="2pJPED" id="4cPrGrn_nMd" role="2pJPEn">
                  <ref role="2pJxaS" to="j481:5xDm4AQye1" resolve="ExistingNodeSubstituteContext" />
                  <node concept="2pIpSj" id="4cPrGrn_o8O" role="2pJxcM">
                    <ref role="2pIpSl" to="j481:5xDm4AQyfx" resolve="node" />
                    <node concept="36biLy" id="4cPrGrn_otw" role="28nt2d">
                      <node concept="37vLTw" id="4cPrGrn_otP" role="36biLW">
                        <ref role="3cqZAo" node="4cPrGrn_mF5" resolve="currentNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGrn_n7T" role="3K4Cdx">
              <node concept="37vLTw" id="4cPrGrn_mF7" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrn_mF5" resolve="currentNode" />
              </node>
              <node concept="3w_OXm" id="4cPrGrn_n8L" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4cPrGrn_mhr" role="3clF45">
        <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7tcNvKI37np">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7tcNvKI37mO" resolve="SubstituteTransformProvider" />
    <node concept="13hLZK" id="7tcNvKI37nq" role="13h7CW">
      <node concept="3clFbS" id="7tcNvKI37nr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7tcNvKI37nD" role="13h7CS">
      <property role="TrG5h" value="getActions" />
      <ref role="13i0hy" node="7zDl3zklxHf" resolve="getActions" />
      <node concept="3Tm1VV" id="7tcNvKI37nG" role="1B3o_S" />
      <node concept="3clFbS" id="7tcNvKI37nK" role="3clF47">
        <node concept="3cpWs6" id="4cPrGrn_vCE" role="3cqZAp">
          <node concept="2OqwBi" id="7tcNvKI37Bh" role="3cqZAk">
            <node concept="2OqwBi" id="7tcNvKI37Bi" role="2Oq$k0">
              <node concept="2M0cAz" id="7tcNvKI37Bj" role="2Oq$k0">
                <ref role="2M0c$$" to="gq2t:7tcNvKHZN9z" resolve="getSubstituteTransformActions" />
                <node concept="2OqwBi" id="7tcNvKI38Sx" role="2M0c$y">
                  <node concept="13iPFW" id="7tcNvKI38DM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7tcNvKI39aY" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7tcNvKI37mU" resolve="context" />
                  </node>
                </node>
                <node concept="37vLTw" id="7tcNvKIfAS0" role="2M0c$y">
                  <ref role="3cqZAo" node="7tcNvKI37nL" resolve="pattern" />
                </node>
              </node>
              <node concept="3goQfb" id="7tcNvKI37Bs" role="2OqNvi">
                <node concept="1bVj0M" id="7tcNvKI37Bt" role="23t8la">
                  <node concept="3clFbS" id="7tcNvKI37Bu" role="1bW5cS">
                    <node concept="3clFbF" id="7tcNvKI37Bv" role="3cqZAp">
                      <node concept="37vLTw" id="7tcNvKI37Bw" role="3clFbG">
                        <ref role="3cqZAo" node="7tcNvKI37Bx" resolve="it" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7tcNvKI37Bx" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7tcNvKI37By" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7tcNvKI37Bz" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7tcNvKI37nL" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="7tcNvKI37nM" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="7tcNvKI37nN" role="3clF45">
        <node concept="3Tqbb2" id="7tcNvKI37nO" role="A3Ik2">
          <ref role="ehGHo" to="j481:1nlzgMD9WVV" resolve="IAction" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4cPrGrn_qhk" role="13h7CS">
      <property role="TrG5h" value="isSame" />
      <ref role="13i0hy" node="4cPrGrn_pPy" resolve="isSame" />
      <node concept="3Tm1VV" id="4cPrGrn_qhn" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGrn_qhu" role="3clF47">
        <node concept="3clFbJ" id="4cPrGrn_rne" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="2OqwBi" id="4cPrGrn_rw$" role="3clFbw">
            <node concept="37vLTw" id="4cPrGrn_rny" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrn_qhv" resolve="other" />
            </node>
            <node concept="1mIQ4w" id="4cPrGrn_rDm" role="2OqNvi">
              <node concept="chp4Y" id="4cPrGrn_rFB" role="cj9EA">
                <ref role="cht4Q" to="j481:7tcNvKI37mO" resolve="SubstituteTransformProvider" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4cPrGrn_rng" role="3clFbx">
            <node concept="3cpWs6" id="4cPrGrn_vpF" role="3cqZAp">
              <node concept="2YFouu" id="4cPrGrn_vpH" role="3cqZAk">
                <node concept="2OqwBi" id="4cPrGrn_vpI" role="3uHU7w">
                  <node concept="2OqwBi" id="4cPrGrn_vpJ" role="2Oq$k0">
                    <node concept="1PxgMI" id="4cPrGrn_vpK" role="2Oq$k0">
                      <node concept="chp4Y" id="4cPrGrn_vpL" role="3oSUPX">
                        <ref role="cht4Q" to="j481:7tcNvKI37mO" resolve="SubstituteTransformProvider" />
                      </node>
                      <node concept="37vLTw" id="4cPrGrn_vpM" role="1m5AlR">
                        <ref role="3cqZAo" node="4cPrGrn_qhv" resolve="other" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4cPrGrn_vpN" role="2OqNvi">
                      <ref role="3Tt5mk" to="j481:7tcNvKI37mU" resolve="context" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="4cPrGrn_vpO" role="2OqNvi">
                    <ref role="37wK5l" node="4cPrGrn_eio" resolve="getCanonical" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4cPrGrn_vpP" role="3uHU7B">
                  <node concept="2OqwBi" id="4cPrGrn_vpQ" role="2Oq$k0">
                    <node concept="13iPFW" id="4cPrGrn_vpR" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4cPrGrn_vpS" role="2OqNvi">
                      <ref role="3Tt5mk" to="j481:7tcNvKI37mU" resolve="context" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="4cPrGrn_vpT" role="2OqNvi">
                    <ref role="37wK5l" node="4cPrGrn_eio" resolve="getCanonical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrn_rH7" role="3cqZAp">
          <node concept="3clFbT" id="4cPrGrn_rHx" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4cPrGrn_qhv" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="4cPrGrn_qhw" role="1tU5fm">
          <ref role="ehGHo" to="j481:7zDl3zklxEL" resolve="IActionProvider" />
        </node>
      </node>
      <node concept="10P_77" id="4cPrGrn_qhx" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7tcNvKIixpm">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7tcNvKIixoH" resolve="INodeInitializer" />
    <node concept="13i0hz" id="7tcNvKIixpA" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="initialize" />
      <node concept="37vLTG" id="7tcNvKIixqr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7tcNvKIixqI" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7tcNvKIixpB" role="1B3o_S" />
      <node concept="3cqZAl" id="7tcNvKIixpQ" role="3clF45" />
      <node concept="3clFbS" id="7tcNvKIixpD" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7tcNvKIixpn" role="13h7CW">
      <node concept="3clFbS" id="7tcNvKIixpo" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7tcNvKIi$9h">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:7tcNvKIixoN" resolve="NodeInitializer_SetProperty" />
    <node concept="13hLZK" id="7tcNvKIi$9i" role="13h7CW">
      <node concept="3clFbS" id="7tcNvKIi$9j" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7tcNvKIi$9x" role="13h7CS">
      <property role="TrG5h" value="initialize" />
      <ref role="13i0hy" node="7tcNvKIixpA" resolve="initialize" />
      <node concept="3Tm1VV" id="7tcNvKIi$9$" role="1B3o_S" />
      <node concept="3clFbS" id="7tcNvKIi$9B" role="3clF47">
        <node concept="3clFbF" id="7tcNvKIi$9W" role="3cqZAp">
          <node concept="2OqwBi" id="7tcNvKIi$v3" role="3clFbG">
            <node concept="2JrnkZ" id="7tcNvKIi$gY" role="2Oq$k0">
              <node concept="37vLTw" id="7tcNvKIi$9V" role="2JrQYb">
                <ref role="3cqZAo" node="7tcNvKIi$9C" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="7tcNvKIi$Dj" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="2OqwBi" id="7tcNvKIi_qr" role="37wK5m">
                <node concept="2OqwBi" id="7tcNvKIi$Ow" role="2Oq$k0">
                  <node concept="13iPFW" id="7tcNvKIi$DG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7tcNvKIi_1b" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7tcNvKIixra" resolve="property" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7tcNvKIi_D5" role="2OqNvi">
                  <ref role="37wK5l" node="7zDl3zkdpxe" resolve="resolve" />
                </node>
              </node>
              <node concept="2OqwBi" id="7tcNvKIi_W3" role="37wK5m">
                <node concept="13iPFW" id="7tcNvKIi_KU" role="2Oq$k0" />
                <node concept="3TrcHB" id="7tcNvKIiAfk" role="2OqNvi">
                  <ref role="3TsBF5" to="j481:7tcNvKIixrc" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7tcNvKIi$9C" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7tcNvKIi$9D" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7tcNvKIi$9E" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5X1StJEJR$L">
    <property role="3GE5qa" value="actions.changeText" />
    <ref role="13h7C2" to="j481:5X1StJEJQzX" resolve="ChangeTextAction" />
    <node concept="13i0hz" id="5X1StJEJR_1" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5X1StJEJR_2" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJEJR_3" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEJR_4" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEJR_5" role="3cpWs9">
            <property role="TrG5h" value="targetCell" />
            <node concept="3Tqbb2" id="5X1StJEJR_6" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaED" resolve="TextCell" />
            </node>
            <node concept="1PxgMI" id="5X1StJEJR_7" role="33vP2m">
              <node concept="chp4Y" id="5X1StJEJR_8" role="3oSUPX">
                <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
              </node>
              <node concept="2OqwBi" id="5X1StJEJR_9" role="1m5AlR">
                <node concept="2OqwBi" id="5X1StJEJR_a" role="2Oq$k0">
                  <node concept="13iPFW" id="5X1StJEJR_b" role="2Oq$k0" />
                  <node concept="37Cfm0" id="5X1StJEJR_c" role="2OqNvi">
                    <node concept="1aIX9F" id="5X1StJEJR_d" role="37CeNk">
                      <node concept="26LbJo" id="5X1StJEJT4d" role="1aIX9E">
                        <ref role="26LbJp" to="j481:5X1StJEJSDJ" resolve="targetCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZHEkA" id="5X1StJEJR_f" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJEJR_g" role="3cqZAp">
          <node concept="37vLTI" id="5X1StJEJR_h" role="3clFbG">
            <node concept="BsUDl" id="5X1StJEJR_i" role="37vLTx">
              <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
            </node>
            <node concept="2OqwBi" id="5X1StJEJR_j" role="37vLTJ">
              <node concept="37vLTw" id="5X1StJEJR_k" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJR_5" resolve="targetCell" />
              </node>
              <node concept="3TrcHB" id="5X1StJEJR_l" role="2OqNvi">
                <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJEJUuH" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJF1klN" role="3clFbG">
            <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="5X1StJF1klO" role="37wK5m">
              <node concept="2pJPED" id="5X1StJF1klP" role="2pJPEn">
                <ref role="2pJxaS" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
                <node concept="2pIpSj" id="5X1StJF1klQ" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:7vWAzuEMigU" resolve="focusCell" />
                  <node concept="36biLy" id="5X1StJF1klR" role="28nt2d">
                    <node concept="2OqwBi" id="5X1StJF1klS" role="36biLW">
                      <node concept="13iPFW" id="5X1StJF1klT" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5X1StJF1klU" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:5X1StJEJSDJ" resolve="targetCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="5X1StJF1klV" role="2pJxcM">
                  <ref role="2pJxcJ" to="j481:7vWAzuEL3BP" resolve="position" />
                  <node concept="BsUDl" id="5X1StJF1klW" role="28ntcv">
                    <ref role="37wK5l" node="5X1StJEJTuX" resolve="newCaretPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5X1StJF1klX" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJEJR_N" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJF1klY" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJEJR_N" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5X1StJEJR_O" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5X1StJEJR_P" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJEJTuX" role="13h7CS">
      <property role="TrG5h" value="newCaretPosition" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5X1StJEJTuY" role="1B3o_S" />
      <node concept="10Oyi0" id="5X1StJEJT$I" role="3clF45" />
      <node concept="3clFbS" id="5X1StJEJTv0" role="3clF47">
        <node concept="3clFbF" id="5X1StJEJVkj" role="3cqZAp">
          <node concept="2OqwBi" id="5X1StJEJVES" role="3clFbG">
            <node concept="BsUDl" id="5X1StJEJVki" role="2Oq$k0">
              <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
            </node>
            <node concept="liA8E" id="5X1StJEJVYu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5X1StJEJR_Q" role="13h7CS">
      <property role="TrG5h" value="isValid" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5X1StJEJR_R" role="1B3o_S" />
      <node concept="10P_77" id="5X1StJEJR_S" role="3clF45" />
      <node concept="3clFbS" id="5X1StJEJR_T" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEJR_U" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEJR_V" role="3cpWs9">
            <property role="TrG5h" value="targetCell" />
            <node concept="3Tqbb2" id="5X1StJEJR_W" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaED" resolve="TextCell" />
            </node>
            <node concept="1PxgMI" id="5X1StJEJR_X" role="33vP2m">
              <node concept="chp4Y" id="5X1StJEJR_Y" role="3oSUPX">
                <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
              </node>
              <node concept="2OqwBi" id="5X1StJEJR_Z" role="1m5AlR">
                <node concept="2OqwBi" id="5X1StJEJRA0" role="2Oq$k0">
                  <node concept="13iPFW" id="5X1StJEJRA1" role="2Oq$k0" />
                  <node concept="37Cfm0" id="5X1StJEJRA2" role="2OqNvi">
                    <node concept="1aIX9F" id="5X1StJEJRA3" role="37CeNk">
                      <node concept="26LbJo" id="5X1StJEKelm" role="1aIX9E">
                        <ref role="26LbJp" to="j481:5X1StJEJSDJ" resolve="targetCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZHEkA" id="5X1StJEJRA5" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJEJRA6" role="3cqZAp">
          <node concept="1Wc70l" id="5X1StJFcgyb" role="3clFbG">
            <node concept="2OqwBi" id="5X1StJFcgHj" role="3uHU7B">
              <node concept="37vLTw" id="5X1StJFcgyo" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJR_V" resolve="targetCell" />
              </node>
              <node concept="3TrcHB" id="5X1StJFcgUa" role="2OqNvi">
                <ref role="3TsBF5" to="j481:4b25nZ3oTN6" resolve="editable" />
              </node>
            </node>
            <node concept="2OqwBi" id="5X1StJEJRA7" role="3uHU7w">
              <node concept="37vLTw" id="5X1StJEJRA8" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJR_V" resolve="targetCell" />
              </node>
              <node concept="2qgKlT" id="5X1StJEJRA9" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zkduly" resolve="isValidText" />
                <node concept="BsUDl" id="5X1StJEJRAa" role="37wK5m">
                  <ref role="37wK5l" node="5X1StJEJRAb" resolve="getNewText" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5X1StJEJWXx" role="13h7CS">
      <property role="TrG5h" value="getCurrentText" />
      <node concept="3Tm1VV" id="5X1StJEJWXy" role="1B3o_S" />
      <node concept="17QB3L" id="5X1StJEJXdH" role="3clF45" />
      <node concept="3clFbS" id="5X1StJEJWX$" role="3clF47">
        <node concept="3cpWs8" id="5X1StJEJXeT" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEJXeU" role="3cpWs9">
            <property role="TrG5h" value="targetCell" />
            <node concept="3Tqbb2" id="5X1StJEJXeV" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaED" resolve="TextCell" />
            </node>
            <node concept="1PxgMI" id="5X1StJEJXeW" role="33vP2m">
              <node concept="chp4Y" id="5X1StJEJXeX" role="3oSUPX">
                <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
              </node>
              <node concept="2OqwBi" id="5X1StJEJXeY" role="1m5AlR">
                <node concept="2OqwBi" id="5X1StJEJXeZ" role="2Oq$k0">
                  <node concept="13iPFW" id="5X1StJEJXf0" role="2Oq$k0" />
                  <node concept="37Cfm0" id="5X1StJEJXf1" role="2OqNvi">
                    <node concept="1aIX9F" id="5X1StJEJXf2" role="37CeNk">
                      <node concept="26LbJo" id="5X1StJEJXf3" role="1aIX9E">
                        <ref role="26LbJp" to="j481:5X1StJEJSDJ" resolve="targetCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZHEkA" id="5X1StJEJXf4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5X1StJEJXf5" role="3cqZAp">
          <node concept="3cpWsn" id="5X1StJEJXf6" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="5X1StJEJXf7" role="1tU5fm" />
            <node concept="2OqwBi" id="5X1StJEJXf8" role="33vP2m">
              <node concept="37vLTw" id="5X1StJEJXf9" role="2Oq$k0">
                <ref role="3cqZAo" node="5X1StJEJXeU" resolve="targetCell" />
              </node>
              <node concept="3TrcHB" id="5X1StJEJXfa" role="2OqNvi">
                <ref role="3TsBF5" to="j481:AkkmJBMou0" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5X1StJEJXfb" role="3cqZAp">
          <node concept="3clFbS" id="5X1StJEJXfc" role="3clFbx">
            <node concept="3clFbF" id="5X1StJEJXfd" role="3cqZAp">
              <node concept="37vLTI" id="5X1StJEJXfe" role="3clFbG">
                <node concept="Xl_RD" id="5X1StJEJXff" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="5X1StJEJXfg" role="37vLTJ">
                  <ref role="3cqZAo" node="5X1StJEJXf6" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5X1StJEJXfh" role="3clFbw">
            <node concept="10Nm6u" id="5X1StJEJXfi" role="3uHU7w" />
            <node concept="37vLTw" id="5X1StJEJXfj" role="3uHU7B">
              <ref role="3cqZAo" node="5X1StJEJXf6" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJEJXln" role="3cqZAp">
          <node concept="37vLTw" id="5X1StJEJXpt" role="3cqZAk">
            <ref role="3cqZAo" node="5X1StJEJXf6" resolve="text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5X1StJEJRAb" role="13h7CS">
      <property role="TrG5h" value="getNewText" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="5X1StJEJRAc" role="1B3o_S" />
      <node concept="17QB3L" id="5X1StJEJRAd" role="3clF45" />
      <node concept="3clFbS" id="5X1StJEJRAe" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5X1StJEKygQ" role="13h7CS">
      <property role="TrG5h" value="getPatternForTransformAction" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="37vLTG" id="5X1StJEKyiD" role="3clF46">
        <property role="TrG5h" value="side" />
        <node concept="3uibUv" id="5X1StJEKyiH" role="1tU5fm">
          <ref role="3uigEE" to="gq2t:7zDl3zkd9Mg" resolve="TransformSide" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5X1StJEKygR" role="1B3o_S" />
      <node concept="17QB3L" id="5X1StJEKyiA" role="3clF45" />
      <node concept="3clFbS" id="5X1StJEKygT" role="3clF47" />
    </node>
    <node concept="13hLZK" id="5X1StJEJR$M" role="13h7CW">
      <node concept="3clFbS" id="5X1StJEJR$N" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5X1StJF6oV$">
    <property role="3GE5qa" value="sideTransform" />
    <ref role="13h7C2" to="j481:5X1StJF6oUZ" resolve="CloseSideTransform" />
    <node concept="13i0hz" id="5X1StJF6oVB" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="5X1StJF6oVC" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJF6oVD" role="3clF47">
        <node concept="3clFbF" id="5X1StJF6oVE" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJF6oVF" role="3clFbG">
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <ref role="37wK5l" to="l6bp:5X1StJF1bgV" resolve="clearChildren" />
            <node concept="37vLTw" id="5X1StJF6oVG" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF6oW3" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJF6oVH" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:7zDl3zkbpRo" resolve="sideTransformState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJF6oVX" role="3cqZAp">
          <node concept="2YIFZM" id="5X1StJF6oVY" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="13iPFW" id="5X1StJF6oVZ" role="37wK5m" />
            <node concept="37vLTw" id="5X1StJF6oW0" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF6oW3" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="5X1StJF6oW1" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="5X1StJF6oW2" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF6oW3" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5X1StJF6oW4" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="5X1StJF6oW5" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5X1StJF6oW6" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="4j3vk5Z868M" resolve="apply" />
      <node concept="3Tm1VV" id="5X1StJF6oW7" role="1B3o_S" />
      <node concept="3clFbS" id="5X1StJF6oW8" role="3clF47">
        <node concept="3clFbJ" id="4cPrGrnHqrd" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnHqrf" role="3clFbx">
            <node concept="3clFbF" id="5X1StJF6oWK" role="3cqZAp">
              <node concept="2YIFZM" id="5X1StJF6oWL" role="3clFbG">
                <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
                <node concept="2pJPEk" id="5X1StJF6oWM" role="37wK5m">
                  <node concept="2pJPED" id="5X1StJF6oWN" role="2pJPEn">
                    <ref role="2pJxaS" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
                    <node concept="2pIpSj" id="5X1StJF6oWO" role="2pJxcM">
                      <ref role="2pIpSl" to="j481:7vWAzuEMigU" resolve="focusCell" />
                      <node concept="36biLy" id="5X1StJF6oWP" role="28nt2d">
                        <node concept="1PxgMI" id="4cPrGrnHy7h" role="36biLW">
                          <node concept="chp4Y" id="4cPrGrnHyaI" role="3oSUPX">
                            <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
                          </node>
                          <node concept="2OqwBi" id="4cPrGrnHxzY" role="1m5AlR">
                            <node concept="13iPFW" id="4cPrGrnHxmo" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4cPrGrnHxST" role="2OqNvi">
                              <ref role="3Tt5mk" to="j481:5X1StJF6oV6" resolve="hostCell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pJxcG" id="5X1StJF6oWT" role="2pJxcM">
                      <ref role="2pJxcJ" to="j481:7vWAzuEL3BP" resolve="position" />
                      <node concept="2OqwBi" id="5X1StJF6oWU" role="28ntcv">
                        <node concept="13iPFW" id="5X1StJF6oWV" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5X1StJF6oWW" role="2OqNvi">
                          <ref role="3TsBF5" to="j481:5X1StJF6oV3" resolve="caretPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5X1StJF6oWX" role="37wK5m">
                  <ref role="3cqZAo" node="5X1StJF6oWZ" resolve="viewerState" />
                </node>
                <node concept="359W_D" id="5X1StJF6oWY" role="37wK5m">
                  <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                  <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4cPrGrnHrVW" role="3clFbw">
            <node concept="2OqwBi" id="4cPrGrnHqYY" role="2Oq$k0">
              <node concept="13iPFW" id="4cPrGrnHqG8" role="2Oq$k0" />
              <node concept="3TrEf2" id="4cPrGrnHrrw" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:5X1StJF6oV6" resolve="hostCell" />
              </node>
            </node>
            <node concept="1mIQ4w" id="4cPrGrnHsb0" role="2OqNvi">
              <node concept="chp4Y" id="4cPrGrnHsiq" role="cj9EA">
                <ref role="cht4Q" to="j481:AkkmJBMaED" resolve="TextCell" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4cPrGrnHvv7" role="9aQIa">
            <node concept="3clFbS" id="4cPrGrnHvv8" role="9aQI4">
              <node concept="3clFbF" id="4cPrGrnHvId" role="3cqZAp">
                <node concept="2YIFZM" id="4cPrGrnHvIe" role="3clFbG">
                  <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                  <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
                  <node concept="2pJPEk" id="4cPrGrnHvIf" role="37wK5m">
                    <node concept="2pJPED" id="4cPrGrnHvIg" role="2pJPEn">
                      <ref role="2pJxaS" to="j481:6X_rIqRvGvV" resolve="CellSelection" />
                      <node concept="2pIpSj" id="4cPrGrnHvIh" role="2pJxcM">
                        <ref role="2pIpSl" to="j481:6X_rIqRvG_R" resolve="cell" />
                        <node concept="36biLy" id="4cPrGrnHvIi" role="28nt2d">
                          <node concept="2OqwBi" id="4cPrGrnHwsC" role="36biLW">
                            <node concept="13iPFW" id="4cPrGrnHwf2" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4cPrGrnHwJp" role="2OqNvi">
                              <ref role="3Tt5mk" to="j481:5X1StJF6oV6" resolve="hostCell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4cPrGrnHvIo" role="37wK5m">
                    <ref role="3cqZAo" node="5X1StJF6oWZ" resolve="viewerState" />
                  </node>
                  <node concept="359W_D" id="4cPrGrnHvIp" role="37wK5m">
                    <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                    <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF6oWZ" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="5X1StJF6oX0" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF6oX1" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="5X1StJF6oX2" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3cqZAl" id="5X1StJF6oX3" role="3clF45" />
    </node>
    <node concept="13hLZK" id="5X1StJF6oV_" role="13h7CW">
      <node concept="3clFbS" id="5X1StJF6oVA" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4cPrGrnOirS">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:3EG7IPowvGK" resolve="ActionCell" />
    <node concept="13hLZK" id="4cPrGrnOirT" role="13h7CW">
      <node concept="3clFbS" id="4cPrGrnOirU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4cPrGrnOis3" role="13h7CS">
      <property role="TrG5h" value="isVisible" />
      <ref role="13i0hy" node="4cPrGrnOi4Y" resolve="isVisible" />
      <node concept="3Tm1VV" id="4cPrGrnOis4" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGrnOis9" role="3clF47">
        <node concept="3clFbF" id="4cPrGrnOi$8" role="3cqZAp">
          <node concept="3clFbT" id="4cPrGrnOi$7" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="4cPrGrnOisa" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4cPrGrnPPpu">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:4cPrGrnPPoR" resolve="WrapperSideTransformAction" />
    <node concept="13hLZK" id="4cPrGrnPPpv" role="13h7CW">
      <node concept="3clFbS" id="4cPrGrnPPpw" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4cPrGrnPPpD" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="1nlzgMD9YAI" resolve="apply" />
      <node concept="3Tm1VV" id="4cPrGrnPPpG" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGrnPPpJ" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnQ7j3" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnQ7j4" role="3cpWs9">
            <property role="TrG5h" value="nodeToWrap" />
            <node concept="3Tqbb2" id="4cPrGrnQ7bR" role="1tU5fm">
              <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="4cPrGrnQ7j5" role="33vP2m">
              <node concept="13iPFW" id="4cPrGrnQ7j6" role="2Oq$k0" />
              <node concept="3TrEf2" id="4cPrGrnQ7j7" role="2OqNvi">
                <ref role="3Tt5mk" to="j481:4cPrGrnPPoU" resolve="nodeToWrap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4cPrGrnQ5S7" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnQ5S8" role="3cpWs9">
            <property role="TrG5h" value="wrapper" />
            <node concept="3uibUv" id="4cPrGrnQ5ME" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="4cPrGrnQ5S9" role="33vP2m">
              <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
              <ref role="37wK5l" to="l6bp:30TKBrMe336" resolve="addNewChild" />
              <node concept="2OqwBi" id="4cPrGrnQ5Sa" role="37wK5m">
                <node concept="37vLTw" id="4cPrGrnQ7j8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnQ7j4" resolve="nodeToWrap" />
                </node>
                <node concept="1mfA1w" id="4cPrGrnQ5Se" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="4cPrGrnQ5Sf" role="37wK5m">
                <node concept="37vLTw" id="4cPrGrnQ7j9" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnQ7j4" resolve="nodeToWrap" />
                </node>
                <node concept="2NL2c5" id="4cPrGrnQ5Sj" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="4cPrGrnQ5Sk" role="37wK5m">
                <node concept="37vLTw" id="4cPrGrnQ7ja" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGrnQ7j4" resolve="nodeToWrap" />
                </node>
                <node concept="2bSWHS" id="4cPrGrnQ5So" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="4cPrGrnQ5Sp" role="37wK5m">
                <node concept="2OqwBi" id="4cPrGrnQ5Sq" role="2Oq$k0">
                  <node concept="13iPFW" id="4cPrGrnQ5Sr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4cPrGrnQ5Ss" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:4cPrGrnPPoW" resolve="wrapperConcept" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4cPrGrnQ5St" role="2OqNvi">
                  <ref role="37wK5l" node="5Nhi$S9RMaT" resolve="resolve" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrnQ7rz" role="3cqZAp">
          <node concept="2OqwBi" id="4cPrGrnQ7zM" role="3clFbG">
            <node concept="37vLTw" id="4cPrGrnQ7rx" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrnQ7j4" resolve="nodeToWrap" />
            </node>
            <node concept="3YRAZt" id="4cPrGrnQ7Ny" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrnQefm" role="3cqZAp">
          <node concept="2OqwBi" id="4cPrGrnQeUX" role="3clFbG">
            <node concept="37vLTw" id="4cPrGrnQfHY" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrnQ5S8" resolve="wrapper" />
            </node>
            <node concept="liA8E" id="4cPrGrnQfgz" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="2OqwBi" id="4cPrGrnQfh8" role="37wK5m">
                <node concept="2OqwBi" id="4cPrGrnQfh9" role="2Oq$k0">
                  <node concept="13iPFW" id="4cPrGrnQfha" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4cPrGrnQfhb" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:4cPrGrnQ6hB" resolve="wrapperLink" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4cPrGrnQfhc" role="2OqNvi">
                  <ref role="37wK5l" node="5Nhi$S9REAa" resolve="resolve" />
                </node>
              </node>
              <node concept="37vLTw" id="4cPrGrnQfrf" role="37wK5m">
                <ref role="3cqZAo" node="4cPrGrnQ7j4" resolve="nodeToWrap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4cPrGro9YSB" role="3cqZAp" />
        <node concept="3clFbF" id="4cPrGro9YRX" role="3cqZAp">
          <node concept="2YIFZM" id="4cPrGro9Zma" role="3clFbG">
            <ref role="37wK5l" to="l6bp:6IHVO0th1QC" resolve="copyTo" />
            <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
            <node concept="2pJPEk" id="4cPrGro9ZzH" role="37wK5m">
              <node concept="2pJPED" id="4cPrGro9ZYp" role="2pJPEn">
                <ref role="2pJxaS" to="j481:4cPrGro8wPC" resolve="NodeSelectionRequest" />
                <node concept="2pIpSj" id="4cPrGroa038" role="2pJxcM">
                  <ref role="2pIpSl" to="j481:4cPrGro8wPF" resolve="node" />
                  <node concept="36biLy" id="4cPrGroa06G" role="28nt2d">
                    <node concept="37vLTw" id="4cPrGroa08V" role="36biLW">
                      <ref role="3cqZAo" node="4cPrGrnQ5S8" resolve="wrapper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4cPrGro9ZF5" role="37wK5m">
              <ref role="3cqZAo" node="4cPrGrnPPpK" resolve="viewerState" />
            </node>
            <node concept="359W_D" id="4cPrGro9ZKB" role="37wK5m">
              <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
              <ref role="359W_F" to="j481:4j3vk5Z863r" resolve="pendingSelectionRequests" />
            </node>
            <node concept="3cmrfG" id="4cPrGro9ZUM" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4cPrGrnPPpK" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="4cPrGrnPPpL" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="3cqZAl" id="4cPrGrnPPpM" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4cPrGrnQCwi" role="13h7CS">
      <property role="TrG5h" value="getActionDescription" />
      <ref role="13i0hy" node="7zDl3zksHrc" resolve="getActionDescription" />
      <node concept="3Tm1VV" id="4cPrGrnQCwj" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGrnQCwq" role="3clF47">
        <node concept="3cpWs8" id="4cPrGrnQGwY" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnQGwZ" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="4cPrGrnQGx0" role="1tU5fm" />
            <node concept="2OqwBi" id="4cPrGrnQGx1" role="33vP2m">
              <node concept="13iAh5" id="4cPrGrnQGx2" role="2Oq$k0" />
              <node concept="2qgKlT" id="4cPrGrnQGx3" role="2OqNvi">
                <ref role="37wK5l" node="7zDl3zksHrc" resolve="getActionDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGrnQGx4" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnQGx5" role="3clFbx">
            <node concept="3cpWs6" id="4cPrGrnQGx6" role="3cqZAp">
              <node concept="37vLTw" id="4cPrGrnQGx7" role="3cqZAk">
                <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4cPrGrnQGx8" role="3clFbw">
            <node concept="37vLTw" id="4cPrGrnQGx9" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
            </node>
            <node concept="17RvpY" id="4cPrGrnQGxa" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="4cPrGrnQGxb" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGrnQGxc" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="4cPrGrnQGxd" role="1tU5fm" />
            <node concept="2OqwBi" id="4cPrGrnQGGc" role="33vP2m">
              <node concept="2OqwBi" id="4cPrGrnQGGd" role="2Oq$k0">
                <node concept="13iPFW" id="4cPrGrnQGGe" role="2Oq$k0" />
                <node concept="3TrEf2" id="4cPrGrnQGGf" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:4cPrGrnPPoW" resolve="wrapperConcept" />
                </node>
              </node>
              <node concept="2qgKlT" id="4cPrGrnQGGg" role="2OqNvi">
                <ref role="37wK5l" node="5Nhi$S9RMaT" resolve="resolve" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4cPrGrnQGxf" role="3cqZAp">
          <node concept="37vLTI" id="4cPrGrnQGxg" role="3clFbG">
            <node concept="2OqwBi" id="4cPrGrnQGxh" role="37vLTx">
              <node concept="37vLTw" id="4cPrGrnQGxi" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGrnQGxc" resolve="concept" />
              </node>
              <node concept="3neUYN" id="4cPrGrnQGxj" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="4cPrGrnQGxk" role="37vLTJ">
              <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGrnQGxl" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGrnQGxm" role="3clFbx">
            <node concept="3clFbF" id="4cPrGrnQGxn" role="3cqZAp">
              <node concept="37vLTI" id="4cPrGrnQGxo" role="3clFbG">
                <node concept="3cpWs3" id="4cPrGrnQGxp" role="37vLTx">
                  <node concept="2OqwBi" id="4cPrGrnQGxq" role="3uHU7w">
                    <node concept="37vLTw" id="4cPrGrnQGxr" role="2Oq$k0">
                      <ref role="3cqZAo" node="4cPrGrnQGxc" resolve="concept" />
                    </node>
                    <node concept="liA8E" id="4cPrGrnQGxs" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4cPrGrnQGxt" role="3uHU7B">
                    <node concept="2OqwBi" id="4cPrGrnQGxu" role="3uHU7B">
                      <node concept="2OqwBi" id="4cPrGrnQGxv" role="2Oq$k0">
                        <node concept="37vLTw" id="4cPrGrnQGxw" role="2Oq$k0">
                          <ref role="3cqZAo" node="4cPrGrnQGxc" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="4cPrGrnQGxx" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4cPrGrnQGxy" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4cPrGrnQGxz" role="3uHU7w">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4cPrGrnQGx$" role="37vLTJ">
                  <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4cPrGrnQGx_" role="3clFbw">
            <node concept="37vLTw" id="4cPrGrnQGxA" role="2Oq$k0">
              <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
            </node>
            <node concept="17RlXB" id="4cPrGrnQGxB" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4cPrGrnQHBg" role="3cqZAp">
          <node concept="37vLTw" id="4cPrGrnQHBi" role="3cqZAk">
            <ref role="3cqZAo" node="4cPrGrnQGwZ" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4cPrGrnQCwr" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4cPrGro87HF">
    <property role="3GE5qa" value="viewerState" />
    <ref role="13h7C2" to="j481:AkkmJBMaEy" resolve="ViewerState" />
    <node concept="13hLZK" id="4cPrGro87HG" role="13h7CW">
      <node concept="3clFbS" id="4cPrGro87HH" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4cPrGro8am_">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:7vWAzuEMeQA" resolve="Viewer" />
    <node concept="13i0hz" id="4cPrGro8amK" role="13h7CS">
      <property role="TrG5h" value="getNodeCell" />
      <node concept="37vLTG" id="4cPrGro8anr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4cPrGro8anD" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4cPrGro8amL" role="1B3o_S" />
      <node concept="3Tqbb2" id="4cPrGro8an0" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEB" resolve="Cell" />
      </node>
      <node concept="3clFbS" id="4cPrGro8amN" role="3clF47">
        <node concept="3clFbF" id="4cPrGro8ao1" role="3cqZAp">
          <node concept="2OqwBi" id="4cPrGro8dkV" role="3clFbG">
            <node concept="2OqwBi" id="4cPrGro8bzN" role="2Oq$k0">
              <node concept="2OqwBi" id="4cPrGro8aWV" role="2Oq$k0">
                <node concept="2OqwBi" id="4cPrGro8ax_" role="2Oq$k0">
                  <node concept="13iPFW" id="4cPrGro8ao0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4cPrGro8aFL" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:7vWAzuEMeRP" resolve="contentLayer" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4cPrGro8bgy" role="2OqNvi">
                  <ref role="37wK5l" node="1D6Sg8Px865" resolve="descendantCells" />
                  <node concept="3clFbT" id="4cPrGro8bnK" role="37wK5m" />
                </node>
              </node>
              <node concept="3zZkjj" id="4cPrGro8bSB" role="2OqNvi">
                <node concept="1bVj0M" id="4cPrGro8bSD" role="23t8la">
                  <node concept="3clFbS" id="4cPrGro8bSE" role="1bW5cS">
                    <node concept="3clFbF" id="4cPrGro8bYP" role="3cqZAp">
                      <node concept="17R0WA" id="4cPrGro8cVP" role="3clFbG">
                        <node concept="37vLTw" id="4cPrGro8d6Q" role="3uHU7w">
                          <ref role="3cqZAo" node="4cPrGro8anr" resolve="node" />
                        </node>
                        <node concept="2OqwBi" id="4cPrGro8ce2" role="3uHU7B">
                          <node concept="37vLTw" id="4cPrGro8bYO" role="2Oq$k0">
                            <ref role="3cqZAo" node="4cPrGro8bSF" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="4cPrGro8czh" role="2OqNvi">
                            <ref role="3Tt5mk" to="j481:4j3vk5Z9tZq" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4cPrGro8bSF" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4cPrGro8bSG" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="4cPrGro8dzf" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4cPrGro8amA" role="13h7CW">
      <node concept="3clFbS" id="4cPrGro8amB" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4cPrGro8wQ8">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:4cPrGro8wPC" resolve="NodeSelectionRequest" />
    <node concept="13hLZK" id="4cPrGro8wQ9" role="13h7CW">
      <node concept="3clFbS" id="4cPrGro8wQa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4cPrGro8wQj" role="13h7CS">
      <property role="TrG5h" value="apply" />
      <ref role="13i0hy" node="4j3vk5Z868M" resolve="apply" />
      <node concept="3Tm1VV" id="4cPrGro8wQo" role="1B3o_S" />
      <node concept="3clFbS" id="4cPrGro8wQr" role="3clF47">
        <node concept="3cpWs8" id="4cPrGro8xm7" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGro8xm8" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3Tqbb2" id="4cPrGro8xlR" role="1tU5fm">
              <ref role="ehGHo" to="j481:7vWAzuEL3Az" resolve="CaretSelection" />
            </node>
            <node concept="2M0cAz" id="4cPrGro8xm9" role="33vP2m">
              <ref role="2M0c$$" to="gq2t:4cPrGro85UH" resolve="createSelectionForNode" />
              <node concept="2OqwBi" id="4cPrGro8xma" role="2M0c$y">
                <node concept="13iPFW" id="4cPrGro8xmb" role="2Oq$k0" />
                <node concept="3TrEf2" id="4cPrGro8xmc" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:4cPrGro8wPF" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="4cPrGro8xmd" role="2M0c$y">
                <ref role="3cqZAo" node="4cPrGro8wQu" resolve="viewer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGro8$qL" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGro8$qN" role="3clFbx">
            <node concept="3clFbF" id="4cPrGro8_m4" role="3cqZAp">
              <node concept="2YIFZM" id="4cPrGro8_p_" role="3clFbG">
                <ref role="37wK5l" to="l6bp:5X1StJF1bgV" resolve="clearChildren" />
                <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                <node concept="37vLTw" id="4cPrGro8_ss" role="37wK5m">
                  <ref role="3cqZAo" node="4cPrGro8wQs" resolve="viewerState" />
                </node>
                <node concept="359W_D" id="4cPrGro8_yf" role="37wK5m">
                  <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                  <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4cPrGro8$Lg" role="3clFbw">
            <node concept="37vLTw" id="4cPrGro8$u_" role="3uHU7B">
              <ref role="3cqZAo" node="4cPrGro8xm8" resolve="selection" />
            </node>
            <node concept="10Nm6u" id="4cPrGro8$KS" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="4cPrGro8$Mr" role="9aQIa">
            <node concept="3clFbS" id="4cPrGro8$Ms" role="9aQI4">
              <node concept="3clFbF" id="4cPrGro8xqs" role="3cqZAp">
                <node concept="2YIFZM" id="4cPrGro8xw1" role="3clFbG">
                  <ref role="37wK5l" to="l6bp:5X1StJF1jyg" resolve="replaceWithCopy" />
                  <ref role="1Pybhc" to="l6bp:30TKBrMa5zj" resolve="SNodeAPI" />
                  <node concept="37vLTw" id="4cPrGro8$X2" role="37wK5m">
                    <ref role="3cqZAo" node="4cPrGro8xm8" resolve="selection" />
                  </node>
                  <node concept="37vLTw" id="4cPrGro8_4l" role="37wK5m">
                    <ref role="3cqZAo" node="4cPrGro8wQs" resolve="viewerState" />
                  </node>
                  <node concept="359W_D" id="4cPrGro8_br" role="37wK5m">
                    <ref role="359W_E" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                    <ref role="359W_F" to="j481:7vWAzuEDEWf" resolve="selection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4cPrGro8wQs" role="3clF46">
        <property role="TrG5h" value="viewerState" />
        <node concept="3Tqbb2" id="4cPrGro8wQt" role="1tU5fm">
          <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
        </node>
      </node>
      <node concept="37vLTG" id="4cPrGro8wQu" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="4cPrGro8wQv" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="3cqZAl" id="4cPrGro8wQw" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5aNLs4JxO_U">
    <property role="3GE5qa" value="cell" />
    <ref role="13h7C2" to="j481:5aNLs4JxOze" resolve="RemoveSpaceCell" />
    <node concept="13hLZK" id="5aNLs4JxO_V" role="13h7CW">
      <node concept="3clFbS" id="5aNLs4JxO_W" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5aNLs4JxOCl" role="13h7CS">
      <property role="TrG5h" value="isVisible" />
      <ref role="13i0hy" node="4cPrGrnOi4Y" resolve="isVisible" />
      <node concept="3Tm1VV" id="5aNLs4JxOCm" role="1B3o_S" />
      <node concept="3clFbS" id="5aNLs4JxOCr" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JxPa1" role="3cqZAp">
          <node concept="3clFbT" id="5aNLs4JxPa0" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="5aNLs4JxOCs" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5aNLs4JTir9">
    <property role="3GE5qa" value="conceptRef" />
    <ref role="13h7C2" to="j481:5aNLs4JTiiP" resolve="SReferenceLinkRef" />
    <node concept="13i0hz" id="5aNLs4JTit$" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="fromReferenceLink" />
      <node concept="37vLTG" id="5aNLs4JTit_" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="5aNLs4JTiJj" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5aNLs4JTitB" role="1B3o_S" />
      <node concept="3Tqbb2" id="5aNLs4JTitC" role="3clF45">
        <ref role="ehGHo" to="j481:5aNLs4JTiiP" resolve="SReferenceLinkRef" />
      </node>
      <node concept="3clFbS" id="5aNLs4JTitD" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JTitE" role="3cqZAp">
          <node concept="2pJPEk" id="5aNLs4JTitF" role="3clFbG">
            <node concept="2pJPED" id="5aNLs4JTitG" role="2pJPEn">
              <ref role="2pJxaS" to="j481:5aNLs4JTiiP" resolve="SReferenceLinkRef" />
              <node concept="2pJxcG" id="5aNLs4JTitH" role="2pJxcM">
                <ref role="2pJxcJ" to="j481:5aNLs4JTiiQ" resolve="serialized" />
                <node concept="BsUDl" id="5aNLs4JTitI" role="28ntcv">
                  <ref role="37wK5l" node="5aNLs4JTitT" resolve="serialize" />
                  <node concept="37vLTw" id="5aNLs4JTitJ" role="37wK5m">
                    <ref role="3cqZAo" node="5aNLs4JTit_" resolve="link" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5aNLs4JTitK" role="13h7CS">
      <property role="TrG5h" value="resolve" />
      <node concept="3Tm1VV" id="5aNLs4JTitL" role="1B3o_S" />
      <node concept="3uibUv" id="5aNLs4JTjtJ" role="3clF45">
        <ref role="3uigEE" to="rzjr:~SReferenceLinkAdapter" resolve="SReferenceLinkAdapter" />
      </node>
      <node concept="3clFbS" id="5aNLs4JTitN" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JTitO" role="3cqZAp">
          <node concept="2YIFZM" id="5aNLs4JTitP" role="3clFbG">
            <ref role="1Pybhc" to="rzjr:~SReferenceLinkAdapter" resolve="SReferenceLinkAdapter" />
            <ref role="37wK5l" to="rzjr:~SReferenceLinkAdapter.deserialize(java.lang.String)" resolve="deserialize" />
            <node concept="2OqwBi" id="5aNLs4JTitQ" role="37wK5m">
              <node concept="13iPFW" id="5aNLs4JTitR" role="2Oq$k0" />
              <node concept="3TrcHB" id="5aNLs4JTitS" role="2OqNvi">
                <ref role="3TsBF5" to="j481:5aNLs4JTiiQ" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5aNLs4JTitT" role="13h7CS">
      <property role="TrG5h" value="serialize" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="5aNLs4JTitU" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="5aNLs4JTiNK" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5aNLs4JTitW" role="1B3o_S" />
      <node concept="17QB3L" id="5aNLs4JTitX" role="3clF45" />
      <node concept="3clFbS" id="5aNLs4JTitY" role="3clF47">
        <node concept="3clFbF" id="5aNLs4JTitZ" role="3cqZAp">
          <node concept="2OqwBi" id="5aNLs4JTiu0" role="3clFbG">
            <node concept="1eOMI4" id="5aNLs4JTiu1" role="2Oq$k0">
              <node concept="10QFUN" id="5aNLs4JTiu2" role="1eOMHV">
                <node concept="3uibUv" id="5aNLs4JTjht" role="10QFUM">
                  <ref role="3uigEE" to="rzjr:~SReferenceLinkAdapter" resolve="SReferenceLinkAdapter" />
                </node>
                <node concept="37vLTw" id="5aNLs4JTiu4" role="10QFUP">
                  <ref role="3cqZAo" node="5aNLs4JTitU" resolve="link" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5aNLs4JTiu5" role="2OqNvi">
              <ref role="37wK5l" to="rzjr:~SReferenceLinkAdapter.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5aNLs4JTira" role="13h7CW">
      <node concept="3clFbS" id="5aNLs4JTirb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3rBy5k_6v0v">
    <property role="3GE5qa" value="actions" />
    <ref role="13h7C2" to="j481:5aNLs4JTigx" resolve="NodeInitializer_SetReference" />
    <node concept="13hLZK" id="3rBy5k_6v0w" role="13h7CW">
      <node concept="3clFbS" id="3rBy5k_6v0x" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3rBy5k_6v3h" role="13h7CS">
      <property role="TrG5h" value="initialize" />
      <ref role="13i0hy" node="7tcNvKIixpA" resolve="initialize" />
      <node concept="3Tm1VV" id="3rBy5k_6v3k" role="1B3o_S" />
      <node concept="3clFbS" id="3rBy5k_6v3n" role="3clF47">
        <node concept="3clFbF" id="3rBy5k_6vcv" role="3cqZAp">
          <node concept="2OqwBi" id="3rBy5k_6vcw" role="3clFbG">
            <node concept="2JrnkZ" id="3rBy5k_6vcx" role="2Oq$k0">
              <node concept="37vLTw" id="3rBy5k_6vcy" role="2JrQYb">
                <ref role="3cqZAo" node="3rBy5k_6v3o" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="3rBy5k_6vcz" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="2OqwBi" id="3rBy5k_6vc$" role="37wK5m">
                <node concept="2OqwBi" id="3rBy5k_6vc_" role="2Oq$k0">
                  <node concept="13iPFW" id="3rBy5k_6vcA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3rBy5k_6vNb" role="2OqNvi">
                    <ref role="3Tt5mk" to="j481:5aNLs4JTigz" resolve="link" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3rBy5k_6w74" role="2OqNvi">
                  <ref role="37wK5l" node="5aNLs4JTitK" resolve="resolve" />
                </node>
              </node>
              <node concept="2OqwBi" id="3rBy5k_6vcD" role="37wK5m">
                <node concept="13iPFW" id="3rBy5k_6vcE" role="2Oq$k0" />
                <node concept="3TrEf2" id="3rBy5k_6wva" role="2OqNvi">
                  <ref role="3Tt5mk" to="j481:3rBy5k$uV9K" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3rBy5k_6v3o" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3rBy5k_6v3p" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3rBy5k_6v3q" role="3clF45" />
    </node>
  </node>
</model>

