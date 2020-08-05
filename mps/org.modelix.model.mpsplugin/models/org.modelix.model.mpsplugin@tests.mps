<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:92a82b5b-5630-4856-a488-8a8104e14777(org.modelix.model.mpsplugin@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="y5e1" ref="r:4464540a-9650-433f-b716-ed95bbac5a69(jetbrains.mps.lang.test.matcher)" />
    <import index="xx25" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.types(MPS.Core/)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="geos" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.persistent(org.modelix.model.client/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)" />
    <import index="hvt5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model(org.modelix.model.client/)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
    <import index="3p1j" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.util(org.modelix.model.client/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1172017222794" name="jetbrains.mps.baseLanguage.unitTest.structure.Fail" flags="nn" index="3xETmq" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2926695023085807517" name="jetbrains.mps.lang.smodel.structure.Reference_ContainingLinkOperation" flags="nn" index="CsP83" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1181952871644" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSubConcepts" flags="nn" index="LSoRf">
        <child id="1182506816063" name="smodel" index="1iTxcG" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="3s_ewN" id="7zuOo8oMGtw">
    <property role="3s_ewP" value="ModelSynchronizer" />
    <node concept="3Tm1VV" id="7zuOo8oMGtx" role="1B3o_S" />
    <node concept="3s_gsd" id="7zuOo8oMGty" role="3s_ewO">
      <node concept="3s$Bmu" id="7zuOo8oMGvi" role="3s_gse">
        <property role="3s$Bm0" value="random" />
        <node concept="3cqZAl" id="7zuOo8oMGvj" role="3clF45" />
        <node concept="3Tm1VV" id="7zuOo8oMGvk" role="1B3o_S" />
        <node concept="3clFbS" id="7zuOo8oMGvl" role="3clF47">
          <node concept="3cpWs8" id="7zuOo8oNLoO" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oNLoP" role="3cpWs9">
              <property role="TrG5h" value="rand" />
              <node concept="3uibUv" id="7zuOo8oNLoQ" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Random" resolve="Random" />
              </node>
              <node concept="2ShNRf" id="7zuOo8oNLRi" role="33vP2m">
                <node concept="1pGfFk" id="7zuOo8oNLGk" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;(long)" resolve="Random" />
                  <node concept="3cmrfG" id="7zuOo8oNM2L" role="37wK5m">
                    <property role="3cmrfH" value="920175" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7zuOo8oSxYH" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oSxYI" role="3cpWs9">
              <property role="TrG5h" value="repo" />
              <node concept="3uibUv" id="7zuOo8oQWgZ" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
              <node concept="2YIFZM" id="7zuOo8oSxYJ" role="33vP2m">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7zuOo8oN5Tf" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oN5Tg" role="3cpWs9">
              <property role="TrG5h" value="branch" />
              <node concept="3uibUv" id="1m9roGBNljH" role="1tU5fm">
                <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
              </node>
              <node concept="2ShNRf" id="7zuOo8oN5Th" role="33vP2m">
                <node concept="1pGfFk" id="7zuOo8oN5Ti" role="2ShVmc">
                  <ref role="37wK5l" to="jks5:~PBranch.&lt;init&gt;(org.modelix.model.api.ITree)" resolve="PBranch" />
                  <node concept="2ShNRf" id="7zuOo8oN64Q" role="37wK5m">
                    <node concept="1pGfFk" id="7zuOo8oN7AS" role="2ShVmc">
                      <ref role="37wK5l" to="xkhl:~CLTree.&lt;init&gt;(org.modelix.model.lazy.IDeserializingKeyValueStore)" resolve="CLTree" />
                      <node concept="2ShNRf" id="7zuOo8oN7NJ" role="37wK5m">
                        <node concept="1pGfFk" id="7zuOo8oN9m1" role="2ShVmc">
                          <ref role="37wK5l" to="xkhl:~ObjectStoreCache.&lt;init&gt;(org.modelix.model.IKeyValueStore)" resolve="ObjectStoreCache" />
                          <node concept="2ShNRf" id="7zuOo8oN9z8" role="37wK5m">
                            <node concept="1pGfFk" id="1m9roGBMEtk" role="2ShVmc">
                              <ref role="37wK5l" to="geos:~MapBaseStore.&lt;init&gt;()" resolve="MapBaseStore" />
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
          <node concept="3cpWs8" id="7zuOo8p4r8L" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8p4r8M" role="3cpWs9">
              <property role="TrG5h" value="webModel" />
              <node concept="3uibUv" id="7zuOo8p4pWG" role="1tU5fm">
                <ref role="3uigEE" to="csg2:4QZGLsLEOdM" resolve="CloudTransientModel" />
              </node>
              <node concept="2ShNRf" id="7zuOo8p4r8N" role="33vP2m">
                <node concept="1pGfFk" id="7zuOo8p4r8O" role="2ShVmc">
                  <ref role="37wK5l" to="csg2:4QZGLsLEOdX" resolve="CloudTransientModel" />
                  <node concept="2ShNRf" id="7zuOo8p4r8P" role="37wK5m">
                    <node concept="1pGfFk" id="7zuOo8p4r8Q" role="2ShVmc">
                      <ref role="37wK5l" to="csg2:115Xaa43tZP" resolve="CloudTransientModule" />
                      <node concept="Xl_RD" id="7zuOo8p4r8R" role="37wK5m">
                        <property role="Xl_RC" value="testModule" />
                      </node>
                      <node concept="2YIFZM" id="4rrX99ogfg5" role="37wK5m">
                        <ref role="37wK5l" to="z1c3:~ModuleId.regular()" resolve="regular" />
                        <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7zuOo8p4r8S" role="37wK5m">
                    <property role="Xl_RC" value="testModule" />
                  </node>
                  <node concept="2YIFZM" id="4rrX99og5ip" role="37wK5m">
                    <ref role="37wK5l" to="w1kc:~SModelId.generate()" resolve="generate" />
                    <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                  </node>
                  <node concept="2ShNRf" id="1VtHttxZnEE" role="37wK5m">
                    <node concept="1pGfFk" id="1VtHttxZAvH" role="2ShVmc">
                      <ref role="37wK5l" to="5440:~SimpleIndirectBranch.&lt;init&gt;(org.modelix.model.api.IBranch)" resolve="SimpleIndirectBranch" />
                      <node concept="37vLTw" id="1VtHttxZEtB" role="37wK5m">
                        <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                      </node>
                    </node>
                  </node>
                  <node concept="10M0yZ" id="5D5xac1wvke" role="37wK5m">
                    <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                    <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7zuOo8p4I00" role="3cqZAp">
            <node concept="2OqwBi" id="7zuOo8p4OQx" role="3clFbG">
              <node concept="2OqwBi" id="7zuOo8p4KQt" role="2Oq$k0">
                <node concept="37vLTw" id="7zuOo8p4HZY" role="2Oq$k0">
                  <ref role="3cqZAo" node="7zuOo8p4r8M" resolve="webModel" />
                </node>
                <node concept="liA8E" id="7zuOo8p4OJB" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:7zuOo8p4iMQ" resolve="getSynchronizer" />
                </node>
              </node>
              <node concept="liA8E" id="7zuOo8p4RzT" role="2OqNvi">
                <ref role="37wK5l" to="csg2:7zuOo8p3Opf" resolve="setAsync" />
                <node concept="3clFbT" id="7zuOo8p4RXu" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7zuOo8oNh2y" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oNh2z" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="H_c77" id="7zuOo8oNQw_" role="1tU5fm" />
              <node concept="37vLTw" id="7zuOo8p4r8U" role="33vP2m">
                <ref role="3cqZAo" node="7zuOo8p4r8M" resolve="webModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7zuOo8oO2lL" role="3cqZAp" />
          <node concept="3cpWs8" id="7zuOo8oO284" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oO285" role="3cpWs9">
              <property role="TrG5h" value="rootNode" />
              <node concept="3Tqbb2" id="7zuOo8oO1T7" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
              <node concept="2OqwBi" id="7zuOo8oO286" role="33vP2m">
                <node concept="37vLTw" id="7zuOo8oO287" role="2Oq$k0">
                  <ref role="3cqZAo" node="7zuOo8oNh2z" resolve="model" />
                </node>
                <node concept="3BYIHo" id="7zuOo8oO288" role="2OqNvi">
                  <node concept="2OqwBi" id="7zuOo8oO289" role="3BYIHq">
                    <node concept="35c_gC" id="7zuOo8oO28a" role="2Oq$k0">
                      <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                    <node concept="LFhST" id="7zuOo8oO28b" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7zuOo8oYrPj" role="3cqZAp">
            <node concept="3cpWsn" id="7zuOo8oYrPm" role="3cpWs9">
              <property role="TrG5h" value="versions" />
              <node concept="_YKpA" id="7zuOo8oYrPf" role="1tU5fm">
                <node concept="1LlUBW" id="7zuOo8oYtD1" role="_ZDj9">
                  <node concept="10Oyi0" id="7zuOo8p0udq" role="1Lm7xW" />
                  <node concept="3uibUv" id="1m9roGBN8VX" role="1Lm7xW">
                    <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                  </node>
                  <node concept="3Tqbb2" id="7zuOo8oYtMn" role="1Lm7xW" />
                </node>
              </node>
              <node concept="2ShNRf" id="7zuOo8oYupq" role="33vP2m">
                <node concept="Tc6Ow" id="7zuOo8oYuea" role="2ShVmc">
                  <node concept="1LlUBW" id="7zuOo8oYueb" role="HW$YZ">
                    <node concept="10Oyi0" id="7zuOo8p1cEw" role="1Lm7xW" />
                    <node concept="3uibUv" id="1m9roGBNdj9" role="1Lm7xW">
                      <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                    </node>
                    <node concept="3Tqbb2" id="7zuOo8oYuec" role="1Lm7xW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7zuOo8oYgfg" role="3cqZAp" />
          <node concept="1Dw8fO" id="7zuOo8oNFZZ" role="3cqZAp">
            <node concept="3clFbS" id="7zuOo8oNG01" role="2LFqv$">
              <node concept="1QHqEK" id="7zuOo8oQU07" role="3cqZAp">
                <node concept="1QHqEC" id="7zuOo8oQU09" role="1QHqEI">
                  <node concept="3clFbS" id="7zuOo8oQU0b" role="1bW5cS">
                    <node concept="3KaCP$" id="7zuOo8oNMK7" role="3cqZAp">
                      <node concept="2OqwBi" id="7zuOo8oNNkY" role="3KbGdf">
                        <node concept="37vLTw" id="7zuOo8oNN1i" role="2Oq$k0">
                          <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                        </node>
                        <node concept="liA8E" id="7zuOo8oNNDU" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                          <node concept="3cmrfG" id="7zuOo8oNNPO" role="37wK5m">
                            <property role="3cmrfH" value="4" />
                          </node>
                        </node>
                      </node>
                      <node concept="3KbdKl" id="7zuOo8oNNQK" role="3KbHQx">
                        <node concept="3cmrfG" id="7zuOo8oNO2o" role="3Kbmr1">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3clFbS" id="7zuOo8oNNQM" role="3Kbo56">
                          <node concept="3SKdUt" id="7zuOo8oO2KE" role="3cqZAp">
                            <node concept="1PaTwC" id="7zuOo8oO2KF" role="1aUNEU">
                              <node concept="3oM_SD" id="7zuOo8oO2KH" role="1PaTwD">
                                <property role="3oM_SC" value="New" />
                              </node>
                              <node concept="3oM_SD" id="7zuOo8oO2L2" role="1PaTwD">
                                <property role="3oM_SC" value="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7zuOo8oNO$y" role="3cqZAp">
                            <node concept="3clFbS" id="7zuOo8oNO$$" role="9aQI4">
                              <node concept="3cpWs8" id="7zuOo8oO9PG" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oO9PH" role="3cpWs9">
                                  <property role="TrG5h" value="allNodes" />
                                  <node concept="2I9FWS" id="7zuOo8oO9IT" role="1tU5fm">
                                    <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oO9PI" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8oO9PJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                    </node>
                                    <node concept="2Rf3mk" id="7zuOo8oO9PK" role="2OqNvi">
                                      <node concept="1xMEDy" id="7zuOo8oO9PL" role="1xVPHs">
                                        <node concept="chp4Y" id="7zuOo8oO9PM" role="ri$Ld">
                                          <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                        </node>
                                      </node>
                                      <node concept="1xIGOp" id="7zuOo8oO9PN" role="1xVPHs" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8oPtUB" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oPtUC" role="3cpWs9">
                                  <property role="TrG5h" value="candidates" />
                                  <node concept="A3Dl8" id="7zuOo8oPtMf" role="1tU5fm">
                                    <node concept="1LlUBW" id="7zuOo8oPtMr" role="A3Ik2">
                                      <node concept="3Tqbb2" id="7zuOo8oPtMs" role="1Lm7xW">
                                        <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                      </node>
                                      <node concept="3uibUv" id="7zuOo8oPtMt" role="1Lm7xW">
                                        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                                      </node>
                                      <node concept="3bZ5Sz" id="7zuOo8oPtMu" role="1Lm7xW" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oPtUD" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8oPtUE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oO9PH" resolve="allNodes" />
                                    </node>
                                    <node concept="3goQfb" id="7zuOo8oPtUF" role="2OqNvi">
                                      <node concept="1bVj0M" id="7zuOo8oPtUG" role="23t8la">
                                        <node concept="3clFbS" id="7zuOo8oPtUH" role="1bW5cS">
                                          <node concept="3cpWs8" id="7zuOo8oPtUI" role="3cqZAp">
                                            <node concept="3cpWsn" id="7zuOo8oPtUJ" role="3cpWs9">
                                              <property role="TrG5h" value="links" />
                                              <node concept="A3Dl8" id="7zuOo8oPtUK" role="1tU5fm">
                                                <node concept="3uibUv" id="7zuOo8oPtUL" role="A3Ik2">
                                                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8oPtUM" role="33vP2m">
                                                <node concept="2OqwBi" id="7zuOo8oPtUN" role="2Oq$k0">
                                                  <node concept="37vLTw" id="7zuOo8oPtUO" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8oPtVw" resolve="parent" />
                                                  </node>
                                                  <node concept="2yIwOk" id="7zuOo8oPtUP" role="2OqNvi" />
                                                </node>
                                                <node concept="liA8E" id="7zuOo8oPtUQ" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="7zuOo8p1Yxi" role="3cqZAp">
                                            <node concept="37vLTI" id="7zuOo8p21GL" role="3clFbG">
                                              <node concept="2OqwBi" id="7zuOo8p27Fu" role="37vLTx">
                                                <node concept="37vLTw" id="7zuOo8p24YI" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7zuOo8oPtUJ" resolve="links" />
                                                </node>
                                                <node concept="66VNe" id="7zuOo8p2ard" role="2OqNvi">
                                                  <node concept="2ShNRf" id="7zuOo8p2lZA" role="576Qk">
                                                    <node concept="2HTt$P" id="7zuOo8p2qja" role="2ShVmc">
                                                      <node concept="3uibUv" id="7zuOo8p2v17" role="2HTBi0">
                                                        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                                                      </node>
                                                      <node concept="359W_D" id="7zuOo8p2dVN" role="2HTEbv">
                                                        <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                                        <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="7zuOo8p1Yxg" role="37vLTJ">
                                                <ref role="3cqZAo" node="7zuOo8oPtUJ" resolve="links" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="7zuOo8oPtUR" role="3cqZAp">
                                            <node concept="2OqwBi" id="7zuOo8oPtUS" role="3clFbG">
                                              <node concept="37vLTw" id="7zuOo8oPtUT" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8oPtUJ" resolve="links" />
                                              </node>
                                              <node concept="3goQfb" id="7zuOo8oPtUU" role="2OqNvi">
                                                <node concept="1bVj0M" id="7zuOo8oPtUV" role="23t8la">
                                                  <node concept="3clFbS" id="7zuOo8oPtUW" role="1bW5cS">
                                                    <node concept="3cpWs8" id="7zuOo8oPtUX" role="3cqZAp">
                                                      <node concept="3cpWsn" id="7zuOo8oPtUY" role="3cpWs9">
                                                        <property role="TrG5h" value="targetConcept" />
                                                        <node concept="3bZ5Sz" id="7zuOo8oPtUZ" role="1tU5fm" />
                                                        <node concept="2OqwBi" id="7zuOo8oPtV0" role="33vP2m">
                                                          <node concept="37vLTw" id="7zuOo8oPtV1" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="7zuOo8oPtVu" resolve="link" />
                                                          </node>
                                                          <node concept="liA8E" id="7zuOo8oPtV2" role="2OqNvi">
                                                            <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="7zuOo8oPtV3" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7zuOo8oPtV4" role="3clFbG">
                                                        <node concept="2OqwBi" id="7zuOo8oPtV5" role="2Oq$k0">
                                                          <node concept="2OqwBi" id="7zuOo8oPtV6" role="2Oq$k0">
                                                            <node concept="37vLTw" id="7zuOo8oPtV7" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7zuOo8oPtUY" resolve="targetConcept" />
                                                            </node>
                                                            <node concept="LSoRf" id="7zuOo8oPtV8" role="2OqNvi">
                                                              <node concept="37vLTw" id="7zuOo8oPtV9" role="1iTxcG">
                                                                <ref role="3cqZAo" node="7zuOo8oNh2z" resolve="model" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3zZkjj" id="7zuOo8oPtVa" role="2OqNvi">
                                                            <node concept="1bVj0M" id="7zuOo8oPtVb" role="23t8la">
                                                              <node concept="3clFbS" id="7zuOo8oPtVc" role="1bW5cS">
                                                                <node concept="3clFbF" id="7zuOo8oPtVd" role="3cqZAp">
                                                                  <node concept="3fqX7Q" id="7zuOo8oPtVe" role="3clFbG">
                                                                    <node concept="2OqwBi" id="7zuOo8oPtVf" role="3fr31v">
                                                                      <node concept="37vLTw" id="7zuOo8oPtVg" role="2Oq$k0">
                                                                        <ref role="3cqZAo" node="7zuOo8oPtVi" resolve="concept" />
                                                                      </node>
                                                                      <node concept="liA8E" id="7zuOo8oPtVh" role="2OqNvi">
                                                                        <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                              <node concept="Rh6nW" id="7zuOo8oPtVi" role="1bW2Oz">
                                                                <property role="TrG5h" value="concept" />
                                                                <node concept="2jxLKc" id="7zuOo8oPtVj" role="1tU5fm" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3$u5V9" id="7zuOo8oPtVk" role="2OqNvi">
                                                          <node concept="1bVj0M" id="7zuOo8oPtVl" role="23t8la">
                                                            <node concept="3clFbS" id="7zuOo8oPtVm" role="1bW5cS">
                                                              <node concept="3clFbF" id="7zuOo8oPtVn" role="3cqZAp">
                                                                <node concept="1Ls8ON" id="7zuOo8oPtVo" role="3clFbG">
                                                                  <node concept="37vLTw" id="7zuOo8oPtVp" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8oPtVw" resolve="parent" />
                                                                  </node>
                                                                  <node concept="37vLTw" id="7zuOo8oPtVq" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8oPtVu" resolve="link" />
                                                                  </node>
                                                                  <node concept="37vLTw" id="7zuOo8oPtVr" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8oPtVs" resolve="concept" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="Rh6nW" id="7zuOo8oPtVs" role="1bW2Oz">
                                                              <property role="TrG5h" value="concept" />
                                                              <node concept="2jxLKc" id="7zuOo8oPtVt" role="1tU5fm" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="7zuOo8oPtVu" role="1bW2Oz">
                                                    <property role="TrG5h" value="link" />
                                                    <node concept="2jxLKc" id="7zuOo8oPtVv" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="7zuOo8oPtVw" role="1bW2Oz">
                                          <property role="TrG5h" value="parent" />
                                          <node concept="2jxLKc" id="7zuOo8oPtVx" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8oP_Pw" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oP_Px" role="3cpWs9">
                                  <property role="TrG5h" value="t" />
                                  <node concept="1LlUBW" id="7zuOo8oP_A2" role="1tU5fm">
                                    <node concept="3Tqbb2" id="7zuOo8oP_Aa" role="1Lm7xW">
                                      <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    </node>
                                    <node concept="3uibUv" id="7zuOo8oP_A9" role="1Lm7xW">
                                      <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                                    </node>
                                    <node concept="3bZ5Sz" id="7zuOo8oP_Ab" role="1Lm7xW" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oP_Py" role="33vP2m">
                                    <node concept="2OqwBi" id="7zuOo8oP_Pz" role="2Oq$k0">
                                      <node concept="37vLTw" id="7zuOo8oP_P$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8oPtUC" resolve="candidates" />
                                      </node>
                                      <node concept="7r0gD" id="7zuOo8oP_P_" role="2OqNvi">
                                        <node concept="3K4zz7" id="7zuOo8oREYi" role="7T0AP">
                                          <node concept="3cmrfG" id="7zuOo8oRG2d" role="3K4GZi">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="3eOSWO" id="7zuOo8oRDTm" role="3K4Cdx">
                                            <node concept="3cmrfG" id="7zuOo8oRE4m" role="3uHU7w">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                            <node concept="2OqwBi" id="7zuOo8oRBxf" role="3uHU7B">
                                              <node concept="37vLTw" id="7zuOo8oRALU" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8oPtUC" resolve="candidates" />
                                              </node>
                                              <node concept="34oBXx" id="7zuOo8oRCoP" role="2OqNvi" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8oP_PC" role="3K4E3e">
                                            <node concept="37vLTw" id="7zuOo8oP_PD" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                                            </node>
                                            <node concept="liA8E" id="7zuOo8oP_PE" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                                              <node concept="3cpWsd" id="7zuOo8oQmWw" role="37wK5m">
                                                <node concept="3cmrfG" id="7zuOo8oQn7w" role="3uHU7w">
                                                  <property role="3cmrfH" value="1" />
                                                </node>
                                                <node concept="2OqwBi" id="7zuOo8oP_PF" role="3uHU7B">
                                                  <node concept="37vLTw" id="7zuOo8oP_PG" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8oPtUC" resolve="candidates" />
                                                  </node>
                                                  <node concept="34oBXx" id="7zuOo8oP_PH" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1uHKPH" id="7zuOo8oP_PI" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7zuOo8oPKVj" role="3cqZAp">
                                <node concept="3clFbS" id="7zuOo8oPKVl" role="3clFbx">
                                  <node concept="3cpWs8" id="7zuOo8oTPf5" role="3cqZAp">
                                    <node concept="3cpWsn" id="7zuOo8oTPf6" role="3cpWs9">
                                      <property role="TrG5h" value="child" />
                                      <node concept="3Tqbb2" id="7zuOo8oTP6c" role="1tU5fm" />
                                      <node concept="2OqwBi" id="7zuOo8oTPf7" role="33vP2m">
                                        <node concept="2OqwBi" id="7zuOo8oTPf8" role="2Oq$k0">
                                          <node concept="1LFfDK" id="7zuOo8oTPf9" role="2Oq$k0">
                                            <node concept="3cmrfG" id="7zuOo8oTPfa" role="1LF_Uc">
                                              <property role="3cmrfH" value="0" />
                                            </node>
                                            <node concept="37vLTw" id="7zuOo8oTPfb" role="1LFl5Q">
                                              <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                            </node>
                                          </node>
                                          <node concept="32TBzR" id="7zuOo8oTPfc" role="2OqNvi">
                                            <node concept="1aIX9F" id="7zuOo8oTPfd" role="1xVPHs">
                                              <node concept="25Kdxt" id="7zuOo8oTPfe" role="1aIX9E">
                                                <node concept="1LFfDK" id="7zuOo8oTPff" role="25KhWn">
                                                  <node concept="3cmrfG" id="7zuOo8oTPfg" role="1LF_Uc">
                                                    <property role="3cmrfH" value="1" />
                                                  </node>
                                                  <node concept="37vLTw" id="7zuOo8oTPfh" role="1LFl5Q">
                                                    <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="TSZUe" id="7zuOo8oTPfi" role="2OqNvi">
                                          <node concept="2OqwBi" id="7zuOo8oTPfj" role="25WWJ7">
                                            <node concept="1LFfDK" id="7zuOo8oTPfk" role="2Oq$k0">
                                              <node concept="3cmrfG" id="7zuOo8oTPfl" role="1LF_Uc">
                                                <property role="3cmrfH" value="2" />
                                              </node>
                                              <node concept="37vLTw" id="7zuOo8oTPfm" role="1LFl5Q">
                                                <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                              </node>
                                            </node>
                                            <node concept="LFhST" id="7zuOo8oTPfn" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7zuOo8oT23y" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8oT23v" role="3clFbG">
                                      <node concept="10M0yZ" id="7zuOo8oT23w" role="2Oq$k0">
                                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                      </node>
                                      <node concept="liA8E" id="7zuOo8oT23x" role="2OqNvi">
                                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                        <node concept="3cpWs3" id="7zuOo8oTS0E" role="37wK5m">
                                          <node concept="2OqwBi" id="7zuOo8oTTZH" role="3uHU7w">
                                            <node concept="2JrnkZ" id="7zuOo8oTTl6" role="2Oq$k0">
                                              <node concept="37vLTw" id="7zuOo8oTScP" role="2JrQYb">
                                                <ref role="3cqZAo" node="7zuOo8oTPf6" resolve="child" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7zuOo8oTUVE" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="7zuOo8oTNFp" role="3uHU7B">
                                            <node concept="3cpWs3" id="7zuOo8oTncC" role="3uHU7B">
                                              <node concept="3cpWs3" id="7zuOo8oTlHZ" role="3uHU7B">
                                                <node concept="3cpWs3" id="7zuOo8oTg5q" role="3uHU7B">
                                                  <node concept="3cpWs3" id="7zuOo8oT_Yi" role="3uHU7B">
                                                    <node concept="3cpWs3" id="7zuOo8oTs5v" role="3uHU7B">
                                                      <node concept="3cpWs3" id="7zuOo8oTz_j" role="3uHU7B">
                                                        <node concept="Xl_RD" id="7zuOo8oTzKj" role="3uHU7w">
                                                          <property role="Xl_RC" value=", " />
                                                        </node>
                                                        <node concept="3cpWs3" id="7zuOo8oT8sY" role="3uHU7B">
                                                          <node concept="3cpWs3" id="7zuOo8p0GrS" role="3uHU7B">
                                                            <node concept="37vLTw" id="7zuOo8p0IjJ" role="3uHU7B">
                                                              <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
                                                            </node>
                                                            <node concept="Xl_RD" id="7zuOo8oT2B8" role="3uHU7w">
                                                              <property role="Xl_RC" value=" New node, " />
                                                            </node>
                                                          </node>
                                                          <node concept="2OqwBi" id="7zuOo8oTxoc" role="3uHU7w">
                                                            <node concept="2OqwBi" id="7zuOo8oTvnB" role="2Oq$k0">
                                                              <node concept="1LFfDK" id="7zuOo8oTtPK" role="2Oq$k0">
                                                                <node concept="3cmrfG" id="7zuOo8oTu_O" role="1LF_Uc">
                                                                  <property role="3cmrfH" value="0" />
                                                                </node>
                                                                <node concept="37vLTw" id="7zuOo8oTsQM" role="1LFl5Q">
                                                                  <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                                                </node>
                                                              </node>
                                                              <node concept="2yIwOk" id="7zuOo8oTwgY" role="2OqNvi" />
                                                            </node>
                                                            <node concept="liA8E" id="7zuOo8oTyIf" role="2OqNvi">
                                                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="7zuOo8oTLlM" role="3uHU7w">
                                                        <node concept="2JrnkZ" id="7zuOo8oTKFX" role="2Oq$k0">
                                                          <node concept="1LFfDK" id="7zuOo8oTJ8J" role="2JrQYb">
                                                            <node concept="3cmrfG" id="7zuOo8oTJLx" role="1LF_Uc">
                                                              <property role="3cmrfH" value="0" />
                                                            </node>
                                                            <node concept="37vLTw" id="7zuOo8oT8BY" role="1LFl5Q">
                                                              <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="7zuOo8oTM7x" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="7zuOo8oTgQw" role="3uHU7w">
                                                      <property role="Xl_RC" value=", " />
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="7zuOo8oTjNa" role="3uHU7w">
                                                    <node concept="1LFfDK" id="7zuOo8oTipc" role="2Oq$k0">
                                                      <node concept="3cmrfG" id="7zuOo8oTj9r" role="1LF_Uc">
                                                        <property role="3cmrfH" value="1" />
                                                      </node>
                                                      <node concept="37vLTw" id="7zuOo8oThsa" role="1LFl5Q">
                                                        <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="7zuOo8oTkSM" role="2OqNvi">
                                                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="7zuOo8oTlSZ" role="3uHU7w">
                                                  <property role="Xl_RC" value=", " />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8oTqGa" role="3uHU7w">
                                                <node concept="1LFfDK" id="7zuOo8oToqk" role="2Oq$k0">
                                                  <node concept="3cmrfG" id="7zuOo8oTpc_" role="1LF_Uc">
                                                    <property role="3cmrfH" value="2" />
                                                  </node>
                                                  <node concept="37vLTw" id="7zuOo8oTnnC" role="1LFl5Q">
                                                    <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="7zuOo8oTrth" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="7zuOo8oTNQp" role="3uHU7w">
                                              <property role="Xl_RC" value=", " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="7zuOo8oPLQv" role="3clFbw">
                                  <node concept="10Nm6u" id="7zuOo8oPMkF" role="3uHU7w" />
                                  <node concept="37vLTw" id="7zuOo8oPLh7" role="3uHU7B">
                                    <ref role="3cqZAo" node="7zuOo8oP_Px" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="7zuOo8oNOe3" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3KbdKl" id="7zuOo8oNO$L" role="3KbHQx">
                        <node concept="3cmrfG" id="7zuOo8oNO$M" role="3Kbmr1">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="3clFbS" id="7zuOo8oNO$N" role="3Kbo56">
                          <node concept="3SKdUt" id="7zuOo8oOLux" role="3cqZAp">
                            <node concept="1PaTwC" id="7zuOo8oOLuy" role="1aUNEU">
                              <node concept="3oM_SD" id="7zuOo8oOLu$" role="1PaTwD">
                                <property role="3oM_SC" value="Set" />
                              </node>
                              <node concept="3oM_SD" id="7zuOo8oOLuQ" role="1PaTwD">
                                <property role="3oM_SC" value="property" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7zuOo8oNO$O" role="3cqZAp">
                            <node concept="3clFbS" id="7zuOo8oNO$P" role="9aQI4">
                              <node concept="3cpWs8" id="7zuOo8oPJGT" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oPJGU" role="3cpWs9">
                                  <property role="TrG5h" value="allNodes" />
                                  <node concept="2I9FWS" id="7zuOo8oPJGV" role="1tU5fm">
                                    <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oPJGW" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8oPJGX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                    </node>
                                    <node concept="2Rf3mk" id="7zuOo8oPJGY" role="2OqNvi">
                                      <node concept="1xMEDy" id="7zuOo8oPJGZ" role="1xVPHs">
                                        <node concept="chp4Y" id="7zuOo8oPJH0" role="ri$Ld">
                                          <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                        </node>
                                      </node>
                                      <node concept="1xIGOp" id="7zuOo8oPJH1" role="1xVPHs" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8oPJH2" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oPJH3" role="3cpWs9">
                                  <property role="TrG5h" value="candidates" />
                                  <node concept="A3Dl8" id="7zuOo8oPJH4" role="1tU5fm">
                                    <node concept="1LlUBW" id="7zuOo8oPJH5" role="A3Ik2">
                                      <node concept="3Tqbb2" id="7zuOo8oPJH6" role="1Lm7xW">
                                        <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                      </node>
                                      <node concept="3uibUv" id="7zuOo8oPUf5" role="1Lm7xW">
                                        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oPJH9" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8oPJHa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oPJGU" resolve="allNodes" />
                                    </node>
                                    <node concept="3goQfb" id="7zuOo8oPJHb" role="2OqNvi">
                                      <node concept="1bVj0M" id="7zuOo8oPJHc" role="23t8la">
                                        <node concept="3clFbS" id="7zuOo8oPJHd" role="1bW5cS">
                                          <node concept="3cpWs8" id="7zuOo8oPWq8" role="3cqZAp">
                                            <node concept="3cpWsn" id="7zuOo8oPWq9" role="3cpWs9">
                                              <property role="TrG5h" value="properties" />
                                              <node concept="A3Dl8" id="7zuOo8oPXj4" role="1tU5fm">
                                                <node concept="3uibUv" id="7zuOo8oPXj6" role="A3Ik2">
                                                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8oPWqa" role="33vP2m">
                                                <node concept="2OqwBi" id="7zuOo8oPWqb" role="2Oq$k0">
                                                  <node concept="37vLTw" id="7zuOo8oPWqc" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8oPJI0" resolve="node" />
                                                  </node>
                                                  <node concept="2yIwOk" id="7zuOo8oPWqd" role="2OqNvi" />
                                                </node>
                                                <node concept="liA8E" id="7zuOo8oPWqe" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="7zuOo8oPTqV" role="3cqZAp">
                                            <node concept="2OqwBi" id="7zuOo8oPXZ1" role="3clFbG">
                                              <node concept="2OqwBi" id="7zuOo8oXb60" role="2Oq$k0">
                                                <node concept="37vLTw" id="7zuOo8oPWqf" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7zuOo8oPWq9" resolve="properties" />
                                                </node>
                                                <node concept="3zZkjj" id="7zuOo8oXcTu" role="2OqNvi">
                                                  <node concept="1bVj0M" id="7zuOo8oXcTw" role="23t8la">
                                                    <node concept="3clFbS" id="7zuOo8oXcTx" role="1bW5cS">
                                                      <node concept="3clFbF" id="7zuOo8oXeVN" role="3cqZAp">
                                                        <node concept="3clFbC" id="7zuOo8oXl5e" role="3clFbG">
                                                          <node concept="10M0yZ" id="7zuOo8oXttw" role="3uHU7w">
                                                            <ref role="3cqZAo" to="xx25:~SPrimitiveTypes.STRING" resolve="STRING" />
                                                            <ref role="1PxDUh" to="xx25:~SPrimitiveTypes" resolve="SPrimitiveTypes" />
                                                          </node>
                                                          <node concept="2OqwBi" id="7zuOo8oXgyi" role="3uHU7B">
                                                            <node concept="37vLTw" id="7zuOo8oXeVM" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="7zuOo8oXcTy" resolve="it" />
                                                            </node>
                                                            <node concept="liA8E" id="7zuOo8oXj4B" role="2OqNvi">
                                                              <ref role="37wK5l" to="c17a:~SProperty.getType()" resolve="getType" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Rh6nW" id="7zuOo8oXcTy" role="1bW2Oz">
                                                      <property role="TrG5h" value="it" />
                                                      <node concept="2jxLKc" id="7zuOo8oXcTz" role="1tU5fm" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3$u5V9" id="7zuOo8oPYMK" role="2OqNvi">
                                                <node concept="1bVj0M" id="7zuOo8oPYMM" role="23t8la">
                                                  <node concept="3clFbS" id="7zuOo8oPYMN" role="1bW5cS">
                                                    <node concept="3clFbF" id="7zuOo8oPZwN" role="3cqZAp">
                                                      <node concept="1Ls8ON" id="7zuOo8oPZwM" role="3clFbG">
                                                        <node concept="37vLTw" id="7zuOo8oQ0mY" role="1Lso8e">
                                                          <ref role="3cqZAo" node="7zuOo8oPJI0" resolve="node" />
                                                        </node>
                                                        <node concept="37vLTw" id="7zuOo8oQ137" role="1Lso8e">
                                                          <ref role="3cqZAo" node="7zuOo8oPYMO" resolve="property" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="7zuOo8oPYMO" role="1bW2Oz">
                                                    <property role="TrG5h" value="property" />
                                                    <node concept="2jxLKc" id="7zuOo8oPYMP" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="7zuOo8oPJI0" role="1bW2Oz">
                                          <property role="TrG5h" value="node" />
                                          <node concept="2jxLKc" id="7zuOo8oPJI1" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8oPJI2" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oPJI3" role="3cpWs9">
                                  <property role="TrG5h" value="t" />
                                  <node concept="1LlUBW" id="7zuOo8oPJI4" role="1tU5fm">
                                    <node concept="3Tqbb2" id="7zuOo8oPJI5" role="1Lm7xW">
                                      <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    </node>
                                    <node concept="3uibUv" id="7zuOo8oQ2aD" role="1Lm7xW">
                                      <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oPJI8" role="33vP2m">
                                    <node concept="2OqwBi" id="7zuOo8oPJI9" role="2Oq$k0">
                                      <node concept="37vLTw" id="7zuOo8oPJIa" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8oPJH3" resolve="candidates" />
                                      </node>
                                      <node concept="7r0gD" id="7zuOo8oPJIb" role="2OqNvi">
                                        <node concept="3K4zz7" id="7zuOo8oRyQr" role="7T0AP">
                                          <node concept="3cmrfG" id="7zuOo8oRzRe" role="3K4GZi">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="3eOSWO" id="7zuOo8oRy82" role="3K4Cdx">
                                            <node concept="3cmrfG" id="7zuOo8oRyj2" role="3uHU7w">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                            <node concept="2OqwBi" id="7zuOo8oRvMW" role="3uHU7B">
                                              <node concept="37vLTw" id="7zuOo8oRuSM" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8oPJH3" resolve="candidates" />
                                              </node>
                                              <node concept="34oBXx" id="7zuOo8oRwGw" role="2OqNvi" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8oPJIe" role="3K4E3e">
                                            <node concept="37vLTw" id="7zuOo8oPJIf" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                                            </node>
                                            <node concept="liA8E" id="7zuOo8oPJIg" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                                              <node concept="3cpWsd" id="7zuOo8oQlWR" role="37wK5m">
                                                <node concept="3cmrfG" id="7zuOo8oQm7R" role="3uHU7w">
                                                  <property role="3cmrfH" value="1" />
                                                </node>
                                                <node concept="2OqwBi" id="7zuOo8oPJIh" role="3uHU7B">
                                                  <node concept="37vLTw" id="7zuOo8oPJIi" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8oPJH3" resolve="candidates" />
                                                  </node>
                                                  <node concept="34oBXx" id="7zuOo8oPJIj" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1uHKPH" id="7zuOo8oPJIk" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7zuOo8oPN9q" role="3cqZAp">
                                <node concept="3clFbS" id="7zuOo8oPN9s" role="3clFbx">
                                  <node concept="3cpWs8" id="7zuOo8oUON8" role="3cqZAp">
                                    <node concept="3cpWsn" id="7zuOo8oUON9" role="3cpWs9">
                                      <property role="TrG5h" value="value" />
                                      <node concept="17QB3L" id="7zuOo8oUQOk" role="1tU5fm" />
                                      <node concept="2YIFZM" id="7zuOo8oUONa" role="33vP2m">
                                        <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                                        <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                                        <node concept="2OqwBi" id="7zuOo8oUONb" role="37wK5m">
                                          <node concept="37vLTw" id="7zuOo8oUONc" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                                          </node>
                                          <node concept="liA8E" id="7zuOo8oUONd" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~Random.nextInt()" resolve="nextInt" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7zuOo8oUjZF" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8oUjZC" role="3clFbG">
                                      <node concept="10M0yZ" id="7zuOo8oUjZD" role="2Oq$k0">
                                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                      </node>
                                      <node concept="liA8E" id="7zuOo8oUjZE" role="2OqNvi">
                                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                        <node concept="3cpWs3" id="7zuOo8oUSE5" role="37wK5m">
                                          <node concept="37vLTw" id="7zuOo8oUSQ0" role="3uHU7w">
                                            <ref role="3cqZAo" node="7zuOo8oUON9" resolve="value" />
                                          </node>
                                          <node concept="3cpWs3" id="7zuOo8oUN2N" role="3uHU7B">
                                            <node concept="3cpWs3" id="7zuOo8oUHAK" role="3uHU7B">
                                              <node concept="3cpWs3" id="7zuOo8oUFAA" role="3uHU7B">
                                                <node concept="3cpWs3" id="7zuOo8oUzPd" role="3uHU7B">
                                                  <node concept="3cpWs3" id="7zuOo8oUxry" role="3uHU7B">
                                                    <node concept="3cpWs3" id="7zuOo8oUq44" role="3uHU7B">
                                                      <node concept="3cpWs3" id="7zuOo8p0C6M" role="3uHU7B">
                                                        <node concept="37vLTw" id="7zuOo8p0DsH" role="3uHU7B">
                                                          <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
                                                        </node>
                                                        <node concept="Xl_RD" id="7zuOo8oUkZi" role="3uHU7w">
                                                          <property role="Xl_RC" value=" Set property " />
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="7zuOo8oUv49" role="3uHU7w">
                                                        <node concept="2OqwBi" id="7zuOo8oUsY5" role="2Oq$k0">
                                                          <node concept="1LFfDK" id="7zuOo8oUri9" role="2Oq$k0">
                                                            <node concept="3cmrfG" id="7zuOo8oUskd" role="1LF_Uc">
                                                              <property role="3cmrfH" value="0" />
                                                            </node>
                                                            <node concept="37vLTw" id="7zuOo8oUqf4" role="1LFl5Q">
                                                              <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                                            </node>
                                                          </node>
                                                          <node concept="2yIwOk" id="7zuOo8oUtRa" role="2OqNvi" />
                                                        </node>
                                                        <node concept="liA8E" id="7zuOo8oUwmD" role="2OqNvi">
                                                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="7zuOo8oUxAy" role="3uHU7w">
                                                      <property role="Xl_RC" value=", " />
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="7zuOo8oUDKi" role="3uHU7w">
                                                    <node concept="2JrnkZ" id="7zuOo8oUCNX" role="2Oq$k0">
                                                      <node concept="1LFfDK" id="7zuOo8oU_36" role="2JrQYb">
                                                        <node concept="3cmrfG" id="7zuOo8oUA5_" role="1LF_Uc">
                                                          <property role="3cmrfH" value="0" />
                                                        </node>
                                                        <node concept="37vLTw" id="7zuOo8oU$0d" role="1LFl5Q">
                                                          <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="7zuOo8oUEBZ" role="2OqNvi">
                                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="7zuOo8oUFLA" role="3uHU7w">
                                                  <property role="Xl_RC" value=", " />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8oUKLe" role="3uHU7w">
                                                <node concept="1LFfDK" id="7zuOo8oUIU6" role="2Oq$k0">
                                                  <node concept="3cmrfG" id="7zuOo8oUJVG" role="1LF_Uc">
                                                    <property role="3cmrfH" value="1" />
                                                  </node>
                                                  <node concept="37vLTw" id="7zuOo8oUHLK" role="1LFl5Q">
                                                    <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="7zuOo8oUMda" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="7zuOo8oUNdN" role="3uHU7w">
                                              <property role="Xl_RC" value=", " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7zuOo8oPJIl" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8oQ3fa" role="3clFbG">
                                      <node concept="2JrnkZ" id="7zuOo8oQ35E" role="2Oq$k0">
                                        <node concept="1LFfDK" id="7zuOo8oPJIo" role="2JrQYb">
                                          <node concept="3cmrfG" id="7zuOo8oPJIp" role="1LF_Uc">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="37vLTw" id="7zuOo8oPJIq" role="1LFl5Q">
                                            <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7zuOo8oQ3wZ" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                                        <node concept="1LFfDK" id="7zuOo8oQ451" role="37wK5m">
                                          <node concept="3cmrfG" id="7zuOo8oQ4hf" role="1LF_Uc">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                          <node concept="37vLTw" id="7zuOo8oQ3HB" role="1LFl5Q">
                                            <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="7zuOo8oUONe" role="37wK5m">
                                          <ref role="3cqZAo" node="7zuOo8oUON9" resolve="value" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="7zuOo8oPO5Q" role="3clFbw">
                                  <node concept="10Nm6u" id="7zuOo8oPO$2" role="3uHU7w" />
                                  <node concept="37vLTw" id="7zuOo8oPNA_" role="3uHU7B">
                                    <ref role="3cqZAo" node="7zuOo8oPJI3" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="7zuOo8oNO$R" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3KbdKl" id="7zuOo8p7SDy" role="3KbHQx">
                        <node concept="3cmrfG" id="7zuOo8p7SDz" role="3Kbmr1">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="3clFbS" id="7zuOo8p7SD$" role="3Kbo56">
                          <node concept="3SKdUt" id="7zuOo8p7SD_" role="3cqZAp">
                            <node concept="1PaTwC" id="7zuOo8p7SDA" role="1aUNEU">
                              <node concept="3oM_SD" id="7zuOo8p7SDB" role="1PaTwD">
                                <property role="3oM_SC" value="Set" />
                              </node>
                              <node concept="3oM_SD" id="7zuOo8p7SDC" role="1PaTwD">
                                <property role="3oM_SC" value="reference" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7zuOo8p7SDD" role="3cqZAp">
                            <node concept="3clFbS" id="7zuOo8p7SDE" role="9aQI4">
                              <node concept="3cpWs8" id="7zuOo8p7SDF" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8p7SDG" role="3cpWs9">
                                  <property role="TrG5h" value="allNodes" />
                                  <node concept="2I9FWS" id="7zuOo8p7SDH" role="1tU5fm">
                                    <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8p7SDI" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8p7SDJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                    </node>
                                    <node concept="2Rf3mk" id="7zuOo8p7SDK" role="2OqNvi">
                                      <node concept="1xMEDy" id="7zuOo8p7SDL" role="1xVPHs">
                                        <node concept="chp4Y" id="7zuOo8p7SDM" role="ri$Ld">
                                          <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                        </node>
                                      </node>
                                      <node concept="1xIGOp" id="7zuOo8p7SDN" role="1xVPHs" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8p7SDO" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8p7SDP" role="3cpWs9">
                                  <property role="TrG5h" value="candidates" />
                                  <node concept="A3Dl8" id="7zuOo8p7SDQ" role="1tU5fm">
                                    <node concept="1LlUBW" id="7zuOo8p7SDR" role="A3Ik2">
                                      <node concept="3Tqbb2" id="7zuOo8p7SDS" role="1Lm7xW" />
                                      <node concept="3uibUv" id="7zuOo8p88be" role="1Lm7xW">
                                        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                                      </node>
                                      <node concept="3Tqbb2" id="7zuOo8p9YRa" role="1Lm7xW" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8p7SDU" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8p7SDV" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8p7SDG" resolve="allNodes" />
                                    </node>
                                    <node concept="3goQfb" id="7zuOo8p7SDW" role="2OqNvi">
                                      <node concept="1bVj0M" id="7zuOo8p7SDX" role="23t8la">
                                        <node concept="3clFbS" id="7zuOo8p7SDY" role="1bW5cS">
                                          <node concept="3cpWs8" id="7zuOo8p7SDZ" role="3cqZAp">
                                            <node concept="3cpWsn" id="7zuOo8p7SE0" role="3cpWs9">
                                              <property role="TrG5h" value="links" />
                                              <node concept="A3Dl8" id="7zuOo8p7SE1" role="1tU5fm">
                                                <node concept="3uibUv" id="7zuOo8p8b6y" role="A3Ik2">
                                                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8p7SE3" role="33vP2m">
                                                <node concept="2OqwBi" id="7zuOo8p7SE4" role="2Oq$k0">
                                                  <node concept="37vLTw" id="7zuOo8p7SE5" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8p7SEw" resolve="source" />
                                                  </node>
                                                  <node concept="2yIwOk" id="7zuOo8p7SE6" role="2OqNvi" />
                                                </node>
                                                <node concept="liA8E" id="7zuOo8p8lw5" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="7zuOo8p8vPS" role="3cqZAp">
                                            <node concept="2OqwBi" id="7zuOo8p8yRu" role="3clFbG">
                                              <node concept="37vLTw" id="7zuOo8p8vPQ" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8p7SE0" resolve="links" />
                                              </node>
                                              <node concept="3goQfb" id="7zuOo8p8_LG" role="2OqNvi">
                                                <node concept="1bVj0M" id="7zuOo8p8_LI" role="23t8la">
                                                  <property role="3yWfEV" value="true" />
                                                  <node concept="3clFbS" id="7zuOo8p8_LJ" role="1bW5cS">
                                                    <node concept="3clFbF" id="7zuOo8p8MVt" role="3cqZAp">
                                                      <node concept="2OqwBi" id="7zuOo8p9bqo" role="3clFbG">
                                                        <node concept="2OqwBi" id="7zuOo8p8QzV" role="2Oq$k0">
                                                          <node concept="37vLTw" id="7zuOo8p8MVr" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                                          </node>
                                                          <node concept="2Rf3mk" id="7zuOo8p8VK5" role="2OqNvi">
                                                            <node concept="1xMEDy" id="7zuOo8p8VK7" role="1xVPHs">
                                                              <node concept="25Kdxt" id="7zuOo8p8YnT" role="ri$Ld">
                                                                <node concept="2OqwBi" id="7zuOo8p94hw" role="25KhWn">
                                                                  <node concept="37vLTw" id="7zuOo8p91A2" role="2Oq$k0">
                                                                    <ref role="3cqZAo" node="7zuOo8p8_LK" resolve="link" />
                                                                  </node>
                                                                  <node concept="liA8E" id="7zuOo8p97UI" role="2OqNvi">
                                                                    <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3$u5V9" id="7zuOo8p9haR" role="2OqNvi">
                                                          <node concept="1bVj0M" id="7zuOo8p9haT" role="23t8la">
                                                            <node concept="3clFbS" id="7zuOo8p9haU" role="1bW5cS">
                                                              <node concept="3clFbF" id="7zuOo8p9s8l" role="3cqZAp">
                                                                <node concept="1Ls8ON" id="7zuOo8p9s8k" role="3clFbG">
                                                                  <node concept="37vLTw" id="7zuOo8p9B1G" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8p7SEw" resolve="source" />
                                                                  </node>
                                                                  <node concept="37vLTw" id="7zuOo8pa49D" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8p8_LK" resolve="link" />
                                                                  </node>
                                                                  <node concept="37vLTw" id="7zuOo8p9Qhu" role="1Lso8e">
                                                                    <ref role="3cqZAo" node="7zuOo8p9haV" resolve="target" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="Rh6nW" id="7zuOo8p9haV" role="1bW2Oz">
                                                              <property role="TrG5h" value="target" />
                                                              <node concept="2jxLKc" id="7zuOo8p9haW" role="1tU5fm" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="7zuOo8p8_LK" role="1bW2Oz">
                                                    <property role="TrG5h" value="link" />
                                                    <node concept="2jxLKc" id="7zuOo8p8_LL" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="7zuOo8p7SEw" role="1bW2Oz">
                                          <property role="TrG5h" value="source" />
                                          <node concept="2jxLKc" id="7zuOo8p7SEx" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8p7SEy" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8p7SEz" role="3cpWs9">
                                  <property role="TrG5h" value="t" />
                                  <node concept="1LlUBW" id="7zuOo8p7SE$" role="1tU5fm">
                                    <node concept="3Tqbb2" id="7zuOo8p7SE_" role="1Lm7xW" />
                                    <node concept="3uibUv" id="7zuOo8pa7xK" role="1Lm7xW">
                                      <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                                    </node>
                                    <node concept="3Tqbb2" id="7zuOo8pahmZ" role="1Lm7xW" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8p7SEB" role="33vP2m">
                                    <node concept="2OqwBi" id="7zuOo8p7SEC" role="2Oq$k0">
                                      <node concept="37vLTw" id="7zuOo8p7SED" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8p7SDP" resolve="candidates" />
                                      </node>
                                      <node concept="7r0gD" id="7zuOo8p7SEE" role="2OqNvi">
                                        <node concept="3K4zz7" id="7zuOo8p7SEF" role="7T0AP">
                                          <node concept="3cmrfG" id="7zuOo8p7SEG" role="3K4GZi">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="3eOSWO" id="7zuOo8p7SEH" role="3K4Cdx">
                                            <node concept="3cmrfG" id="7zuOo8p7SEI" role="3uHU7w">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                            <node concept="2OqwBi" id="7zuOo8p7SEJ" role="3uHU7B">
                                              <node concept="37vLTw" id="7zuOo8p7SEK" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8p7SDP" resolve="candidates" />
                                              </node>
                                              <node concept="34oBXx" id="7zuOo8p7SEL" role="2OqNvi" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8p7SEM" role="3K4E3e">
                                            <node concept="37vLTw" id="7zuOo8p7SEN" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                                            </node>
                                            <node concept="liA8E" id="7zuOo8p7SEO" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                                              <node concept="3cpWsd" id="7zuOo8p7SEP" role="37wK5m">
                                                <node concept="3cmrfG" id="7zuOo8p7SEQ" role="3uHU7w">
                                                  <property role="3cmrfH" value="1" />
                                                </node>
                                                <node concept="2OqwBi" id="7zuOo8p7SER" role="3uHU7B">
                                                  <node concept="37vLTw" id="7zuOo8p7SES" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8p7SDP" resolve="candidates" />
                                                  </node>
                                                  <node concept="34oBXx" id="7zuOo8p7SET" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1uHKPH" id="7zuOo8p7SEU" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7zuOo8p7SEV" role="3cqZAp">
                                <node concept="3clFbS" id="7zuOo8p7SEW" role="3clFbx">
                                  <node concept="3clFbF" id="7zuOo8p7SF4" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8p7SF5" role="3clFbG">
                                      <node concept="10M0yZ" id="7zuOo8p7SF6" role="2Oq$k0">
                                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                      </node>
                                      <node concept="liA8E" id="7zuOo8p7SF7" role="2OqNvi">
                                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                        <node concept="3cpWs3" id="7zuOo8paOV0" role="37wK5m">
                                          <node concept="2OqwBi" id="7zuOo8pb5wh" role="3uHU7w">
                                            <node concept="2JrnkZ" id="7zuOo8pb2HS" role="2Oq$k0">
                                              <node concept="1LFfDK" id="7zuOo8paSmS" role="2JrQYb">
                                                <node concept="3cmrfG" id="7zuOo8paVez" role="1LF_Uc">
                                                  <property role="3cmrfH" value="2" />
                                                </node>
                                                <node concept="37vLTw" id="7zuOo8paP60" role="1LFl5Q">
                                                  <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7zuOo8pb8vW" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="7zuOo8paJdN" role="3uHU7B">
                                            <node concept="3cpWs3" id="7zuOo8p7SF8" role="3uHU7B">
                                              <node concept="3cpWs3" id="7zuOo8p7SFa" role="3uHU7B">
                                                <node concept="3cpWs3" id="7zuOo8p7SFb" role="3uHU7B">
                                                  <node concept="3cpWs3" id="7zuOo8p7SFc" role="3uHU7B">
                                                    <node concept="3cpWs3" id="7zuOo8p7SFd" role="3uHU7B">
                                                      <node concept="3cpWs3" id="7zuOo8p7SFe" role="3uHU7B">
                                                        <node concept="3cpWs3" id="7zuOo8p7SFf" role="3uHU7B">
                                                          <node concept="3cpWs3" id="7zuOo8p7SFg" role="3uHU7B">
                                                            <node concept="37vLTw" id="7zuOo8p7SFh" role="3uHU7B">
                                                              <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
                                                            </node>
                                                            <node concept="Xl_RD" id="7zuOo8p7SFi" role="3uHU7w">
                                                              <property role="Xl_RC" value=" Set reference " />
                                                            </node>
                                                          </node>
                                                          <node concept="2OqwBi" id="7zuOo8p7SFj" role="3uHU7w">
                                                            <node concept="2OqwBi" id="7zuOo8p7SFk" role="2Oq$k0">
                                                              <node concept="1LFfDK" id="7zuOo8p7SFl" role="2Oq$k0">
                                                                <node concept="3cmrfG" id="7zuOo8p7SFm" role="1LF_Uc">
                                                                  <property role="3cmrfH" value="0" />
                                                                </node>
                                                                <node concept="37vLTw" id="7zuOo8p7SFn" role="1LFl5Q">
                                                                  <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                                                </node>
                                                              </node>
                                                              <node concept="2yIwOk" id="7zuOo8p7SFo" role="2OqNvi" />
                                                            </node>
                                                            <node concept="liA8E" id="7zuOo8p7SFp" role="2OqNvi">
                                                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="Xl_RD" id="7zuOo8p7SFq" role="3uHU7w">
                                                          <property role="Xl_RC" value=", " />
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="7zuOo8p7SFr" role="3uHU7w">
                                                        <node concept="2JrnkZ" id="7zuOo8p7SFs" role="2Oq$k0">
                                                          <node concept="1LFfDK" id="7zuOo8p7SFt" role="2JrQYb">
                                                            <node concept="3cmrfG" id="7zuOo8p7SFu" role="1LF_Uc">
                                                              <property role="3cmrfH" value="0" />
                                                            </node>
                                                            <node concept="37vLTw" id="7zuOo8p7SFv" role="1LFl5Q">
                                                              <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="7zuOo8p7SFw" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="7zuOo8p7SFx" role="3uHU7w">
                                                      <property role="Xl_RC" value=", " />
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="7zuOo8p7SFy" role="3uHU7w">
                                                    <node concept="1LFfDK" id="7zuOo8p7SFz" role="2Oq$k0">
                                                      <node concept="3cmrfG" id="7zuOo8p7SF$" role="1LF_Uc">
                                                        <property role="3cmrfH" value="1" />
                                                      </node>
                                                      <node concept="37vLTw" id="7zuOo8p7SF_" role="1LFl5Q">
                                                        <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="7zuOo8p7SFA" role="2OqNvi">
                                                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="7zuOo8p7SFB" role="3uHU7w">
                                                  <property role="Xl_RC" value=", " />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="7zuOo8paDgM" role="3uHU7w">
                                                <node concept="2OqwBi" id="7zuOo8pazsK" role="2Oq$k0">
                                                  <node concept="1LFfDK" id="7zuOo8patVX" role="2Oq$k0">
                                                    <node concept="3cmrfG" id="7zuOo8pawVF" role="1LF_Uc">
                                                      <property role="3cmrfH" value="2" />
                                                    </node>
                                                    <node concept="37vLTw" id="7zuOo8parvn" role="1LFl5Q">
                                                      <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                                    </node>
                                                  </node>
                                                  <node concept="2yIwOk" id="7zuOo8paAt_" role="2OqNvi" />
                                                </node>
                                                <node concept="liA8E" id="7zuOo8paGja" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="7zuOo8paJoN" role="3uHU7w">
                                              <property role="Xl_RC" value=", " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7zuOo8p7SFC" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8p7SFD" role="3clFbG">
                                      <node concept="2JrnkZ" id="7zuOo8p7SFE" role="2Oq$k0">
                                        <node concept="1LFfDK" id="7zuOo8p7SFF" role="2JrQYb">
                                          <node concept="3cmrfG" id="7zuOo8p7SFG" role="1LF_Uc">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="37vLTw" id="7zuOo8p7SFH" role="1LFl5Q">
                                            <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7zuOo8p7SFI" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                                        <node concept="1LFfDK" id="7zuOo8p7SFJ" role="37wK5m">
                                          <node concept="3cmrfG" id="7zuOo8p7SFK" role="1LF_Uc">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                          <node concept="37vLTw" id="7zuOo8p7SFL" role="1LFl5Q">
                                            <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                          </node>
                                        </node>
                                        <node concept="1LFfDK" id="7zuOo8pbg6U" role="37wK5m">
                                          <node concept="3cmrfG" id="7zuOo8pbj5T" role="1LF_Uc">
                                            <property role="3cmrfH" value="2" />
                                          </node>
                                          <node concept="37vLTw" id="7zuOo8pbdyP" role="1LFl5Q">
                                            <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="7zuOo8p7SFN" role="3clFbw">
                                  <node concept="10Nm6u" id="7zuOo8p7SFO" role="3uHU7w" />
                                  <node concept="37vLTw" id="7zuOo8p7SFP" role="3uHU7B">
                                    <ref role="3cqZAo" node="7zuOo8p7SEz" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="7zuOo8p7SFQ" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3KbdKl" id="7zuOo8oQ5UX" role="3KbHQx">
                        <node concept="3cmrfG" id="7zuOo8oQ5UY" role="3Kbmr1">
                          <property role="3cmrfH" value="3" />
                        </node>
                        <node concept="3clFbS" id="7zuOo8oQ5UZ" role="3Kbo56">
                          <node concept="3SKdUt" id="7zuOo8oQ5V0" role="3cqZAp">
                            <node concept="1PaTwC" id="7zuOo8oQ5V1" role="1aUNEU">
                              <node concept="3oM_SD" id="7zuOo8oQ6G3" role="1PaTwD">
                                <property role="3oM_SC" value="Delete" />
                              </node>
                              <node concept="3oM_SD" id="7zuOo8oQ6Ge" role="1PaTwD">
                                <property role="3oM_SC" value="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7zuOo8oQ5V4" role="3cqZAp">
                            <node concept="3clFbS" id="7zuOo8oQ5V5" role="9aQI4">
                              <node concept="3cpWs8" id="7zuOo8oQ5V6" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oQ5V7" role="3cpWs9">
                                  <property role="TrG5h" value="candidates" />
                                  <node concept="2I9FWS" id="7zuOo8oQ5V8" role="1tU5fm">
                                    <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oQ5V9" role="33vP2m">
                                    <node concept="37vLTw" id="7zuOo8oQ5Va" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                    </node>
                                    <node concept="2Rf3mk" id="7zuOo8oQ5Vb" role="2OqNvi">
                                      <node concept="1xMEDy" id="7zuOo8oQ5Vc" role="1xVPHs">
                                        <node concept="chp4Y" id="7zuOo8oQ5Vd" role="ri$Ld">
                                          <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7zuOo8oQ$Te" role="3cqZAp">
                                <node concept="3cpWsn" id="7zuOo8oQ$Tf" role="3cpWs9">
                                  <property role="TrG5h" value="t" />
                                  <node concept="3Tqbb2" id="7zuOo8oQ$Dd" role="1tU5fm">
                                    <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7zuOo8oQ$Tg" role="33vP2m">
                                    <node concept="2OqwBi" id="7zuOo8oQ$Th" role="2Oq$k0">
                                      <node concept="37vLTw" id="7zuOo8oQ$Ti" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8oQ5V7" resolve="candidates" />
                                      </node>
                                      <node concept="7r0gD" id="7zuOo8oQ$Tj" role="2OqNvi">
                                        <node concept="3K4zz7" id="7zuOo8oRstl" role="7T0AP">
                                          <node concept="3cmrfG" id="7zuOo8oRtrf" role="3K4GZi">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="3eOSWO" id="7zuOo8oRr7R" role="3K4Cdx">
                                            <node concept="2OqwBi" id="7zuOo8oRjdE" role="3uHU7B">
                                              <node concept="37vLTw" id="7zuOo8oRhrC" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8oQ5V7" resolve="candidates" />
                                              </node>
                                              <node concept="34oBXx" id="7zuOo8oRmGw" role="2OqNvi" />
                                            </node>
                                            <node concept="3cmrfG" id="7zuOo8oRqfR" role="3uHU7w">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8oQ$Tk" role="3K4E3e">
                                            <node concept="37vLTw" id="7zuOo8oQ$Tl" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
                                            </node>
                                            <node concept="liA8E" id="7zuOo8oQ$Tm" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                                              <node concept="3cpWsd" id="7zuOo8oRg1q" role="37wK5m">
                                                <node concept="3cmrfG" id="7zuOo8oRgcq" role="3uHU7w">
                                                  <property role="3cmrfH" value="1" />
                                                </node>
                                                <node concept="2OqwBi" id="7zuOo8oQ$Tp" role="3uHU7B">
                                                  <node concept="37vLTw" id="7zuOo8oQ$Tq" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7zuOo8oQ5V7" resolve="candidates" />
                                                  </node>
                                                  <node concept="34oBXx" id="7zuOo8oQ$Tr" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1uHKPH" id="7zuOo8oQ$Ts" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7zuOo8oQAar" role="3cqZAp">
                                <node concept="3clFbS" id="7zuOo8oQAat" role="3clFbx">
                                  <node concept="3zACq4" id="7zuOo8oQB3F" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="7zuOo8oQAxn" role="3clFbw">
                                  <node concept="37vLTw" id="7zuOo8oQAoP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7zuOo8oQ$Tf" resolve="t" />
                                  </node>
                                  <node concept="3w_OXm" id="7zuOo8oQAOY" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="7zuOo8oUbIz" role="3cqZAp">
                                <node concept="2OqwBi" id="7zuOo8oUbIw" role="3clFbG">
                                  <node concept="10M0yZ" id="7zuOo8oUbIx" role="2Oq$k0">
                                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                  </node>
                                  <node concept="liA8E" id="7zuOo8oUbIy" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                    <node concept="3cpWs3" id="7zuOo8oUeBe" role="37wK5m">
                                      <node concept="2OqwBi" id="7zuOo8oUh56" role="3uHU7w">
                                        <node concept="2JrnkZ" id="7zuOo8oUg8D" role="2Oq$k0">
                                          <node concept="37vLTw" id="7zuOo8oUeMe" role="2JrQYb">
                                            <ref role="3cqZAo" node="7zuOo8oQ$Tf" resolve="t" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7zuOo8oUhRQ" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                        </node>
                                      </node>
                                      <node concept="3cpWs3" id="7zuOo8p0ziK" role="3uHU7B">
                                        <node concept="37vLTw" id="7zuOo8p0_bn" role="3uHU7B">
                                          <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
                                        </node>
                                        <node concept="Xl_RD" id="7zuOo8oUcqu" role="3uHU7w">
                                          <property role="Xl_RC" value=" Delete " />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2Gpval" id="7zuOo8pePrI" role="3cqZAp">
                                <node concept="2GrKxI" id="7zuOo8pePrK" role="2Gsz3X">
                                  <property role="TrG5h" value="source" />
                                </node>
                                <node concept="3clFbS" id="7zuOo8pePrO" role="2LFqv$">
                                  <node concept="2Gpval" id="7zuOo8pfW1X" role="3cqZAp">
                                    <node concept="2GrKxI" id="7zuOo8pfW1Z" role="2Gsz3X">
                                      <property role="TrG5h" value="ref" />
                                    </node>
                                    <node concept="3clFbS" id="7zuOo8pfW23" role="2LFqv$">
                                      <node concept="3clFbJ" id="7zuOo8pg8BI" role="3cqZAp">
                                        <node concept="17R0WA" id="7zuOo8pgjBu" role="3clFbw">
                                          <node concept="37vLTw" id="7zuOo8pgm6S" role="3uHU7w">
                                            <ref role="3cqZAo" node="7zuOo8oQ$Tf" resolve="t" />
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8pgdDx" role="3uHU7B">
                                            <node concept="2GrUjf" id="7zuOo8pgbhA" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="7zuOo8pfW1Z" resolve="ref" />
                                            </node>
                                            <node concept="2ZHEkA" id="7zuOo8pggVc" role="2OqNvi" />
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="7zuOo8pg8BK" role="3clFbx">
                                          <node concept="3clFbF" id="7zuOo8pgp6z" role="3cqZAp">
                                            <node concept="2OqwBi" id="7zuOo8pgztX" role="3clFbG">
                                              <node concept="2JrnkZ" id="7zuOo8pgxyR" role="2Oq$k0">
                                                <node concept="2GrUjf" id="7zuOo8pgp6y" role="2JrQYb">
                                                  <ref role="2Gs0qQ" node="7zuOo8pePrK" resolve="source" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="7zuOo8pgAku" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                                                <node concept="2OqwBi" id="7zuOo8pgFlE" role="37wK5m">
                                                  <node concept="2GrUjf" id="7zuOo8pgCZq" role="2Oq$k0">
                                                    <ref role="2Gs0qQ" node="7zuOo8pfW1Z" resolve="ref" />
                                                  </node>
                                                  <node concept="CsP83" id="7zuOo8pgIux" role="2OqNvi" />
                                                </node>
                                                <node concept="10Nm6u" id="7zuOo8pgNP4" role="37wK5m" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7zuOo8pfYGR" role="2GsD0m">
                                      <node concept="2OqwBi" id="7zuOo8pfYGS" role="2Oq$k0">
                                        <node concept="2GrUjf" id="7zuOo8pfYGT" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="7zuOo8pePrK" resolve="source" />
                                        </node>
                                        <node concept="2z74zc" id="7zuOo8pfYGU" role="2OqNvi" />
                                      </node>
                                      <node concept="ANE8D" id="7zuOo8pfYGV" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7zuOo8peTIN" role="2GsD0m">
                                  <node concept="37vLTw" id="7zuOo8peTIO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7zuOo8oO285" resolve="rootNode" />
                                  </node>
                                  <node concept="2Rf3mk" id="7zuOo8peTIP" role="2OqNvi">
                                    <node concept="1xMEDy" id="7zuOo8peTIQ" role="1xVPHs">
                                      <node concept="chp4Y" id="7zuOo8peTIR" role="ri$Ld">
                                        <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                      </node>
                                    </node>
                                    <node concept="1xIGOp" id="7zuOo8peTIS" role="1xVPHs" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7zuOo8oQ_jp" role="3cqZAp">
                                <node concept="2OqwBi" id="7zuOo8oQ_wd" role="3clFbG">
                                  <node concept="37vLTw" id="7zuOo8oQ_jn" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7zuOo8oQ$Tf" resolve="t" />
                                  </node>
                                  <node concept="3YRAZt" id="7zuOo8oQ_PB" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="7zuOo8oQ5Wm" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7zuOo8oSxYK" role="ukAjM">
                  <ref role="3cqZAo" node="7zuOo8oSxYI" resolve="repo" />
                </node>
              </node>
              <node concept="3clFbH" id="7zuOo8oNMiC" role="3cqZAp" />
              <node concept="3clFbF" id="7zuOo8oNhvi" role="3cqZAp">
                <node concept="2OqwBi" id="7zuOo8oNhKt" role="3clFbG">
                  <node concept="37vLTw" id="7zuOo8oNhvg" role="2Oq$k0">
                    <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                  </node>
                  <node concept="liA8E" id="7zuOo8oNhRB" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                    <node concept="1bVj0M" id="7zuOo8oNie7" role="37wK5m">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="7zuOo8oNie8" role="1bW5cS">
                        <node concept="3clFbF" id="7zuOo8oSsZu" role="3cqZAp">
                          <node concept="2OqwBi" id="7zuOo8oSxet" role="3clFbG">
                            <node concept="2OqwBi" id="1yReInPG1$" role="2Oq$k0">
                              <node concept="10M0yZ" id="1yReInPFQB" role="2Oq$k0">
                                <ref role="3cqZAo" to="jks5:~ContextNodeResolveContext.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="jks5:~ContextNodeResolveContext" resolve="ContextNodeResolveContext" />
                              </node>
                              <node concept="liA8E" id="1yReInPGyq" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~ContextNodeResolveContext.getCONTEXT_VALUE()" resolve="getCONTEXT_VALUE" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7zuOo8oSxu5" role="2OqNvi">
                              <ref role="37wK5l" to="3p1j:~ContextValue.runWith(java.lang.Object,kotlin.jvm.functions.Function0)" resolve="runWith" />
                              <node concept="2ShNRf" id="7zuOo8oS$IA" role="37wK5m">
                                <node concept="1pGfFk" id="7zuOo8oSAmR" role="2ShVmc">
                                  <ref role="37wK5l" to="xxte:7gxeZuyfxRC" resolve="SRepositoryResolveContext" />
                                  <node concept="37vLTw" id="7zuOo8oSADt" role="37wK5m">
                                    <ref role="3cqZAo" node="7zuOo8oSxYI" resolve="repo" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1bVj0M" id="7zuOo8oSxSE" role="37wK5m">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="7zuOo8oSxSF" role="1bW5cS">
                                  <node concept="3cpWs8" id="7zuOo8oO3fW" role="3cqZAp">
                                    <node concept="3cpWsn" id="7zuOo8oO3fX" role="3cpWs9">
                                      <property role="TrG5h" value="expected" />
                                      <node concept="3Tqbb2" id="7zuOo8oY$T5" role="1tU5fm" />
                                      <node concept="2OqwBi" id="7zuOo8oO62c" role="33vP2m">
                                        <node concept="2OqwBi" id="7zuOo8oO4sk" role="2Oq$k0">
                                          <node concept="37vLTw" id="7zuOo8oO42C" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7zuOo8oNh2z" resolve="model" />
                                          </node>
                                          <node concept="2RRcyG" id="7zuOo8oO4IT" role="2OqNvi" />
                                        </node>
                                        <node concept="1uHKPH" id="7zuOo8oO7q1" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="1yReInPM_F" role="3cqZAp">
                                    <node concept="3cpWsn" id="1yReInPM_G" role="3cpWs9">
                                      <property role="TrG5h" value="allChildren" />
                                      <node concept="A3Dl8" id="1yReInPOgp" role="1tU5fm">
                                        <node concept="3uibUv" id="1yReInPOgr" role="A3Ik2">
                                          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1yReInPM_H" role="33vP2m">
                                        <node concept="2ShNRf" id="1yReInPM_I" role="2Oq$k0">
                                          <node concept="1pGfFk" id="1yReInPM_J" role="2ShVmc">
                                            <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                            <node concept="10M0yZ" id="1yReInPM_K" role="37wK5m">
                                              <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                                              <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                                            </node>
                                            <node concept="37vLTw" id="1yReInPM_L" role="37wK5m">
                                              <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="1yReInPM_M" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~PNodeAdapter.getAllChildren()" resolve="getAllChildren" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="7zuOo8oNn8Q" role="3cqZAp">
                                    <node concept="3cpWsn" id="7zuOo8oNn8R" role="3cpWs9">
                                      <property role="TrG5h" value="actual" />
                                      <node concept="3Tqbb2" id="7zuOo8oYA46" role="1tU5fm" />
                                      <node concept="2YIFZM" id="7zuOo8oNnLn" role="33vP2m">
                                        <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                        <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                        <node concept="2OqwBi" id="1yReInPS6I" role="37wK5m">
                                          <node concept="37vLTw" id="1yReInPR25" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1yReInPM_G" resolve="allChildren" />
                                          </node>
                                          <node concept="1uHKPH" id="1yReInPSMk" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7zuOo8oYvz4" role="3cqZAp">
                                    <node concept="2OqwBi" id="7zuOo8oYxgo" role="3clFbG">
                                      <node concept="37vLTw" id="7zuOo8oYvz2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8oYrPm" resolve="versions" />
                                      </node>
                                      <node concept="TSZUe" id="7zuOo8oYzZ_" role="2OqNvi">
                                        <node concept="1Ls8ON" id="7zuOo8oYBrT" role="25WWJ7">
                                          <node concept="37vLTw" id="7zuOo8p0x6u" role="1Lso8e">
                                            <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8oYTAQ" role="1Lso8e">
                                            <node concept="2OqwBi" id="7zuOo8oYS65" role="2Oq$k0">
                                              <node concept="37vLTw" id="7zuOo8oYQZd" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                                              </node>
                                              <node concept="liA8E" id="7zuOo8oYT0z" role="2OqNvi">
                                                <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7zuOo8oYUNn" role="2OqNvi">
                                              <ref role="37wK5l" to="jks5:~ITransaction.getTree()" resolve="getTree" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7zuOo8oYEfi" role="1Lso8e">
                                            <node concept="37vLTw" id="7zuOo8oYDhn" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7zuOo8oO3fX" resolve="expected" />
                                            </node>
                                            <node concept="1$rogu" id="7zuOo8oYEZj" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="7zuOo8oVo6j" role="3cqZAp">
                                    <node concept="3cpWsn" id="7zuOo8oVo6k" role="3cpWs9">
                                      <property role="TrG5h" value="diff" />
                                      <node concept="_YKpA" id="7zuOo8oVulK" role="1tU5fm">
                                        <node concept="3uibUv" id="7zuOo8oVulM" role="_ZDj9">
                                          <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="7zuOo8oVo6l" role="33vP2m">
                                        <node concept="2ShNRf" id="7zuOo8oVo6m" role="2Oq$k0">
                                          <node concept="1pGfFk" id="7zuOo8oVo6n" role="2ShVmc">
                                            <ref role="37wK5l" to="y5e1:39D1ywqVsdl" resolve="NodesMatcher" />
                                            <node concept="37vLTw" id="7zuOo8oVo6p" role="37wK5m">
                                              <ref role="3cqZAo" node="7zuOo8oNn8R" resolve="actual" />
                                            </node>
                                            <node concept="37vLTw" id="7zuOo8oVo6o" role="37wK5m">
                                              <ref role="3cqZAo" node="7zuOo8oO3fX" resolve="expected" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7zuOo8oVo6q" role="2OqNvi">
                                          <ref role="37wK5l" to="y5e1:39D1ywqVH_i" resolve="diff" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4JmkJs3K8fS" role="3cqZAp">
                                    <node concept="3clFbS" id="4JmkJs3K8fY" role="3clFbx">
                                      <node concept="3cpWs8" id="4JmkJs3K8fZ" role="3cqZAp">
                                        <node concept="3cpWsn" id="4JmkJs3K8g0" role="3cpWs9">
                                          <property role="TrG5h" value="sb" />
                                          <node concept="3uibUv" id="4JmkJs3K8g1" role="1tU5fm">
                                            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                                          </node>
                                          <node concept="2ShNRf" id="4JmkJs3K8g2" role="33vP2m">
                                            <node concept="1pGfFk" id="4JmkJs3K8g3" role="2ShVmc">
                                              <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1DcWWT" id="4JmkJs3K8g4" role="3cqZAp">
                                        <node concept="37vLTw" id="4JmkJs3K8g5" role="1DdaDG">
                                          <ref role="3cqZAo" node="7zuOo8oVo6k" resolve="diff" />
                                        </node>
                                        <node concept="3cpWsn" id="4JmkJs3K8g6" role="1Duv9x">
                                          <property role="TrG5h" value="nd" />
                                          <node concept="3uibUv" id="4JmkJs3K8g7" role="1tU5fm">
                                            <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="4JmkJs3K8g8" role="2LFqv$">
                                          <node concept="3clFbF" id="4JmkJs3K8g9" role="3cqZAp">
                                            <node concept="2OqwBi" id="4JmkJs3K8ga" role="3clFbG">
                                              <node concept="37vLTw" id="4JmkJs3K8gb" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4JmkJs3K8g0" resolve="sb" />
                                              </node>
                                              <node concept="liA8E" id="4JmkJs3K8gc" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                <node concept="2OqwBi" id="4JmkJs3K8gd" role="37wK5m">
                                                  <node concept="37vLTw" id="4JmkJs3K8ge" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="4JmkJs3K8g6" resolve="nd" />
                                                  </node>
                                                  <node concept="liA8E" id="4JmkJs3K8gf" role="2OqNvi">
                                                    <ref role="37wK5l" to="y5e1:39D1ywqUtCH" resolve="print" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3xETmq" id="4JmkJs3K8gg" role="3cqZAp">
                                        <node concept="3_1$Yv" id="4JmkJs3K8gh" role="3_9lra">
                                          <node concept="2OqwBi" id="4JmkJs3K8gi" role="3_1BAH">
                                            <node concept="37vLTw" id="4JmkJs3K8gj" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4JmkJs3K8g0" resolve="sb" />
                                            </node>
                                            <node concept="liA8E" id="4JmkJs3K8gk" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4JmkJs3K8fV" role="3clFbw">
                                      <node concept="37vLTw" id="4JmkJs3K8fW" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7zuOo8oVo6k" resolve="diff" />
                                      </node>
                                      <node concept="3GX2aA" id="7zuOo8oWBcB" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="1yReInPHJX" role="3cqZAp">
                                    <node concept="10M0yZ" id="1yReInPLNN" role="3cqZAk">
                                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1yReInPTqo" role="3cqZAp">
                          <node concept="10M0yZ" id="1yReInPTqp" role="3cqZAk">
                            <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                            <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7zuOo8oNG02" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="7zuOo8oNGkp" role="1tU5fm" />
              <node concept="3cmrfG" id="7zuOo8oNGvQ" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="7zuOo8oNHUr" role="1Dwp0S">
              <node concept="3cmrfG" id="7zuOo8oNI5r" role="3uHU7w">
                <property role="3cmrfH" value="1000" />
              </node>
              <node concept="37vLTw" id="7zuOo8oNGQl" role="3uHU7B">
                <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="7zuOo8oNJwp" role="1Dwrff">
              <node concept="37vLTw" id="7zuOo8oNJwr" role="2$L3a6">
                <ref role="3cqZAo" node="7zuOo8oNG02" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7zuOo8oNsqR" role="3cqZAp" />
          <node concept="3clFbF" id="7zuOo8oZf$k" role="3cqZAp">
            <node concept="2YIFZM" id="7zuOo8oZhtg" role="3clFbG">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.shuffle(java.util.List,java.util.Random)" resolve="shuffle" />
              <node concept="37vLTw" id="7zuOo8oZirx" role="37wK5m">
                <ref role="3cqZAo" node="7zuOo8oYrPm" resolve="versions" />
              </node>
              <node concept="37vLTw" id="7zuOo8oZjBc" role="37wK5m">
                <ref role="3cqZAo" node="7zuOo8oNLoP" resolve="rand" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="7zuOo8oZnSO" role="3cqZAp">
            <node concept="2GrKxI" id="7zuOo8oZnSQ" role="2Gsz3X">
              <property role="TrG5h" value="version" />
            </node>
            <node concept="37vLTw" id="7zuOo8oZqUF" role="2GsD0m">
              <ref role="3cqZAo" node="7zuOo8oYrPm" resolve="versions" />
            </node>
            <node concept="3clFbS" id="7zuOo8oZnSU" role="2LFqv$">
              <node concept="3clFbF" id="7zuOo8oZtCx" role="3cqZAp">
                <node concept="2OqwBi" id="7zuOo8oZu5Y" role="3clFbG">
                  <node concept="37vLTw" id="7zuOo8oZtCw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                  </node>
                  <node concept="liA8E" id="7zuOo8oZulQ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
                    <node concept="1bVj0M" id="7zuOo8oZuGu" role="37wK5m">
                      <node concept="3clFbS" id="7zuOo8oZuGv" role="1bW5cS">
                        <node concept="3clFbF" id="7zuOo8p0PiD" role="3cqZAp">
                          <node concept="2OqwBi" id="7zuOo8p0PiA" role="3clFbG">
                            <node concept="10M0yZ" id="7zuOo8p0PiB" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                            </node>
                            <node concept="liA8E" id="7zuOo8p0PiC" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                              <node concept="3cpWs3" id="7zuOo8p0QB5" role="37wK5m">
                                <node concept="1LFfDK" id="7zuOo8p0RQu" role="3uHU7w">
                                  <node concept="3cmrfG" id="7zuOo8p0Tww" role="1LF_Uc">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="2GrUjf" id="7zuOo8p0R1O" role="1LFl5Q">
                                    <ref role="2Gs0qQ" node="7zuOo8oZnSQ" resolve="version" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7zuOo8p0PLv" role="3uHU7B">
                                  <property role="Xl_RC" value="Restore " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7zuOo8oZuUq" role="3cqZAp">
                          <node concept="2OqwBi" id="7zuOo8oZvy2" role="3clFbG">
                            <node concept="2OqwBi" id="7zuOo8oZvdZ" role="2Oq$k0">
                              <node concept="37vLTw" id="7zuOo8oZuUp" role="2Oq$k0">
                                <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                              </node>
                              <node concept="liA8E" id="7zuOo8oZvob" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7zuOo8oZvUp" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~IWriteTransaction.setTree(org.modelix.model.api.ITree)" resolve="setTree" />
                              <node concept="1LFfDK" id="7zuOo8oZwSE" role="37wK5m">
                                <node concept="3cmrfG" id="7zuOo8oZy3x" role="1LF_Uc">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2GrUjf" id="7zuOo8oZwiH" role="1LFl5Q">
                                  <ref role="2Gs0qQ" node="7zuOo8oZnSQ" resolve="version" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1yReInPTBy" role="3cqZAp">
                          <node concept="10M0yZ" id="1yReInPTBz" role="3cqZAk">
                            <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                            <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7zuOo8oZyuC" role="3cqZAp">
                <node concept="2OqwBi" id="7zuOo8oZyJ8" role="3clFbG">
                  <node concept="37vLTw" id="7zuOo8oZyuA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7zuOo8oN5Tg" resolve="branch" />
                  </node>
                  <node concept="liA8E" id="7zuOo8oZyST" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                    <node concept="1bVj0M" id="7zuOo8oZzfK" role="37wK5m">
                      <node concept="3clFbS" id="7zuOo8oZzfL" role="1bW5cS">
                        <node concept="3cpWs8" id="7zuOo8oZzjT" role="3cqZAp">
                          <node concept="3cpWsn" id="7zuOo8oZzjU" role="3cpWs9">
                            <property role="TrG5h" value="expected" />
                            <node concept="3Tqbb2" id="7zuOo8oZzjV" role="1tU5fm" />
                            <node concept="1LFfDK" id="7zuOo8p01K4" role="33vP2m">
                              <node concept="3cmrfG" id="7zuOo8p03oC" role="1LF_Uc">
                                <property role="3cmrfH" value="2" />
                              </node>
                              <node concept="2GrUjf" id="7zuOo8p00Mj" role="1LFl5Q">
                                <ref role="2Gs0qQ" node="7zuOo8oZnSQ" resolve="version" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="7zuOo8oZzk1" role="3cqZAp">
                          <node concept="3cpWsn" id="7zuOo8oZzk2" role="3cpWs9">
                            <property role="TrG5h" value="actual" />
                            <node concept="3Tqbb2" id="7zuOo8oZzk3" role="1tU5fm" />
                            <node concept="2OqwBi" id="7zuOo8p086Q" role="33vP2m">
                              <node concept="2OqwBi" id="7zuOo8p05H8" role="2Oq$k0">
                                <node concept="37vLTw" id="7zuOo8p04G6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7zuOo8oNh2z" resolve="model" />
                                </node>
                                <node concept="2RRcyG" id="7zuOo8p06qI" role="2OqNvi" />
                              </node>
                              <node concept="1uHKPH" id="7zuOo8p09P3" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="7zuOo8oZzks" role="3cqZAp">
                          <node concept="3cpWsn" id="7zuOo8oZzkt" role="3cpWs9">
                            <property role="TrG5h" value="diff" />
                            <node concept="_YKpA" id="7zuOo8oZzku" role="1tU5fm">
                              <node concept="3uibUv" id="7zuOo8oZzkv" role="_ZDj9">
                                <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7zuOo8oZzkw" role="33vP2m">
                              <node concept="2ShNRf" id="7zuOo8oZzkx" role="2Oq$k0">
                                <node concept="1pGfFk" id="7zuOo8oZzky" role="2ShVmc">
                                  <ref role="37wK5l" to="y5e1:39D1ywqVsdl" resolve="NodesMatcher" />
                                  <node concept="37vLTw" id="7zuOo8oZzk$" role="37wK5m">
                                    <ref role="3cqZAo" node="7zuOo8oZzk2" resolve="actual" />
                                  </node>
                                  <node concept="37vLTw" id="7zuOo8oZzkz" role="37wK5m">
                                    <ref role="3cqZAo" node="7zuOo8oZzjU" resolve="expected" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="7zuOo8oZzk_" role="2OqNvi">
                                <ref role="37wK5l" to="y5e1:39D1ywqVH_i" resolve="diff" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7zuOo8oZzkA" role="3cqZAp">
                          <node concept="3clFbS" id="7zuOo8oZzkB" role="3clFbx">
                            <node concept="3cpWs8" id="7zuOo8oZzkC" role="3cqZAp">
                              <node concept="3cpWsn" id="7zuOo8oZzkD" role="3cpWs9">
                                <property role="TrG5h" value="sb" />
                                <node concept="3uibUv" id="7zuOo8oZzkE" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                                </node>
                                <node concept="2ShNRf" id="7zuOo8oZzkF" role="33vP2m">
                                  <node concept="1pGfFk" id="7zuOo8oZzkG" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1DcWWT" id="7zuOo8oZzkH" role="3cqZAp">
                              <node concept="37vLTw" id="7zuOo8oZzkI" role="1DdaDG">
                                <ref role="3cqZAo" node="7zuOo8oZzkt" resolve="diff" />
                              </node>
                              <node concept="3cpWsn" id="7zuOo8oZzkJ" role="1Duv9x">
                                <property role="TrG5h" value="nd" />
                                <node concept="3uibUv" id="7zuOo8oZzkK" role="1tU5fm">
                                  <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="7zuOo8oZzkL" role="2LFqv$">
                                <node concept="3clFbF" id="7zuOo8oZzkM" role="3cqZAp">
                                  <node concept="2OqwBi" id="7zuOo8oZzkN" role="3clFbG">
                                    <node concept="37vLTw" id="7zuOo8oZzkO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8oZzkD" resolve="sb" />
                                    </node>
                                    <node concept="liA8E" id="7zuOo8oZzkP" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                      <node concept="2OqwBi" id="7zuOo8oZzkQ" role="37wK5m">
                                        <node concept="37vLTw" id="7zuOo8oZzkR" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7zuOo8oZzkJ" resolve="nd" />
                                        </node>
                                        <node concept="liA8E" id="7zuOo8oZzkS" role="2OqNvi">
                                          <ref role="37wK5l" to="y5e1:39D1ywqUtCH" resolve="print" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3xETmq" id="7zuOo8oZzkT" role="3cqZAp">
                              <node concept="3_1$Yv" id="7zuOo8oZzkU" role="3_9lra">
                                <node concept="2OqwBi" id="7zuOo8oZzkV" role="3_1BAH">
                                  <node concept="37vLTw" id="7zuOo8oZzkW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7zuOo8oZzkD" resolve="sb" />
                                  </node>
                                  <node concept="liA8E" id="7zuOo8oZzkX" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7zuOo8oZzkY" role="3clFbw">
                            <node concept="37vLTw" id="7zuOo8oZzkZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7zuOo8oZzkt" resolve="diff" />
                            </node>
                            <node concept="3GX2aA" id="7zuOo8oZzl0" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1yReInPXsw" role="3cqZAp">
                          <node concept="10M0yZ" id="1yReInPXsx" role="3cqZAk">
                            <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                            <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
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
  <node concept="1lH9Xt" id="7zuOo8oNky1">
    <property role="TrG5h" value="Dummy" />
    <node concept="1LZb2c" id="7zuOo8oNkyJ" role="1SL9yI">
      <property role="TrG5h" value="dummy" />
      <node concept="3cqZAl" id="7zuOo8oNkyK" role="3clF45" />
      <node concept="3clFbS" id="7zuOo8oNkyO" role="3clF47" />
    </node>
  </node>
</model>

