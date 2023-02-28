<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ed933f2a-9389-47a5-8273-a3a47a69bf36(test.org.modelix.model.server.mpsplugin@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="0a7577d1-d4e5-431d-98b1-fae38f9aee80" name="org.modelix.model.repositoryconcepts" version="0" />
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
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="2XOHcx" id="3Y5tAPngcIq">
    <property role="2XOHcw" value="${modelix.home}/mps" />
  </node>
  <node concept="1lH9Xt" id="3Y5tAPngcJB">
    <property role="TrG5h" value="LightModelServerTest" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="3Y5tAPngcKU" role="1SL9yI">
      <property role="TrG5h" value="read1module" />
      <node concept="3cqZAl" id="3Y5tAPngcKV" role="3clF45" />
      <node concept="3clFbS" id="3Y5tAPngcKZ" role="3clF47">
        <node concept="3SKdUt" id="6p0ytdGbVl2" role="3cqZAp">
          <node concept="1PaTwC" id="6p0ytdGbVl3" role="1aUNEU">
            <node concept="3oM_SD" id="6p0ytdGbVl4" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVJI" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVK5" role="1PaTwD">
              <property role="3oM_SC" value="block" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVKL" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVLa" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVMJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVNa" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVNi" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6p0ytdGbVNr" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="6p0ytdGbUat" role="3cqZAp">
          <node concept="2YIFZM" id="6p0ytdGbTs2" role="3vFALc">
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
          </node>
        </node>
        <node concept="3clFbH" id="6p0ytdGbNWS" role="3cqZAp" />
        <node concept="3cpWs8" id="3Y5tAPnhMvH" role="3cqZAp">
          <node concept="3cpWsn" id="3Y5tAPnhMvI" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="3Y5tAPnhKgS" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6NfzCv2o4GE" role="33vP2m">
              <node concept="1jxXqW" id="6NfzCv2o4q7" role="2Oq$k0" />
              <node concept="liA8E" id="6NfzCv2o5Oh" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Y5tAPnkHZx" role="3cqZAp" />
        <node concept="3cpWs8" id="3Y5tAPnkIux" role="3cqZAp">
          <node concept="3cpWsn" id="3Y5tAPnkIu$" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="3Y5tAPnkIuv" role="1tU5fm" />
            <node concept="3cpWs3" id="3Y5tAPnkKtq" role="33vP2m">
              <node concept="3cmrfG" id="3Y5tAPnkKtt" role="3uHU7w">
                <property role="3cmrfH" value="49000" />
              </node>
              <node concept="2OqwBi" id="3Y5tAPnkJ$r" role="3uHU7B">
                <node concept="2ShNRf" id="3Y5tAPnkINJ" role="2Oq$k0">
                  <node concept="1pGfFk" id="3Y5tAPnkJqr" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;()" resolve="Random" />
                  </node>
                </node>
                <node concept="liA8E" id="3Y5tAPnkJJ9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                  <node concept="3cmrfG" id="3Y5tAPnkJJ_" role="37wK5m">
                    <property role="3cmrfH" value="1000" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Y5tAPnkwZ5" role="3cqZAp">
          <node concept="3cpWsn" id="3Y5tAPnkwZ6" role="3cpWs9">
            <property role="TrG5h" value="server" />
            <node concept="3uibUv" id="3Y5tAPnkwZ7" role="1tU5fm">
              <ref role="3uigEE" to="4sv4:3Y5tAPnfjvI" resolve="MPSLightModelServer" />
            </node>
            <node concept="2ShNRf" id="3Y5tAPnkxhS" role="33vP2m">
              <node concept="1pGfFk" id="3Y5tAPnkxhR" role="2ShVmc">
                <ref role="37wK5l" to="4sv4:3Y5tAPnfl5U" resolve="MPSLightModelServer" />
                <node concept="37vLTw" id="3Y5tAPnkxiw" role="37wK5m">
                  <ref role="3cqZAo" node="3Y5tAPnhMvI" resolve="repository" />
                </node>
                <node concept="37vLTw" id="3Y5tAPnkKu_" role="37wK5m">
                  <ref role="3cqZAo" node="3Y5tAPnkIu$" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3Y5tAPnkOE_" role="3cqZAp">
          <node concept="3clFbS" id="3Y5tAPnkOEB" role="1zxBo7">
            <node concept="3clFbF" id="3Y5tAPnkP_j" role="3cqZAp">
              <node concept="2OqwBi" id="3Y5tAPnkPES" role="3clFbG">
                <node concept="37vLTw" id="3Y5tAPnkP_h" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Y5tAPnkwZ6" resolve="server" />
                </node>
                <node concept="liA8E" id="3Y5tAPnkPLn" role="2OqNvi">
                  <ref role="37wK5l" to="4sv4:3Y5tAPnfyMg" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="3Y5tAPnl_6N" role="3cqZAp">
              <node concept="3clFbS" id="3Y5tAPnl_6O" role="1zxBo7">
                <node concept="3clFbF" id="3Y5tAPnl_6P" role="3cqZAp">
                  <node concept="2YIFZM" id="3Y5tAPnl_6Q" role="3clFbG">
                    <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                    <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                    <node concept="3cmrfG" id="3Y5tAPnl_6R" role="37wK5m">
                      <property role="3cmrfH" value="1000" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="3Y5tAPnl_6S" role="1zxBo5">
                <node concept="3clFbS" id="3Y5tAPnl_6T" role="1zc67A" />
                <node concept="XOnhg" id="3Y5tAPnl_6U" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="3Y5tAPnl_6V" role="1tU5fm">
                    <node concept="3uibUv" id="3Y5tAPnl_6W" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3Y5tAPnl$$O" role="3cqZAp" />
            <node concept="3clFbF" id="6p0ytdG9NMu" role="3cqZAp">
              <node concept="2OqwBi" id="6p0ytdG9NMr" role="3clFbG">
                <node concept="10M0yZ" id="6p0ytdG9NMs" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="6p0ytdG9NMt" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="6p0ytdG9Oe6" role="37wK5m">
                    <property role="Xl_RC" value="Starting client" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3Y5tAPnhx5e" role="3cqZAp">
              <node concept="3cpWsn" id="3Y5tAPnhx5f" role="3cpWs9">
                <property role="TrG5h" value="client" />
                <node concept="3uibUv" id="3Y5tAPnhx3G" role="1tU5fm">
                  <ref role="3uigEE" to="55oz:~LightModelClient" resolve="LightModelClient" />
                </node>
                <node concept="2OqwBi" id="3Y5tAPnj1H1" role="33vP2m">
                  <node concept="2OqwBi" id="3Y5tAPnkK$z" role="2Oq$k0">
                    <node concept="2YIFZM" id="3Y5tAPnj1vd" role="2Oq$k0">
                      <ref role="37wK5l" to="55oz:~LightModelClientJVM.builder()" resolve="builder" />
                      <ref role="1Pybhc" to="55oz:~LightModelClientJVM" resolve="LightModelClientJVM" />
                    </node>
                    <node concept="liA8E" id="3Y5tAPnkKJ2" role="2OqNvi">
                      <ref role="37wK5l" to="55oz:~LightModelClientBuilder.port(int)" resolve="port" />
                      <node concept="37vLTw" id="3Y5tAPnkKMf" role="37wK5m">
                        <ref role="3cqZAo" node="3Y5tAPnkIu$" resolve="port" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3Y5tAPnj1Rn" role="2OqNvi">
                    <ref role="37wK5l" to="55oz:~LightModelClientBuilder.build()" resolve="build" />
                  </node>
                </node>
              </node>
            </node>
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
                  <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                </node>
                <node concept="liA8E" id="3Y5tAPnhxrt" role="2OqNvi">
                  <ref role="37wK5l" to="55oz:~LightModelClient.changeQuery(org.modelix.model.server.api.ModelQuery)" resolve="changeQuery" />
                  <node concept="37vLTw" id="3Y5tAPnhy5Q" role="37wK5m">
                    <ref role="3cqZAo" node="3Y5tAPnhy5K" resolve="query" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3Y5tAPnhFQU" role="3cqZAp" />
            <node concept="1Dw8fO" id="6p0ytdGavv6" role="3cqZAp">
              <node concept="3clFbS" id="6p0ytdGavv8" role="2LFqv$">
                <node concept="3cpWs8" id="6p0ytdGaHqf" role="3cqZAp">
                  <node concept="3cpWsn" id="6p0ytdGaHqg" role="3cpWs9">
                    <property role="TrG5h" value="rootNodeLoaded" />
                    <node concept="10P_77" id="6p0ytdGaHm7" role="1tU5fm" />
                    <node concept="2OqwBi" id="6p0ytdGaHqh" role="33vP2m">
                      <node concept="37vLTw" id="6p0ytdGaHqi" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                      </node>
                      <node concept="liA8E" id="6p0ytdGaHqj" role="2OqNvi">
                        <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                        <node concept="1bVj0M" id="6p0ytdGaHqk" role="37wK5m">
                          <node concept="3clFbS" id="6p0ytdGaHql" role="1bW5cS">
                            <node concept="3cpWs8" id="6p0ytdGaHqm" role="3cqZAp">
                              <node concept="3cpWsn" id="6p0ytdGaHqn" role="3cpWs9">
                                <property role="TrG5h" value="rootNode" />
                                <node concept="3uibUv" id="6p0ytdGaHqo" role="1tU5fm">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                                <node concept="2OqwBi" id="6p0ytdGaHqp" role="33vP2m">
                                  <node concept="37vLTw" id="6p0ytdGaHqq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                                  </node>
                                  <node concept="liA8E" id="6p0ytdGaHqr" role="2OqNvi">
                                    <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6p0ytdGaHqs" role="3cqZAp">
                              <node concept="1Wc70l" id="6p0ytdGaHqt" role="3clFbG">
                                <node concept="2OqwBi" id="6p0ytdGaHqu" role="3uHU7w">
                                  <node concept="37vLTw" id="6p0ytdGaHqv" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6p0ytdGaHqn" resolve="rootNode" />
                                  </node>
                                  <node concept="liA8E" id="6p0ytdGaHqw" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                  </node>
                                </node>
                                <node concept="3y3z36" id="6p0ytdGaHqx" role="3uHU7B">
                                  <node concept="37vLTw" id="6p0ytdGaHqy" role="3uHU7B">
                                    <ref role="3cqZAo" node="6p0ytdGaHqn" resolve="rootNode" />
                                  </node>
                                  <node concept="10Nm6u" id="6p0ytdGaHqz" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6p0ytdGayiK" role="3cqZAp">
                  <node concept="3clFbS" id="6p0ytdGayiM" role="3clFbx">
                    <node concept="3zACq4" id="6p0ytdGa$cv" role="3cqZAp" />
                  </node>
                  <node concept="37vLTw" id="6p0ytdGaHJJ" role="3clFbw">
                    <ref role="3cqZAo" node="6p0ytdGaHqg" resolve="rootNodeLoaded" />
                  </node>
                </node>
                <node concept="3J1_TO" id="3Y5tAPnhI2K" role="3cqZAp">
                  <node concept="3clFbS" id="3Y5tAPnhI2L" role="1zxBo7">
                    <node concept="3clFbF" id="3Y5tAPnhHhe" role="3cqZAp">
                      <node concept="2YIFZM" id="3Y5tAPnhHt2" role="3clFbG">
                        <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                        <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                        <node concept="3cmrfG" id="3Y5tAPnhHzG" role="37wK5m">
                          <property role="3cmrfH" value="100" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="3Y5tAPnhI2N" role="1zxBo5">
                    <node concept="3clFbS" id="3Y5tAPnhI2O" role="1zc67A" />
                    <node concept="XOnhg" id="3Y5tAPnhI2P" role="1zc67B">
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="3Y5tAPnhI2Q" role="1tU5fm">
                        <node concept="3uibUv" id="3Y5tAPnhI2M" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6p0ytdGavv9" role="1Duv9x">
                <property role="TrG5h" value="timeout" />
                <node concept="10Oyi0" id="6p0ytdGaw00" role="1tU5fm" />
                <node concept="3cmrfG" id="6p0ytdGaw2K" role="33vP2m">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
              <node concept="3eOSWO" id="6p0ytdGawT2" role="1Dwp0S">
                <node concept="3cmrfG" id="6p0ytdGawT5" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="6p0ytdGaw3P" role="3uHU7B">
                  <ref role="3cqZAo" node="6p0ytdGavv9" resolve="timeout" />
                </node>
              </node>
              <node concept="3uO5VW" id="6p0ytdGaxFP" role="1Dwrff">
                <node concept="37vLTw" id="6p0ytdGaxFR" role="2$L3a6">
                  <ref role="3cqZAo" node="6p0ytdGavv9" resolve="timeout" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3Y5tAPnhImO" role="3cqZAp" />
            <node concept="3clFbF" id="3Y5tAPnhI$q" role="3cqZAp">
              <node concept="2OqwBi" id="3Y5tAPnhIPP" role="3clFbG">
                <node concept="37vLTw" id="3Y5tAPnhI$o" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                </node>
                <node concept="liA8E" id="3Y5tAPnhJ50" role="2OqNvi">
                  <ref role="37wK5l" to="55oz:~LightModelClient.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                  <node concept="1bVj0M" id="3Y5tAPnhJ5w" role="37wK5m">
                    <node concept="3clFbS" id="3Y5tAPnhJ5x" role="1bW5cS">
                      <node concept="3vwNmj" id="6NfzCv2pxdY" role="3cqZAp">
                        <node concept="2OqwBi" id="6NfzCv2pxoy" role="3vwVQn">
                          <node concept="37vLTw" id="6NfzCv2pxgY" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                          </node>
                          <node concept="liA8E" id="6NfzCv2pxyu" role="2OqNvi">
                            <ref role="37wK5l" to="55oz:~LightModelClient.isInitialized()" resolve="isInitialized" />
                          </node>
                        </node>
                      </node>
                      <node concept="3vwNmj" id="6NfzCv2pxE1" role="3cqZAp">
                        <node concept="2OqwBi" id="6NfzCv2pxOZ" role="3vwVQn">
                          <node concept="37vLTw" id="6NfzCv2pxHf" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
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
                                  <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
                                </node>
                                <node concept="liA8E" id="3Y5tAPnhQiD" role="2OqNvi">
                                  <ref role="37wK5l" to="55oz:~LightModelClient.getRootNode()" resolve="getRootNode" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3Y5tAPnhQiE" role="37wK5m">
                                <ref role="3cqZAo" node="3Y5tAPnhMvI" resolve="repository" />
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
                                <ref role="3cqZAo" node="3Y5tAPnhx5f" resolve="client" />
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
                                            <ref role="3cqZAo" node="3Y5tAPnhMvI" resolve="repository" />
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
            <node concept="3clFbH" id="3Y5tAPnkPMl" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="3Y5tAPnkPii" role="1zxBo6">
            <node concept="3clFbS" id="3Y5tAPnkPij" role="1wplMD">
              <node concept="3clFbF" id="3Y5tAPnkPnl" role="3cqZAp">
                <node concept="2OqwBi" id="3Y5tAPnkPsU" role="3clFbG">
                  <node concept="37vLTw" id="3Y5tAPnkPnj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Y5tAPnkwZ6" resolve="server" />
                  </node>
                  <node concept="liA8E" id="3Y5tAPnkP$H" role="2OqNvi">
                    <ref role="37wK5l" to="4sv4:3Y5tAPnf_nH" resolve="stop" />
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

