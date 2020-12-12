<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec75a426-3f03-4e3f-b2c1-8c6910d05061(org.modelix.integrationtests)">
  <persistence version="9" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
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
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
    <node concept="2YIFZL" id="6Jg9HT9UZqS" role="jymVt">
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
    <node concept="2tJIrI" id="6Jg9HT9UZSu" role="jymVt" />
    <node concept="2YIFZL" id="4ZsvGZupGOJ" role="jymVt">
      <property role="TrG5h" value="mpsMain" />
      <node concept="3clFbS" id="4ZsvGZupGOM" role="3clF47">
        <node concept="3clFbF" id="6Jg9HT9UX$G" role="3cqZAp">
          <node concept="1rXfSq" id="6Jg9HT9UX$E" role="3clFbG">
            <ref role="37wK5l" node="6Jg9HT9UXq2" resolve="considerExtraLogging" />
          </node>
        </node>
        <node concept="3cpWs8" id="4o9fmPfXSBc" role="3cqZAp">
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
        <node concept="3cpWs8" id="4o9fmPfXS7K" role="3cqZAp">
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
        <node concept="abc8K" id="4o9fmPfXT6u" role="3cqZAp">
          <node concept="Xl_RD" id="4o9fmPfXTaK" role="abp_N">
            <property role="Xl_RC" value="Project " />
          </node>
          <node concept="37vLTw" id="4o9fmPfXTh5" role="abp_N">
            <ref role="3cqZAo" node="4o9fmPfXS7L" resolve="project" />
          </node>
        </node>
        <node concept="3clFbH" id="5yNJPA6busQ" role="3cqZAp" />
        <node concept="3cpWs8" id="5yNJPA6buwh" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6buwk" role="3cpWs9">
            <property role="TrG5h" value="integrationTests" />
            <node concept="_YKpA" id="5yNJPA6buwd" role="1tU5fm">
              <node concept="3uibUv" id="5yNJPA6buy7" role="_ZDj9">
                <ref role="3uigEE" node="5yNJPA6btXz" resolve="IntegrationTest" />
              </node>
            </node>
            <node concept="2ShNRf" id="5yNJPA6buzR" role="33vP2m">
              <node concept="Tc6Ow" id="5yNJPA6buzF" role="2ShVmc">
                <node concept="3uibUv" id="5yNJPA6buzG" role="HW$YZ">
                  <ref role="3uigEE" node="5yNJPA6btXz" resolve="IntegrationTest" />
                </node>
                <node concept="2ShNRf" id="5yNJPA6buFb" role="HW$Y0">
                  <node concept="HV5vD" id="5yNJPA6buR$" role="2ShVmc">
                    <ref role="HV5vE" node="5yNJPA6btoc" resolve="ProjectCanBeCopiedOnCloudTest" />
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
                          <node concept="liA8E" id="5yNJPA6b$Fc" role="2OqNvi">
                            <ref role="37wK5l" node="5yNJPA6bvj5" resolve="testName" />
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
                            <node concept="liA8E" id="5yNJPA6b_Je" role="2OqNvi">
                              <ref role="37wK5l" node="5yNJPA6buoz" resolve="execute" />
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
                            <node concept="liA8E" id="5yNJPA6byiy" role="2OqNvi">
                              <ref role="37wK5l" node="5yNJPA6bvj5" resolve="testName" />
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
    <node concept="3uibUv" id="5yNJPA6buSN" role="EKbjA">
      <ref role="3uigEE" node="5yNJPA6btXz" resolve="IntegrationTest" />
    </node>
    <node concept="3clFb_" id="5yNJPA6buW4" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3uibUv" id="5yNJPA6buW5" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5yNJPA6buW6" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6buW8" role="3clF47">
        <node concept="3cpWs6" id="5yNJPA6buY4" role="3cqZAp">
          <node concept="2ShNRf" id="5yNJPA6buYx" role="3cqZAk">
            <node concept="1pGfFk" id="5yNJPA6bvc5" role="2ShVmc">
              <ref role="37wK5l" node="5yNJPA6btZX" resolve="TestResult" />
              <node concept="Xl_RD" id="5yNJPA6bvdF" role="37wK5m">
                <property role="Xl_RC" value="Not yet implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5yNJPA6buW9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5yNJPA6btXz">
    <property role="TrG5h" value="IntegrationTest" />
    <node concept="3clFb_" id="5yNJPA6bvj5" role="jymVt">
      <property role="TrG5h" value="testName" />
      <node concept="3clFbS" id="5yNJPA6bvj8" role="3clF47">
        <node concept="3cpWs6" id="5yNJPA6bv$i" role="3cqZAp">
          <node concept="2OqwBi" id="5yNJPA6bvSP" role="3cqZAk">
            <node concept="2OqwBi" id="5yNJPA6bvDd" role="2Oq$k0">
              <node concept="Xjq3P" id="5yNJPA6bv$v" role="2Oq$k0" />
              <node concept="liA8E" id="5yNJPA6bvGP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="5yNJPA6bw5l" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6bvj9" role="1B3o_S" />
      <node concept="17QB3L" id="5yNJPA6bviN" role="3clF45" />
      <node concept="2JFqV2" id="5yNJPA6bvzQ" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="5yNJPA6buoz" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3uibUv" id="5yNJPA6buoY" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5yNJPA6buoA" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6buoB" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="5yNJPA6btX$" role="1B3o_S" />
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
          <node concept="10Nm6u" id="5yNJPA6bBrb" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6bAHR" role="1B3o_S" />
      <node concept="17QB3L" id="5yNJPA6bAJl" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5yNJPA6btY8" role="1B3o_S" />
  </node>
</model>

