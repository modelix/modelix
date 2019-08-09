<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2077b9cb-d6f5-46a2-9b75-7ca019fa40cc(de.q60.mps.web.ui.svg.ot)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="lhc4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.annotations(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="lktc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:gnu.trove(MPS.Core/)" />
    <import index="b3cn" ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.web.ui.svg.tree)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
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
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="q4IqgjMqHg">
    <property role="TrG5h" value="IOperation" />
    <node concept="3clFb_" id="65KWK1vsMPl" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3cpWsb" id="65KWK1vsMZt" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsMPo" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsMPp" role="3clF47" />
    </node>
    <node concept="3clFb_" id="65KWK1vsN00" role="jymVt">
      <property role="TrG5h" value="getVersion" />
      <node concept="3cpWsb" id="65KWK1vsN01" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsN02" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsN03" role="3clF47" />
      <node concept="P$JXv" id="65KWK1vsNk1" role="lGtFl">
        <node concept="TZ5HA" id="65KWK1vsNk2" role="TZ5H$">
          <node concept="1dT_AC" id="65KWK1vsNk3" role="1dT_Ay">
            <property role="1dT_AB" value="The version the model was in when this operation was created. Is required by server to order operations from" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsMOs" role="jymVt" />
    <node concept="2tJIrI" id="65KWK1vsMNC" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMqHS" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="q4IqgjMqJG" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="q4IqgjMqK3" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMqKH" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMqHV" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMqHW" role="3clF47" />
      <node concept="P$JXv" id="q4IqgjMqL6" role="lGtFl">
        <node concept="TZ5HA" id="q4IqgjMqL7" role="TZ5H$">
          <node concept="1dT_AC" id="q4IqgjMqL8" role="1dT_Ay">
            <property role="1dT_AB" value="Is used to reorder operations. In a list of to be applied operations, operation A can be moved after" />
          </node>
        </node>
        <node concept="TZ5HA" id="q4IqgjMqSM" role="TZ5H$">
          <node concept="1dT_AC" id="q4IqgjMqSN" role="1dT_Ay">
            <property role="1dT_AB" value="operation B, by removing A, passing it through the transform function of B and inserting the result after B." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="q4IqgjMr7E" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="q4IqgjMr9s" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="q4IqgjMrb7" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMrbY" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMr7H" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMr7I" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="q4IqgjMqHh" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjMAYM" role="3HQHJm">
      <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
    </node>
  </node>
  <node concept="3HP615" id="q4IqgjMr6A">
    <property role="TrG5h" value="IAppliedOperation" />
    <node concept="3clFb_" id="q4IqgjMBcv" role="jymVt">
      <property role="TrG5h" value="originalOperation" />
      <node concept="3uibUv" id="q4IqgjMBdN" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMBcy" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMBcz" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMrcD" role="jymVt">
      <property role="TrG5h" value="invert" />
      <node concept="3uibUv" id="q4IqgjMrdx" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMrcG" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMrcH" role="3clF47" />
      <node concept="P$JXv" id="q4IqgjMDHo" role="lGtFl">
        <node concept="TZ5HA" id="q4IqgjMDHp" role="TZ5H$">
          <node concept="1dT_AC" id="q4IqgjMDHq" role="1dT_Ay">
            <property role="1dT_AB" value="Be careful with the order of the operations. It is only valid to apply the returned operation if no other" />
          </node>
        </node>
        <node concept="TZ5HA" id="q4IqgjMDNb" role="TZ5H$">
          <node concept="1dT_AC" id="q4IqgjMDNc" role="1dT_Ay">
            <property role="1dT_AB" value="operations where applied in the meantime. Otherwise, the returned operation has to be moved to the end using" />
          </node>
        </node>
        <node concept="TZ5HA" id="q4IqgjMDU_" role="TZ5H$">
          <node concept="1dT_AC" id="q4IqgjMDUA" role="1dT_Ay">
            <property role="1dT_AB" value="IOperation.transform first." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="q4IqgjMr6B" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="q4IqgjMrep">
    <property role="TrG5h" value="SetPropertyOp" />
    <node concept="Wx3nA" id="2AThsNtJKa3" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2AThsNtJJ$t" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="2AThsNtJJnc" role="1B3o_S" />
      <node concept="2YIFZM" id="2AThsNtJJNm" role="33vP2m">
        <ref role="37wK5l" to="q7tw:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <ref role="1Pybhc" to="q7tw:~Logger" resolve="Logger" />
        <node concept="3VsKOn" id="2AThsNtJJUq" role="37wK5m">
          <ref role="3VsUkX" node="q4IqgjMrep" resolve="SetPropertyOp" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="q4IqgjMrMT" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tmbuc" id="q4IqgjMs2G" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMrPZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMxW6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="propertyId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="q4IqgjMxLw" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMxTP" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMs83" role="jymVt">
      <property role="TrG5h" value="newValue" />
      <node concept="3Tmbuc" id="q4IqgjMsp1" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMsbc" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="q4IqgjMrJV" role="jymVt" />
    <node concept="3clFbW" id="q4IqgjMybi" role="jymVt">
      <node concept="3cqZAl" id="q4IqgjMybj" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMybk" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMybm" role="3clF47">
        <node concept="3clFbF" id="q4IqgjMybq" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMybs" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMybw" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
            </node>
            <node concept="37vLTw" id="q4IqgjMybx" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMybp" resolve="nodeId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMyb$" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMybA" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMybE" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
            </node>
            <node concept="37vLTw" id="q4IqgjMybF" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMybz" resolve="propertyId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMybI" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMybK" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMybO" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMs83" resolve="newValue" />
            </node>
            <node concept="37vLTw" id="q4IqgjMybP" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMybH" resolve="newValue1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="q4IqgjMybp" role="3clF46">
        <property role="TrG5h" value="nodeId1" />
        <node concept="17QB3L" id="q4IqgjMybo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMybz" role="3clF46">
        <property role="TrG5h" value="propertyId1" />
        <node concept="17QB3L" id="q4IqgjMyby" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMybH" role="3clF46">
        <property role="TrG5h" value="newValue1" />
        <node concept="17QB3L" id="q4IqgjMybG" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$Ca6" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$VSJ" role="jymVt">
      <property role="TrG5h" value="getNodeId" />
      <node concept="17QB3L" id="2AThsNt$VSK" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$VSL" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$VSM" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$VSN" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$VSI" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMt7P" role="jymVt" />
    <node concept="3Tm1VV" id="q4IqgjMreq" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjMrfr" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
    <node concept="3clFb_" id="2AThsNt$WKR" role="jymVt">
      <property role="TrG5h" value="getPropertyId" />
      <node concept="17QB3L" id="2AThsNt$WKS" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$WKT" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$WKU" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$WKV" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$WKQ" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$XQ2" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$WKX" role="jymVt">
      <property role="TrG5h" value="getNewValue" />
      <node concept="17QB3L" id="2AThsNt$WKY" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$WKZ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$WL0" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$WL1" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$WKW" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMs83" resolve="newValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$XE4" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMrfB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="q4IqgjMrfC" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="q4IqgjMrfD" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMrfE" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMrfF" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMrfM" role="3clF47">
        <node concept="3cpWs6" id="q4IqgjMsLN" role="3cqZAp">
          <node concept="37vLTw" id="q4IqgjMsLP" role="3cqZAk">
            <ref role="3cqZAo" node="q4IqgjMrfC" resolve="op" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjMrfN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMrjX" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMrfQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="q4IqgjMrfR" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="q4IqgjMrfS" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMrfT" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMrfU" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMrfW" role="3clF47">
        <node concept="3cpWs8" id="q4IqgjMwrh" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjMwri" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="q4IqgjMwrc" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="q4IqgjMwrj" role="33vP2m">
              <node concept="37vLTw" id="q4IqgjMwrk" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMrfR" resolve="model" />
              </node>
              <node concept="liA8E" id="q4IqgjMwrl" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMrWW" resolve="resolveNode" />
                <node concept="37vLTw" id="q4IqgjMwrm" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtJJiT" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtJJiV" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtJLXo" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtJMoD" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtJLXm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtJKa3" resolve="LOG" />
                </node>
                <node concept="liA8E" id="2AThsNtJMC_" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.warn(java.lang.Object)" resolve="warn" />
                  <node concept="3cpWs3" id="2AThsNtJNwL" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtJNOW" role="3uHU7w">
                      <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
                    </node>
                    <node concept="Xl_RD" id="2AThsNtJMNU" role="3uHU7B">
                      <property role="Xl_RC" value="Node not found: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2AThsNtJKMv" role="3cqZAp">
              <node concept="2ShNRf" id="2AThsNtJLis" role="3cqZAk">
                <node concept="HV5vD" id="2AThsNtJLGF" role="2ShVmc">
                  <ref role="HV5vE" node="2AThsNt$_J9" resolve="NoOp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtJKG6" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtJKLd" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtJKs_" role="3uHU7B">
              <ref role="3cqZAo" node="q4IqgjMwri" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="q4IqgjM$aP" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjM$aQ" role="3cpWs9">
            <property role="TrG5h" value="oldValue" />
            <node concept="17QB3L" id="q4IqgjM$aN" role="1tU5fm" />
            <node concept="2OqwBi" id="q4IqgjM$aR" role="33vP2m">
              <node concept="37vLTw" id="q4IqgjM$aS" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMwri" resolve="node" />
              </node>
              <node concept="liA8E" id="q4IqgjM$aT" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMqhm" resolve="getProperty" />
                <node concept="37vLTw" id="q4IqgjM$aU" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjM$ow" role="3cqZAp">
          <node concept="2OqwBi" id="q4IqgjM$_Z" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjM$ou" role="2Oq$k0">
              <ref role="3cqZAo" node="q4IqgjMwri" resolve="node" />
            </node>
            <node concept="liA8E" id="q4IqgjM$Ya" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:q4IqgjMqcO" resolve="setProperty" />
              <node concept="37vLTw" id="q4IqgjM_2h" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
              </node>
              <node concept="37vLTw" id="q4IqgjM_fE" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMs83" resolve="newValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjM_SF" role="3cqZAp">
          <node concept="2ShNRf" id="q4IqgjM_Ld" role="3clFbG">
            <node concept="1pGfFk" id="q4IqgjM_Le" role="2ShVmc">
              <ref role="37wK5l" node="q4IqgjNlvY" resolve="SetPropertyOp.Applied" />
              <node concept="37vLTw" id="q4IqgjNm8w" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNmcr" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNmhV" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMs83" resolve="newValue" />
              </node>
              <node concept="37vLTw" id="q4IqgjM_Lh" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjM$aQ" resolve="oldValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjMrfX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMrpH" role="jymVt" />
    <node concept="3clFb_" id="plPun86CYe" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun86CYf" role="3clF45" />
      <node concept="3Tm1VV" id="plPun86CYg" role="1B3o_S" />
      <node concept="3clFbS" id="plPun86CYh" role="3clF47">
        <node concept="3clFbF" id="plPun86CYi" role="3cqZAp">
          <node concept="3cpWs3" id="plPun86CYc" role="3clFbG">
            <node concept="Xl_RD" id="plPun86CYd" role="3uHU7w">
              <property role="Xl_RC" value="}" />
            </node>
            <node concept="3cpWs3" id="plPun86CYb" role="3uHU7B">
              <node concept="37vLTw" id="plPun86CY8" role="3uHU7w">
                <ref role="3cqZAo" node="q4IqgjMxW6" resolve="propertyId" />
              </node>
              <node concept="3cpWs3" id="plPun86CYa" role="3uHU7B">
                <node concept="Xl_RD" id="plPun86CY9" role="3uHU7w">
                  <property role="Xl_RC" value=", propertyId=" />
                </node>
                <node concept="3cpWs3" id="plPun86CY7" role="3uHU7B">
                  <node concept="37vLTw" id="plPun86CY4" role="3uHU7w">
                    <ref role="3cqZAo" node="q4IqgjMrMT" resolve="nodeId" />
                  </node>
                  <node concept="3cpWs3" id="plPun86CY6" role="3uHU7B">
                    <node concept="Xl_RD" id="plPun86CY5" role="3uHU7w">
                      <property role="Xl_RC" value=", nodeId=" />
                    </node>
                    <node concept="3cpWs3" id="plPun86CY3" role="3uHU7B">
                      <node concept="37vLTw" id="plPun86CXZ" role="3uHU7w">
                        <ref role="3cqZAo" node="q4IqgjMs83" resolve="newValue" />
                      </node>
                      <node concept="3cpWs3" id="plPun86CY1" role="3uHU7B">
                        <node concept="Xl_RD" id="plPun86CY2" role="3uHU7B">
                          <property role="Xl_RC" value="SetPropertyOp{" />
                        </node>
                        <node concept="Xl_RD" id="plPun86CY0" role="3uHU7w">
                          <property role="Xl_RC" value="newValue=" />
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
      <node concept="2AHcQZ" id="plPun86CYj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun86C6v" role="jymVt" />
    <node concept="312cEu" id="q4IqgjMrsX" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Applied" />
      <node concept="2tJIrI" id="q4IqgjNkQ3" role="jymVt" />
      <node concept="312cEg" id="q4IqgjNl72" role="jymVt">
        <property role="TrG5h" value="nodeId" />
        <node concept="3Tmbuc" id="q4IqgjNl73" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNl74" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjNl75" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="propertyId" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="q4IqgjNl76" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNl77" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjNl78" role="jymVt">
        <property role="TrG5h" value="newValue" />
        <node concept="3Tmbuc" id="q4IqgjNl79" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNl7a" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjMt13" role="jymVt">
        <property role="TrG5h" value="oldValue" />
        <node concept="3Tmbuc" id="q4IqgjMt6O" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjMt15" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="q4IqgjMtEN" role="jymVt" />
      <node concept="3clFbW" id="q4IqgjNlvY" role="jymVt">
        <node concept="3cqZAl" id="q4IqgjNlvZ" role="3clF45" />
        <node concept="3Tm1VV" id="q4IqgjNlw0" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjNlw2" role="3clF47">
          <node concept="3clFbF" id="q4IqgjNlw6" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNlw8" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNlwc" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNl72" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNlwd" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNlw5" resolve="nodeId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNlwg" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNlwi" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNlwm" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNl75" resolve="propertyId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNlwn" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNlwf" resolve="propertyId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNlwq" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNlws" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNlww" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNl78" resolve="newValue" />
              </node>
              <node concept="37vLTw" id="q4IqgjNlwx" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNlwp" resolve="newValue1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNlw$" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNlwA" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNlwE" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjMt13" resolve="oldValue" />
              </node>
              <node concept="37vLTw" id="q4IqgjNlwF" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNlwz" resolve="oldValue1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="q4IqgjNlw5" role="3clF46">
          <property role="TrG5h" value="nodeId1" />
          <node concept="17QB3L" id="q4IqgjNlw4" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNlwf" role="3clF46">
          <property role="TrG5h" value="propertyId1" />
          <node concept="17QB3L" id="q4IqgjNlwe" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNlwp" role="3clF46">
          <property role="TrG5h" value="newValue1" />
          <node concept="17QB3L" id="q4IqgjNlwo" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNlwz" role="3clF46">
          <property role="TrG5h" value="oldValue1" />
          <node concept="17QB3L" id="q4IqgjNlwy" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjMtEY" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjMBHr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="originalOperation" />
        <node concept="3uibUv" id="q4IqgjMBHs" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjMBHt" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjMBHv" role="3clF47">
          <node concept="3clFbF" id="q4IqgjNnaj" role="3cqZAp">
            <node concept="2ShNRf" id="q4IqgjNnah" role="3clFbG">
              <node concept="1pGfFk" id="q4IqgjNnjs" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjMybi" resolve="SetPropertyOp" />
                <node concept="37vLTw" id="q4IqgjNnnc" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNl72" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="q4IqgjNnwB" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNl75" resolve="propertyId" />
                </node>
                <node concept="37vLTw" id="q4IqgjNnGU" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNl78" resolve="newValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjMBHw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjMBWI" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjMtHx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="q4IqgjMtHy" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjMtHz" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjMtH_" role="3clF47">
          <node concept="3clFbF" id="q4IqgjMu0H" role="3cqZAp">
            <node concept="2ShNRf" id="q4IqgjMu0F" role="3clFbG">
              <node concept="1pGfFk" id="q4IqgjMv6j" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjMybi" resolve="SetPropertyOp" />
                <node concept="37vLTw" id="q4IqgjMv9U" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNl72" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="q4IqgjMzvk" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNl75" resolve="propertyId" />
                </node>
                <node concept="37vLTw" id="q4IqgjMviR" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMt13" resolve="oldValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjMtHA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjMrsY" role="1B3o_S" />
      <node concept="3uibUv" id="q4IqgjMrE9" role="EKbjA">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
    </node>
    <node concept="3uibUv" id="2AThsNtHgog" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtHdQz" resolve="AbstractOp" />
    </node>
    <node concept="3clFb_" id="2$gEJgL7a4_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3cpWsb" id="2$gEJgL7a4A" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7a4B" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7a4E" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvW6" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvW7" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvW8" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvW9" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7a4F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL7a4G" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getVersion" />
      <node concept="3cpWsb" id="2$gEJgL7a4H" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7a4I" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7a4O" role="3clF47">
        <node concept="YS8fn" id="2$gEJgL7azM" role="3cqZAp">
          <node concept="2ShNRf" id="2$gEJgL7azN" role="YScLw">
            <node concept="1pGfFk" id="2$gEJgL7azO" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2$gEJgL7azP" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7a4P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="q4IqgjME6B">
    <property role="TrG5h" value="SetReferenceOp" />
    <node concept="Wx3nA" id="2AThsNtJOLa" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2AThsNtJOLb" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="2AThsNtJOLc" role="1B3o_S" />
      <node concept="2YIFZM" id="2AThsNtJOLd" role="33vP2m">
        <ref role="1Pybhc" to="q7tw:~Logger" resolve="Logger" />
        <ref role="37wK5l" to="q7tw:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <node concept="3VsKOn" id="2AThsNtJOLe" role="37wK5m">
          <ref role="3VsUkX" node="q4IqgjME6B" resolve="SetReferenceOp" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjME6C" role="jymVt" />
    <node concept="312cEg" id="q4IqgjME6D" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tmbuc" id="q4IqgjME6E" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjME6F" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjME6G" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="referenceId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="q4IqgjME6H" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjME6I" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjME6J" role="jymVt">
      <property role="TrG5h" value="newTarget" />
      <node concept="3Tmbuc" id="q4IqgjME6K" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjME6L" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="q4IqgjME6M" role="jymVt" />
    <node concept="3clFbW" id="q4IqgjME6N" role="jymVt">
      <node concept="3cqZAl" id="q4IqgjME6O" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjME6P" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjME6Q" role="3clF47">
        <node concept="3clFbF" id="q4IqgjME6R" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjME6S" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjME6T" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjME6D" resolve="nodeId" />
            </node>
            <node concept="37vLTw" id="q4IqgjME6U" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjME73" resolve="nodeId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjME6V" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjME6W" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjME6X" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjME6G" resolve="referenceId" />
            </node>
            <node concept="37vLTw" id="q4IqgjME6Y" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjME75" resolve="referenceId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjME6Z" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjME70" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjME71" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjME6J" resolve="newTarget" />
            </node>
            <node concept="37vLTw" id="q4IqgjME72" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjME77" resolve="newTarget1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="q4IqgjME73" role="3clF46">
        <property role="TrG5h" value="nodeId1" />
        <node concept="17QB3L" id="q4IqgjME74" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjME75" role="3clF46">
        <property role="TrG5h" value="referenceId1" />
        <node concept="17QB3L" id="q4IqgjME76" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjME77" role="3clF46">
        <property role="TrG5h" value="newTarget1" />
        <node concept="17QB3L" id="q4IqgjME78" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjME79" role="jymVt" />
    <node concept="3Tm1VV" id="q4IqgjME7a" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjME7b" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
    <node concept="3clFb_" id="q4IqgjME7c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="q4IqgjME7d" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="q4IqgjME7e" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjME7f" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjME7g" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjME7h" role="3clF47">
        <node concept="3cpWs6" id="q4IqgjME7i" role="3cqZAp">
          <node concept="37vLTw" id="q4IqgjME7j" role="3cqZAk">
            <ref role="3cqZAo" node="q4IqgjME7d" resolve="op" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjME7k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjME7l" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjME7m" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="q4IqgjME7n" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="q4IqgjME7o" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjME7p" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjME7q" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjME7r" role="3clF47">
        <node concept="3cpWs8" id="q4IqgjME7s" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjME7t" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="q4IqgjME7u" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="q4IqgjME7v" role="33vP2m">
              <node concept="37vLTw" id="q4IqgjME7w" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjME7n" resolve="model" />
              </node>
              <node concept="liA8E" id="q4IqgjME7x" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMrWW" resolve="resolveNode" />
                <node concept="37vLTw" id="q4IqgjME7y" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjME6D" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtJOfL" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtJOfM" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtJOfN" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtJOfO" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtJPoc" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtJOLa" resolve="LOG" />
                </node>
                <node concept="liA8E" id="2AThsNtJOfP" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.warn(java.lang.Object)" resolve="warn" />
                  <node concept="3cpWs3" id="2AThsNtJOfQ" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtJOfR" role="3uHU7w">
                      <ref role="3cqZAo" node="q4IqgjME6D" resolve="nodeId" />
                    </node>
                    <node concept="Xl_RD" id="2AThsNtJOfS" role="3uHU7B">
                      <property role="Xl_RC" value="Node not found: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2AThsNtJOfT" role="3cqZAp">
              <node concept="2ShNRf" id="2AThsNtJOfU" role="3cqZAk">
                <node concept="HV5vD" id="2AThsNtJOfV" role="2ShVmc">
                  <ref role="HV5vE" node="2AThsNt$_J9" resolve="NoOp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtJOfW" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtJOfX" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtJOfY" role="3uHU7B">
              <ref role="3cqZAo" node="q4IqgjME7t" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="q4IqgjME7z" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjME7$" role="3cpWs9">
            <property role="TrG5h" value="oldTarget" />
            <node concept="17QB3L" id="q4IqgjME7_" role="1tU5fm" />
            <node concept="2OqwBi" id="q4IqgjME7A" role="33vP2m">
              <node concept="37vLTw" id="q4IqgjME7B" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjME7t" resolve="node" />
              </node>
              <node concept="liA8E" id="q4IqgjME7C" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMqtO" resolve="getReference" />
                <node concept="37vLTw" id="q4IqgjME7D" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjME6G" resolve="referenceId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjME7E" role="3cqZAp">
          <node concept="2OqwBi" id="q4IqgjME7F" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjME7G" role="2Oq$k0">
              <ref role="3cqZAo" node="q4IqgjME7t" resolve="node" />
            </node>
            <node concept="liA8E" id="q4IqgjME7H" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:q4IqgjMqmj" resolve="setReference" />
              <node concept="37vLTw" id="q4IqgjME7I" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME6G" resolve="referenceId" />
              </node>
              <node concept="37vLTw" id="q4IqgjME7J" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME6J" resolve="newTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjME7K" role="3cqZAp">
          <node concept="2ShNRf" id="q4IqgjME7L" role="3clFbG">
            <node concept="1pGfFk" id="q4IqgjME7M" role="2ShVmc">
              <ref role="37wK5l" node="q4IqgjNopz" resolve="SetReferenceOp.Applied" />
              <node concept="37vLTw" id="q4IqgjNpLw" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME6D" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNpQA" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME6G" resolve="referenceId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNq34" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME6J" resolve="newTarget" />
              </node>
              <node concept="37vLTw" id="q4IqgjME7N" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjME7$" resolve="oldTarget" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjME7O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjME7P" role="jymVt" />
    <node concept="312cEu" id="q4IqgjME7Q" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="q4IqgjNo84" role="jymVt">
        <property role="TrG5h" value="nodeId" />
        <node concept="3Tmbuc" id="q4IqgjNo85" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNo86" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjNo87" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="referenceId" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="q4IqgjNo88" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNo89" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjNo8a" role="jymVt">
        <property role="TrG5h" value="newTarget" />
        <node concept="3Tmbuc" id="q4IqgjNo8b" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjNo8c" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="q4IqgjME7R" role="jymVt">
        <property role="TrG5h" value="oldTarget" />
        <node concept="3Tmbuc" id="q4IqgjME7S" role="1B3o_S" />
        <node concept="17QB3L" id="q4IqgjME7T" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="q4IqgjME7U" role="jymVt" />
      <node concept="3clFbW" id="q4IqgjNopz" role="jymVt">
        <node concept="3cqZAl" id="q4IqgjNop$" role="3clF45" />
        <node concept="3Tm1VV" id="q4IqgjNop_" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjNopB" role="3clF47">
          <node concept="3clFbF" id="q4IqgjNopF" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNopH" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNopL" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNo84" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNopM" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNopE" resolve="nodeId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNopP" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNopR" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNopV" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNo87" resolve="referenceId" />
              </node>
              <node concept="37vLTw" id="q4IqgjNopW" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNopO" resolve="referenceId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNopZ" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNoq1" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNoq5" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjNo8a" resolve="newTarget" />
              </node>
              <node concept="37vLTw" id="q4IqgjNoq6" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNopY" resolve="newTarget1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="q4IqgjNoq9" role="3cqZAp">
            <node concept="37vLTI" id="q4IqgjNoqb" role="3clFbG">
              <node concept="37vLTw" id="q4IqgjNoqf" role="37vLTJ">
                <ref role="3cqZAo" node="q4IqgjME7R" resolve="oldTarget" />
              </node>
              <node concept="37vLTw" id="q4IqgjNoqg" role="37vLTx">
                <ref role="3cqZAo" node="q4IqgjNoq8" resolve="oldTarget1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="q4IqgjNopE" role="3clF46">
          <property role="TrG5h" value="nodeId1" />
          <node concept="17QB3L" id="q4IqgjNopD" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNopO" role="3clF46">
          <property role="TrG5h" value="referenceId1" />
          <node concept="17QB3L" id="q4IqgjNopN" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNopY" role="3clF46">
          <property role="TrG5h" value="newTarget1" />
          <node concept="17QB3L" id="q4IqgjNopX" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="q4IqgjNoq8" role="3clF46">
          <property role="TrG5h" value="oldTarget1" />
          <node concept="17QB3L" id="q4IqgjNoq7" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjME85" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjME86" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="originalOperation" />
        <node concept="3uibUv" id="q4IqgjME87" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjME88" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjME89" role="3clF47">
          <node concept="3clFbF" id="q4IqgjNpac" role="3cqZAp">
            <node concept="2ShNRf" id="q4IqgjNpaa" role="3clFbG">
              <node concept="1pGfFk" id="q4IqgjNpjl" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjME6N" resolve="SetReferenceOp" />
                <node concept="37vLTw" id="q4IqgjNpn5" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNo84" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="q4IqgjNpwo" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNo87" resolve="referenceId" />
                </node>
                <node concept="37vLTw" id="q4IqgjNpE1" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNo8a" resolve="newTarget" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjME8c" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjME8d" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjME8e" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="q4IqgjME8f" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjME8g" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjME8h" role="3clF47">
          <node concept="3clFbF" id="q4IqgjME8i" role="3cqZAp">
            <node concept="2ShNRf" id="q4IqgjME8j" role="3clFbG">
              <node concept="1pGfFk" id="q4IqgjME8k" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjME6N" resolve="SetReferenceOp" />
                <node concept="37vLTw" id="q4IqgjME8l" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNo84" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="q4IqgjNrQL" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjNo87" resolve="referenceId" />
                </node>
                <node concept="37vLTw" id="q4IqgjME8n" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjME7R" resolve="oldTarget" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjME8o" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjME8p" role="1B3o_S" />
      <node concept="3uibUv" id="q4IqgjME8q" role="EKbjA">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
    </node>
    <node concept="3uibUv" id="2AThsNtHgVp" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtHdQz" resolve="AbstractOp" />
    </node>
  </node>
  <node concept="312cEu" id="q4IqgjMG7L">
    <property role="TrG5h" value="AddChildOp" />
    <node concept="2tJIrI" id="q4IqgjMG7M" role="jymVt" />
    <node concept="312cEg" id="q4IqgjMG7N" role="jymVt">
      <property role="TrG5h" value="parentId" />
      <node concept="3Tmbuc" id="q4IqgjMG7O" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMG7P" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMG7Q" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="linkId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="q4IqgjMG7R" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMG7S" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2AThsNtINVe" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="3Tmbuc" id="2AThsNtIOfO" role="1B3o_S" />
      <node concept="10Oyi0" id="2AThsNtIOig" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMG7T" role="jymVt">
      <property role="TrG5h" value="serializedChild" />
      <node concept="3Tmbuc" id="q4IqgjMG7U" role="1B3o_S" />
      <node concept="3uibUv" id="q4IqgjNta$" role="1tU5fm">
        <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMG7W" role="jymVt" />
    <node concept="3clFbW" id="q4IqgjMG7X" role="jymVt">
      <node concept="3cqZAl" id="q4IqgjMG7Y" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMG7Z" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMG80" role="3clF47">
        <node concept="3clFbF" id="q4IqgjMG81" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMG82" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMG83" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMG7N" resolve="parentId" />
            </node>
            <node concept="37vLTw" id="q4IqgjMG84" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMG8d" resolve="parentId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMG85" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMG86" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMG87" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMG7Q" resolve="linkId" />
            </node>
            <node concept="37vLTw" id="q4IqgjMG88" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMG8f" resolve="linkId1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMG89" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMG8a" role="3clFbG">
            <node concept="37vLTw" id="q4IqgjMG8b" role="37vLTJ">
              <ref role="3cqZAo" node="q4IqgjMG7T" resolve="serializedChild" />
            </node>
            <node concept="37vLTw" id="q4IqgjMG8c" role="37vLTx">
              <ref role="3cqZAo" node="q4IqgjMG8h" resolve="child1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtIOGb" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtIQiH" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtIQol" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtIOnv" resolve="index" />
            </node>
            <node concept="2OqwBi" id="2AThsNtIOVp" role="37vLTJ">
              <node concept="Xjq3P" id="2AThsNtIOG9" role="2Oq$k0" />
              <node concept="2OwXpG" id="2AThsNtIPkK" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNtINVe" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="q4IqgjMG8d" role="3clF46">
        <property role="TrG5h" value="parentId1" />
        <node concept="17QB3L" id="q4IqgjMG8e" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMG8f" role="3clF46">
        <property role="TrG5h" value="linkId1" />
        <node concept="17QB3L" id="q4IqgjMG8g" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNtIOnv" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNtIOuD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMG8h" role="3clF46">
        <property role="TrG5h" value="child1" />
        <node concept="3uibUv" id="q4IqgjNtpb" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt_3oo" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt_1Zx" role="jymVt">
      <property role="TrG5h" value="getParentId" />
      <node concept="17QB3L" id="2AThsNt_1Zy" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_1Zz" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_1Z$" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_1Z_" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt_1Zw" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMG7N" resolve="parentId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_1ZB" role="jymVt">
      <property role="TrG5h" value="getLinkId" />
      <node concept="17QB3L" id="2AThsNt_1ZC" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_1ZD" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_1ZE" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_1ZF" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt_1ZA" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMG7Q" resolve="linkId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_1ZH" role="jymVt">
      <property role="TrG5h" value="getSerializedChild" />
      <node concept="3uibUv" id="2AThsNt_1ZI" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_1ZJ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_1ZK" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_1ZL" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt_1ZG" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMG7T" resolve="serializedChild" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMG8j" role="jymVt" />
    <node concept="3Tm1VV" id="q4IqgjMG8k" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjMG8l" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
    <node concept="3clFb_" id="q4IqgjMG8m" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="q4IqgjMG8n" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="q4IqgjMG8o" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMG8p" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMG8q" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMG8r" role="3clF47">
        <node concept="3clFbJ" id="2AThsNtJpp1" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtJpp3" role="3clFbx">
            <node concept="3cpWs8" id="2AThsNtJq6g" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtJq6h" role="3cpWs9">
                <property role="TrG5h" value="addOp" />
                <node concept="3uibUv" id="2AThsNtJq6c" role="1tU5fm">
                  <ref role="3uigEE" node="q4IqgjMG7L" resolve="AddChildOp" />
                </node>
                <node concept="1eOMI4" id="2AThsNtJq6i" role="33vP2m">
                  <node concept="10QFUN" id="2AThsNtJq6j" role="1eOMHV">
                    <node concept="3uibUv" id="2AThsNtJq6k" role="10QFUM">
                      <ref role="3uigEE" node="q4IqgjMG7L" resolve="AddChildOp" />
                    </node>
                    <node concept="37vLTw" id="2AThsNtJq6l" role="10QFUP">
                      <ref role="3cqZAo" node="q4IqgjMG8n" resolve="op" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2AThsNtJpTc" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="2AThsNtJpTe" role="3clFbx">
                <node concept="3cpWs6" id="2AThsNtJyL3" role="3cqZAp">
                  <node concept="2ShNRf" id="2AThsNtJyXo" role="3cqZAk">
                    <node concept="1pGfFk" id="2AThsNtJzzE" role="2ShVmc">
                      <ref role="37wK5l" node="q4IqgjMG7X" resolve="AddChildOp" />
                      <node concept="2OqwBi" id="2AThsNtJ$EV" role="37wK5m">
                        <node concept="37vLTw" id="2AThsNtJzZ7" role="2Oq$k0">
                          <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                        </node>
                        <node concept="2OwXpG" id="2AThsNtJ_v7" role="2OqNvi">
                          <ref role="2Oxat5" node="q4IqgjMG7N" resolve="parentId" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2AThsNtJB2o" role="37wK5m">
                        <node concept="37vLTw" id="2AThsNtJAmj" role="2Oq$k0">
                          <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                        </node>
                        <node concept="2OwXpG" id="2AThsNtJBEt" role="2OqNvi">
                          <ref role="2Oxat5" node="q4IqgjMG7Q" resolve="linkId" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2AThsNtJF8I" role="37wK5m">
                        <node concept="3cmrfG" id="2AThsNtJF8Y" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="2AThsNtJDeo" role="3uHU7B">
                          <node concept="37vLTw" id="2AThsNtJCy4" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                          </node>
                          <node concept="2OwXpG" id="2AThsNtJDQG" role="2OqNvi">
                            <ref role="2Oxat5" node="2AThsNtINVe" resolve="index" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2AThsNtJH4a" role="37wK5m">
                        <node concept="37vLTw" id="2AThsNtJGig" role="2Oq$k0">
                          <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                        </node>
                        <node concept="2OwXpG" id="2AThsNtJIdW" role="2OqNvi">
                          <ref role="2Oxat5" node="q4IqgjMG7T" resolve="serializedChild" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2AThsNtJvHf" role="3clFbw">
                <node concept="2d3UOw" id="2AThsNtJxsP" role="3uHU7w">
                  <node concept="2OqwBi" id="2AThsNtJye_" role="3uHU7w">
                    <node concept="Xjq3P" id="2AThsNtJxB5" role="2Oq$k0" />
                    <node concept="2OwXpG" id="2AThsNtJyys" role="2OqNvi">
                      <ref role="2Oxat5" node="2AThsNtINVe" resolve="index" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2AThsNtJw5I" role="3uHU7B">
                    <node concept="37vLTw" id="2AThsNtJvN7" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                    </node>
                    <node concept="2OwXpG" id="2AThsNtJwks" role="2OqNvi">
                      <ref role="2Oxat5" node="2AThsNtINVe" resolve="index" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="2AThsNtJtnl" role="3uHU7B">
                  <node concept="17R0WA" id="2AThsNtJs20" role="3uHU7B">
                    <node concept="2OqwBi" id="2AThsNtJr3K" role="3uHU7B">
                      <node concept="37vLTw" id="2AThsNtJq6m" role="2Oq$k0">
                        <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                      </node>
                      <node concept="2OwXpG" id="2AThsNtJrsY" role="2OqNvi">
                        <ref role="2Oxat5" node="q4IqgjMG7N" resolve="parentId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2AThsNtJsrV" role="3uHU7w">
                      <node concept="Xjq3P" id="2AThsNtJs6k" role="2Oq$k0" />
                      <node concept="2OwXpG" id="2AThsNtJsQ4" role="2OqNvi">
                        <ref role="2Oxat5" node="q4IqgjMG7N" resolve="parentId" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="2AThsNtJuy4" role="3uHU7w">
                    <node concept="2OqwBi" id="2AThsNtJtIf" role="3uHU7B">
                      <node concept="37vLTw" id="2AThsNtJtsb" role="2Oq$k0">
                        <ref role="3cqZAo" node="2AThsNtJq6h" resolve="addOp" />
                      </node>
                      <node concept="2OwXpG" id="2AThsNtJtWq" role="2OqNvi">
                        <ref role="2Oxat5" node="q4IqgjMG7Q" resolve="linkId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2AThsNtJuX5" role="3uHU7w">
                      <node concept="Xjq3P" id="2AThsNtJuAV" role="2Oq$k0" />
                      <node concept="2OwXpG" id="2AThsNtJvbr" role="2OqNvi">
                        <ref role="2Oxat5" node="q4IqgjMG7Q" resolve="linkId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2AThsNtJpIo" role="3clFbw">
            <node concept="3uibUv" id="2AThsNtJpPi" role="2ZW6by">
              <ref role="3uigEE" node="q4IqgjMG7L" resolve="AddChildOp" />
            </node>
            <node concept="37vLTw" id="2AThsNtJppD" role="2ZW6bz">
              <ref role="3cqZAo" node="q4IqgjMG8n" resolve="op" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt$AYO" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$AYN" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMG8n" resolve="op" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjMG8u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMG8v" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMG8w" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="q4IqgjMG8x" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="q4IqgjMG8y" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMG8z" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMG8$" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMG8_" role="3clF47">
        <node concept="3cpWs8" id="q4IqgjMG8A" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjMG8B" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="q4IqgjMG8C" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="q4IqgjMG8D" role="33vP2m">
              <node concept="37vLTw" id="q4IqgjMG8E" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMG8x" resolve="model" />
              </node>
              <node concept="liA8E" id="q4IqgjMG8F" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMrWW" resolve="resolveNode" />
                <node concept="37vLTw" id="q4IqgjMG8G" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMG7N" resolve="parentId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt$gkK" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt$gkL" role="3cpWs9">
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="2AThsNt$gkD" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="2AThsNt$gkM" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt$gkN" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMG8B" resolve="parent" />
              </node>
              <node concept="liA8E" id="2AThsNt$gkO" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:2AThsNt$ck9" resolve="insertChild" />
                <node concept="37vLTw" id="2AThsNt$gkP" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMG7Q" resolve="linkId" />
                </node>
                <node concept="37vLTw" id="2AThsNtIRdb" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtINVe" resolve="index" />
                </node>
                <node concept="37vLTw" id="2AThsNt$gkQ" role="37wK5m">
                  <ref role="3cqZAo" node="q4IqgjMG7T" resolve="serializedChild" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMG8U" role="3cqZAp">
          <node concept="2ShNRf" id="q4IqgjMG8V" role="3clFbG">
            <node concept="1pGfFk" id="q4IqgjMG8W" role="2ShVmc">
              <ref role="37wK5l" node="2AThsNt$gFT" resolve="AddChildOp.Applied" />
              <node concept="37vLTw" id="2AThsNt$hG4" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMG7N" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$hOP" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMG7Q" resolve="linkId" />
              </node>
              <node concept="37vLTw" id="2AThsNtIW3o" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtINVe" resolve="index" />
              </node>
              <node concept="37vLTw" id="2AThsNt$hZS" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMG7T" resolve="serializedChild" />
              </node>
              <node concept="37vLTw" id="2AThsNt$iad" role="37wK5m">
                <ref role="3cqZAo" node="q4IqgjMG8B" resolve="parent" />
              </node>
              <node concept="37vLTw" id="2AThsNt$ifr" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$gkL" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="q4IqgjMG8Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMG8Z" role="jymVt" />
    <node concept="312cEu" id="q4IqgjMG90" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="2AThsNt$fcy" role="jymVt">
        <property role="TrG5h" value="parentId" />
        <node concept="3Tmbuc" id="2AThsNt$fcz" role="1B3o_S" />
        <node concept="17QB3L" id="2AThsNt$fc$" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNt$fc_" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="linkId" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="2AThsNt$fcA" role="1B3o_S" />
        <node concept="17QB3L" id="2AThsNt$fcB" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNtIS4n" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="index" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="2AThsNtIS4o" role="1B3o_S" />
        <node concept="10Oyi0" id="2AThsNtISNQ" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNt$fcC" role="jymVt">
        <property role="TrG5h" value="serializedChild" />
        <node concept="3Tmbuc" id="2AThsNt$fcD" role="1B3o_S" />
        <node concept="3uibUv" id="2AThsNt$fcE" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="2tJIrI" id="2AThsNt$fwM" role="jymVt" />
      <node concept="312cEg" id="2AThsNt$fLr" role="jymVt">
        <property role="TrG5h" value="parent" />
        <node concept="3Tmbuc" id="2AThsNt$fTS" role="1B3o_S" />
        <node concept="3uibUv" id="2AThsNt$fW6" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="312cEg" id="2AThsNt$g4R" role="jymVt">
        <property role="TrG5h" value="child" />
        <node concept="3Tmbuc" id="2AThsNt$g4S" role="1B3o_S" />
        <node concept="3uibUv" id="2AThsNt$g4T" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjMG94" role="jymVt" />
      <node concept="3clFbW" id="2AThsNt$gFT" role="jymVt">
        <node concept="3cqZAl" id="2AThsNt$gFU" role="3clF45" />
        <node concept="3Tm1VV" id="2AThsNt$gFV" role="1B3o_S" />
        <node concept="3clFbS" id="2AThsNt$gFX" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$gG1" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$gG3" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$gG7" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$fcy" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$gG8" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$gG0" resolve="parentId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$gGb" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$gGd" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$gGh" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$fc_" resolve="linkId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$gGi" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$gGa" resolve="linkId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNtIUcH" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNtIVqt" role="3clFbG">
              <node concept="37vLTw" id="2AThsNtIVwc" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNtIT84" resolve="index" />
              </node>
              <node concept="2OqwBi" id="2AThsNtIUpb" role="37vLTJ">
                <node concept="Xjq3P" id="2AThsNtIUcF" role="2Oq$k0" />
                <node concept="2OwXpG" id="2AThsNtIUxy" role="2OqNvi">
                  <ref role="2Oxat5" node="2AThsNtIS4n" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$gGl" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$gGn" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$gGr" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$fcC" resolve="serializedChild" />
              </node>
              <node concept="37vLTw" id="2AThsNt$gGs" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$gGk" resolve="serializedChild1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$gGv" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$gGx" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$gG_" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$fLr" resolve="parent" />
              </node>
              <node concept="37vLTw" id="2AThsNt$gGA" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$gGu" resolve="parent1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$gGD" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$gGF" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$gGJ" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$g4R" resolve="child" />
              </node>
              <node concept="37vLTw" id="2AThsNt$gGK" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$gGC" resolve="child1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2AThsNt$gG0" role="3clF46">
          <property role="TrG5h" value="parentId1" />
          <node concept="17QB3L" id="2AThsNt$gFZ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNt$gGa" role="3clF46">
          <property role="TrG5h" value="linkId1" />
          <node concept="17QB3L" id="2AThsNt$gG9" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNtIT84" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="2AThsNtITYp" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNt$gGk" role="3clF46">
          <property role="TrG5h" value="serializedChild1" />
          <node concept="3uibUv" id="2AThsNt$gGj" role="1tU5fm">
            <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
          </node>
        </node>
        <node concept="37vLTG" id="2AThsNt$gGu" role="3clF46">
          <property role="TrG5h" value="parent1" />
          <node concept="3uibUv" id="2AThsNt$gGt" role="1tU5fm">
            <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
          </node>
        </node>
        <node concept="37vLTG" id="2AThsNt$gGC" role="3clF46">
          <property role="TrG5h" value="child1" />
          <node concept="3uibUv" id="2AThsNt$gGB" role="1tU5fm">
            <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjMG9f" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjMG9g" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="originalOperation" />
        <node concept="3uibUv" id="q4IqgjMG9h" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjMG9i" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjMG9j" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$ipy" role="3cqZAp">
            <node concept="2ShNRf" id="2AThsNt$ipw" role="3clFbG">
              <node concept="1pGfFk" id="2AThsNt$iyR" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjMG7X" resolve="AddChildOp" />
                <node concept="37vLTw" id="2AThsNt$iAV" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$fcy" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="2AThsNt$iKe" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$fc_" resolve="linkId" />
                </node>
                <node concept="37vLTw" id="2AThsNtIVKc" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtIS4n" resolve="index" />
                </node>
                <node concept="37vLTw" id="2AThsNt$iWt" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$fcC" resolve="serializedChild" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjMG9m" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="q4IqgjMG9n" role="jymVt" />
      <node concept="3clFb_" id="q4IqgjMG9o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="q4IqgjMG9p" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="q4IqgjMG9q" role="1B3o_S" />
        <node concept="3clFbS" id="q4IqgjMG9r" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$lxl" role="3cqZAp">
            <node concept="2ShNRf" id="2AThsNt$lxh" role="3clFbG">
              <node concept="1pGfFk" id="2AThsNt$lMQ" role="2ShVmc">
                <ref role="37wK5l" node="2AThsNt$j6d" resolve="DeleteChildNodeOp" />
                <node concept="2OqwBi" id="2AThsNt$mab" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNt$lOq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt$g4R" resolve="child" />
                  </node>
                  <node concept="liA8E" id="2AThsNt$msI" role="2OqNvi">
                    <ref role="37wK5l" to="b3cn:65KWK1vrMvc" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="q4IqgjMG9y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjMG9z" role="1B3o_S" />
      <node concept="3uibUv" id="q4IqgjMG9$" role="EKbjA">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
    </node>
    <node concept="3uibUv" id="2AThsNtHec6" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtHdQz" resolve="AbstractOp" />
    </node>
  </node>
  <node concept="312cEu" id="2AThsNt$j44">
    <property role="TrG5h" value="DeleteChildNodeOp" />
    <node concept="Wx3nA" id="2AThsNtIyGF" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2AThsNtIy9U" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="2AThsNtIxSM" role="1B3o_S" />
      <node concept="2YIFZM" id="2AThsNtIyma" role="33vP2m">
        <ref role="37wK5l" to="q7tw:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <ref role="1Pybhc" to="q7tw:~Logger" resolve="Logger" />
        <node concept="3VsKOn" id="2AThsNtIyt7" role="37wK5m">
          <ref role="3VsUkX" node="2AThsNt$j44" resolve="DeleteChildNodeOp" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2AThsNt$j4N" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tmbuc" id="2AThsNt$j55" role="1B3o_S" />
      <node concept="17QB3L" id="2AThsNt$j5f" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2AThsNt$j4D" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNt$j45" role="1B3o_S" />
    <node concept="3clFbW" id="2AThsNt$j6d" role="jymVt">
      <node concept="3cqZAl" id="2AThsNt$j6e" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$j6f" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$j6h" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$j6l" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNt$j6n" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt$j6r" role="37vLTJ">
              <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
            </node>
            <node concept="37vLTw" id="2AThsNt$j6s" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNt$j6k" resolve="nodeId1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt$j6k" role="3clF46">
        <property role="TrG5h" value="nodeId1" />
        <node concept="17QB3L" id="2AThsNt$j6j" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$j89" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$mYW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="2AThsNt$mYX" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="2AThsNt$mYY" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$mYZ" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$mZ0" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$mZ7" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt$Bxp" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt$Bxr" role="3clFbx">
            <node concept="3clFbJ" id="2AThsNt$UHY" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="2AThsNt$UI0" role="3clFbx">
                <node concept="3cpWs6" id="2AThsNt$Zla" role="3cqZAp">
                  <node concept="2ShNRf" id="2AThsNt$ZG3" role="3cqZAk">
                    <node concept="HV5vD" id="2AThsNt_00m" role="2ShVmc">
                      <ref role="HV5vE" node="2AThsNt$_J9" resolve="NoOp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="2AThsNt$Zcm" role="3clFbw">
                <node concept="37vLTw" id="2AThsNt$ZgW" role="3uHU7w">
                  <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
                </node>
                <node concept="2OqwBi" id="2AThsNt$YDf" role="3uHU7B">
                  <node concept="1eOMI4" id="2AThsNt$Ypo" role="2Oq$k0">
                    <node concept="10QFUN" id="2AThsNt$Ypl" role="1eOMHV">
                      <node concept="3uibUv" id="2AThsNt$Ypq" role="10QFUM">
                        <ref role="3uigEE" node="q4IqgjMrep" resolve="SetPropertyOp" />
                      </node>
                      <node concept="37vLTw" id="2AThsNt$Ypr" role="10QFUP">
                        <ref role="3cqZAo" node="2AThsNt$mYX" resolve="op" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2AThsNt$YQi" role="2OqNvi">
                    <ref role="37wK5l" node="2AThsNt$VSJ" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2AThsNt_0zU" role="3cqZAp">
              <node concept="3SKdUq" id="2AThsNt_0zW" role="3SKWNk">
                <property role="3SKdUp" value="TODO decendents of deleted node" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2AThsNt$BQp" role="3clFbw">
            <node concept="3uibUv" id="2AThsNt$BWW" role="2ZW6by">
              <ref role="3uigEE" node="q4IqgjMrep" resolve="SetPropertyOp" />
            </node>
            <node concept="37vLTw" id="2AThsNt$By1" role="2ZW6bz">
              <ref role="3cqZAo" node="2AThsNt$mYX" resolve="op" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNt_0W8" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_0Wa" role="3clFbx">
            <node concept="3clFbJ" id="2AThsNt_1CR" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="2AThsNt_1CT" role="3clFbx">
                <node concept="3cpWs6" id="2AThsNt_4Ng" role="3cqZAp">
                  <node concept="2ShNRf" id="2AThsNt_4Oq" role="3cqZAk">
                    <node concept="HV5vD" id="2AThsNt_5a2" role="2ShVmc">
                      <ref role="HV5vE" node="2AThsNt$_J9" resolve="NoOp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="2AThsNt_4CY" role="3clFbw">
                <node concept="37vLTw" id="2AThsNt_4Io" role="3uHU7w">
                  <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
                </node>
                <node concept="2OqwBi" id="2AThsNt_3U$" role="3uHU7B">
                  <node concept="1eOMI4" id="2AThsNt_1Eo" role="2Oq$k0">
                    <node concept="10QFUN" id="2AThsNt_1El" role="1eOMHV">
                      <node concept="3uibUv" id="2AThsNt_1Eq" role="10QFUM">
                        <ref role="3uigEE" node="q4IqgjMG7L" resolve="AddChildOp" />
                      </node>
                      <node concept="37vLTw" id="2AThsNt_1Er" role="10QFUP">
                        <ref role="3cqZAo" node="2AThsNt$mYX" resolve="op" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2AThsNt_4if" role="2OqNvi">
                    <ref role="37wK5l" node="2AThsNt_1Zx" resolve="getParentId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2AThsNt_5yP" role="3cqZAp">
              <node concept="3SKdUq" id="2AThsNt_5yQ" role="3SKWNk">
                <property role="3SKdUp" value="TODO decendents of deleted node" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2AThsNt_1uV" role="3clFbw">
            <node concept="3uibUv" id="2AThsNt_1Bs" role="2ZW6by">
              <ref role="3uigEE" node="q4IqgjMG7L" resolve="AddChildOp" />
            </node>
            <node concept="37vLTw" id="2AThsNt_18_" role="2ZW6bz">
              <ref role="3cqZAo" node="2AThsNt$mYX" resolve="op" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AThsNt$UJ_" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$UJB" role="3cqZAk">
            <ref role="3cqZAo" node="2AThsNt$mYX" resolve="op" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$mZ8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$n4$" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$mZb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="2AThsNt$mZc" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2AThsNt$mZd" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$mZe" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$mZf" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$mZh" role="3clF47">
        <node concept="3cpWs8" id="2AThsNt$nSR" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt$nSS" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="2AThsNt$nSP" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="2AThsNt$nST" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt$nSU" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt$mZc" resolve="model" />
              </node>
              <node concept="liA8E" id="2AThsNt$nSV" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMrWW" resolve="resolveNode" />
                <node concept="37vLTw" id="2AThsNt$nSW" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtI$Rf" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtI$Rh" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtIz37" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtIzl8" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtIz35" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtIyGF" resolve="LOG" />
                </node>
                <node concept="liA8E" id="2AThsNtIz$a" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.warn(java.lang.Object)" resolve="warn" />
                  <node concept="3cpWs3" id="2AThsNtI$fr" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtI$yc" role="3uHU7w">
                      <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
                    </node>
                    <node concept="Xl_RD" id="2AThsNtIzIc" role="3uHU7B">
                      <property role="Xl_RC" value="Node not found: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2AThsNtIBe8" role="3cqZAp">
              <node concept="2ShNRf" id="2AThsNtIBkD" role="3cqZAk">
                <node concept="HV5vD" id="2AThsNtIBQU" role="2ShVmc">
                  <ref role="HV5vE" node="2AThsNt$_J9" resolve="NoOp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtIAeq" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtIAnZ" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtI_Uv" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtIal8" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtIal9" role="3cpWs9">
            <property role="TrG5h" value="parentElement" />
            <node concept="3uibUv" id="2AThsNtIal7" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMpFz" resolve="IElement" />
            </node>
            <node concept="2OqwBi" id="2AThsNtIala" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtIalb" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtIalc" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:2AThsNt$p$U" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt$tea" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt$ted" role="3cpWs9">
            <property role="TrG5h" value="parentId" />
            <node concept="17QB3L" id="2AThsNt$te8" role="1tU5fm" />
            <node concept="2OqwBi" id="2AThsNt$$ok" role="33vP2m">
              <node concept="1eOMI4" id="2AThsNt$$3g" role="2Oq$k0">
                <node concept="10QFUN" id="2AThsNt$zIU" role="1eOMHV">
                  <node concept="37vLTw" id="2AThsNtIald" role="10QFUP">
                    <ref role="3cqZAo" node="2AThsNtIal9" resolve="parentElement" />
                  </node>
                  <node concept="3uibUv" id="2AThsNt$zT4" role="10QFUM">
                    <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2AThsNt$$Ro" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:65KWK1vrMvc" resolve="getId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt$xpV" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt$xpY" role="3cpWs9">
            <property role="TrG5h" value="containmentLink" />
            <node concept="17QB3L" id="2AThsNt$xpT" role="1tU5fm" />
            <node concept="2OqwBi" id="2AThsNt$xLp" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt$xyu" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNt$yao" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:q4IqgjMV_X" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtIWUc" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtIWUf" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="2AThsNtIWUa" role="1tU5fm" />
            <node concept="2OqwBi" id="2AThsNtJ1Fg" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtJ1rF" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtJ1To" role="2OqNvi">
                <ref role="37wK5l" to="b3cn:2AThsNtJ0Xy" resolve="getIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt$oR9" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt$oRa" role="3cpWs9">
            <property role="TrG5h" value="saved" />
            <node concept="3uibUv" id="2AThsNt$oR4" role="1tU5fm">
              <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
            </node>
            <node concept="2YIFZM" id="2AThsNtK1sc" role="33vP2m">
              <ref role="37wK5l" to="b3cn:q4IqgjMLwy" resolve="load" />
              <ref role="1Pybhc" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
              <node concept="37vLTw" id="2AThsNt$oRc" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt$r1N" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt$reg" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt$r1L" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt$nSS" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNt$rAb" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:2AThsNt$qJg" resolve="delete" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt$_2o" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNt$_2k" role="3clFbG">
            <node concept="1pGfFk" id="2AThsNt$_f5" role="2ShVmc">
              <ref role="37wK5l" node="2AThsNt$wPP" resolve="DeleteChildNodeOp.Applied" />
              <node concept="37vLTw" id="2AThsNt$_iw" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$j4N" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$_r5" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$ted" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$_xz" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$xpY" resolve="containmentLink" />
              </node>
              <node concept="37vLTw" id="2AThsNtJ265" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtIWUf" resolve="index" />
              </node>
              <node concept="37vLTw" id="2AThsNt$_DM" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt$oRa" resolve="saved" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$mZi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$s5n" role="jymVt" />
    <node concept="312cEu" id="2AThsNt$rTs" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="2AThsNt$sjs" role="jymVt">
        <property role="TrG5h" value="nodeId" />
        <node concept="3Tmbuc" id="2AThsNt$soQ" role="1B3o_S" />
        <node concept="17QB3L" id="2AThsNt$slW" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="2AThsNt$tI2" role="jymVt" />
      <node concept="312cEg" id="2AThsNt$tWz" role="jymVt">
        <property role="TrG5h" value="parentId" />
        <node concept="3Tmbuc" id="2AThsNt$tW$" role="1B3o_S" />
        <node concept="17QB3L" id="2AThsNt$tW_" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNt$vuA" role="jymVt">
        <property role="TrG5h" value="containmentLink" />
        <node concept="3Tmbuc" id="2AThsNt$vuB" role="1B3o_S" />
        <node concept="17QB3L" id="2AThsNt$vuC" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNtJ35w" role="jymVt">
        <property role="TrG5h" value="index" />
        <node concept="3Tmbuc" id="2AThsNtJ3lc" role="1B3o_S" />
        <node concept="10Oyi0" id="2AThsNtJ3nq" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2AThsNt$sp0" role="jymVt">
        <property role="TrG5h" value="savedNode" />
        <node concept="3Tmbuc" id="2AThsNt$srz" role="1B3o_S" />
        <node concept="3uibUv" id="2AThsNt$srH" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="2tJIrI" id="2AThsNt$sh4" role="jymVt" />
      <node concept="3Tm1VV" id="2AThsNt$rTt" role="1B3o_S" />
      <node concept="3clFbW" id="2AThsNt$wPP" role="jymVt">
        <node concept="3cqZAl" id="2AThsNt$wPQ" role="3clF45" />
        <node concept="3Tm1VV" id="2AThsNt$wPR" role="1B3o_S" />
        <node concept="3clFbS" id="2AThsNt$wPT" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$wPX" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$wPZ" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$wQ3" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$sjs" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$wQ4" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$wPW" resolve="nodeId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$wQ7" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$wQ9" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$wQd" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$tWz" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="2AThsNt$wQe" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$wQ6" resolve="parentId1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$wQh" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$wQj" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$wQn" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$vuA" resolve="containmentLink" />
              </node>
              <node concept="37vLTw" id="2AThsNt$wQo" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$wQg" resolve="containmentLink1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNtJ3uP" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNtJ4Eg" role="3clFbG">
              <node concept="37vLTw" id="2AThsNtJ4Mg" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNtJ2jN" resolve="index" />
              </node>
              <node concept="2OqwBi" id="2AThsNtJ3D4" role="37vLTJ">
                <node concept="Xjq3P" id="2AThsNtJ3uN" role="2Oq$k0" />
                <node concept="2OwXpG" id="2AThsNtJ3Ll" role="2OqNvi">
                  <ref role="2Oxat5" node="2AThsNtJ35w" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2AThsNt$wQr" role="3cqZAp">
            <node concept="37vLTI" id="2AThsNt$wQt" role="3clFbG">
              <node concept="37vLTw" id="2AThsNt$wQx" role="37vLTJ">
                <ref role="3cqZAo" node="2AThsNt$sp0" resolve="savedNode" />
              </node>
              <node concept="37vLTw" id="2AThsNt$wQy" role="37vLTx">
                <ref role="3cqZAo" node="2AThsNt$wQq" resolve="savedNode1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2AThsNt$wPW" role="3clF46">
          <property role="TrG5h" value="nodeId1" />
          <node concept="17QB3L" id="2AThsNt$wPV" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNt$wQ6" role="3clF46">
          <property role="TrG5h" value="parentId1" />
          <node concept="17QB3L" id="2AThsNt$wQ5" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNt$wQg" role="3clF46">
          <property role="TrG5h" value="containmentLink1" />
          <node concept="17QB3L" id="2AThsNt$wQf" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNtJ2jN" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="2AThsNtJ2zZ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2AThsNt$wQq" role="3clF46">
          <property role="TrG5h" value="savedNode1" />
          <node concept="3uibUv" id="2AThsNt$wQp" role="1tU5fm">
            <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2AThsNt$sW2" role="jymVt" />
      <node concept="3clFb_" id="2AThsNt$sMM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="originalOperation" />
        <node concept="3uibUv" id="2AThsNt$sMN" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="2AThsNt$sMO" role="1B3o_S" />
        <node concept="3clFbS" id="2AThsNt$sMQ" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$wnZ" role="3cqZAp">
            <node concept="2ShNRf" id="2AThsNt$wnX" role="3clFbG">
              <node concept="1pGfFk" id="2AThsNt$wxm" role="2ShVmc">
                <ref role="37wK5l" node="2AThsNt$j6d" resolve="DeleteChildNodeOp" />
                <node concept="37vLTw" id="2AThsNt$w$X" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$sjs" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2AThsNt$sMR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2AThsNt$t3e" role="jymVt" />
      <node concept="3clFb_" id="2AThsNt$sMU" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="2AThsNt$sMV" role="3clF45">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="2AThsNt$sMW" role="1B3o_S" />
        <node concept="3clFbS" id="2AThsNt$sN5" role="3clF47">
          <node concept="3clFbF" id="2AThsNt$tlh" role="3cqZAp">
            <node concept="2ShNRf" id="2AThsNt$tlf" role="3clFbG">
              <node concept="1pGfFk" id="2AThsNt$tuC" role="2ShVmc">
                <ref role="37wK5l" node="q4IqgjMG7X" resolve="AddChildOp" />
                <node concept="37vLTw" id="2AThsNt$usE" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$tWz" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="2AThsNt$w3M" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$vuA" resolve="containmentLink" />
                </node>
                <node concept="37vLTw" id="2AThsNtJ57c" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtJ35w" resolve="index" />
                </node>
                <node concept="37vLTw" id="2AThsNt$wdm" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt$sp0" resolve="savedNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2AThsNt$sN6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$sI3" role="EKbjA">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
    </node>
    <node concept="3uibUv" id="2AThsNt$mII" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
    <node concept="3uibUv" id="2AThsNtHeVu" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtHdQz" resolve="AbstractOp" />
    </node>
  </node>
  <node concept="312cEu" id="2AThsNt$_J9">
    <property role="TrG5h" value="NoOp" />
    <node concept="3Tm1VV" id="2AThsNt$_Ja" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNt$_JK" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
    <node concept="3uibUv" id="2AThsNt$_Xn" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
    </node>
    <node concept="3clFb_" id="2AThsNt$_JV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="2AThsNt$_JW" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="2AThsNt$_JX" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$_JY" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$_JZ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$_K6" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$_O$" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$_Oz" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNt$_JW" resolve="op" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$_K7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt$_Ka" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="2AThsNt$_Kb" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2AThsNt$_Kc" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$_Kd" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$_Ke" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$_Kg" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$A0A" role="3cqZAp">
          <node concept="Xjq3P" id="2AThsNt$A0_" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$_Kh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt$A2c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="originalOperation" />
      <node concept="3uibUv" id="2AThsNt$A2d" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$A2e" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$A2h" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$Abn" role="3cqZAp">
          <node concept="Xjq3P" id="2AThsNt$Abm" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$A2i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt$A2l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="invert" />
      <node concept="3uibUv" id="2AThsNt$A2m" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$A2n" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$A2x" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$AfP" role="3cqZAp">
          <node concept="Xjq3P" id="2AThsNt$AfO" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt$A2y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL7XhW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3cpWsb" id="2$gEJgL7XhX" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7XhY" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7Xi0" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvE8" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvE9" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvEa" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvEb" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7Xi1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL7Xi2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getVersion" />
      <node concept="3cpWsb" id="2$gEJgL7Xi3" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7Xi4" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7Xi9" role="3clF47">
        <node concept="YS8fn" id="2$gEJgL7Xxa" role="3cqZAp">
          <node concept="2ShNRf" id="2$gEJgL7Xxb" role="YScLw">
            <node concept="1pGfFk" id="2$gEJgL7Xxc" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2$gEJgL7Xxd" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7Xia" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2AThsNtHdQz">
    <property role="TrG5h" value="AbstractOp" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2AThsNtHh5U" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtHh6a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2AThsNtHh6b" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtHh6d" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2AThsNtHh6f" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtHjAw" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtHjAx" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2AThsNtHjAy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2AThsNtHjD9" role="33vP2m">
              <node concept="1pGfFk" id="2AThsNtHjCU" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtHjJq" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtHk1a" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtHjJo" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtHjAx" resolve="sb" />
            </node>
            <node concept="liA8E" id="2AThsNtHky0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="2OqwBi" id="2AThsNtHkFI" role="37wK5m">
                <node concept="2OqwBi" id="2AThsNtHkFJ" role="2Oq$k0">
                  <node concept="Xjq3P" id="2AThsNtHkFK" role="2Oq$k0" />
                  <node concept="liA8E" id="2AThsNtHkFL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="liA8E" id="2AThsNtHkFM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtHkXM" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtHlfP" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtHkXK" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtHjAx" resolve="sb" />
            </node>
            <node concept="liA8E" id="2AThsNtHlKT" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="2AThsNtHlLU" role="37wK5m">
                <property role="Xl_RC" value=" " />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNtHmKs" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNtHmKu" role="2Gsz3X">
            <property role="TrG5h" value="field" />
          </node>
          <node concept="2OqwBi" id="2AThsNtHnSD" role="2GsD0m">
            <node concept="2OqwBi" id="2AThsNtHn56" role="2Oq$k0">
              <node concept="Xjq3P" id="2AThsNtHmPD" role="2Oq$k0" />
              <node concept="liA8E" id="2AThsNtHnrd" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="2AThsNtHoEN" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getDeclaredFields()" resolve="getDeclaredFields" />
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNtHmKy" role="2LFqv$">
            <node concept="3clFbJ" id="2AThsNtIGgo" role="3cqZAp">
              <node concept="3clFbS" id="2AThsNtIGgq" role="3clFbx">
                <node concept="3N13vt" id="2AThsNtIIWl" role="3cqZAp" />
              </node>
              <node concept="2YIFZM" id="2AThsNtIIA3" role="3clFbw">
                <ref role="37wK5l" to="t6h5:~Modifier.isStatic(int)" resolve="isStatic" />
                <ref role="1Pybhc" to="t6h5:~Modifier" resolve="Modifier" />
                <node concept="2OqwBi" id="2AThsNtIIA4" role="37wK5m">
                  <node concept="2GrUjf" id="2AThsNtIIA5" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2AThsNtHmKu" resolve="field" />
                  </node>
                  <node concept="liA8E" id="2AThsNtIIA6" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Field.getModifiers()" resolve="getModifiers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtHoM9" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtHoZF" role="3clFbG">
                <node concept="2GrUjf" id="2AThsNtHoM8" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2AThsNtHmKu" resolve="field" />
                </node>
                <node concept="liA8E" id="2AThsNtHpsu" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~AccessibleObject.setAccessible(boolean)" resolve="setAccessible" />
                  <node concept="3clFbT" id="2AThsNtHpRY" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="SfApY" id="2AThsNtHwz5" role="3cqZAp">
              <node concept="3clFbS" id="2AThsNtHwz6" role="SfCbr">
                <node concept="3clFbF" id="2AThsNtHr1i" role="3cqZAp">
                  <node concept="2OqwBi" id="2AThsNtHscA" role="3clFbG">
                    <node concept="2OqwBi" id="2AThsNtHuGl" role="2Oq$k0">
                      <node concept="2OqwBi" id="2AThsNtHsX4" role="2Oq$k0">
                        <node concept="2OqwBi" id="2AThsNtHri5" role="2Oq$k0">
                          <node concept="37vLTw" id="2AThsNtHr1g" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtHjAx" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="2AThsNtHrMz" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="Xl_RD" id="2AThsNtHrN$" role="37wK5m">
                              <property role="Xl_RC" value=" " />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2AThsNtHtlt" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="2OqwBi" id="2AThsNtHtGS" role="37wK5m">
                            <node concept="2GrUjf" id="2AThsNtHtqu" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2AThsNtHmKu" resolve="field" />
                            </node>
                            <node concept="liA8E" id="2AThsNtHuik" role="2OqNvi">
                              <ref role="37wK5l" to="t6h5:~Field.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2AThsNtHvOv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="2AThsNtHw2K" role="37wK5m">
                          <property role="Xl_RC" value="=" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2AThsNtHsv9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                      <node concept="2OqwBi" id="2AThsNtHqcx" role="37wK5m">
                        <node concept="2GrUjf" id="2AThsNtHpY$" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2AThsNtHmKu" resolve="field" />
                        </node>
                        <node concept="liA8E" id="2AThsNtHqEj" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                          <node concept="Xjq3P" id="2AThsNtHqK2" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="2AThsNtHwz1" role="TEbGg">
                <node concept="3clFbS" id="2AThsNtHwz2" role="TDEfX">
                  <node concept="3clFbF" id="2AThsNtH$9Q" role="3cqZAp">
                    <node concept="2OqwBi" id="2AThsNtH$qS" role="3clFbG">
                      <node concept="37vLTw" id="2AThsNtH$9P" role="2Oq$k0">
                        <ref role="3cqZAo" node="2AThsNtHjAx" resolve="sb" />
                      </node>
                      <node concept="liA8E" id="2AThsNtH$V2" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="2OqwBi" id="2AThsNtH_cw" role="37wK5m">
                          <node concept="37vLTw" id="2AThsNtH$Wx" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtHwz3" resolve="e" />
                          </node>
                          <node concept="liA8E" id="2AThsNtH_LQ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="2AThsNtHwz3" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="2AThsNtHwz4" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtHlVo" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtHmdP" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtHlVm" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtHjAx" resolve="sb" />
            </node>
            <node concept="liA8E" id="2AThsNtHmJd" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtHh6g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL7bPQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3cpWsb" id="2$gEJgL7bPR" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7bPS" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7bPU" role="3clF47">
        <node concept="YS8fn" id="2$gEJgL7c0Z" role="3cqZAp">
          <node concept="2ShNRf" id="2$gEJgL7c10" role="YScLw">
            <node concept="1pGfFk" id="2$gEJgL7c11" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2$gEJgL7c12" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7bPV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL7bPW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getVersion" />
      <node concept="3cpWsb" id="2$gEJgL7bPX" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL7bPY" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7bQ3" role="3clF47">
        <node concept="YS8fn" id="2$gEJgL7c4w" role="3cqZAp">
          <node concept="2ShNRf" id="2$gEJgL7c4x" role="YScLw">
            <node concept="1pGfFk" id="2$gEJgL7c4y" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2$gEJgL7c4z" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL7bQ4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2AThsNtHdQ$" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtHdR8" role="EKbjA">
      <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
    </node>
  </node>
  <node concept="312cEu" id="2AThsNtJU$q">
    <property role="TrG5h" value="IdTranslator" />
    <node concept="2tJIrI" id="2AThsNtJU_o" role="jymVt" />
    <node concept="312cEg" id="2AThsNtJUBg" role="jymVt">
      <property role="TrG5h" value="localToGlobal" />
      <node concept="3Tm6S6" id="2AThsNtJUBh" role="1B3o_S" />
      <node concept="3rvAFt" id="2AThsNtJUBz" role="1tU5fm">
        <node concept="17QB3L" id="2AThsNtJUBT" role="3rvQeY" />
        <node concept="17QB3L" id="2AThsNtJUC9" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="2AThsNtJYqJ" role="33vP2m">
        <node concept="1pGfFk" id="2AThsNtJYGj" role="2ShVmc">
          <ref role="37wK5l" to="lktc:~THashMap.&lt;init&gt;()" resolve="THashMap" />
          <node concept="17QB3L" id="2AThsNtJYXE" role="1pMfVU" />
          <node concept="17QB3L" id="2AThsNtJZm9" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2AThsNtJZuw" role="jymVt">
      <property role="TrG5h" value="globalToLocal" />
      <node concept="3Tm6S6" id="2AThsNtJZux" role="1B3o_S" />
      <node concept="3rvAFt" id="2AThsNtJZuy" role="1tU5fm">
        <node concept="17QB3L" id="2AThsNtJZuz" role="3rvQeY" />
        <node concept="17QB3L" id="2AThsNtJZu$" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="2AThsNtJZu_" role="33vP2m">
        <node concept="1pGfFk" id="2AThsNtJZuA" role="2ShVmc">
          <ref role="37wK5l" to="lktc:~THashMap.&lt;init&gt;()" resolve="THashMap" />
          <node concept="17QB3L" id="2AThsNtJZuB" role="1pMfVU" />
          <node concept="17QB3L" id="2AThsNtJZuC" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtJU_t" role="jymVt" />
    <node concept="2tJIrI" id="2AThsNtJUAm" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtJU$r" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="65KWK1vskUz">
    <property role="TrG5h" value="IOTServer" />
    <node concept="3clFb_" id="65KWK1vskVT" role="jymVt">
      <property role="TrG5h" value="operationToServer" />
      <node concept="37vLTG" id="65KWK1vskXf" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vskXI" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsl56" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vskVW" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vskVX" role="3clF47" />
    </node>
    <node concept="3clFb_" id="65KWK1vsm7n" role="jymVt">
      <property role="TrG5h" value="addClient" />
      <node concept="37vLTG" id="65KWK1vsm8W" role="3clF46">
        <property role="TrG5h" value="client" />
        <node concept="3uibUv" id="65KWK1vsm9x" role="1tU5fm">
          <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsm7p" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsm7q" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsm7r" role="3clF47" />
    </node>
    <node concept="3clFb_" id="65KWK1vsma8" role="jymVt">
      <property role="TrG5h" value="removeClient" />
      <node concept="37vLTG" id="65KWK1vsma9" role="3clF46">
        <property role="TrG5h" value="client" />
        <node concept="3uibUv" id="65KWK1vsmaa" role="1tU5fm">
          <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsmab" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsmac" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsmad" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="65KWK1vskU$" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="65KWK1vskVt">
    <property role="TrG5h" value="IOTClient" />
    <node concept="3clFb_" id="65KWK1vskYN" role="jymVt">
      <property role="TrG5h" value="operationToClient" />
      <node concept="37vLTG" id="65KWK1vskZU" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vsl0p" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vskYP" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vskYQ" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vskYR" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="65KWK1vskVu" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="65KWK1vsmcB">
    <property role="TrG5h" value="OTServer" />
    <node concept="2tJIrI" id="65KWK1vsmdn" role="jymVt" />
    <node concept="312cEg" id="65KWK1vsmdJ" role="jymVt">
      <property role="TrG5h" value="clients" />
      <node concept="3Tm6S6" id="65KWK1vsmdK" role="1B3o_S" />
      <node concept="_YKpA" id="65KWK1vsmea" role="1tU5fm">
        <node concept="3uibUv" id="65KWK1vsmeD" role="_ZDj9">
          <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
        </node>
      </node>
      <node concept="2ShNRf" id="65KWK1vsn2m" role="33vP2m">
        <node concept="Tc6Ow" id="65KWK1vsn1F" role="2ShVmc">
          <node concept="3uibUv" id="65KWK1vsn1G" role="HW$YZ">
            <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsn2Y" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vsn3$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="operationToServer" />
      <node concept="37vLTG" id="65KWK1vsn3_" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vsn3A" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsn3B" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsn3C" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsn3E" role="3clF47">
        <node concept="3clFbF" id="65KWK1vsLWA" role="3cqZAp">
          <node concept="1rXfSq" id="65KWK1vsLW_" role="3clFbG">
            <ref role="37wK5l" node="65KWK1vstwR" resolve="broadcastOperation" />
            <node concept="37vLTw" id="65KWK1vsM2h" role="37wK5m">
              <ref role="3cqZAo" node="65KWK1vsn3_" resolve="op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65KWK1vsn3F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsn8O" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vstwR" role="jymVt">
      <property role="TrG5h" value="broadcastOperation" />
      <node concept="37vLTG" id="65KWK1vswyz" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vsx7E" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vstwT" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vstwU" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vstwV" role="3clF47">
        <node concept="2Gpval" id="65KWK1vsxcN" role="3cqZAp">
          <node concept="2GrKxI" id="65KWK1vsxcO" role="2Gsz3X">
            <property role="TrG5h" value="client" />
          </node>
          <node concept="37vLTw" id="65KWK1vsxef" role="2GsD0m">
            <ref role="3cqZAo" node="65KWK1vsmdJ" resolve="clients" />
          </node>
          <node concept="3clFbS" id="65KWK1vsxcQ" role="2LFqv$">
            <node concept="3clFbF" id="65KWK1vsFS3" role="3cqZAp">
              <node concept="2OqwBi" id="65KWK1vsFXC" role="3clFbG">
                <node concept="2GrUjf" id="65KWK1vsFS2" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="65KWK1vsxcO" resolve="client" />
                </node>
                <node concept="liA8E" id="65KWK1vsGat" role="2OqNvi">
                  <ref role="37wK5l" node="65KWK1vskYN" resolve="operationToClient" />
                  <node concept="37vLTw" id="65KWK1vsGq5" role="37wK5m">
                    <ref role="3cqZAo" node="65KWK1vswyz" resolve="op" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vstat" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vsn3G" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addClient" />
      <node concept="37vLTG" id="65KWK1vsn3H" role="3clF46">
        <property role="TrG5h" value="client" />
        <node concept="3uibUv" id="65KWK1vsn3I" role="1tU5fm">
          <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsn3J" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsn3K" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsn3M" role="3clF47">
        <node concept="3cpWs8" id="65KWK1vs$fN" role="3cqZAp">
          <node concept="3cpWsn" id="65KWK1vs$fO" role="3cpWs9">
            <property role="TrG5h" value="newClients" />
            <node concept="_YKpA" id="65KWK1vs$fB" role="1tU5fm">
              <node concept="3uibUv" id="65KWK1vs$fE" role="_ZDj9">
                <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
              </node>
            </node>
            <node concept="2ShNRf" id="65KWK1vs$fP" role="33vP2m">
              <node concept="Tc6Ow" id="65KWK1vs$fQ" role="2ShVmc">
                <node concept="3uibUv" id="65KWK1vs$fR" role="HW$YZ">
                  <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
                </node>
                <node concept="2OqwBi" id="65KWK1vs$fS" role="I$8f6">
                  <node concept="Xjq3P" id="65KWK1vs$fT" role="2Oq$k0" />
                  <node concept="2OwXpG" id="65KWK1vs$fU" role="2OqNvi">
                    <ref role="2Oxat5" node="65KWK1vsmdJ" resolve="clients" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vsy7N" role="3cqZAp">
          <node concept="2OqwBi" id="65KWK1vsA3L" role="3clFbG">
            <node concept="37vLTw" id="65KWK1vs$fV" role="2Oq$k0">
              <ref role="3cqZAo" node="65KWK1vs$fO" resolve="newClients" />
            </node>
            <node concept="TSZUe" id="65KWK1vsB5c" role="2OqNvi">
              <node concept="37vLTw" id="65KWK1vsBac" role="25WWJ7">
                <ref role="3cqZAo" node="65KWK1vsn3H" resolve="client" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vsBFO" role="3cqZAp">
          <node concept="37vLTI" id="65KWK1vsDf0" role="3clFbG">
            <node concept="37vLTw" id="65KWK1vsDqt" role="37vLTx">
              <ref role="3cqZAo" node="65KWK1vs$fO" resolve="newClients" />
            </node>
            <node concept="2OqwBi" id="65KWK1vsC6s" role="37vLTJ">
              <node concept="Xjq3P" id="65KWK1vsBFM" role="2Oq$k0" />
              <node concept="2OwXpG" id="65KWK1vsCm_" role="2OqNvi">
                <ref role="2Oxat5" node="65KWK1vsmdJ" resolve="clients" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65KWK1vsn3N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsncD" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vsn3O" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeClient" />
      <node concept="37vLTG" id="65KWK1vsn3P" role="3clF46">
        <property role="TrG5h" value="client" />
        <node concept="3uibUv" id="65KWK1vsn3Q" role="1tU5fm">
          <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsn3R" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsn3S" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsn3U" role="3clF47">
        <node concept="3cpWs8" id="65KWK1vsE1C" role="3cqZAp">
          <node concept="3cpWsn" id="65KWK1vsE1D" role="3cpWs9">
            <property role="TrG5h" value="newClients" />
            <node concept="_YKpA" id="65KWK1vsE1E" role="1tU5fm">
              <node concept="3uibUv" id="65KWK1vsE1F" role="_ZDj9">
                <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
              </node>
            </node>
            <node concept="2ShNRf" id="65KWK1vsE1G" role="33vP2m">
              <node concept="Tc6Ow" id="65KWK1vsE1H" role="2ShVmc">
                <node concept="3uibUv" id="65KWK1vsE1I" role="HW$YZ">
                  <ref role="3uigEE" node="65KWK1vskVt" resolve="IOTClient" />
                </node>
                <node concept="2OqwBi" id="65KWK1vsE1J" role="I$8f6">
                  <node concept="Xjq3P" id="65KWK1vsE1K" role="2Oq$k0" />
                  <node concept="2OwXpG" id="65KWK1vsE1L" role="2OqNvi">
                    <ref role="2Oxat5" node="65KWK1vsmdJ" resolve="clients" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vsE1O" role="3cqZAp">
          <node concept="2OqwBi" id="65KWK1vsE1P" role="3clFbG">
            <node concept="37vLTw" id="65KWK1vsE1Q" role="2Oq$k0">
              <ref role="3cqZAo" node="65KWK1vsE1D" resolve="newClients" />
            </node>
            <node concept="3dhRuq" id="65KWK1vsF_P" role="2OqNvi">
              <node concept="37vLTw" id="65KWK1vsF_R" role="25WWJ7">
                <ref role="3cqZAo" node="65KWK1vsn3P" resolve="client" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vsE1T" role="3cqZAp">
          <node concept="37vLTI" id="65KWK1vsE1U" role="3clFbG">
            <node concept="37vLTw" id="65KWK1vsE1V" role="37vLTx">
              <ref role="3cqZAo" node="65KWK1vsE1D" resolve="newClients" />
            </node>
            <node concept="2OqwBi" id="65KWK1vsE1W" role="37vLTJ">
              <node concept="Xjq3P" id="65KWK1vsE1X" role="2Oq$k0" />
              <node concept="2OwXpG" id="65KWK1vsE1Y" role="2OqNvi">
                <ref role="2Oxat5" node="65KWK1vsmdJ" resolve="clients" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65KWK1vsn3V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsmds" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vsmcC" role="1B3o_S" />
    <node concept="3uibUv" id="65KWK1vsmdc" role="EKbjA">
      <ref role="3uigEE" node="65KWK1vskUz" resolve="IOTServer" />
    </node>
  </node>
</model>

