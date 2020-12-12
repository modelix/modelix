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
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
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
    <node concept="2YIFZL" id="6Jg9HT9UXWv" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="6Jg9HT9UXWy" role="3clF47">
        <node concept="3cpWs8" id="6Jg9HT9UY20" role="3cqZAp">
          <node concept="3cpWsn" id="6Jg9HT9UY21" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="6Jg9HT9UY22" role="1tU5fm" />
            <node concept="3cmrfG" id="6Jg9HT9UY23" role="33vP2m">
              <property role="3cmrfH" value="3388" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Jg9HT9UY24" role="3cqZAp">
          <node concept="3cpWsn" id="6Jg9HT9UY25" role="3cpWs9">
            <property role="TrG5h" value="mpsServerPortStr" />
            <node concept="17QB3L" id="6Jg9HT9UY26" role="1tU5fm" />
            <node concept="2YIFZM" id="6Jg9HT9UY27" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="Xl_RD" id="6Jg9HT9UY28" role="37wK5m">
                <property role="Xl_RC" value="MODELIX_PORT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Jg9HT9UY29" role="3cqZAp">
          <node concept="3clFbS" id="6Jg9HT9UY2a" role="3clFbx">
            <node concept="3clFbF" id="6Jg9HT9UY2b" role="3cqZAp">
              <node concept="37vLTI" id="6Jg9HT9UY2c" role="3clFbG">
                <node concept="2YIFZM" id="6Jg9HT9UY2d" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <node concept="37vLTw" id="6Jg9HT9UY2e" role="37wK5m">
                    <ref role="3cqZAo" node="6Jg9HT9UY25" resolve="mpsServerPortStr" />
                  </node>
                </node>
                <node concept="37vLTw" id="6Jg9HT9UY2f" role="37vLTJ">
                  <ref role="3cqZAo" node="6Jg9HT9UY21" resolve="port" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="6Jg9HT9UY2g" role="3cqZAp">
              <node concept="Xl_RD" id="6Jg9HT9UY2h" role="abp_N">
                <property role="Xl_RC" value="USING MODELIX PORT: " />
              </node>
              <node concept="37vLTw" id="6Jg9HT9UY2i" role="abp_N">
                <ref role="3cqZAo" node="6Jg9HT9UY21" resolve="port" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6Jg9HT9UY2j" role="3clFbw">
            <node concept="3y3z36" id="6Jg9HT9UY2k" role="3uHU7B">
              <node concept="37vLTw" id="6Jg9HT9UY2l" role="3uHU7B">
                <ref role="3cqZAo" node="6Jg9HT9UY25" resolve="mpsServerPortStr" />
              </node>
              <node concept="10Nm6u" id="6Jg9HT9UY2m" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="6Jg9HT9UY2n" role="3uHU7w">
              <node concept="2OqwBi" id="6Jg9HT9UY2o" role="3fr31v">
                <node concept="37vLTw" id="6Jg9HT9UY2p" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Jg9HT9UY25" resolve="mpsServerPortStr" />
                </node>
                <node concept="liA8E" id="6Jg9HT9UY2q" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isBlank()" resolve="isBlank" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6Jg9HT9UY2r" role="9aQIa">
            <node concept="3clFbS" id="6Jg9HT9UY2s" role="9aQI4">
              <node concept="abc8K" id="6Jg9HT9UY2t" role="3cqZAp">
                <node concept="Xl_RD" id="6Jg9HT9UY2u" role="abp_N">
                  <property role="Xl_RC" value="USING DEFAULT MODELIX PORT: " />
                </node>
                <node concept="37vLTw" id="6Jg9HT9UY2v" role="abp_N">
                  <ref role="3cqZAo" node="6Jg9HT9UY21" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Jg9HT9UYa2" role="3cqZAp">
          <node concept="37vLTw" id="6Jg9HT9UYcw" role="3cqZAk">
            <ref role="3cqZAo" node="6Jg9HT9UY21" resolve="port" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6Jg9HT9UXRi" role="1B3o_S" />
      <node concept="10Oyi0" id="6Jg9HT9UY1j" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6Jg9HT9UYvV" role="jymVt" />
    <node concept="1X3_iC" id="5yNJPA6tfAE" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="2YIFZL" id="6Jg9HT9UZqS" role="8Wnug">
        <property role="TrG5h" value="getProjectFile" />
        <node concept="3clFbS" id="6Jg9HT9UZqU" role="3clF47">
          <node concept="3clFbF" id="6Jg9HT9UZqV" role="3cqZAp">
            <node concept="1rXfSq" id="6Jg9HT9UZqW" role="3clFbG">
              <ref role="37wK5l" node="6Jg9HT9UXq2" resolve="considerExtraLogging" />
            </node>
          </node>
          <node concept="3cpWs8" id="6Jg9HT9UZqX" role="3cqZAp">
            <node concept="3cpWsn" id="6Jg9HT9UZqY" role="3cpWs9">
              <property role="TrG5h" value="projectFilePath" />
              <node concept="17QB3L" id="6Jg9HT9UZqZ" role="1tU5fm" />
              <node concept="2YIFZM" id="6Jg9HT9UZr0" role="33vP2m">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                <node concept="Xl_RD" id="6Jg9HT9UZr1" role="37wK5m">
                  <property role="Xl_RC" value="MODELIX_PROJECT_FILE_PATH" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6Jg9HT9UZr2" role="3cqZAp">
            <node concept="3clFbS" id="6Jg9HT9UZr3" role="3clFbx">
              <node concept="abc8K" id="2OkDVTXjstc" role="3cqZAp">
                <node concept="Xl_RD" id="2OkDVTXjswW" role="abp_N">
                  <property role="Xl_RC" value="NO PROJECT SPECIFIED, DEFAULTING TO CURRENT DIRECTORY" />
                </node>
              </node>
              <node concept="3clFbF" id="6Jg9HT9UZr4" role="3cqZAp">
                <node concept="37vLTI" id="6Jg9HT9UZr5" role="3clFbG">
                  <node concept="Xl_RD" id="6Jg9HT9UZr6" role="37vLTx">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="6Jg9HT9UZr7" role="37vLTJ">
                    <ref role="3cqZAo" node="6Jg9HT9UZqY" resolve="projectFilePath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6Jg9HT9UZr8" role="3clFbw">
              <node concept="10Nm6u" id="6Jg9HT9UZr9" role="3uHU7w" />
              <node concept="37vLTw" id="6Jg9HT9UZra" role="3uHU7B">
                <ref role="3cqZAo" node="6Jg9HT9UZqY" resolve="projectFilePath" />
              </node>
            </node>
            <node concept="9aQIb" id="2OkDVTXjsCY" role="9aQIa">
              <node concept="3clFbS" id="2OkDVTXjsCZ" role="9aQI4">
                <node concept="abc8K" id="2OkDVTXjsH6" role="3cqZAp">
                  <node concept="Xl_RD" id="2OkDVTXjsH7" role="abp_N">
                    <property role="Xl_RC" value="PROJECT SPECIFIED: " />
                  </node>
                  <node concept="37vLTw" id="2OkDVTXjsOI" role="abp_N">
                    <ref role="3cqZAo" node="6Jg9HT9UZqY" resolve="projectFilePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6Jg9HT9UZrb" role="3cqZAp" />
          <node concept="3cpWs8" id="6Jg9HT9UZrc" role="3cqZAp">
            <node concept="3cpWsn" id="6Jg9HT9UZrd" role="3cpWs9">
              <property role="TrG5h" value="projectFile" />
              <node concept="3uibUv" id="6Jg9HT9UZre" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
              <node concept="2OqwBi" id="6Jg9HT9UZrf" role="33vP2m">
                <node concept="2ShNRf" id="6Jg9HT9UZrg" role="2Oq$k0">
                  <node concept="1pGfFk" id="6Jg9HT9UZrh" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="6Jg9HT9UZri" role="37wK5m">
                      <ref role="3cqZAo" node="6Jg9HT9UZqY" resolve="projectFilePath" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6Jg9HT9UZrj" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsoluteFile()" resolve="getAbsoluteFile" />
                </node>
              </node>
            </node>
          </node>
          <node concept="abc8K" id="6Jg9HT9UZrk" role="3cqZAp">
            <node concept="Xl_RD" id="6Jg9HT9UZrl" role="abp_N">
              <property role="Xl_RC" value="Project file " />
            </node>
            <node concept="37vLTw" id="6Jg9HT9UZrm" role="abp_N">
              <ref role="3cqZAo" node="6Jg9HT9UZrd" resolve="projectFile" />
            </node>
          </node>
          <node concept="3clFbH" id="6Jg9HT9UZrn" role="3cqZAp" />
          <node concept="3cpWs6" id="6Jg9HT9UZro" role="3cqZAp">
            <node concept="37vLTw" id="6Jg9HT9UZrp" role="3cqZAk">
              <ref role="3cqZAo" node="6Jg9HT9UZrd" resolve="projectFile" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="6Jg9HT9UZrr" role="3clF45">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="3Tm6S6" id="6Jg9HT9UZrq" role="1B3o_S" />
      </node>
    </node>
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
        <node concept="3SKdUt" id="5yNJPA6teB5" role="3cqZAp">
          <node concept="1PaTwC" id="5yNJPA6teB6" role="1aUNEU">
            <node concept="3oM_SD" id="5yNJPA6teB7" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teEz" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teEA" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teEM" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teER" role="1PaTwD">
              <property role="3oM_SC" value="opened" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teEX" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teF4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teFc" role="1PaTwD">
              <property role="3oM_SC" value="test," />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teF_" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teFJ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teFU" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teG6" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5yNJPA6teK2" role="3cqZAp">
          <node concept="1PaTwC" id="5yNJPA6teK3" role="1aUNEU">
            <node concept="3oM_SD" id="5yNJPA6teNT" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teO3" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teO6" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="5yNJPA6teOi" role="1PaTwD">
              <property role="3oM_SC" value="projects" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5yNJPA6tfI0" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4o9fmPfXSBc" role="8Wnug">
            <node concept="3cpWsn" id="4o9fmPfXSBd" role="3cpWs9">
              <property role="TrG5h" value="projectFile" />
              <node concept="3uibUv" id="4o9fmPfXSBe" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
              <node concept="1rXfSq" id="6Jg9HT9UZzH" role="33vP2m">
                <ref role="37wK5l" node="6Jg9HT9UZqS" resolve="getProjectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5yNJPA6tfI1" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4o9fmPfXS7K" role="8Wnug">
            <node concept="3cpWsn" id="4o9fmPfXS7L" role="3cpWs9">
              <property role="TrG5h" value="project" />
              <node concept="3uibUv" id="4o9fmPfXS7M" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
              <node concept="2OqwBi" id="4o9fmPfXBzr" role="33vP2m">
                <node concept="37vLTw" id="4o9fmPfXB9T" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                </node>
                <node concept="liA8E" id="4o9fmPfXBCt" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:6rx4kZDjWg4" resolve="openProject" />
                  <node concept="37vLTw" id="4o9fmPfXSJt" role="37wK5m">
                    <ref role="3cqZAo" node="4o9fmPfXSBd" resolve="projectFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5yNJPA6tfI2" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="abc8K" id="4o9fmPfXT6u" role="8Wnug">
            <node concept="Xl_RD" id="4o9fmPfXTaK" role="abp_N">
              <property role="Xl_RC" value="Project " />
            </node>
            <node concept="37vLTw" id="4o9fmPfXTh5" role="abp_N">
              <ref role="3cqZAo" node="4o9fmPfXS7L" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5yNJPA6busQ" role="3cqZAp" />
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
                <node concept="2ShNRf" id="5yNJPA6buFb" role="HW$Y0">
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
        <node concept="abc8K" id="5yNJPA6tonD" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6toyO" role="abp_N">
            <property role="Xl_RC" value="" />
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
            <node concept="3clFbH" id="5yNJPA6tF6Z" role="3cqZAp" />
            <node concept="3SKdUt" id="5yNJPA6tFi6" role="3cqZAp">
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
            <node concept="3cpWs8" id="5yNJPA6tPJI" role="3cqZAp">
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
                    <node concept="3cmrfG" id="5yNJPA6tQeQ" role="37wK5m">
                      <property role="3cmrfH" value="4441" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5yNJPA6tQxT" role="3cqZAp">
              <node concept="2OqwBi" id="5yNJPA6tQGw" role="3clFbG">
                <node concept="37vLTw" id="5yNJPA6tQxR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tPJJ" resolve="ms" />
                </node>
                <node concept="liA8E" id="5yNJPA6tQOx" role="2OqNvi">
                  <ref role="37wK5l" node="5yNJPA6tDNi" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5yNJPA6tPrj" role="3cqZAp" />
            <node concept="3SKdUt" id="5yNJPA6tFCL" role="3cqZAp">
              <node concept="1PaTwC" id="5yNJPA6tFCM" role="1aUNEU">
                <node concept="3oM_SD" id="5yNJPA6tFCN" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="5yNJPA6tFM2" role="1PaTwD">
                  <property role="3oM_SC" value="CloudRepository" />
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
            <node concept="3SKdUt" id="5yNJPA6tGJh" role="3cqZAp">
              <node concept="1PaTwC" id="5yNJPA6tGJi" role="1aUNEU">
                <node concept="3oM_SD" id="5yNJPA6tGJj" role="1PaTwD">
                  <property role="3oM_SC" value="dump" />
                </node>
                <node concept="3oM_SD" id="5yNJPA6tGSF" role="1PaTwD">
                  <property role="3oM_SC" value="ModelixServer" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5yNJPA6tH7h" role="3cqZAp">
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
        </node>
        <node concept="3clFbH" id="5yNJPA6tt6M" role="3cqZAp" />
        <node concept="3cpWs6" id="5yNJPA6trFG" role="3cqZAp">
          <node concept="2YIFZM" id="5yNJPA6tshw" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
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
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
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
        <node concept="abc8K" id="5yNJPA6tB1L" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6tB7J" role="abp_N">
            <property role="Xl_RC" value="modelixRootDir " />
          </node>
          <node concept="37vLTw" id="5yNJPA6tBww" role="abp_N">
            <ref role="3cqZAo" node="5yNJPA6tpT5" resolve="modelixRootDir" />
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
        <node concept="abc8K" id="5yNJPA6tBDU" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6tBDV" role="abp_N">
            <property role="Xl_RC" value="projectDir " />
          </node>
          <node concept="37vLTw" id="5yNJPA6tBKh" role="abp_N">
            <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="projectDir" />
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
    <node concept="2tJIrI" id="5yNJPA6tjXN" role="jymVt" />
    <node concept="3Tm1VV" id="5yNJPA6tjxe" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5yNJPA6tDKp">
    <property role="TrG5h" value="ModelixServerController" />
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
    <node concept="312cEg" id="5yNJPA6tVUp" role="jymVt">
      <property role="TrG5h" value="process" />
      <node concept="3Tm6S6" id="5yNJPA6tVOz" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tVTN" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
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
            <node concept="abc8K" id="5yNJPA6tXrL" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tXCS" role="abp_N">
                <property role="Xl_RC" value="PATH TO JAR " />
              </node>
              <node concept="2OqwBi" id="5yNJPA6tY61" role="abp_N">
                <node concept="37vLTw" id="5yNJPA6tXTh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tHDR" resolve="pathToJar" />
                </node>
                <node concept="liA8E" id="5yNJPA6tYej" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5yNJPA6tW3r" role="3cqZAp">
              <node concept="37vLTI" id="5yNJPA6tW3t" role="3clFbG">
                <node concept="2OqwBi" id="5yNJPA6tRjx" role="37vLTx">
                  <node concept="2YIFZM" id="5yNJPA6tRfb" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
                    <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6tRm6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.exec(java.lang.String,java.lang.String[])" resolve="exec" />
                    <node concept="Xl_RD" id="5yNJPA6tRn1" role="37wK5m">
                      <property role="Xl_RC" value="java" />
                    </node>
                    <node concept="2ShNRf" id="5yNJPA6tTPt" role="37wK5m">
                      <node concept="3g6Rrh" id="5yNJPA6tUlG" role="2ShVmc">
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
                          <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                          <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
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
                <node concept="37vLTw" id="5yNJPA6tW3x" role="37vLTJ">
                  <ref role="3cqZAo" node="5yNJPA6tVUp" resolve="process" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5yNJPA6u57v" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6u57w" role="3cpWs9">
                <property role="TrG5h" value="ro" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5yNJPA6u632" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="5yNJPA6u5gW" role="33vP2m">
                  <node concept="1pGfFk" id="5yNJPA6u5ve" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="5yNJPA6u5xP" role="37wK5m">
                      <node concept="1pGfFk" id="5yNJPA6u5Ks" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="5yNJPA6u5U$" role="37wK5m">
                          <node concept="37vLTw" id="5yNJPA6u5NP" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yNJPA6tVUp" resolve="process" />
                          </node>
                          <node concept="liA8E" id="5yNJPA6u601" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Process.getInputStream()" resolve="getInputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5yNJPA6uaFE" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6uaFH" role="3cpWs9">
                <property role="TrG5h" value="re" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5yNJPA6uaFI" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="5yNJPA6uaFJ" role="33vP2m">
                  <node concept="1pGfFk" id="5yNJPA6uaFK" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="5yNJPA6uaFL" role="37wK5m">
                      <node concept="1pGfFk" id="5yNJPA6uaFM" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="5yNJPA6uaFN" role="37wK5m">
                          <node concept="37vLTw" id="5yNJPA6uaFO" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yNJPA6tVUp" resolve="process" />
                          </node>
                          <node concept="liA8E" id="5yNJPA6uaSZ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Process.getErrorStream()" resolve="getErrorStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5yNJPA6uatg" role="3cqZAp" />
            <node concept="3cpWs8" id="5yNJPA6u1eg" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6u1eh" role="3cpWs9">
                <property role="TrG5h" value="t1" />
                <node concept="3uibUv" id="5yNJPA6u1ei" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="2ShNRf" id="5yNJPA6u1j9" role="33vP2m">
                  <node concept="1pGfFk" id="5yNJPA6u1wZ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                    <node concept="2ShNRf" id="5yNJPA6u1zY" role="37wK5m">
                      <node concept="YeOm9" id="5yNJPA6u1Me" role="2ShVmc">
                        <node concept="1Y3b0j" id="5yNJPA6u1Mh" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="5yNJPA6u1Mi" role="1B3o_S" />
                          <node concept="3clFb_" id="5yNJPA6u1Mn" role="jymVt">
                            <property role="TrG5h" value="run" />
                            <node concept="3Tm1VV" id="5yNJPA6u1Mo" role="1B3o_S" />
                            <node concept="3cqZAl" id="5yNJPA6u1Mq" role="3clF45" />
                            <node concept="3clFbS" id="5yNJPA6u1Mr" role="3clF47">
                              <node concept="2$JKZl" id="5yNJPA6u2vk" role="3cqZAp">
                                <node concept="3clFbS" id="5yNJPA6u2vl" role="2LFqv$">
                                  <node concept="3J1_TO" id="5yNJPA6ufid" role="3cqZAp">
                                    <node concept="3uVAMA" id="5yNJPA6ufie" role="1zxBo5">
                                      <node concept="XOnhg" id="5yNJPA6ufif" role="1zc67B">
                                        <property role="TrG5h" value="e" />
                                        <node concept="nSUau" id="5yNJPA6ufig" role="1tU5fm">
                                          <node concept="3uibUv" id="5yNJPA6ufih" role="nSUat">
                                            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5yNJPA6ufii" role="1zc67A" />
                                    </node>
                                    <node concept="3uVAMA" id="5yNJPA6ufij" role="1zxBo5">
                                      <node concept="XOnhg" id="5yNJPA6ufik" role="1zc67B">
                                        <property role="TrG5h" value="e" />
                                        <node concept="nSUau" id="5yNJPA6ufil" role="1tU5fm">
                                          <node concept="3uibUv" id="5yNJPA6ufim" role="nSUat">
                                            <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5yNJPA6ufin" role="1zc67A" />
                                    </node>
                                    <node concept="3clFbS" id="5yNJPA6ufio" role="1zxBo7">
                                      <node concept="2$JKZl" id="5yNJPA6ufip" role="3cqZAp">
                                        <node concept="3clFbS" id="5yNJPA6ufiq" role="2LFqv$">
                                          <node concept="3cpWs8" id="5yNJPA6ufir" role="3cqZAp">
                                            <node concept="3cpWsn" id="5yNJPA6ufis" role="3cpWs9">
                                              <property role="TrG5h" value="line" />
                                              <node concept="17QB3L" id="5yNJPA6ufit" role="1tU5fm" />
                                              <node concept="2OqwBi" id="5yNJPA6ufiu" role="33vP2m">
                                                <node concept="37vLTw" id="5yNJPA6uf_k" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5yNJPA6u57w" resolve="ro" />
                                                </node>
                                                <node concept="liA8E" id="5yNJPA6ufiw" role="2OqNvi">
                                                  <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbJ" id="5yNJPA6ufix" role="3cqZAp">
                                            <node concept="3clFbS" id="5yNJPA6ufiy" role="3clFbx">
                                              <node concept="3clFbF" id="5yNJPA6ufiz" role="3cqZAp">
                                                <node concept="2YIFZM" id="5yNJPA6ufi$" role="3clFbG">
                                                  <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                                  <node concept="3cmrfG" id="5yNJPA6ufi_" role="37wK5m">
                                                    <property role="3cmrfH" value="100" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbC" id="5yNJPA6ufiA" role="3clFbw">
                                              <node concept="10Nm6u" id="5yNJPA6ufiB" role="3uHU7w" />
                                              <node concept="37vLTw" id="5yNJPA6ufiC" role="3uHU7B">
                                                <ref role="3cqZAo" node="5yNJPA6ufis" resolve="line" />
                                              </node>
                                            </node>
                                            <node concept="9aQIb" id="5yNJPA6ufiD" role="9aQIa">
                                              <node concept="3clFbS" id="5yNJPA6ufiE" role="9aQI4">
                                                <node concept="abc8K" id="5yNJPA6ufiF" role="3cqZAp">
                                                  <node concept="Xl_RD" id="5yNJPA6ufiG" role="abp_N">
                                                    <property role="Xl_RC" value="MS: " />
                                                  </node>
                                                  <node concept="37vLTw" id="5yNJPA6ufiH" role="abp_N">
                                                    <ref role="3cqZAo" node="5yNJPA6ufis" resolve="line" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbT" id="5yNJPA6ufiI" role="2$JKZa">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                      </node>
                                      <node concept="1X3_iC" id="5yNJPA6ufiJ" role="lGtFl">
                                        <property role="3V$3am" value="statement" />
                                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                        <node concept="3clFbF" id="5yNJPA6ufiK" role="8Wnug">
                                          <node concept="2YIFZM" id="5yNJPA6ufiL" role="3clFbG">
                                            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                            <node concept="3cmrfG" id="5yNJPA6ufiM" role="37wK5m">
                                              <property role="3cmrfH" value="100" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbT" id="5yNJPA6u2xd" role="2$JKZa">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="5yNJPA6u1Mt" role="2AJF6D">
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
            <node concept="3clFbF" id="5yNJPA6u26V" role="3cqZAp">
              <node concept="2OqwBi" id="5yNJPA6u2l8" role="3clFbG">
                <node concept="37vLTw" id="5yNJPA6u26T" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6u1eh" resolve="t1" />
                </node>
                <node concept="liA8E" id="5yNJPA6u2sO" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5yNJPA6ubfl" role="3cqZAp">
              <node concept="3cpWsn" id="5yNJPA6ubfm" role="3cpWs9">
                <property role="TrG5h" value="t2" />
                <node concept="3uibUv" id="5yNJPA6ubfn" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="2ShNRf" id="5yNJPA6ubfo" role="33vP2m">
                  <node concept="1pGfFk" id="5yNJPA6ubfp" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                    <node concept="2ShNRf" id="5yNJPA6ubfq" role="37wK5m">
                      <node concept="YeOm9" id="5yNJPA6ubfr" role="2ShVmc">
                        <node concept="1Y3b0j" id="5yNJPA6ubfs" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                          <node concept="3Tm1VV" id="5yNJPA6ubft" role="1B3o_S" />
                          <node concept="3clFb_" id="5yNJPA6ubfu" role="jymVt">
                            <property role="TrG5h" value="run" />
                            <node concept="3Tm1VV" id="5yNJPA6ubfv" role="1B3o_S" />
                            <node concept="3cqZAl" id="5yNJPA6ubfw" role="3clF45" />
                            <node concept="3clFbS" id="5yNJPA6ubfx" role="3clF47">
                              <node concept="2$JKZl" id="5yNJPA6ubfy" role="3cqZAp">
                                <node concept="3clFbS" id="5yNJPA6ubfz" role="2LFqv$">
                                  <node concept="3J1_TO" id="5yNJPA6ubf$" role="3cqZAp">
                                    <node concept="3uVAMA" id="5yNJPA6ubf_" role="1zxBo5">
                                      <node concept="XOnhg" id="5yNJPA6ubfA" role="1zc67B">
                                        <property role="TrG5h" value="e" />
                                        <node concept="nSUau" id="5yNJPA6ubfB" role="1tU5fm">
                                          <node concept="3uibUv" id="5yNJPA6ubfC" role="nSUat">
                                            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5yNJPA6ubfD" role="1zc67A" />
                                    </node>
                                    <node concept="3uVAMA" id="5yNJPA6ueDU" role="1zxBo5">
                                      <node concept="XOnhg" id="5yNJPA6ueDV" role="1zc67B">
                                        <property role="TrG5h" value="e" />
                                        <node concept="nSUau" id="5yNJPA6ueDW" role="1tU5fm">
                                          <node concept="3uibUv" id="5yNJPA6ueKv" role="nSUat">
                                            <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5yNJPA6ueDX" role="1zc67A" />
                                    </node>
                                    <node concept="3clFbS" id="5yNJPA6ubfE" role="1zxBo7">
                                      <node concept="2$JKZl" id="5yNJPA6ubfF" role="3cqZAp">
                                        <node concept="3clFbS" id="5yNJPA6ubfG" role="2LFqv$">
                                          <node concept="3cpWs8" id="5yNJPA6uduN" role="3cqZAp">
                                            <node concept="3cpWsn" id="5yNJPA6uduQ" role="3cpWs9">
                                              <property role="TrG5h" value="line" />
                                              <node concept="17QB3L" id="5yNJPA6uduL" role="1tU5fm" />
                                              <node concept="2OqwBi" id="5yNJPA6udKi" role="33vP2m">
                                                <node concept="37vLTw" id="5yNJPA6udz4" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5yNJPA6uaFH" resolve="re" />
                                                </node>
                                                <node concept="liA8E" id="5yNJPA6udVd" role="2OqNvi">
                                                  <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbJ" id="5yNJPA6ue4B" role="3cqZAp">
                                            <node concept="3clFbS" id="5yNJPA6ue4D" role="3clFbx">
                                              <node concept="3clFbF" id="5yNJPA6uemW" role="3cqZAp">
                                                <node concept="2YIFZM" id="5yNJPA6uew7" role="3clFbG">
                                                  <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                                  <node concept="3cmrfG" id="5yNJPA6ue$l" role="37wK5m">
                                                    <property role="3cmrfH" value="100" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbC" id="5yNJPA6uedZ" role="3clFbw">
                                              <node concept="10Nm6u" id="5yNJPA6ueiv" role="3uHU7w" />
                                              <node concept="37vLTw" id="5yNJPA6ue9g" role="3uHU7B">
                                                <ref role="3cqZAo" node="5yNJPA6uduQ" resolve="line" />
                                              </node>
                                            </node>
                                            <node concept="9aQIb" id="5yNJPA6ueQT" role="9aQIa">
                                              <node concept="3clFbS" id="5yNJPA6ueQU" role="9aQI4">
                                                <node concept="abc8K" id="5yNJPA6ubfH" role="3cqZAp">
                                                  <node concept="Xl_RD" id="5yNJPA6ubfI" role="abp_N">
                                                    <property role="Xl_RC" value="MS ERR: " />
                                                  </node>
                                                  <node concept="37vLTw" id="5yNJPA6ufcX" role="abp_N">
                                                    <ref role="3cqZAo" node="5yNJPA6uduQ" resolve="line" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbT" id="5yNJPA6ubfM" role="2$JKZa">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                      </node>
                                      <node concept="1X3_iC" id="5yNJPA6ubfN" role="lGtFl">
                                        <property role="3V$3am" value="statement" />
                                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                        <node concept="3clFbF" id="5yNJPA6ubfO" role="8Wnug">
                                          <node concept="2YIFZM" id="5yNJPA6ubfP" role="3clFbG">
                                            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                            <node concept="3cmrfG" id="5yNJPA6ubfQ" role="37wK5m">
                                              <property role="3cmrfH" value="100" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbT" id="5yNJPA6ubfR" role="2$JKZa">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="5yNJPA6ubfS" role="2AJF6D">
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
            <node concept="3clFbF" id="5yNJPA6ubfT" role="3cqZAp">
              <node concept="2OqwBi" id="5yNJPA6ubfU" role="3clFbG">
                <node concept="37vLTw" id="5yNJPA6ubfV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6ubfm" resolve="t2" />
                </node>
                <node concept="liA8E" id="5yNJPA6ubfW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5yNJPA6tWJq" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tWMH" role="abp_N">
                <property role="Xl_RC" value="MODELIX SERVER PID " />
              </node>
              <node concept="2OqwBi" id="5yNJPA6tWQi" role="abp_N">
                <node concept="37vLTw" id="5yNJPA6tWPT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tVUp" resolve="process" />
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
    <node concept="3clFb_" id="5yNJPA6tDOK" role="jymVt">
      <property role="TrG5h" value="dump" />
      <node concept="3clFbS" id="5yNJPA6tDON" role="3clF47" />
      <node concept="3Tm1VV" id="5yNJPA6tDOg" role="1B3o_S" />
      <node concept="3cqZAl" id="5yNJPA6tDO_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6tDPg" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tDQo" role="jymVt">
      <property role="TrG5h" value="kill" />
      <node concept="3clFbS" id="5yNJPA6tDQr" role="3clF47" />
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
</model>

