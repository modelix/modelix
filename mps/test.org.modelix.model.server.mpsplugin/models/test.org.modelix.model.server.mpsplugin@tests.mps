<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ed933f2a-9389-47a5-8273-a3a47a69bf36(test.org.modelix.model.server.mpsplugin@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="0a7577d1-d4e5-431d-98b1-fae38f9aee80" name="org.modelix.model.repositoryconcepts" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="55oz" ref="0583edf0-91c3-4623-a2eb-b587ce03cc4f/java:org.modelix.client.light(test.org.modelix.model.server.mpsplugin/)" />
    <import index="v18h" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:kotlin(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="jh6v" ref="r:f2f39a18-fd23-4090-b7f2-ba8da340eec2(org.modelix.model.repositoryconcepts.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="4sv4" ref="r:e0ebb201-ffb5-414c-a096-5b55f0486d38(org.modelix.model.server.mpsplugin.plugin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="oat0" ref="d5d0bab3-0d1d-4161-b322-a85b0528a69a/java:org.modelix.model.server.api(org.modelix.model.server.mpsplugin/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
    <import index="y5e1" ref="r:4464540a-9650-433f-b716-ed95bbac5a69(jetbrains.mps.lang.test.matcher)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="2325284917965760583" name="jetbrains.mps.lang.test.structure.BeforeTestsMethod" flags="ig" index="0EjCn" />
      <concept id="2325284917965760584" name="jetbrains.mps.lang.test.structure.AfterTestsMethod" flags="ig" index="0EjCo" />
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
        <child id="2325284917965993569" name="beforeTests" index="0EEgL" />
        <child id="2325284917965993580" name="afterTests" index="0EEgW" />
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172017222794" name="jetbrains.mps.baseLanguage.unitTest.structure.Fail" flags="nn" index="3xETmq" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2XOHcx" id="3Y5tAPngcIq">
    <property role="2XOHcw" value="${modelix.home}/mps" />
  </node>
  <node concept="1lH9Xt" id="3Y5tAPngcJB">
    <property role="TrG5h" value="LightModelServerTest" />
    <property role="3OwPAg" value="true" />
    <node concept="2XrIbr" id="6g9f21tyLGC" role="1qtyYc">
      <property role="TrG5h" value="sleepUntil" />
      <node concept="37vLTG" id="6g9f21tyLN_" role="3clF46">
        <property role="TrG5h" value="maxMillis" />
        <node concept="3cpWsb" id="6g9f21tyLO8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6g9f21tyLON" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="1ajhzC" id="6g9f21tyLP7" role="1tU5fm">
          <node concept="10P_77" id="6g9f21tyLPs" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6g9f21tyLN2" role="3clF45" />
      <node concept="3clFbS" id="6g9f21tyLGE" role="3clF47">
        <node concept="1Dw8fO" id="6g9f21tyLPT" role="3cqZAp">
          <node concept="3clFbS" id="6g9f21tyLPU" role="2LFqv$">
            <node concept="3clFbJ" id="6g9f21tyN8g" role="3cqZAp">
              <node concept="3clFbS" id="6g9f21tyN8i" role="3clFbx">
                <node concept="3zACq4" id="6g9f21tyNdq" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6g9f21tyN9u" role="3clFbw">
                <node concept="37vLTw" id="6g9f21tyN91" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g9f21tyLON" resolve="condition" />
                </node>
                <node concept="1Bd96e" id="6g9f21tyNc$" role="2OqNvi" />
              </node>
            </node>
            <node concept="3J1_TO" id="6g9f21tyLQl" role="3cqZAp">
              <node concept="3clFbS" id="6g9f21tyLQm" role="1zxBo7">
                <node concept="3clFbF" id="6g9f21tyLQn" role="3cqZAp">
                  <node concept="2YIFZM" id="6g9f21tyLQo" role="3clFbG">
                    <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                    <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                    <node concept="1adDum" id="6g9f21tyNeY" role="37wK5m">
                      <property role="1adDun" value="100L" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="6g9f21tyLQq" role="1zxBo5">
                <node concept="3clFbS" id="6g9f21tyLQr" role="1zc67A">
                  <node concept="YS8fn" id="6g9f21tyNgM" role="3cqZAp">
                    <node concept="2ShNRf" id="6g9f21tyNh6" role="YScLw">
                      <node concept="1pGfFk" id="6g9f21tyNDd" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="37vLTw" id="6g9f21tyNEQ" role="37wK5m">
                          <ref role="3cqZAo" node="6g9f21tyLQs" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="XOnhg" id="6g9f21tyLQs" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="6g9f21tyLQt" role="1tU5fm">
                    <node concept="3uibUv" id="6g9f21tyLQu" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6g9f21tyLQv" role="1Duv9x">
            <property role="TrG5h" value="timeout" />
            <node concept="3cpWsb" id="6g9f21tyMXd" role="1tU5fm" />
            <node concept="37vLTw" id="6g9f21tyLYO" role="33vP2m">
              <ref role="3cqZAo" node="6g9f21tyLN_" resolve="maxMillis" />
            </node>
          </node>
          <node concept="3eOSWO" id="6g9f21tyLQy" role="1Dwp0S">
            <node concept="1adDum" id="6g9f21tyN0P" role="3uHU7w">
              <property role="1adDun" value="0L" />
            </node>
            <node concept="37vLTw" id="6g9f21tyLQ$" role="3uHU7B">
              <ref role="3cqZAo" node="6g9f21tyLQv" resolve="timeout" />
            </node>
          </node>
          <node concept="d5anL" id="6g9f21tyMPF" role="1Dwrff">
            <node concept="1adDum" id="6g9f21tyN1g" role="37vLTx">
              <property role="1adDun" value="100L" />
            </node>
            <node concept="37vLTw" id="6g9f21tyLQA" role="37vLTJ">
              <ref role="3cqZAo" node="6g9f21tyLQv" resolve="timeout" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6g9f21tyLMQ" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="6g9f21tyUlG" role="1qtyYc">
      <property role="TrG5h" value="runServerAndClient" />
      <node concept="37vLTG" id="6g9f21tyUDo" role="3clF46">
        <property role="TrG5h" value="body" />
        <node concept="1ajhzC" id="6g9f21tyUDE" role="1tU5fm">
          <node concept="3uibUv" id="6g9f21tyUEj" role="1ajw0F">
            <ref role="3uigEE" to="55oz:~LightModelClient" resolve="LightModelClient" />
          </node>
          <node concept="3cqZAl" id="6g9f21tyUEC" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6g9f21tyUCt" role="3clF45" />
      <node concept="3clFbS" id="6g9f21tyUlI" role="3clF47">
        <node concept="3SKdUt" id="6g9f21tyXhC" role="3cqZAp">
          <node concept="1PaTwC" id="6g9f21tyXhD" role="1aUNEU">
            <node concept="3oM_SD" id="6g9f21tyXhE" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhF" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhG" role="1PaTwD">
              <property role="3oM_SC" value="block" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhH" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhI" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhL" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6g9f21tyXhM" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="6g9f21tyUFb" role="3cqZAp">
          <node concept="2YIFZM" id="6g9f21tyUFc" role="3vFALc">
            <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3clFbH" id="6g9f21tyUFd" role="3cqZAp" />
        <node concept="3cpWs8" id="6g9f21tyUFe" role="3cqZAp">
          <node concept="3cpWsn" id="6g9f21tyUFf" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6g9f21tyUFg" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6g9f21tyUFh" role="33vP2m">
              <node concept="1jxXqW" id="6g9f21tyUFi" role="2Oq$k0" />
              <node concept="liA8E" id="6g9f21tyUFj" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6g9f21tyUFk" role="3cqZAp" />
        <node concept="3cpWs8" id="6g9f21tyUFl" role="3cqZAp">
          <node concept="3cpWsn" id="6g9f21tyUFm" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="6g9f21tyUFn" role="1tU5fm" />
            <node concept="3cpWs3" id="6g9f21tyUFo" role="33vP2m">
              <node concept="3cmrfG" id="6g9f21tyUFp" role="3uHU7w">
                <property role="3cmrfH" value="49000" />
              </node>
              <node concept="2OqwBi" id="6g9f21tyUFq" role="3uHU7B">
                <node concept="2ShNRf" id="6g9f21tyUFr" role="2Oq$k0">
                  <node concept="1pGfFk" id="6g9f21tyUFs" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;()" resolve="Random" />
                  </node>
                </node>
                <node concept="liA8E" id="6g9f21tyUFt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                  <node concept="3cmrfG" id="6g9f21tyUFu" role="37wK5m">
                    <property role="3cmrfH" value="1000" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6g9f21tyUFv" role="3cqZAp">
          <node concept="3cpWsn" id="6g9f21tyUFw" role="3cpWs9">
            <property role="TrG5h" value="server" />
            <node concept="3uibUv" id="6g9f21tyUFx" role="1tU5fm">
              <ref role="3uigEE" to="4sv4:3Y5tAPnfjvI" resolve="MPSLightModelServer" />
            </node>
            <node concept="2ShNRf" id="6g9f21tyUFy" role="33vP2m">
              <node concept="1pGfFk" id="6g9f21tyUFz" role="2ShVmc">
                <ref role="37wK5l" to="4sv4:3Y5tAPnfl5U" resolve="MPSLightModelServer" />
                <node concept="37vLTw" id="6g9f21tyUF$" role="37wK5m">
                  <ref role="3cqZAo" node="6g9f21tyUFf" resolve="repository" />
                </node>
                <node concept="37vLTw" id="6g9f21tyUF_" role="37wK5m">
                  <ref role="3cqZAo" node="6g9f21tyUFm" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6g9f21tyUFA" role="3cqZAp">
          <node concept="3clFbS" id="6g9f21tyUFB" role="1zxBo7">
            <node concept="3clFbF" id="6g9f21tyUFC" role="3cqZAp">
              <node concept="2OqwBi" id="6g9f21tyUFD" role="3clFbG">
                <node concept="37vLTw" id="6g9f21tyUFE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6g9f21tyUFw" resolve="server" />
                </node>
                <node concept="liA8E" id="6g9f21tyUFF" role="2OqNvi">
                  <ref role="37wK5l" to="4sv4:3Y5tAPnfyMg" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6g9f21tyUFG" role="3cqZAp">
              <node concept="2OqwBi" id="6g9f21tyUFH" role="3clFbG">
                <node concept="2WthIp" id="6g9f21tyUFI" role="2Oq$k0" />
                <node concept="2XshWL" id="6g9f21tyUFJ" role="2OqNvi">
                  <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                  <node concept="3cmrfG" id="6g9f21tyUFK" role="2XxRq1">
                    <property role="3cmrfH" value="1000" />
                  </node>
                  <node concept="1bVj0M" id="6g9f21tyUFL" role="2XxRq1">
                    <node concept="3clFbS" id="6g9f21tyUFM" role="1bW5cS">
                      <node concept="3clFbF" id="6g9f21tyUFN" role="3cqZAp">
                        <node concept="3clFbT" id="6g9f21tyUFO" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6g9f21tyUFP" role="3cqZAp" />
            <node concept="3clFbF" id="6g9f21tyUFQ" role="3cqZAp">
              <node concept="2OqwBi" id="6g9f21tyUFR" role="3clFbG">
                <node concept="10M0yZ" id="6g9f21tyUFS" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="6g9f21tyUFT" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="6g9f21tyUFU" role="37wK5m">
                    <property role="Xl_RC" value="Starting client" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6g9f21tyUFV" role="3cqZAp">
              <node concept="3cpWsn" id="6g9f21tyUFW" role="3cpWs9">
                <property role="TrG5h" value="client" />
                <node concept="3uibUv" id="6g9f21tyUFX" role="1tU5fm">
                  <ref role="3uigEE" to="55oz:~LightModelClient" resolve="LightModelClient" />
                </node>
                <node concept="2OqwBi" id="6g9f21tyUFY" role="33vP2m">
                  <node concept="2OqwBi" id="6g9f21tyUFZ" role="2Oq$k0">
                    <node concept="2YIFZM" id="6g9f21tyUG0" role="2Oq$k0">
                      <ref role="1Pybhc" to="55oz:~LightModelClientJVM" resolve="LightModelClientJVM" />
                      <ref role="37wK5l" to="55oz:~LightModelClientJVM.builder()" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="6g9f21tyUG1" role="2OqNvi">
                      <ref role="37wK5l" to="55oz:~LightModelClientBuilder.port(int)" resolve="port" />
                      <node concept="37vLTw" id="6g9f21tyUG2" role="37wK5m">
                        <ref role="3cqZAo" node="6g9f21tyUFm" resolve="port" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6g9f21tyUG3" role="2OqNvi">
                    <ref role="37wK5l" to="55oz:~LightModelClientBuilder.build()" resolve="build" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="6g9f21tQgeS" role="3cqZAp">
              <node concept="3clFbS" id="6g9f21tQgeU" role="1zxBo7">
                <node concept="3clFbF" id="6g9f21tyUHv" role="3cqZAp">
                  <node concept="2OqwBi" id="6g9f21tyUHw" role="3clFbG">
                    <node concept="2WthIp" id="6g9f21tyUHx" role="2Oq$k0" />
                    <node concept="2XshWL" id="6g9f21tyUHy" role="2OqNvi">
                      <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                      <node concept="3cmrfG" id="6g9f21tyUHz" role="2XxRq1">
                        <property role="3cmrfH" value="3000" />
                      </node>
                      <node concept="1bVj0M" id="6g9f21tyUH$" role="2XxRq1">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="6g9f21tyUH_" role="1bW5cS">
                          <node concept="3clFbF" id="6g9f21tzoNT" role="3cqZAp">
                            <node concept="2OqwBi" id="6g9f21tzoXi" role="3clFbG">
                              <node concept="37vLTw" id="6g9f21tzoNR" role="2Oq$k0">
                                <ref role="3cqZAo" node="6g9f21tyUFW" resolve="client" />
                              </node>
                              <node concept="liA8E" id="6g9f21tzp6N" role="2OqNvi">
                                <ref role="37wK5l" to="55oz:~LightModelClient.isInitialized()" resolve="isInitialized" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6g9f21tyUHU" role="3cqZAp" />
                <node concept="3clFbF" id="6g9f21tzpQ4" role="3cqZAp">
                  <node concept="2OqwBi" id="6g9f21tzpTV" role="3clFbG">
                    <node concept="37vLTw" id="6g9f21tzpQ2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6g9f21tyUDo" resolve="body" />
                    </node>
                    <node concept="1Bd96e" id="6g9f21tzpYH" role="2OqNvi">
                      <node concept="37vLTw" id="6g9f21tzpZa" role="1BdPVh">
                        <ref role="3cqZAo" node="6g9f21tyUFW" resolve="client" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1wplmZ" id="6g9f21tQitP" role="1zxBo6">
                <node concept="3clFbS" id="6g9f21tQitQ" role="1wplMD">
                  <node concept="3clFbF" id="6g9f21tPNuU" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tPOPw" role="3clFbG">
                      <node concept="37vLTw" id="6g9f21tPNuS" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tyUFW" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6g9f21tPPO3" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.dispose()" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="6g9f21tyUJq" role="1zxBo6">
            <node concept="3clFbS" id="6g9f21tyUJr" role="1wplMD">
              <node concept="3clFbF" id="6g9f21tyUJs" role="3cqZAp">
                <node concept="2OqwBi" id="6g9f21tyUJt" role="3clFbG">
                  <node concept="37vLTw" id="6g9f21tyUJu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6g9f21tyUFw" resolve="server" />
                  </node>
                  <node concept="liA8E" id="6g9f21tyUJv" role="2OqNvi">
                    <ref role="37wK5l" to="4sv4:3Y5tAPnf_nH" resolve="stop" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6g9f21tyUCh" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="6g9f21tLl92" role="1qtyYc">
      <property role="TrG5h" value="diffNodes" />
      <node concept="37vLTG" id="6g9f21tLo8y" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3uibUv" id="6g9f21tLoyj" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6g9f21tLoHI" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="6g9f21tLp7v" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3cqZAl" id="6g9f21tLnAU" role="3clF45" />
      <node concept="3clFbS" id="6g9f21tLl94" role="3clF47">
        <node concept="3cpWs8" id="6g9f21tLnBd" role="3cqZAp">
          <node concept="3cpWsn" id="6g9f21tLnBe" role="3cpWs9">
            <property role="TrG5h" value="diff" />
            <node concept="_YKpA" id="6g9f21tLnBf" role="1tU5fm">
              <node concept="3uibUv" id="6g9f21tLnBg" role="_ZDj9">
                <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
              </node>
            </node>
            <node concept="2OqwBi" id="6g9f21tLnBh" role="33vP2m">
              <node concept="2ShNRf" id="6g9f21tLnBi" role="2Oq$k0">
                <node concept="1pGfFk" id="6g9f21tLnBj" role="2ShVmc">
                  <ref role="37wK5l" to="y5e1:39D1ywqVsdl" resolve="NodesMatcher" />
                  <node concept="37vLTw" id="6g9f21tLnBk" role="37wK5m">
                    <ref role="3cqZAo" node="6g9f21tLo8y" resolve="expected" />
                  </node>
                  <node concept="37vLTw" id="6g9f21tLpLf" role="37wK5m">
                    <ref role="3cqZAo" node="6g9f21tLoHI" resolve="actual" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6g9f21tLnBq" role="2OqNvi">
                <ref role="37wK5l" to="y5e1:39D1ywqVH_i" resolve="diff" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g9f21tLnBr" role="3cqZAp">
          <node concept="3clFbS" id="6g9f21tLnBs" role="3clFbx">
            <node concept="3xETmq" id="6g9f21tLnBt" role="3cqZAp">
              <node concept="3_1$Yv" id="6g9f21tLnBu" role="3_9lra">
                <node concept="2OqwBi" id="6g9f21tLnBv" role="3_1BAH">
                  <node concept="2OqwBi" id="6g9f21tLnBw" role="2Oq$k0">
                    <node concept="37vLTw" id="6g9f21tLnBx" role="2Oq$k0">
                      <ref role="3cqZAo" node="6g9f21tLnBe" resolve="diff" />
                    </node>
                    <node concept="3$u5V9" id="6g9f21tLnBy" role="2OqNvi">
                      <node concept="1bVj0M" id="6g9f21tLnBz" role="23t8la">
                        <node concept="3clFbS" id="6g9f21tLnB$" role="1bW5cS">
                          <node concept="3clFbF" id="6g9f21tLnB_" role="3cqZAp">
                            <node concept="2OqwBi" id="6g9f21tLnBA" role="3clFbG">
                              <node concept="37vLTw" id="6g9f21tLnBB" role="2Oq$k0">
                                <ref role="3cqZAo" node="6g9f21tLnBD" resolve="it" />
                              </node>
                              <node concept="liA8E" id="6g9f21tLnBC" role="2OqNvi">
                                <ref role="37wK5l" to="y5e1:39D1ywqUtCH" resolve="print" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6g9f21tLnBD" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6g9f21tLnBE" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uJxvA" id="6g9f21tLnBF" role="2OqNvi">
                    <node concept="Xl_RD" id="6g9f21tLnBG" role="3uJOhx">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6g9f21tLnBH" role="3clFbw">
            <node concept="37vLTw" id="6g9f21tLnBI" role="2Oq$k0">
              <ref role="3cqZAo" node="6g9f21tLnBe" resolve="diff" />
            </node>
            <node concept="3GX2aA" id="6g9f21tLnBJ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6g9f21tLnAI" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="3Y5tAPngcKU" role="1SL9yI">
      <property role="TrG5h" value="read1module" />
      <node concept="3cqZAl" id="3Y5tAPngcKV" role="3clF45" />
      <node concept="3clFbS" id="3Y5tAPngcKZ" role="3clF47">
        <node concept="3clFbF" id="6g9f21tzqRe" role="3cqZAp">
          <node concept="2OqwBi" id="6g9f21tzqR8" role="3clFbG">
            <node concept="2WthIp" id="6g9f21tzqRb" role="2Oq$k0" />
            <node concept="2XshWL" id="6g9f21tzqRd" role="2OqNvi">
              <ref role="2WH_rO" node="6g9f21tyUlG" resolve="runServerAndClient" />
              <node concept="1bVj0M" id="6g9f21tzrD3" role="2XxRq1">
                <node concept="37vLTG" id="6g9f21tzrDU" role="1bW2Oz">
                  <property role="TrG5h" value="client" />
                  <node concept="3uibUv" id="6g9f21tzrGw" role="1tU5fm">
                    <ref role="3uigEE" to="55oz:~LightModelClient" resolve="LightModelClient" />
                  </node>
                </node>
                <node concept="3clFbS" id="6g9f21tzrD4" role="1bW5cS">
                  <node concept="3cpWs8" id="6g9f21tzBh0" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tzBh1" role="3cpWs9">
                      <property role="TrG5h" value="repository" />
                      <node concept="3uibUv" id="6g9f21tzBh2" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                      </node>
                      <node concept="2OqwBi" id="6g9f21tzBh3" role="33vP2m">
                        <node concept="1jxXqW" id="6g9f21tzBh4" role="2Oq$k0" />
                        <node concept="liA8E" id="6g9f21tzBh5" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tzBdD" role="3cqZAp" />
                  <node concept="3cpWs8" id="3Y5tAPnhy5J" role="3cqZAp">
                    <node concept="3cpWsn" id="3Y5tAPnhy5K" role="3cpWs9">
                      <property role="TrG5h" value="query" />
                      <node concept="3uibUv" id="3Y5tAPnhxYw" role="1tU5fm">
                        <ref role="3uigEE" to="oat0:~ModelQuery" resolve="ModelQuery" />
                      </node>
                      <node concept="2YIFZM" id="3Y5tAPnhy5L" role="33vP2m">
                        <ref role="1Pybhc" to="oat0:~ModelQueryBuilderKt" resolve="ModelQueryBuilderKt" />
                        <ref role="37wK5l" to="oat0:~ModelQueryBuilderKt.buildModelQuery(kotlin.jvm.functions.Function1)" resolve="buildModelQuery" />
                        <node concept="1bVj0M" id="3Y5tAPnhy5M" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="37vLTG" id="3Y5tAPnhykB" role="1bW2Oz">
                            <property role="TrG5h" value="builder" />
                            <node concept="3uibUv" id="3Y5tAPnhypg" role="1tU5fm">
                              <ref role="3uigEE" to="oat0:~ModelQueryBuilder" resolve="ModelQueryBuilder" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="3Y5tAPnhy5N" role="1bW5cS">
                            <node concept="3clFbF" id="3Y5tAPnkW$I" role="3cqZAp">
                              <node concept="2OqwBi" id="3Y5tAPnkWSL" role="3clFbG">
                                <node concept="37vLTw" id="3Y5tAPnkW$G" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Y5tAPnhykB" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="3Y5tAPnkXcC" role="2OqNvi">
                                  <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.root(kotlin.jvm.functions.Function1)" resolve="root" />
                                  <node concept="1bVj0M" id="3Y5tAPnkXmN" role="37wK5m">
                                    <property role="3yWfEV" value="true" />
                                    <node concept="37vLTG" id="3Y5tAPnkXxZ" role="1bW2Oz">
                                      <property role="TrG5h" value="builder" />
                                      <node concept="3uibUv" id="3Y5tAPnkXK9" role="1tU5fm">
                                        <ref role="3uigEE" to="oat0:~RootNodeBuilder" resolve="RootNodeBuilder" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="3Y5tAPnkXmO" role="1bW5cS">
                                      <node concept="3clFbF" id="3Y5tAPnhyAE" role="3cqZAp">
                                        <node concept="2OqwBi" id="3Y5tAPnhyKJ" role="3clFbG">
                                          <node concept="37vLTw" id="3Y5tAPnhyAC" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3Y5tAPnkXxZ" resolve="builder" />
                                          </node>
                                          <node concept="liA8E" id="3Y5tAPnhyX3" role="2OqNvi">
                                            <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                            <node concept="Xl_RD" id="3Y5tAPnhyZQ" role="37wK5m">
                                              <property role="Xl_RC" value="modules" />
                                            </node>
                                            <node concept="1bVj0M" id="3Y5tAPnhzaG" role="37wK5m">
                                              <node concept="3clFbS" id="3Y5tAPnhzaI" role="1bW5cS">
                                                <node concept="3clFbF" id="3Y5tAPnh$cy" role="3cqZAp">
                                                  <node concept="2OqwBi" id="3Y5tAPnh_80" role="3clFbG">
                                                    <node concept="2OqwBi" id="3Y5tAPnh$rw" role="2Oq$k0">
                                                      <node concept="37vLTw" id="3Y5tAPnh$cw" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="3Y5tAPnhznn" resolve="builder" />
                                                      </node>
                                                      <node concept="liA8E" id="3Y5tAPnh$H9" role="2OqNvi">
                                                        <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.whereProperty(java.lang.String)" resolve="whereProperty" />
                                                        <node concept="Xl_RD" id="3Y5tAPnh$Lq" role="37wK5m">
                                                          <property role="Xl_RC" value="name" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="3Y5tAPnh_Fp" role="2OqNvi">
                                                      <ref role="37wK5l" to="oat0:~QueryOwnerBuilder$StringFilterBuilder.equalTo(java.lang.String)" resolve="equalTo" />
                                                      <node concept="Xl_RD" id="3Y5tAPnh_Kd" role="37wK5m">
                                                        <property role="Xl_RC" value="test.org.modelix.model.server.mpsplugin" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="3Y5tAPnhA9Z" role="3cqZAp">
                                                  <node concept="2OqwBi" id="3Y5tAPnhAqp" role="3clFbG">
                                                    <node concept="37vLTw" id="3Y5tAPnhA9X" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="3Y5tAPnhznn" resolve="builder" />
                                                    </node>
                                                    <node concept="liA8E" id="3Y5tAPnhAGt" role="2OqNvi">
                                                      <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                                      <node concept="Xl_RD" id="3Y5tAPnhALk" role="37wK5m">
                                                        <property role="Xl_RC" value="models" />
                                                      </node>
                                                      <node concept="1bVj0M" id="3Y5tAPnhB9Y" role="37wK5m">
                                                        <node concept="37vLTG" id="3Y5tAPnhBhf" role="1bW2Oz">
                                                          <property role="TrG5h" value="builder" />
                                                          <node concept="3uibUv" id="3Y5tAPnhBq3" role="1tU5fm">
                                                            <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbS" id="3Y5tAPnhBa0" role="1bW5cS">
                                                          <node concept="3clFbF" id="3Y5tAPnhCag" role="3cqZAp">
                                                            <node concept="2OqwBi" id="3Y5tAPnhCah" role="3clFbG">
                                                              <node concept="37vLTw" id="3Y5tAPnhCai" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="3Y5tAPnhBhf" resolve="builder" />
                                                              </node>
                                                              <node concept="liA8E" id="3Y5tAPnhCaj" role="2OqNvi">
                                                                <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                                                <node concept="Xl_RD" id="3Y5tAPnhCak" role="37wK5m">
                                                                  <property role="Xl_RC" value="rootNodes" />
                                                                </node>
                                                                <node concept="1bVj0M" id="3Y5tAPnhCal" role="37wK5m">
                                                                  <node concept="37vLTG" id="3Y5tAPnhCam" role="1bW2Oz">
                                                                    <property role="TrG5h" value="builder" />
                                                                    <node concept="3uibUv" id="3Y5tAPnhCan" role="1tU5fm">
                                                                      <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                                    </node>
                                                                  </node>
                                                                  <node concept="3clFbS" id="3Y5tAPnhCao" role="1bW5cS">
                                                                    <node concept="3clFbF" id="3Y5tAPnhDFe" role="3cqZAp">
                                                                      <node concept="2OqwBi" id="3Y5tAPnhDXK" role="3clFbG">
                                                                        <node concept="37vLTw" id="3Y5tAPnhDFc" role="2Oq$k0">
                                                                          <ref role="3cqZAo" node="3Y5tAPnhCam" resolve="builder" />
                                                                        </node>
                                                                        <node concept="liA8E" id="3Y5tAPnhEmo" role="2OqNvi">
                                                                          <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.descendants(kotlin.jvm.functions.Function1)" resolve="descendants" />
                                                                          <node concept="1bVj0M" id="3Y5tAPnhEvv" role="37wK5m">
                                                                            <property role="3yWfEV" value="true" />
                                                                            <node concept="37vLTG" id="3Y5tAPnhECT" role="1bW2Oz">
                                                                              <property role="TrG5h" value="builder" />
                                                                              <node concept="3uibUv" id="3Y5tAPnhEPa" role="1tU5fm">
                                                                                <ref role="3uigEE" to="oat0:~DescendantsBuilder" resolve="DescendantsBuilder" />
                                                                              </node>
                                                                            </node>
                                                                            <node concept="3clFbS" id="3Y5tAPnhEvw" role="1bW5cS">
                                                                              <node concept="3clFbH" id="3Y5tAPnhFEm" role="3cqZAp" />
                                                                              <node concept="3cpWs6" id="3Y5tAPnhF0I" role="3cqZAp">
                                                                                <node concept="10M0yZ" id="3Y5tAPnhF0J" role="3cqZAk">
                                                                                  <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                                                  <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                                                </node>
                                                                              </node>
                                                                            </node>
                                                                          </node>
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                    <node concept="3cpWs6" id="3Y5tAPnhCaq" role="3cqZAp">
                                                                      <node concept="10M0yZ" id="3Y5tAPnhCar" role="3cqZAk">
                                                                        <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                                        <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3cpWs6" id="3Y5tAPnhBOf" role="3cqZAp">
                                                            <node concept="10M0yZ" id="3Y5tAPnhBOg" role="3cqZAk">
                                                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs6" id="3Y5tAPnhzT0" role="3cqZAp">
                                                  <node concept="10M0yZ" id="3Y5tAPnhzT1" role="3cqZAk">
                                                    <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                    <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTG" id="3Y5tAPnhznn" role="1bW2Oz">
                                                <property role="TrG5h" value="builder" />
                                                <node concept="3uibUv" id="3Y5tAPnhzu7" role="1tU5fm">
                                                  <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs6" id="3Y5tAPnhyul" role="3cqZAp">
                                        <node concept="10M0yZ" id="3Y5tAPnhy$d" role="3cqZAk">
                                          <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                          <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="3Y5tAPnkZnx" role="3cqZAp">
                              <node concept="10M0yZ" id="3Y5tAPnkZny" role="3cqZAk">
                                <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="lD$Av_qePP" role="3cqZAp">
                    <node concept="2OqwBi" id="lD$Av_qePM" role="3clFbG">
                      <node concept="10M0yZ" id="lD$Av_qePN" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      </node>
                      <node concept="liA8E" id="lD$Av_qePO" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                        <node concept="2OqwBi" id="lD$Av_qqor" role="37wK5m">
                          <node concept="2ShNRf" id="lD$Av_qip6" role="2Oq$k0">
                            <node concept="1pGfFk" id="lD$Av_qiLJ" role="2ShVmc">
                              <ref role="37wK5l" to="oat0:~MessageFromClient.&lt;init&gt;(java.lang.Integer,java.util.List,org.modelix.model.server.api.ModelQuery,java.lang.String,java.lang.Integer)" resolve="MessageFromClient" />
                              <node concept="10Nm6u" id="lD$Av_qiOU" role="37wK5m" />
                              <node concept="10Nm6u" id="lD$Av_qiTk" role="37wK5m" />
                              <node concept="37vLTw" id="lD$Av_qiXL" role="37wK5m">
                                <ref role="3cqZAo" node="3Y5tAPnhy5K" resolve="query" />
                              </node>
                              <node concept="10Nm6u" id="lD$Av_qj2R" role="37wK5m" />
                              <node concept="10Nm6u" id="lD$Av_qj8e" role="37wK5m" />
                            </node>
                          </node>
                          <node concept="liA8E" id="lD$Av_qrjZ" role="2OqNvi">
                            <ref role="37wK5l" to="oat0:~MessageFromClient.toJson()" resolve="toJson" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3Y5tAPnhxds" role="3cqZAp">
                    <node concept="2OqwBi" id="3Y5tAPnhxjQ" role="3clFbG">
                      <node concept="37vLTw" id="3Y5tAPnhxdq" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                      </node>
                      <node concept="liA8E" id="3Y5tAPnhxrt" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.changeQuery(org.modelix.model.server.api.ModelQuery)" resolve="changeQuery" />
                        <node concept="37vLTw" id="3Y5tAPnhy5Q" role="37wK5m">
                          <ref role="3cqZAo" node="3Y5tAPnhy5K" resolve="query" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tzrIR" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tyTov" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tyTow" role="3clFbG">
                      <node concept="2WthIp" id="6g9f21tyTox" role="2Oq$k0" />
                      <node concept="2XshWL" id="6g9f21tyToy" role="2OqNvi">
                        <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                        <node concept="3cmrfG" id="6g9f21tyToz" role="2XxRq1">
                          <property role="3cmrfH" value="10000" />
                        </node>
                        <node concept="1bVj0M" id="6g9f21tyTo$" role="2XxRq1">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="6g9f21tyTo_" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tyToA" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tyToB" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tyToC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tyToD" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                                  <node concept="1bVj0M" id="6g9f21tyToE" role="37wK5m">
                                    <node concept="3clFbS" id="6g9f21tyToF" role="1bW5cS">
                                      <node concept="3cpWs8" id="6g9f21tyToG" role="3cqZAp">
                                        <node concept="3cpWsn" id="6g9f21tyToH" role="3cpWs9">
                                          <property role="TrG5h" value="rootNode" />
                                          <node concept="3uibUv" id="6g9f21tyToI" role="1tU5fm">
                                            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                          </node>
                                          <node concept="2OqwBi" id="6g9f21tyToJ" role="33vP2m">
                                            <node concept="37vLTw" id="6g9f21tyToK" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                            </node>
                                            <node concept="liA8E" id="6g9f21tyToL" role="2OqNvi">
                                              <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="6g9f21tyToM" role="3cqZAp">
                                        <node concept="1Wc70l" id="6g9f21tyToN" role="3clFbG">
                                          <node concept="2OqwBi" id="6g9f21tyToO" role="3uHU7w">
                                            <node concept="37vLTw" id="6g9f21tyToP" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tyToH" resolve="rootNode" />
                                            </node>
                                            <node concept="liA8E" id="6g9f21tyToQ" role="2OqNvi">
                                              <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                            </node>
                                          </node>
                                          <node concept="3y3z36" id="6g9f21tyToR" role="3uHU7B">
                                            <node concept="37vLTw" id="6g9f21tyToS" role="3uHU7B">
                                              <ref role="3cqZAo" node="6g9f21tyToH" resolve="rootNode" />
                                            </node>
                                            <node concept="10Nm6u" id="6g9f21tyToT" role="3uHU7w" />
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
                  <node concept="3clFbH" id="3Y5tAPnhImO" role="3cqZAp" />
                  <node concept="3clFbF" id="3Y5tAPnhI$q" role="3cqZAp">
                    <node concept="2OqwBi" id="3Y5tAPnhIPP" role="3clFbG">
                      <node concept="37vLTw" id="3Y5tAPnhI$o" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                      </node>
                      <node concept="liA8E" id="3Y5tAPnhJ50" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                        <node concept="1bVj0M" id="3Y5tAPnhJ5w" role="37wK5m">
                          <node concept="3clFbS" id="3Y5tAPnhJ5x" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21t_Aaf" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21t_Aac" role="3clFbG">
                                <node concept="10M0yZ" id="6g9f21t_Aad" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                </node>
                                <node concept="liA8E" id="6g9f21t_Aae" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                  <node concept="Xl_RD" id="6g9f21t_AEG" role="37wK5m">
                                    <property role="Xl_RC" value="Verifying received data" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vwNmj" id="6NfzCv2pxdY" role="3cqZAp">
                              <node concept="2OqwBi" id="6NfzCv2pxoy" role="3vwVQn">
                                <node concept="37vLTw" id="6NfzCv2pxgY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6NfzCv2pxyu" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.isInitialized()" resolve="isInitialized" />
                                </node>
                              </node>
                            </node>
                            <node concept="3vwNmj" id="6NfzCv2pxE1" role="3cqZAp">
                              <node concept="2OqwBi" id="6NfzCv2pxOZ" role="3vwVQn">
                                <node concept="37vLTw" id="6NfzCv2pxHf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6NfzCv2pxX_" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.isInSync()" resolve="isInSync" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3Y5tAPnhQi$" role="3cqZAp">
                              <node concept="3cpWsn" id="3Y5tAPnhQi_" role="3cpWs9">
                                <property role="TrG5h" value="repositoryNode" />
                                <node concept="3Tqbb2" id="3Y5tAPnhU3E" role="1tU5fm">
                                  <ref role="ehGHo" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                </node>
                                <node concept="1PxgMI" id="3Y5tAPnhXFI" role="33vP2m">
                                  <node concept="chp4Y" id="3Y5tAPnhXG7" role="3oSUPX">
                                    <ref role="cht4Q" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                  </node>
                                  <node concept="2YIFZM" id="3Y5tAPnhQiA" role="1m5AlR">
                                    <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                    <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                    <node concept="2OqwBi" id="3Y5tAPnhQiB" role="37wK5m">
                                      <node concept="37vLTw" id="3Y5tAPnhQiC" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                      </node>
                                      <node concept="liA8E" id="3Y5tAPnhQiD" role="2OqNvi">
                                        <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3Y5tAPnhQiE" role="37wK5m">
                                      <ref role="3cqZAo" node="6g9f21tzBh1" resolve="repository" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2Hmddi" id="6NfzCv2ptet" role="3cqZAp">
                              <node concept="37vLTw" id="6NfzCv2pthp" role="2Hmdds">
                                <ref role="3cqZAo" node="3Y5tAPnhQi_" resolve="repositoryNode" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6p0ytdGbqNd" role="3cqZAp">
                              <node concept="3cpWsn" id="6p0ytdGbqNe" role="3cpWs9">
                                <property role="TrG5h" value="modules" />
                                <node concept="A3Dl8" id="6p0ytdGcCsN" role="1tU5fm">
                                  <node concept="3uibUv" id="6p0ytdGcCsP" role="A3Ik2">
                                    <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6p0ytdGcz4v" role="33vP2m">
                                  <node concept="2OqwBi" id="6p0ytdGcyzk" role="2Oq$k0">
                                    <node concept="37vLTw" id="6p0ytdGcyge" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g9f21tzrDU" resolve="client" />
                                    </node>
                                    <node concept="liA8E" id="6p0ytdGcyP6" role="2OqNvi">
                                      <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6p0ytdGczqs" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                                    <node concept="2OqwBi" id="6p0ytdGc$mO" role="37wK5m">
                                      <node concept="359W_D" id="6p0ytdGczC4" role="2Oq$k0">
                                        <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                        <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                                      </node>
                                      <node concept="liA8E" id="6p0ytdGc$QC" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6p0ytdGbvMW" role="3cqZAp">
                              <node concept="3cpWsn" id="6p0ytdGbvMX" role="3cpWs9">
                                <property role="TrG5h" value="loadedModules" />
                                <node concept="_YKpA" id="6p0ytdGbvLD" role="1tU5fm">
                                  <node concept="3Tqbb2" id="6p0ytdGcHDW" role="_ZDj9">
                                    <ref role="ehGHo" to="jh6v:qmkA5fOskf" resolve="Module" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6p0ytdGbvMY" role="33vP2m">
                                  <node concept="2OqwBi" id="6p0ytdGcFjR" role="2Oq$k0">
                                    <node concept="2OqwBi" id="6p0ytdGbvMZ" role="2Oq$k0">
                                      <node concept="37vLTw" id="6p0ytdGbvN0" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6p0ytdGbqNe" resolve="modules" />
                                      </node>
                                      <node concept="3zZkjj" id="6p0ytdGbvN1" role="2OqNvi">
                                        <node concept="1bVj0M" id="6p0ytdGbvN2" role="23t8la">
                                          <node concept="3clFbS" id="6p0ytdGbvN3" role="1bW5cS">
                                            <node concept="3clFbF" id="6p0ytdGbvN4" role="3cqZAp">
                                              <node concept="2OqwBi" id="6p0ytdGbvN5" role="3clFbG">
                                                <node concept="37vLTw" id="6p0ytdGcD1a" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6p0ytdGbvN9" resolve="it" />
                                                </node>
                                                <node concept="liA8E" id="6p0ytdGbvN8" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="6p0ytdGbvN9" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="6p0ytdGbvNa" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="6p0ytdGcFNN" role="2OqNvi">
                                      <node concept="1bVj0M" id="6p0ytdGcFNP" role="23t8la">
                                        <node concept="3clFbS" id="6p0ytdGcFNQ" role="1bW5cS">
                                          <node concept="3clFbF" id="6p0ytdGcG5J" role="3cqZAp">
                                            <node concept="1PxgMI" id="6p0ytdGcI3s" role="3clFbG">
                                              <node concept="chp4Y" id="6p0ytdGcIfC" role="3oSUPX">
                                                <ref role="cht4Q" to="jh6v:qmkA5fOskf" resolve="Module" />
                                              </node>
                                              <node concept="2YIFZM" id="6p0ytdGcGsY" role="1m5AlR">
                                                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                                <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                                <node concept="37vLTw" id="6p0ytdGcGQk" role="37wK5m">
                                                  <ref role="3cqZAo" node="6p0ytdGcFNR" resolve="it" />
                                                </node>
                                                <node concept="37vLTw" id="6p0ytdGcHeH" role="37wK5m">
                                                  <ref role="3cqZAo" node="6g9f21tzBh1" resolve="repository" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="6p0ytdGcFNR" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="6p0ytdGcFNS" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6p0ytdGbvNb" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3vlDli" id="6p0ytdGcWQ2" role="3cqZAp">
                              <node concept="3cmrfG" id="6p0ytdGcX3T" role="3tpDZB">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="6p0ytdGdem6" role="3tpDZA">
                                <node concept="37vLTw" id="6p0ytdGcXdL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6p0ytdGbvMX" resolve="loadedModules" />
                                </node>
                                <node concept="34oBXx" id="6p0ytdGdgOs" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6p0ytdGbwmf" role="3cqZAp">
                              <node concept="3cpWsn" id="6p0ytdGbwmg" role="3cpWs9">
                                <property role="TrG5h" value="models" />
                                <node concept="A3Dl8" id="6p0ytdGcL8N" role="1tU5fm">
                                  <node concept="3Tqbb2" id="6p0ytdGcL8P" role="A3Ik2">
                                    <ref role="ehGHo" to="jh6v:qmkA5fOskc" resolve="Model" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6p0ytdGbwmh" role="33vP2m">
                                  <node concept="37vLTw" id="6p0ytdGbwmi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6p0ytdGbvMX" resolve="loadedModules" />
                                  </node>
                                  <node concept="13MTOL" id="6p0ytdGbwmj" role="2OqNvi">
                                    <ref role="13MTZf" to="jh6v:qmkA5fOski" resolve="models" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3Y5tAPni4vG" role="3cqZAp">
                              <node concept="3cpWsn" id="3Y5tAPni4vH" role="3cpWs9">
                                <property role="TrG5h" value="rootNodes" />
                                <node concept="A3Dl8" id="3Y5tAPni4v9" role="1tU5fm">
                                  <node concept="3Tqbb2" id="3Y5tAPni4vc" role="A3Ik2">
                                    <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3Y5tAPni4vI" role="33vP2m">
                                  <node concept="37vLTw" id="6p0ytdGbwmk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6p0ytdGbwmg" resolve="models" />
                                  </node>
                                  <node concept="13MTOL" id="3Y5tAPni4vO" role="2OqNvi">
                                    <ref role="13MTZf" to="jh6v:qmkA5fOskk" resolve="rootNodes" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vwNmj" id="6p0ytdGcXDW" role="3cqZAp">
                              <node concept="3eOSWO" id="6p0ytdGcZzh" role="3vwVQn">
                                <node concept="3cmrfG" id="6p0ytdGcZzk" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="6p0ytdGcYdn" role="3uHU7B">
                                  <node concept="37vLTw" id="6p0ytdGcXPf" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Y5tAPni4vH" resolve="rootNodes" />
                                  </node>
                                  <node concept="34oBXx" id="6p0ytdGcYDL" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="3Y5tAPnhYyF" role="3cqZAp">
                              <node concept="10M0yZ" id="3Y5tAPnhYDg" role="3cqZAk">
                                <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
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
    <node concept="1LZb2c" id="6g9f21tzM0n" role="1SL9yI">
      <property role="TrG5h" value="write" />
      <node concept="3cqZAl" id="6g9f21tzM0o" role="3clF45" />
      <node concept="3clFbS" id="6g9f21tzM0p" role="3clF47">
        <node concept="3clFbF" id="6g9f21tzM0q" role="3cqZAp">
          <node concept="2OqwBi" id="6g9f21tzM0r" role="3clFbG">
            <node concept="2WthIp" id="6g9f21tzM0s" role="2Oq$k0" />
            <node concept="2XshWL" id="6g9f21tzM0t" role="2OqNvi">
              <ref role="2WH_rO" node="6g9f21tyUlG" resolve="runServerAndClient" />
              <node concept="1bVj0M" id="6g9f21tzM0u" role="2XxRq1">
                <node concept="37vLTG" id="6g9f21tzM0v" role="1bW2Oz">
                  <property role="TrG5h" value="client" />
                  <node concept="3uibUv" id="6g9f21tzM0w" role="1tU5fm">
                    <ref role="3uigEE" to="55oz:~LightModelClient" resolve="LightModelClient" />
                  </node>
                </node>
                <node concept="3clFbS" id="6g9f21tzM0x" role="1bW5cS">
                  <node concept="3clFbH" id="6g9f21tzOPH" role="3cqZAp" />
                  <node concept="3cpWs8" id="6g9f21tzM0y" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tzM0z" role="3cpWs9">
                      <property role="TrG5h" value="repository" />
                      <node concept="3uibUv" id="6g9f21tzM0$" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                      </node>
                      <node concept="2OqwBi" id="6g9f21tzM0_" role="33vP2m">
                        <node concept="1jxXqW" id="6g9f21tzM0A" role="2Oq$k0" />
                        <node concept="liA8E" id="6g9f21tzM0B" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6g9f21tyzqa" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tyzqb" role="3cpWs9">
                      <property role="TrG5h" value="tempModel" />
                      <node concept="3uibUv" id="6g9f21tyzp_" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="10Nm6u" id="6g9f21t$J3J" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6g9f21tyE1g" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tyE1h" role="3cpWs9">
                      <property role="TrG5h" value="serverSideTestNode" />
                      <node concept="3Tqbb2" id="6g9f21tyCX_" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                      </node>
                      <node concept="10Nm6u" id="6g9f21tBdqr" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="1QHqEM" id="6g9f21t$Ei3" role="3cqZAp">
                    <node concept="1QHqEC" id="6g9f21t$Ei5" role="1QHqEI">
                      <node concept="3clFbS" id="6g9f21t$Ei7" role="1bW5cS">
                        <node concept="3clFbF" id="6g9f21t$Hgq" role="3cqZAp">
                          <node concept="37vLTI" id="6g9f21t$Hgs" role="3clFbG">
                            <node concept="2OqwBi" id="6g9f21tyzqc" role="37vLTx">
                              <node concept="2YIFZM" id="6g9f21tyzqd" role="2Oq$k0">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                              </node>
                              <node concept="liA8E" id="6g9f21tyzqe" role="2OqNvi">
                                <ref role="37wK5l" to="tqvn:~TemporaryModels.createEditable(boolean,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="createEditable" />
                                <node concept="3clFbT" id="6g9f21tyzqf" role="37wK5m" />
                                <node concept="2YIFZM" id="6g9f21tyzqg" role="37wK5m">
                                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forDefaultModule()" resolve="forDefaultModule" />
                                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="6g9f21t$Hgw" role="37vLTJ">
                              <ref role="3cqZAo" node="6g9f21tyzqb" resolve="tempModel" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6g9f21tBads" role="3cqZAp">
                          <node concept="37vLTI" id="6g9f21tBadu" role="3clFbG">
                            <node concept="2ShNRf" id="6g9f21tyE1i" role="37vLTx">
                              <node concept="2fJWfE" id="6g9f21tyE1j" role="2ShVmc">
                                <node concept="3Tqbb2" id="6g9f21tyE1k" role="3zrR0E">
                                  <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="6g9f21tBady" role="37vLTJ">
                              <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6g9f21tyFIo" role="3cqZAp">
                          <node concept="37vLTI" id="6g9f21tyK0K" role="3clFbG">
                            <node concept="Xl_RD" id="6g9f21tyK_O" role="37vLTx">
                              <property role="Xl_RC" value="OriginalName" />
                            </node>
                            <node concept="2OqwBi" id="6g9f21tyGVa" role="37vLTJ">
                              <node concept="37vLTw" id="6g9f21tyFIm" role="2Oq$k0">
                                <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                              </node>
                              <node concept="3TrcHB" id="6g9f21tyIo8" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6g9f21tywzP" role="3cqZAp">
                          <node concept="2OqwBi" id="6g9f21ty$jl" role="3clFbG">
                            <node concept="37vLTw" id="6g9f21tyzqh" role="2Oq$k0">
                              <ref role="3cqZAo" node="6g9f21tyzqb" resolve="tempModel" />
                            </node>
                            <node concept="liA8E" id="6g9f21ty_93" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                              <node concept="37vLTw" id="6g9f21tyE1l" role="37wK5m">
                                <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6g9f21t$G_w" role="ukAjM">
                      <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tzNbe" role="3cqZAp" />
                  <node concept="3clFbH" id="6g9f21tzNeG" role="3cqZAp" />
                  <node concept="3clFbH" id="6g9f21tzM0C" role="3cqZAp" />
                  <node concept="3cpWs8" id="6g9f21tzM0D" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tzM0E" role="3cpWs9">
                      <property role="TrG5h" value="query" />
                      <node concept="3uibUv" id="6g9f21tzM0F" role="1tU5fm">
                        <ref role="3uigEE" to="oat0:~ModelQuery" resolve="ModelQuery" />
                      </node>
                      <node concept="2YIFZM" id="6g9f21tzM0G" role="33vP2m">
                        <ref role="1Pybhc" to="oat0:~ModelQueryBuilderKt" resolve="ModelQueryBuilderKt" />
                        <ref role="37wK5l" to="oat0:~ModelQueryBuilderKt.buildModelQuery(kotlin.jvm.functions.Function1)" resolve="buildModelQuery" />
                        <node concept="1bVj0M" id="6g9f21tzM0H" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="37vLTG" id="6g9f21tzM0I" role="1bW2Oz">
                            <property role="TrG5h" value="builder" />
                            <node concept="3uibUv" id="6g9f21tzM0J" role="1tU5fm">
                              <ref role="3uigEE" to="oat0:~ModelQueryBuilder" resolve="ModelQueryBuilder" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6g9f21tzM0K" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tzM0L" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tzM0M" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tzM0N" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0I" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6g9f21tzM0O" role="2OqNvi">
                                  <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.root(kotlin.jvm.functions.Function1)" resolve="root" />
                                  <node concept="1bVj0M" id="6g9f21tzM0P" role="37wK5m">
                                    <property role="3yWfEV" value="true" />
                                    <node concept="37vLTG" id="6g9f21tzM0Q" role="1bW2Oz">
                                      <property role="TrG5h" value="builder" />
                                      <node concept="3uibUv" id="6g9f21tzM0R" role="1tU5fm">
                                        <ref role="3uigEE" to="oat0:~RootNodeBuilder" resolve="RootNodeBuilder" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="6g9f21tzM0S" role="1bW5cS">
                                      <node concept="3clFbF" id="6g9f21tzM0T" role="3cqZAp">
                                        <node concept="2OqwBi" id="6g9f21tzM0U" role="3clFbG">
                                          <node concept="37vLTw" id="6g9f21tzM0V" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6g9f21tzM0Q" resolve="builder" />
                                          </node>
                                          <node concept="liA8E" id="6g9f21tzM0W" role="2OqNvi">
                                            <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                            <node concept="2OqwBi" id="6g9f21t$8cT" role="37wK5m">
                                              <node concept="359W_D" id="6g9f21t$5_C" role="2Oq$k0">
                                                <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                                <ref role="359W_F" to="jh6v:78D6RWLi6Va" resolve="tempModules" />
                                              </node>
                                              <node concept="liA8E" id="6g9f21t$9gI" role="2OqNvi">
                                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="1bVj0M" id="6g9f21tzM0Y" role="37wK5m">
                                              <node concept="3clFbS" id="6g9f21tzM0Z" role="1bW5cS">
                                                <node concept="3clFbF" id="6g9f21tzM10" role="3cqZAp">
                                                  <node concept="2OqwBi" id="6g9f21tzM11" role="3clFbG">
                                                    <node concept="2OqwBi" id="6g9f21tzM12" role="2Oq$k0">
                                                      <node concept="37vLTw" id="6g9f21tzM13" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="6g9f21tzM1F" resolve="builder" />
                                                      </node>
                                                      <node concept="liA8E" id="6g9f21tzM14" role="2OqNvi">
                                                        <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.whereProperty(java.lang.String)" resolve="whereProperty" />
                                                        <node concept="2OqwBi" id="6g9f21tzVtE" role="37wK5m">
                                                          <node concept="355D3s" id="6g9f21tzQbV" role="2Oq$k0">
                                                            <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                                                            <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                                          </node>
                                                          <node concept="liA8E" id="6g9f21tzWr6" role="2OqNvi">
                                                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="6g9f21tzM16" role="2OqNvi">
                                                      <ref role="37wK5l" to="oat0:~QueryOwnerBuilder$StringFilterBuilder.equalTo(java.lang.String)" resolve="equalTo" />
                                                      <node concept="2OqwBi" id="6g9f21t$SWP" role="37wK5m">
                                                        <node concept="2OqwBi" id="6g9f21t$SaF" role="2Oq$k0">
                                                          <node concept="37vLTw" id="6g9f21t$SaG" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="6g9f21tyzqb" resolve="tempModel" />
                                                          </node>
                                                          <node concept="liA8E" id="6g9f21t$SaH" role="2OqNvi">
                                                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="6g9f21t$T$k" role="2OqNvi">
                                                          <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="6g9f21tzM18" role="3cqZAp">
                                                  <node concept="2OqwBi" id="6g9f21tzM19" role="3clFbG">
                                                    <node concept="37vLTw" id="6g9f21tzM1a" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="6g9f21tzM1F" resolve="builder" />
                                                    </node>
                                                    <node concept="liA8E" id="6g9f21tzM1b" role="2OqNvi">
                                                      <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                                      <node concept="Xl_RD" id="6g9f21tzM1c" role="37wK5m">
                                                        <property role="Xl_RC" value="models" />
                                                      </node>
                                                      <node concept="1bVj0M" id="6g9f21tzM1d" role="37wK5m">
                                                        <node concept="37vLTG" id="6g9f21tzM1e" role="1bW2Oz">
                                                          <property role="TrG5h" value="builder" />
                                                          <node concept="3uibUv" id="6g9f21tzM1f" role="1tU5fm">
                                                            <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbS" id="6g9f21tzM1g" role="1bW5cS">
                                                          <node concept="3clFbF" id="6g9f21t$U28" role="3cqZAp">
                                                            <node concept="2OqwBi" id="6g9f21t$U29" role="3clFbG">
                                                              <node concept="2OqwBi" id="6g9f21t$U2a" role="2Oq$k0">
                                                                <node concept="37vLTw" id="6g9f21t$U2b" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="6g9f21tzM1e" resolve="builder" />
                                                                </node>
                                                                <node concept="liA8E" id="6g9f21t$U2c" role="2OqNvi">
                                                                  <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.whereProperty(java.lang.String)" resolve="whereProperty" />
                                                                  <node concept="2OqwBi" id="6g9f21t$U2d" role="37wK5m">
                                                                    <node concept="355D3s" id="6g9f21t$U2e" role="2Oq$k0">
                                                                      <ref role="355D3t" to="jh6v:qmkA5fOskc" resolve="Model" />
                                                                      <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                                                    </node>
                                                                    <node concept="liA8E" id="6g9f21t$U2f" role="2OqNvi">
                                                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                              <node concept="liA8E" id="6g9f21t$U2g" role="2OqNvi">
                                                                <ref role="37wK5l" to="oat0:~QueryOwnerBuilder$StringFilterBuilder.equalTo(java.lang.String)" resolve="equalTo" />
                                                                <node concept="2OqwBi" id="6g9f21t$YLJ" role="37wK5m">
                                                                  <node concept="2OqwBi" id="6g9f21t$U2i" role="2Oq$k0">
                                                                    <node concept="37vLTw" id="6g9f21t$U2j" role="2Oq$k0">
                                                                      <ref role="3cqZAo" node="6g9f21tyzqb" resolve="tempModel" />
                                                                    </node>
                                                                    <node concept="liA8E" id="6g9f21t$Yei" role="2OqNvi">
                                                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                                                    </node>
                                                                  </node>
                                                                  <node concept="liA8E" id="6g9f21t$ZzD" role="2OqNvi">
                                                                    <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbF" id="6g9f21tzM1h" role="3cqZAp">
                                                            <node concept="2OqwBi" id="6g9f21tzM1i" role="3clFbG">
                                                              <node concept="37vLTw" id="6g9f21tzM1j" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="6g9f21tzM1e" resolve="builder" />
                                                              </node>
                                                              <node concept="liA8E" id="6g9f21tzM1k" role="2OqNvi">
                                                                <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.children(java.lang.String,kotlin.jvm.functions.Function1)" resolve="children" />
                                                                <node concept="Xl_RD" id="6g9f21tzM1l" role="37wK5m">
                                                                  <property role="Xl_RC" value="rootNodes" />
                                                                </node>
                                                                <node concept="1bVj0M" id="6g9f21tzM1m" role="37wK5m">
                                                                  <node concept="37vLTG" id="6g9f21tzM1n" role="1bW2Oz">
                                                                    <property role="TrG5h" value="builder" />
                                                                    <node concept="3uibUv" id="6g9f21tzM1o" role="1tU5fm">
                                                                      <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                                    </node>
                                                                  </node>
                                                                  <node concept="3clFbS" id="6g9f21tzM1p" role="1bW5cS">
                                                                    <node concept="3clFbF" id="6g9f21tzM1q" role="3cqZAp">
                                                                      <node concept="2OqwBi" id="6g9f21tzM1r" role="3clFbG">
                                                                        <node concept="37vLTw" id="6g9f21tzM1s" role="2Oq$k0">
                                                                          <ref role="3cqZAo" node="6g9f21tzM1n" resolve="builder" />
                                                                        </node>
                                                                        <node concept="liA8E" id="6g9f21tzM1t" role="2OqNvi">
                                                                          <ref role="37wK5l" to="oat0:~QueryOwnerBuilder.descendants(kotlin.jvm.functions.Function1)" resolve="descendants" />
                                                                          <node concept="1bVj0M" id="6g9f21tzM1u" role="37wK5m">
                                                                            <property role="3yWfEV" value="true" />
                                                                            <node concept="37vLTG" id="6g9f21tzM1v" role="1bW2Oz">
                                                                              <property role="TrG5h" value="builder" />
                                                                              <node concept="3uibUv" id="6g9f21tzM1w" role="1tU5fm">
                                                                                <ref role="3uigEE" to="oat0:~DescendantsBuilder" resolve="DescendantsBuilder" />
                                                                              </node>
                                                                            </node>
                                                                            <node concept="3clFbS" id="6g9f21tzM1x" role="1bW5cS">
                                                                              <node concept="3clFbH" id="6g9f21tzM1y" role="3cqZAp" />
                                                                              <node concept="3cpWs6" id="6g9f21tzM1z" role="3cqZAp">
                                                                                <node concept="10M0yZ" id="6g9f21tzM1$" role="3cqZAk">
                                                                                  <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                                                  <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                                                </node>
                                                                              </node>
                                                                            </node>
                                                                          </node>
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                    <node concept="3cpWs6" id="6g9f21tzM1_" role="3cqZAp">
                                                                      <node concept="10M0yZ" id="6g9f21tzM1A" role="3cqZAk">
                                                                        <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                                        <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="3cpWs6" id="6g9f21tzM1B" role="3cqZAp">
                                                            <node concept="10M0yZ" id="6g9f21tzM1C" role="3cqZAk">
                                                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs6" id="6g9f21tzM1D" role="3cqZAp">
                                                  <node concept="10M0yZ" id="6g9f21tzM1E" role="3cqZAk">
                                                    <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                                    <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTG" id="6g9f21tzM1F" role="1bW2Oz">
                                                <property role="TrG5h" value="builder" />
                                                <node concept="3uibUv" id="6g9f21tzM1G" role="1tU5fm">
                                                  <ref role="3uigEE" to="oat0:~ChildrenBuilder" resolve="ChildrenBuilder" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs6" id="6g9f21tzM1H" role="3cqZAp">
                                        <node concept="10M0yZ" id="6g9f21tzM1I" role="3cqZAk">
                                          <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                          <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="6g9f21tzM1J" role="3cqZAp">
                              <node concept="10M0yZ" id="6g9f21tzM1K" role="3cqZAk">
                                <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6g9f21tzM1L" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tzM1M" role="3clFbG">
                      <node concept="10M0yZ" id="6g9f21tzM1N" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      </node>
                      <node concept="liA8E" id="6g9f21tzM1O" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                        <node concept="2OqwBi" id="6g9f21tzM1P" role="37wK5m">
                          <node concept="2ShNRf" id="6g9f21tzM1Q" role="2Oq$k0">
                            <node concept="1pGfFk" id="6g9f21tzM1R" role="2ShVmc">
                              <ref role="37wK5l" to="oat0:~MessageFromClient.&lt;init&gt;(java.lang.Integer,java.util.List,org.modelix.model.server.api.ModelQuery,java.lang.String,java.lang.Integer)" resolve="MessageFromClient" />
                              <node concept="10Nm6u" id="6g9f21tzM1S" role="37wK5m" />
                              <node concept="10Nm6u" id="6g9f21tzM1T" role="37wK5m" />
                              <node concept="37vLTw" id="6g9f21tzM1U" role="37wK5m">
                                <ref role="3cqZAo" node="6g9f21tzM0E" resolve="query" />
                              </node>
                              <node concept="10Nm6u" id="6g9f21tzM1V" role="37wK5m" />
                              <node concept="10Nm6u" id="6g9f21tzM1W" role="37wK5m" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6g9f21tzM1X" role="2OqNvi">
                            <ref role="37wK5l" to="oat0:~MessageFromClient.toJson()" resolve="toJson" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6g9f21tzM1Y" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tzM1Z" role="3clFbG">
                      <node concept="37vLTw" id="6g9f21tzM20" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6g9f21tzM21" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.changeQuery(org.modelix.model.server.api.ModelQuery)" resolve="changeQuery" />
                        <node concept="37vLTw" id="6g9f21tzM22" role="37wK5m">
                          <ref role="3cqZAo" node="6g9f21tzM0E" resolve="query" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tzM23" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tzM24" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tzM25" role="3clFbG">
                      <node concept="2WthIp" id="6g9f21tzM26" role="2Oq$k0" />
                      <node concept="2XshWL" id="6g9f21tzM27" role="2OqNvi">
                        <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                        <node concept="3cmrfG" id="6g9f21tzM28" role="2XxRq1">
                          <property role="3cmrfH" value="10000" />
                        </node>
                        <node concept="1bVj0M" id="6g9f21tzM29" role="2XxRq1">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="6g9f21tzM2a" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tzM2b" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tzM2c" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tzM2d" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tzM2e" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                                  <node concept="1bVj0M" id="6g9f21tzM2f" role="37wK5m">
                                    <node concept="3clFbS" id="6g9f21tzM2g" role="1bW5cS">
                                      <node concept="3cpWs8" id="6g9f21tzM2h" role="3cqZAp">
                                        <node concept="3cpWsn" id="6g9f21tzM2i" role="3cpWs9">
                                          <property role="TrG5h" value="rootNode" />
                                          <node concept="3uibUv" id="6g9f21tzM2j" role="1tU5fm">
                                            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                          </node>
                                          <node concept="2OqwBi" id="6g9f21tzM2k" role="33vP2m">
                                            <node concept="37vLTw" id="6g9f21tzM2l" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                            </node>
                                            <node concept="liA8E" id="6g9f21tzM2m" role="2OqNvi">
                                              <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="6g9f21tzM2n" role="3cqZAp">
                                        <node concept="1Wc70l" id="6g9f21tzM2o" role="3clFbG">
                                          <node concept="2OqwBi" id="6g9f21tzM2p" role="3uHU7w">
                                            <node concept="37vLTw" id="6g9f21tzM2q" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tzM2i" resolve="rootNode" />
                                            </node>
                                            <node concept="liA8E" id="6g9f21tzM2r" role="2OqNvi">
                                              <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                            </node>
                                          </node>
                                          <node concept="3y3z36" id="6g9f21tzM2s" role="3uHU7B">
                                            <node concept="37vLTw" id="6g9f21tzM2t" role="3uHU7B">
                                              <ref role="3cqZAo" node="6g9f21tzM2i" resolve="rootNode" />
                                            </node>
                                            <node concept="10Nm6u" id="6g9f21tzM2u" role="3uHU7w" />
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
                  <node concept="3clFbH" id="6g9f21tzM2v" role="3cqZAp" />
                  <node concept="3cpWs8" id="6g9f21tAkXv" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tAkXy" role="3cpWs9">
                      <property role="TrG5h" value="clientSideTestNode" />
                      <node concept="3Tqbb2" id="6g9f21tAkXt" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                      </node>
                      <node concept="10Nm6u" id="6g9f21tApQC" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6g9f21tzM2w" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tzM2x" role="3clFbG">
                      <node concept="37vLTw" id="6g9f21tzM2y" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6g9f21tzM2z" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                        <node concept="1bVj0M" id="6g9f21tzM2$" role="37wK5m">
                          <node concept="3clFbS" id="6g9f21tzM2_" role="1bW5cS">
                            <node concept="3vwNmj" id="6g9f21tzM2A" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tzM2B" role="3vwVQn">
                                <node concept="37vLTw" id="6g9f21tzM2C" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tzM2D" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.isInitialized()" resolve="isInitialized" />
                                </node>
                              </node>
                            </node>
                            <node concept="3vwNmj" id="6g9f21tzM2E" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tzM2F" role="3vwVQn">
                                <node concept="37vLTw" id="6g9f21tzM2G" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tzM2H" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.isInSync()" resolve="isInSync" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6g9f21tzM2I" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tzM2J" role="3cpWs9">
                                <property role="TrG5h" value="repositoryNode" />
                                <node concept="3Tqbb2" id="6g9f21tzM2K" role="1tU5fm">
                                  <ref role="ehGHo" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                </node>
                                <node concept="1PxgMI" id="6g9f21tzM2L" role="33vP2m">
                                  <node concept="chp4Y" id="6g9f21tzM2M" role="3oSUPX">
                                    <ref role="cht4Q" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                  </node>
                                  <node concept="2YIFZM" id="6g9f21tzM2N" role="1m5AlR">
                                    <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                    <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                    <node concept="2OqwBi" id="6g9f21tzM2O" role="37wK5m">
                                      <node concept="37vLTw" id="6g9f21tzM2P" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                      </node>
                                      <node concept="liA8E" id="6g9f21tzM2Q" role="2OqNvi">
                                        <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="6g9f21tzM2R" role="37wK5m">
                                      <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2Hmddi" id="6g9f21tzM2S" role="3cqZAp">
                              <node concept="37vLTw" id="6g9f21tzM2T" role="2Hmdds">
                                <ref role="3cqZAo" node="6g9f21tzM2J" resolve="repositoryNode" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6g9f21tzM2U" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tzM2V" role="3cpWs9">
                                <property role="TrG5h" value="modules" />
                                <node concept="A3Dl8" id="6g9f21tzM2W" role="1tU5fm">
                                  <node concept="3uibUv" id="6g9f21tzM2X" role="A3Ik2">
                                    <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6g9f21tzM2Y" role="33vP2m">
                                  <node concept="2OqwBi" id="6g9f21tzM2Z" role="2Oq$k0">
                                    <node concept="37vLTw" id="6g9f21tzM30" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                    </node>
                                    <node concept="liA8E" id="6g9f21tzM31" role="2OqNvi">
                                      <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6g9f21tzM32" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                                    <node concept="2OqwBi" id="6g9f21tzM33" role="37wK5m">
                                      <node concept="359W_D" id="6g9f21tzM34" role="2Oq$k0">
                                        <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                                        <ref role="359W_F" to="jh6v:78D6RWLi6Va" resolve="tempModules" />
                                      </node>
                                      <node concept="liA8E" id="6g9f21tzM35" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6g9f21tzM36" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tzM37" role="3cpWs9">
                                <property role="TrG5h" value="loadedModules" />
                                <node concept="_YKpA" id="6g9f21tzM38" role="1tU5fm">
                                  <node concept="3Tqbb2" id="6g9f21tzM39" role="_ZDj9">
                                    <ref role="ehGHo" to="jh6v:qmkA5fOskf" resolve="Module" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6g9f21tzM3a" role="33vP2m">
                                  <node concept="2OqwBi" id="6g9f21tzM3b" role="2Oq$k0">
                                    <node concept="2OqwBi" id="6g9f21tzM3c" role="2Oq$k0">
                                      <node concept="37vLTw" id="6g9f21tzM3d" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6g9f21tzM2V" resolve="modules" />
                                      </node>
                                      <node concept="3zZkjj" id="6g9f21tzM3e" role="2OqNvi">
                                        <node concept="1bVj0M" id="6g9f21tzM3f" role="23t8la">
                                          <node concept="3clFbS" id="6g9f21tzM3g" role="1bW5cS">
                                            <node concept="3clFbF" id="6g9f21tzM3h" role="3cqZAp">
                                              <node concept="2OqwBi" id="6g9f21tzM3i" role="3clFbG">
                                                <node concept="37vLTw" id="6g9f21tzM3j" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6g9f21tzM3l" resolve="it" />
                                                </node>
                                                <node concept="liA8E" id="6g9f21tzM3k" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="6g9f21tzM3l" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="6g9f21tzM3m" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="6g9f21tzM3n" role="2OqNvi">
                                      <node concept="1bVj0M" id="6g9f21tzM3o" role="23t8la">
                                        <node concept="3clFbS" id="6g9f21tzM3p" role="1bW5cS">
                                          <node concept="3clFbF" id="6g9f21tzM3q" role="3cqZAp">
                                            <node concept="1PxgMI" id="6g9f21tzM3r" role="3clFbG">
                                              <node concept="chp4Y" id="6g9f21tzM3s" role="3oSUPX">
                                                <ref role="cht4Q" to="jh6v:qmkA5fOskf" resolve="Module" />
                                              </node>
                                              <node concept="2YIFZM" id="6g9f21tzM3t" role="1m5AlR">
                                                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                                <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                                <node concept="37vLTw" id="6g9f21tzM3u" role="37wK5m">
                                                  <ref role="3cqZAo" node="6g9f21tzM3w" resolve="it" />
                                                </node>
                                                <node concept="37vLTw" id="6g9f21tzM3v" role="37wK5m">
                                                  <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="6g9f21tzM3w" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="6g9f21tzM3x" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6g9f21tzM3y" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3vlDli" id="6g9f21tzM3z" role="3cqZAp">
                              <node concept="3cmrfG" id="6g9f21tzM3$" role="3tpDZB">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="6g9f21tzM3_" role="3tpDZA">
                                <node concept="37vLTw" id="6g9f21tzM3A" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM37" resolve="loadedModules" />
                                </node>
                                <node concept="34oBXx" id="6g9f21tzM3B" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6g9f21tzM3C" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tzM3D" role="3cpWs9">
                                <property role="TrG5h" value="models" />
                                <node concept="A3Dl8" id="6g9f21tzM3E" role="1tU5fm">
                                  <node concept="3Tqbb2" id="6g9f21tzM3F" role="A3Ik2">
                                    <ref role="ehGHo" to="jh6v:qmkA5fOskc" resolve="Model" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6g9f21tzM3G" role="33vP2m">
                                  <node concept="37vLTw" id="6g9f21tzM3H" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g9f21tzM37" resolve="loadedModules" />
                                  </node>
                                  <node concept="13MTOL" id="6g9f21tzM3I" role="2OqNvi">
                                    <ref role="13MTZf" to="jh6v:qmkA5fOski" resolve="models" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6g9f21tzM3J" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tzM3K" role="3cpWs9">
                                <property role="TrG5h" value="rootNodes" />
                                <node concept="A3Dl8" id="6g9f21tzM3L" role="1tU5fm">
                                  <node concept="3Tqbb2" id="6g9f21tzM3M" role="A3Ik2">
                                    <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6g9f21tzM3N" role="33vP2m">
                                  <node concept="37vLTw" id="6g9f21tzM3O" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g9f21tzM3D" resolve="models" />
                                  </node>
                                  <node concept="13MTOL" id="6g9f21tzM3P" role="2OqNvi">
                                    <ref role="13MTZf" to="jh6v:qmkA5fOskk" resolve="rootNodes" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vlDli" id="6g9f21t$bMT" role="3cqZAp">
                              <node concept="3cmrfG" id="6g9f21t$cy6" role="3tpDZB">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="6g9f21t$dPT" role="3tpDZA">
                                <node concept="37vLTw" id="6g9f21t$d0Z" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM3K" resolve="rootNodes" />
                                </node>
                                <node concept="34oBXx" id="6g9f21t$eNr" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="6g9f21tAr02" role="3cqZAp">
                              <node concept="37vLTI" id="6g9f21tArX6" role="3clFbG">
                                <node concept="1PxgMI" id="6g9f21tAwC9" role="37vLTx">
                                  <node concept="chp4Y" id="6g9f21tAxgN" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="6g9f21tAtmD" role="1m5AlR">
                                    <node concept="37vLTw" id="6g9f21tAs_9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6g9f21tzM3K" resolve="rootNodes" />
                                    </node>
                                    <node concept="1uHKPH" id="6g9f21tAuek" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="6g9f21tAr00" role="37vLTJ">
                                  <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                </node>
                              </node>
                            </node>
                            <node concept="3vlDli" id="6g9f21tAKM6" role="3cqZAp">
                              <node concept="Xl_RD" id="6g9f21tANuh" role="3tpDZB">
                                <property role="Xl_RC" value="OriginalName" />
                              </node>
                              <node concept="2OqwBi" id="6g9f21tASlZ" role="3tpDZA">
                                <node concept="37vLTw" id="6g9f21tAPJq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                </node>
                                <node concept="3TrcHB" id="6g9f21tATJc" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="6g9f21tzM3W" role="3cqZAp">
                              <node concept="10M0yZ" id="6g9f21tzM3X" role="3cqZAk">
                                <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tAxLn" role="3cqZAp" />
                  <node concept="3SKdUt" id="6g9f21tB_G6" role="3cqZAp">
                    <node concept="1PaTwC" id="6g9f21tB_G7" role="1aUNEU">
                      <node concept="3oM_SD" id="6g9f21tB_G8" role="1PaTwD">
                        <property role="3oM_SC" value="Change" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBAkh" role="1PaTwD">
                        <property role="3oM_SC" value="property" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBB6B" role="1PaTwD">
                        <property role="3oM_SC" value="on" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBB6F" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBBRR" role="1PaTwD">
                        <property role="3oM_SC" value="client" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBBRX" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBBS4" role="1PaTwD">
                        <property role="3oM_SC" value="check" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBCEv" role="1PaTwD">
                        <property role="3oM_SC" value="if" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBDd8" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBDR7" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBEwv" role="1PaTwD">
                        <property role="3oM_SC" value="received" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBF3b" role="1PaTwD">
                        <property role="3oM_SC" value="by" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBF3o" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBGvv" role="1PaTwD">
                        <property role="3oM_SC" value="server" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tB$Oc" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tA_2F" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tA_Qq" role="3clFbG">
                      <node concept="37vLTw" id="6g9f21tA_2D" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6g9f21tAAxW" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
                        <node concept="1bVj0M" id="6g9f21tABbN" role="37wK5m">
                          <node concept="3clFbS" id="6g9f21tABbO" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tACZf" role="3cqZAp">
                              <node concept="37vLTI" id="6g9f21tAHyy" role="3clFbG">
                                <node concept="Xl_RD" id="6g9f21tAI48" role="37vLTx">
                                  <property role="Xl_RC" value="ChangedOnClient" />
                                </node>
                                <node concept="2OqwBi" id="6g9f21tAE8k" role="37vLTJ">
                                  <node concept="37vLTw" id="6g9f21tACZd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                  </node>
                                  <node concept="3TrcHB" id="6g9f21tAFwr" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3vlDli" id="6g9f21tAVav" role="3cqZAp">
                              <node concept="Xl_RD" id="6g9f21tAVVz" role="3tpDZB">
                                <property role="Xl_RC" value="ChangedOnClient" />
                              </node>
                              <node concept="2OqwBi" id="6g9f21tAZoa" role="3tpDZA">
                                <node concept="37vLTw" id="6g9f21tAYv9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                </node>
                                <node concept="3TrcHB" id="6g9f21tB0LK" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="6g9f21tB1yJ" role="3cqZAp">
                              <node concept="10M0yZ" id="6g9f21tB1yK" role="3cqZAk">
                                <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tB3a5" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tB4Gk" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tB4Ge" role="3clFbG">
                      <node concept="2WthIp" id="6g9f21tB4Gh" role="2Oq$k0" />
                      <node concept="2XshWL" id="6g9f21tB4Gj" role="2OqNvi">
                        <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                        <node concept="3cmrfG" id="6g9f21tB5_t" role="2XxRq1">
                          <property role="3cmrfH" value="3000" />
                        </node>
                        <node concept="1bVj0M" id="6g9f21tB7sO" role="2XxRq1">
                          <node concept="3clFbS" id="6g9f21tB7sQ" role="1bW5cS">
                            <node concept="3cpWs8" id="6g9f21tBn$9" role="3cqZAp">
                              <node concept="3cpWsn" id="6g9f21tBn$a" role="3cpWs9">
                                <property role="TrG5h" value="changed" />
                                <node concept="10P_77" id="6g9f21tBn88" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1QHqEK" id="6g9f21tB8OO" role="3cqZAp">
                              <node concept="1QHqEC" id="6g9f21tB8OQ" role="1QHqEI">
                                <node concept="3clFbS" id="6g9f21tB8OS" role="1bW5cS">
                                  <node concept="3clFbF" id="6g9f21tBpep" role="3cqZAp">
                                    <node concept="37vLTI" id="6g9f21tBper" role="3clFbG">
                                      <node concept="17R0WA" id="6g9f21tBn$b" role="37vLTx">
                                        <node concept="Xl_RD" id="6g9f21tBn$c" role="3uHU7w">
                                          <property role="Xl_RC" value="ChangedOnClient" />
                                        </node>
                                        <node concept="2OqwBi" id="6g9f21tBn$d" role="3uHU7B">
                                          <node concept="37vLTw" id="6g9f21tBn$e" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                                          </node>
                                          <node concept="3TrcHB" id="6g9f21tBn$f" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="6g9f21tBpev" role="37vLTJ">
                                        <ref role="3cqZAo" node="6g9f21tBn$a" resolve="changed" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="6g9f21tB9nj" role="ukAjM">
                                <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="6g9f21tBfVT" role="3cqZAp">
                              <node concept="37vLTw" id="6g9f21tBn$g" role="3clFbG">
                                <ref role="3cqZAo" node="6g9f21tBn$a" resolve="changed" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tB44N" role="3cqZAp" />
                  <node concept="1QHqEK" id="6g9f21tBtej" role="3cqZAp">
                    <node concept="1QHqEC" id="6g9f21tBtel" role="1QHqEI">
                      <node concept="3clFbS" id="6g9f21tBten" role="1bW5cS">
                        <node concept="3vlDli" id="6g9f21tBuT9" role="3cqZAp">
                          <node concept="Xl_RD" id="6g9f21tBvs7" role="3tpDZB">
                            <property role="Xl_RC" value="ChangedOnClient" />
                          </node>
                          <node concept="2OqwBi" id="6g9f21tByvp" role="3tpDZA">
                            <node concept="37vLTw" id="6g9f21tBx$n" role="2Oq$k0">
                              <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                            </node>
                            <node concept="3TrcHB" id="6g9f21tB$af" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6g9f21tBu6t" role="ukAjM">
                      <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tBrX1" role="3cqZAp" />
                  <node concept="3SKdUt" id="6g9f21tBJl1" role="3cqZAp">
                    <node concept="1PaTwC" id="6g9f21tBJl2" role="1aUNEU">
                      <node concept="3oM_SD" id="6g9f21tBJl3" role="1PaTwD">
                        <property role="3oM_SC" value="Change" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBJY3" role="1PaTwD">
                        <property role="3oM_SC" value="property" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBJY6" role="1PaTwD">
                        <property role="3oM_SC" value="on" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBJYa" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBJYf" role="1PaTwD">
                        <property role="3oM_SC" value="server" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBKBs" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBKBz" role="1PaTwD">
                        <property role="3oM_SC" value="check" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBLaG" role="1PaTwD">
                        <property role="3oM_SC" value="if" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBLaP" role="1PaTwD">
                        <property role="3oM_SC" value="it's" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBNKt" role="1PaTwD">
                        <property role="3oM_SC" value="received" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBOj8" role="1PaTwD">
                        <property role="3oM_SC" value="by" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBP5B" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="6g9f21tBP5O" role="1PaTwD">
                        <property role="3oM_SC" value="client" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tBICy" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tF0GS" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tF35E" role="3clFbG">
                      <node concept="2OqwBi" id="6g9f21tF1tG" role="2Oq$k0">
                        <node concept="37vLTw" id="6g9f21tF0GQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                        </node>
                        <node concept="liA8E" id="6g9f21tF2q3" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6g9f21tF3Nw" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                        <node concept="1bVj0M" id="6g9f21tF4CS" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="6g9f21tF4CT" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tBVeX" role="3cqZAp">
                              <node concept="37vLTI" id="6g9f21tBZSw" role="3clFbG">
                                <node concept="Xl_RD" id="6g9f21tC0rS" role="37vLTx">
                                  <property role="Xl_RC" value="ChangedOnServer" />
                                </node>
                                <node concept="2OqwBi" id="6g9f21tBWpq" role="37vLTJ">
                                  <node concept="37vLTw" id="6g9f21tBVeW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                                  </node>
                                  <node concept="3TrcHB" id="6g9f21tBXOG" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tC38$" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tC4t7" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tC4t1" role="3clFbG">
                      <node concept="2WthIp" id="6g9f21tC4t4" role="2Oq$k0" />
                      <node concept="2XshWL" id="6g9f21tC4t6" role="2OqNvi">
                        <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                        <node concept="3cmrfG" id="6g9f21tC5pc" role="2XxRq1">
                          <property role="3cmrfH" value="3000" />
                        </node>
                        <node concept="1bVj0M" id="6g9f21tC6KS" role="2XxRq1">
                          <node concept="3clFbS" id="6g9f21tC6KU" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tC8aM" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tC8QM" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tC8aK" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tC9MS" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                                  <node concept="1bVj0M" id="6g9f21tCanu" role="37wK5m">
                                    <node concept="3clFbS" id="6g9f21tCanv" role="1bW5cS">
                                      <node concept="3clFbF" id="6g9f21tCbe1" role="3cqZAp">
                                        <node concept="17R0WA" id="6g9f21tChcW" role="3clFbG">
                                          <node concept="Xl_RD" id="6g9f21tCi2g" role="3uHU7w">
                                            <property role="Xl_RC" value="ChangedOnServer" />
                                          </node>
                                          <node concept="2OqwBi" id="6g9f21tCewe" role="3uHU7B">
                                            <node concept="37vLTw" id="6g9f21tCdoi" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                            </node>
                                            <node concept="3TrcHB" id="6g9f21tCgcy" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
                  <node concept="3clFbH" id="6g9f21tBPPl" role="3cqZAp" />
                  <node concept="3vlDli" id="6g9f21tCnnI" role="3cqZAp">
                    <node concept="Xl_RD" id="6g9f21tCo3G" role="3tpDZB">
                      <property role="Xl_RC" value="ChangedOnServer" />
                    </node>
                    <node concept="2OqwBi" id="6g9f21tCpZe" role="3tpDZA">
                      <node concept="37vLTw" id="6g9f21tCpZf" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6g9f21tCpZg" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                        <node concept="1bVj0M" id="6g9f21tCpZh" role="37wK5m">
                          <node concept="3clFbS" id="6g9f21tCpZi" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tCpZj" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tCpZm" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tCpZn" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                </node>
                                <node concept="3TrcHB" id="6g9f21tCpZo" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tFLbR" role="3cqZAp" />
                  <node concept="3cpWs8" id="6g9f21tGeVh" role="3cqZAp">
                    <node concept="3cpWsn" id="6g9f21tGeVi" role="3cpWs9">
                      <property role="TrG5h" value="newChild" />
                      <node concept="3Tqbb2" id="6g9f21tGeKN" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:fz12cDC" resolve="FieldDeclaration" />
                      </node>
                      <node concept="2c44tf" id="6g9f21tGeVj" role="33vP2m">
                        <node concept="312cEg" id="6g9f21tGeVk" role="2c44tc">
                          <property role="TrG5h" value="abc" />
                          <node concept="3Tm6S6" id="6g9f21tGeVl" role="1B3o_S" />
                          <node concept="10Q1$e" id="6g9f21tGeVm" role="1tU5fm">
                            <node concept="10Oyi0" id="6g9f21tI2mZ" role="10Q1$1" />
                          </node>
                          <node concept="2ShNRf" id="6g9f21tGeVo" role="33vP2m">
                            <node concept="3g6Rrh" id="6g9f21tGeVp" role="2ShVmc">
                              <node concept="3cpWs3" id="6g9f21tI72E" role="3g7hyw">
                                <node concept="3cmrfG" id="6g9f21tI72H" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="3cmrfG" id="6g9f21tI5C0" role="3uHU7B">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                              <node concept="10Oyi0" id="6g9f21tI40E" role="3g7fb8" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6g9f21tHuME" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tHuMF" role="3clFbG">
                      <node concept="2OqwBi" id="6g9f21tHuMG" role="2Oq$k0">
                        <node concept="37vLTw" id="6g9f21tHuMH" role="2Oq$k0">
                          <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                        </node>
                        <node concept="liA8E" id="6g9f21tHuMI" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6g9f21tHuMJ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                        <node concept="1bVj0M" id="6g9f21tHuMK" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="6g9f21tHuML" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tFQUl" role="3cqZAp">
                              <node concept="2YIFZM" id="6g9f21tFRX1" role="3clFbG">
                                <ref role="37wK5l" to="xxte:6IHVO0th1QC" resolve="copyTo" />
                                <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                                <node concept="37vLTw" id="6g9f21tGeVt" role="37wK5m">
                                  <ref role="3cqZAo" node="6g9f21tGeVi" resolve="newChild" />
                                </node>
                                <node concept="37vLTw" id="6g9f21tG5FO" role="37wK5m">
                                  <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                                </node>
                                <node concept="359W_D" id="6g9f21tG7is" role="37wK5m">
                                  <ref role="359W_E" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  <ref role="359W_F" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                </node>
                                <node concept="3cmrfG" id="6g9f21tGa_p" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6g9f21tL_By" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tL_Bs" role="3clFbG">
                                <node concept="2WthIp" id="6g9f21tL_Bv" role="2Oq$k0" />
                                <node concept="2XshWL" id="6g9f21tL_Bx" role="2OqNvi">
                                  <ref role="2WH_rO" node="6g9f21tLl92" resolve="diffNodes" />
                                  <node concept="37vLTw" id="6g9f21tLB4l" role="2XxRq1">
                                    <ref role="3cqZAo" node="6g9f21tGeVi" resolve="newChild" />
                                  </node>
                                  <node concept="2OqwBi" id="6g9f21tLJMK" role="2XxRq1">
                                    <node concept="2OqwBi" id="6g9f21tLF8S" role="2Oq$k0">
                                      <node concept="37vLTw" id="6g9f21tLDiF" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6g9f21tyE1h" resolve="serverSideTestNode" />
                                      </node>
                                      <node concept="3Tsc0h" id="6g9f21tLGTX" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                      </node>
                                    </node>
                                    <node concept="1uHKPH" id="6g9f21tLNM_" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6g9f21tGiVk" role="3cqZAp" />
                  <node concept="3clFbF" id="6g9f21tGjS9" role="3cqZAp">
                    <node concept="2OqwBi" id="6g9f21tGl2$" role="3clFbG">
                      <node concept="2WthIp" id="6g9f21tGjS7" role="2Oq$k0" />
                      <node concept="2XshWL" id="6g9f21tGlLn" role="2OqNvi">
                        <ref role="2WH_rO" node="6g9f21tyLGC" resolve="sleepUntil" />
                        <node concept="3cmrfG" id="6g9f21tGmND" role="2XxRq1">
                          <property role="3cmrfH" value="3000" />
                        </node>
                        <node concept="1bVj0M" id="6g9f21tGoLP" role="2XxRq1">
                          <node concept="3clFbS" id="6g9f21tGoLR" role="1bW5cS">
                            <node concept="3clFbF" id="6g9f21tGpO$" role="3cqZAp">
                              <node concept="2OqwBi" id="6g9f21tGqA6" role="3clFbG">
                                <node concept="37vLTw" id="6g9f21tGpOz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                                </node>
                                <node concept="liA8E" id="6g9f21tGrHx" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                                  <node concept="1bVj0M" id="6g9f21tGsou" role="37wK5m">
                                    <node concept="3clFbS" id="6g9f21tGsov" role="1bW5cS">
                                      <node concept="3clFbF" id="6g9f21tGtck" role="3cqZAp">
                                        <node concept="3clFbC" id="6g9f21tGIm2" role="3clFbG">
                                          <node concept="3cmrfG" id="6g9f21tGJgc" role="3uHU7w">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                          <node concept="2OqwBi" id="6g9f21tGzE_" role="3uHU7B">
                                            <node concept="2OqwBi" id="6g9f21tGuLQ" role="2Oq$k0">
                                              <node concept="37vLTw" id="6g9f21tGtcj" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                              </node>
                                              <node concept="3Tsc0h" id="6g9f21tGwyy" role="2OqNvi">
                                                <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                              </node>
                                            </node>
                                            <node concept="34oBXx" id="6g9f21tGCAv" role="2OqNvi" />
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
                  <node concept="3clFbH" id="6g9f21tGKwP" role="3cqZAp" />
                  <node concept="1QHqEK" id="6g9f21tHNgv" role="3cqZAp">
                    <node concept="1QHqEC" id="6g9f21tHNgx" role="1QHqEI">
                      <node concept="3clFbS" id="6g9f21tHNgz" role="1bW5cS">
                        <node concept="3clFbF" id="6g9f21tGMUi" role="3cqZAp">
                          <node concept="2OqwBi" id="6g9f21tGNEW" role="3clFbG">
                            <node concept="37vLTw" id="6g9f21tGMUg" role="2Oq$k0">
                              <ref role="3cqZAo" node="6g9f21tzM0v" resolve="client" />
                            </node>
                            <node concept="liA8E" id="6g9f21tGPmy" role="2OqNvi">
                              <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                              <node concept="1bVj0M" id="6g9f21tGQ4c" role="37wK5m">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="6g9f21tGQ4d" role="1bW5cS">
                                  <node concept="3clFbF" id="6g9f21tLqNF" role="3cqZAp">
                                    <node concept="2OqwBi" id="6g9f21tLqN_" role="3clFbG">
                                      <node concept="2WthIp" id="6g9f21tLqNC" role="2Oq$k0" />
                                      <node concept="2XshWL" id="6g9f21tLqNE" role="2OqNvi">
                                        <ref role="2WH_rO" node="6g9f21tLl92" resolve="diffNodes" />
                                        <node concept="37vLTw" id="6g9f21tLsp7" role="2XxRq1">
                                          <ref role="3cqZAo" node="6g9f21tGeVi" resolve="newChild" />
                                        </node>
                                        <node concept="2OqwBi" id="6g9f21tLvaB" role="2XxRq1">
                                          <node concept="2OqwBi" id="6g9f21tLvaC" role="2Oq$k0">
                                            <node concept="37vLTw" id="6g9f21tLvaD" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6g9f21tAkXy" resolve="clientSideTestNode" />
                                            </node>
                                            <node concept="3Tsc0h" id="6g9f21tLvaE" role="2OqNvi">
                                              <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                            </node>
                                          </node>
                                          <node concept="1uHKPH" id="6g9f21tLvaF" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="6g9f21tHfkw" role="3cqZAp">
                                    <node concept="10M0yZ" id="6g9f21tHi6Q" role="3cqZAk">
                                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6g9f21tHOPm" role="ukAjM">
                      <ref role="3cqZAo" node="6g9f21tzM0z" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0EjCn" id="6NfzCv2pH34" role="0EEgL">
      <node concept="3clFbS" id="6NfzCv2pH35" role="2VODD2">
        <node concept="3clFbF" id="6NfzCv2pYv0" role="3cqZAp">
          <node concept="2OqwBi" id="6NfzCv2pYv1" role="3clFbG">
            <node concept="10M0yZ" id="6NfzCv2pYv2" role="2Oq$k0">
              <ref role="3cqZAo" to="55oz:~LightClientReferenceSerializer.INSTANCE" resolve="INSTANCE" />
              <ref role="1PxDUh" to="55oz:~LightClientReferenceSerializer" resolve="LightClientReferenceSerializer" />
            </node>
            <node concept="liA8E" id="6NfzCv2pYv3" role="2OqNvi">
              <ref role="37wK5l" to="55oz:~LightClientReferenceSerializer.register()" resolve="register" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0EjCo" id="6NfzCv2pHaB" role="0EEgW">
      <node concept="3clFbS" id="6NfzCv2pHaC" role="2VODD2">
        <node concept="3clFbF" id="6NfzCv2pY2a" role="3cqZAp">
          <node concept="2OqwBi" id="6NfzCv2pYiB" role="3clFbG">
            <node concept="10M0yZ" id="6NfzCv2pYa0" role="2Oq$k0">
              <ref role="3cqZAo" to="55oz:~LightClientReferenceSerializer.INSTANCE" resolve="INSTANCE" />
              <ref role="1PxDUh" to="55oz:~LightClientReferenceSerializer" resolve="LightClientReferenceSerializer" />
            </node>
            <node concept="liA8E" id="6NfzCv2pYt7" role="2OqNvi">
              <ref role="37wK5l" to="55oz:~LightClientReferenceSerializer.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6NfzCv2pIvF" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

