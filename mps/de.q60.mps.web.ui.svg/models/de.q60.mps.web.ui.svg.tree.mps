<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.web.ui.svg.tree)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="88at" ref="r:2077b9cb-d6f5-46a2-9b75-7ca019fa40cc(de.q60.mps.web.ui.svg.ot)" />
    <import index="lhc4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.annotations(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
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
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="q4IqgjMpFz">
    <property role="TrG5h" value="IElement" />
    <node concept="3clFb_" id="65KWK1vrMvc" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="65KWK1vrMvd" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vrMve" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vrMvf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="65KWK1vrMtL" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$p$U" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="16syzq" id="2AThsNtK58p" role="3clF45">
        <ref role="16sUi3" node="2AThsNtK53p" resolve="ParentT" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$p$X" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$p$Y" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2AThsNt$qJg" role="jymVt">
      <property role="TrG5h" value="delete" />
      <node concept="3cqZAl" id="2AThsNt$qJi" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$qJj" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$qJk" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2AThsNt$pG8" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMpGS" role="jymVt">
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="q4IqgjMpIe" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="16syzq" id="q4IqgjMpJk" role="1tU5fm">
          <ref role="16sUi3" node="q4IqgjMpIA" resolve="ChildT" />
        </node>
      </node>
      <node concept="3cqZAl" id="q4IqgjMpGU" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMpGV" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMpGW" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMpKS" role="jymVt">
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="q4IqgjMpN5" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="q4IqgjMpNI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMpKT" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="16syzq" id="q4IqgjMpKU" role="1tU5fm">
          <ref role="16sUi3" node="q4IqgjMpIA" resolve="ChildT" />
        </node>
      </node>
      <node concept="3cqZAl" id="q4IqgjMpKV" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMpKW" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMpKX" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMpP7" role="jymVt">
      <property role="TrG5h" value="removeChild" />
      <node concept="37vLTG" id="q4IqgjMpUJ" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="16syzq" id="q4IqgjMpVs" role="1tU5fm">
          <ref role="16sUi3" node="q4IqgjMpIA" resolve="ChildT" />
        </node>
      </node>
      <node concept="3cqZAl" id="q4IqgjMpP9" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMpPa" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMpPb" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMpXZ" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="A3Dl8" id="q4IqgjMq2O" role="3clF45">
        <node concept="16syzq" id="q4IqgjMq3C" role="A3Ik2">
          <ref role="16sUi3" node="q4IqgjMpIA" resolve="ChildT" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjMpY2" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMpY3" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="q4IqgjMpF$" role="1B3o_S" />
    <node concept="16euLQ" id="q4IqgjMpIA" role="16eVyc">
      <property role="TrG5h" value="ChildT" />
      <node concept="3uibUv" id="q4IqgjMpK7" role="3ztrMU">
        <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      </node>
    </node>
    <node concept="16euLQ" id="2AThsNtK53p" role="16eVyc">
      <property role="TrG5h" value="ParentT" />
      <node concept="3uibUv" id="2AThsNtK57u" role="3ztrMU">
        <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="q4IqgjMpFf">
    <property role="TrG5h" value="IModel" />
    <node concept="3clFb_" id="q4IqgjMrWW" role="jymVt">
      <property role="TrG5h" value="resolveNode" />
      <node concept="37vLTG" id="q4IqgjMrXA" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="17QB3L" id="q4IqgjMrXY" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="q4IqgjMrYU" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMrWZ" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMrX0" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2AThsNt$c69" role="jymVt" />
    <node concept="3Tm1VV" id="q4IqgjMpFg" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjMpFU" role="3HQHJm">
      <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      <node concept="3uibUv" id="q4IqgjMq4H" role="11_B2D">
        <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3uibUv" id="2AThsNtK5UA" role="11_B2D">
        <ref role="3uigEE" node="2AThsNtK5xx" resolve="IModule" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="q4IqgjMpEX">
    <property role="TrG5h" value="INode" />
    <node concept="3clFb_" id="2AThsNt$9$g" role="jymVt">
      <property role="TrG5h" value="getConcept" />
      <node concept="17QB3L" id="2AThsNt$9Gk" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$9$j" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$9$k" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMV_X" role="jymVt">
      <property role="TrG5h" value="getContainmentLink" />
      <node concept="17QB3L" id="q4IqgjMVJ_" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMVA0" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMVA1" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2AThsNtJ0Xy" role="jymVt">
      <property role="TrG5h" value="getIndex" />
      <node concept="10Oyi0" id="2AThsNtJ1dO" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtJ0X_" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtJ0XA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="q4IqgjMVzK" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMqcO" role="jymVt">
      <property role="TrG5h" value="setProperty" />
      <node concept="37vLTG" id="q4IqgjMqdJ" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="q4IqgjMqe7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMqfD" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="q4IqgjMqg8" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="q4IqgjMqcQ" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMqcR" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMqcS" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMsvf" role="jymVt">
      <property role="TrG5h" value="replacePropertyRange" />
      <node concept="37vLTG" id="q4IqgjMsvg" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="q4IqgjMsvh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMs_9" role="3clF46">
        <property role="TrG5h" value="start" />
        <node concept="10Oyi0" id="q4IqgjMsAt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMsBF" role="3clF46">
        <property role="TrG5h" value="length" />
        <node concept="10Oyi0" id="q4IqgjMsD3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMsvi" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="q4IqgjMsvj" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="q4IqgjMsvk" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMsvl" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMsvm" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMqhm" role="jymVt">
      <property role="TrG5h" value="getProperty" />
      <node concept="37vLTG" id="q4IqgjMqjx" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="q4IqgjMqk7" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="q4IqgjMqkK" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMqhp" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMqhq" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMNPR" role="jymVt">
      <property role="TrG5h" value="getProperties" />
      <node concept="A3Dl8" id="q4IqgjMNVF" role="3clF45">
        <node concept="1LlUBW" id="q4IqgjMNXi" role="A3Ik2">
          <node concept="17QB3L" id="q4IqgjMNXG" role="1Lm7xW" />
          <node concept="17QB3L" id="q4IqgjMNY1" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjMNPU" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMNPV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="q4IqgjMqlm" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjMqmj" role="jymVt">
      <property role="TrG5h" value="setReference" />
      <node concept="37vLTG" id="q4IqgjMqpK" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="q4IqgjMqqv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjMqr8" role="3clF46">
        <property role="TrG5h" value="targetId" />
        <node concept="17QB3L" id="q4IqgjMqrY" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="q4IqgjMqml" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMqmm" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMqmn" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMqtO" role="jymVt">
      <property role="TrG5h" value="getReference" />
      <node concept="37vLTG" id="q4IqgjMqtP" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="q4IqgjMqtQ" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="q4IqgjMqx6" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjMqtU" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMqtV" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMNYd" role="jymVt">
      <property role="TrG5h" value="getReferences" />
      <node concept="A3Dl8" id="q4IqgjMNYe" role="3clF45">
        <node concept="1LlUBW" id="q4IqgjMNYf" role="A3Ik2">
          <node concept="17QB3L" id="q4IqgjMNYg" role="1Lm7xW" />
          <node concept="17QB3L" id="q4IqgjMNYh" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjMNYi" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMNYj" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="q4IqgjN4Xb" role="jymVt" />
    <node concept="3clFb_" id="q4IqgjN50v" role="jymVt">
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="q4IqgjN5lE" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="q4IqgjN5t$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjN50w" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="q4IqgjN6n4" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="q4IqgjN50y" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjN50z" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjN50$" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2AThsNt$c8M" role="jymVt">
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="2AThsNt$c8N" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="2AThsNt$c8O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt$c8P" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt$cd$" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$cgS" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$c8S" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$c8T" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjN50_" role="jymVt">
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="q4IqgjN5Gl" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="q4IqgjN5Ng" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjN50A" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="q4IqgjN50B" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="q4IqgjN50C" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="q4IqgjN6iG" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="q4IqgjN50E" role="3clF45" />
      <node concept="3Tm1VV" id="q4IqgjN50F" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjN50G" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2AThsNt$ck9" role="jymVt">
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="2AThsNt$cka" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="2AThsNt$ckb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt$ckc" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNt$ckd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt$cke" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt$cuv" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt$cqv" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$ckh" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$cki" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjN50N" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="q4IqgjN6fw" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="q4IqgjN6hE" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="q4IqgjN50O" role="3clF45">
        <node concept="3uibUv" id="q4IqgjN6rq" role="A3Ik2">
          <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="q4IqgjN50Q" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjN50R" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="q4IqgjMpEY" role="1B3o_S" />
    <node concept="3uibUv" id="q4IqgjMpGa" role="3HQHJm">
      <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      <node concept="3uibUv" id="q4IqgjMq5Q" role="11_B2D">
        <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3uibUv" id="2AThsNtK5pL" role="11_B2D">
        <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="q4IqgjMHcZ">
    <property role="TrG5h" value="SerializedNode" />
    <node concept="2tJIrI" id="q4IqgjMHdF" role="jymVt" />
    <node concept="312cEg" id="2AThsNt$EmZ" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tmbuc" id="2AThsNt$EVy" role="1B3o_S" />
      <node concept="17QB3L" id="2AThsNt$EVG" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2AThsNt$5Lz" role="jymVt">
      <property role="TrG5h" value="concept" />
      <node concept="3Tmbuc" id="2AThsNt$6d6" role="1B3o_S" />
      <node concept="17QB3L" id="2AThsNt$6dg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMUQG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="containmentLink" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="q4IqgjMUwN" role="1B3o_S" />
      <node concept="17QB3L" id="q4IqgjMVc_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="q4IqgjMHe6" role="jymVt">
      <property role="TrG5h" value="properties" />
      <node concept="3Tmbuc" id="q4IqgjMHg2" role="1B3o_S" />
      <node concept="3rvAFt" id="q4IqgjMHeo" role="1tU5fm">
        <node concept="17QB3L" id="q4IqgjMHeI" role="3rvQeY" />
        <node concept="17QB3L" id="q4IqgjMHeY" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="q4IqgjMHm$" role="33vP2m">
        <node concept="3rGOSV" id="q4IqgjMHme" role="2ShVmc">
          <node concept="17QB3L" id="q4IqgjMHmf" role="3rHrn6" />
          <node concept="17QB3L" id="q4IqgjMHmg" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="q4IqgjMHgi" role="jymVt">
      <property role="TrG5h" value="references" />
      <node concept="3Tmbuc" id="q4IqgjMHgj" role="1B3o_S" />
      <node concept="3rvAFt" id="q4IqgjMHgk" role="1tU5fm">
        <node concept="17QB3L" id="q4IqgjMHgl" role="3rvQeY" />
        <node concept="17QB3L" id="q4IqgjMHgm" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="q4IqgjMHoR" role="33vP2m">
        <node concept="3rGOSV" id="q4IqgjMHox" role="2ShVmc">
          <node concept="17QB3L" id="q4IqgjMHoy" role="3rHrn6" />
          <node concept="17QB3L" id="q4IqgjMHoz" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="q4IqgjMHhZ" role="jymVt">
      <property role="TrG5h" value="children" />
      <node concept="3Tmbuc" id="q4IqgjMHi0" role="1B3o_S" />
      <node concept="_YKpA" id="q4IqgjMTOE" role="1tU5fm">
        <node concept="3uibUv" id="q4IqgjMU0x" role="_ZDj9">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="q4IqgjMU7J" role="33vP2m">
        <node concept="Tc6Ow" id="q4IqgjMU6s" role="2ShVmc">
          <node concept="3uibUv" id="q4IqgjMU6t" role="HW$YZ">
            <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="q4IqgjMHdW" role="jymVt" />
    <node concept="2YIFZL" id="q4IqgjMLwy" role="jymVt">
      <property role="TrG5h" value="load" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="q4IqgjMLnD" role="3clF47">
        <node concept="3cpWs8" id="q4IqgjMLyB" role="3cqZAp">
          <node concept="3cpWsn" id="q4IqgjMLyC" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="q4IqgjMLyD" role="1tU5fm">
              <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
            </node>
            <node concept="2ShNRf" id="q4IqgjMLzJ" role="33vP2m">
              <node concept="HV5vD" id="q4IqgjMLC_" role="2ShVmc">
                <ref role="HV5vE" node="q4IqgjMHcZ" resolve="SerializedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt$6S1" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNt$8nu" role="3clFbG">
            <node concept="2OqwBi" id="2AThsNt$8XW" role="37vLTx">
              <node concept="37vLTw" id="2AThsNt$8Jm" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNt$aJO" role="2OqNvi">
                <ref role="37wK5l" node="2AThsNt$9$g" resolve="getConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNt$7lf" role="37vLTJ">
              <node concept="37vLTw" id="2AThsNt$6RZ" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
              </node>
              <node concept="2OwXpG" id="2AThsNt$7R_" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNt$5Lz" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtIqPC" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtIsto" role="3clFbG">
            <node concept="2OqwBi" id="2AThsNtIt3T" role="37vLTx">
              <node concept="37vLTw" id="2AThsNtIsPj" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtItxN" role="2OqNvi">
                <ref role="37wK5l" node="65KWK1vrMvc" resolve="getId" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtIrjj" role="37vLTJ">
              <node concept="37vLTw" id="2AThsNtIqPA" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
              </node>
              <node concept="2OwXpG" id="2AThsNtIs21" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNt$EmZ" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMWhE" role="3cqZAp">
          <node concept="37vLTI" id="q4IqgjMXBI" role="3clFbG">
            <node concept="2OqwBi" id="q4IqgjMYam" role="37vLTx">
              <node concept="37vLTw" id="q4IqgjMXVK" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
              </node>
              <node concept="liA8E" id="q4IqgjMYAL" role="2OqNvi">
                <ref role="37wK5l" node="q4IqgjMV_X" resolve="getContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="q4IqgjMWDP" role="37vLTJ">
              <node concept="37vLTw" id="q4IqgjMWhC" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
              </node>
              <node concept="2OwXpG" id="q4IqgjMX8D" role="2OqNvi">
                <ref role="2Oxat5" node="q4IqgjMUQG" resolve="containmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMO8n" role="3cqZAp">
          <node concept="2OqwBi" id="q4IqgjMOSi" role="3clFbG">
            <node concept="2OqwBi" id="q4IqgjMOju" role="2Oq$k0">
              <node concept="37vLTw" id="q4IqgjMO8l" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
              </node>
              <node concept="liA8E" id="q4IqgjMOEF" role="2OqNvi">
                <ref role="37wK5l" node="q4IqgjMNPR" resolve="getProperties" />
              </node>
            </node>
            <node concept="2es0OD" id="q4IqgjMPd4" role="2OqNvi">
              <node concept="1bVj0M" id="q4IqgjMPd6" role="23t8la">
                <node concept="3clFbS" id="q4IqgjMPd7" role="1bW5cS">
                  <node concept="3clFbF" id="q4IqgjMPjf" role="3cqZAp">
                    <node concept="37vLTI" id="q4IqgjMRws" role="3clFbG">
                      <node concept="1LFfDK" id="q4IqgjMS3M" role="37vLTx">
                        <node concept="3cmrfG" id="q4IqgjMSb4" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="q4IqgjMRBQ" role="1LFl5Q">
                          <ref role="3cqZAo" node="q4IqgjMPd8" resolve="it" />
                        </node>
                      </node>
                      <node concept="3EllGN" id="q4IqgjMQbo" role="37vLTJ">
                        <node concept="1LFfDK" id="q4IqgjMQPV" role="3ElVtu">
                          <node concept="3cmrfG" id="q4IqgjMR0O" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="q4IqgjMQmp" role="1LFl5Q">
                            <ref role="3cqZAo" node="q4IqgjMPd8" resolve="it" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="q4IqgjMPsZ" role="3ElQJh">
                          <node concept="37vLTw" id="q4IqgjMPje" role="2Oq$k0">
                            <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="q4IqgjMPEZ" role="2OqNvi">
                            <ref role="2Oxat5" node="q4IqgjMHe6" resolve="properties" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="q4IqgjMPd8" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="q4IqgjMPd9" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjMSmj" role="3cqZAp">
          <node concept="2OqwBi" id="q4IqgjMSmk" role="3clFbG">
            <node concept="2OqwBi" id="q4IqgjMSml" role="2Oq$k0">
              <node concept="37vLTw" id="q4IqgjMSmm" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
              </node>
              <node concept="liA8E" id="q4IqgjMSmn" role="2OqNvi">
                <ref role="37wK5l" node="q4IqgjMNYd" resolve="getReferences" />
              </node>
            </node>
            <node concept="2es0OD" id="q4IqgjMSmo" role="2OqNvi">
              <node concept="1bVj0M" id="q4IqgjMSmp" role="23t8la">
                <node concept="3clFbS" id="q4IqgjMSmq" role="1bW5cS">
                  <node concept="3clFbF" id="q4IqgjMSmr" role="3cqZAp">
                    <node concept="37vLTI" id="q4IqgjMSms" role="3clFbG">
                      <node concept="1LFfDK" id="q4IqgjMSmt" role="37vLTx">
                        <node concept="3cmrfG" id="q4IqgjMSmu" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="q4IqgjMSmv" role="1LFl5Q">
                          <ref role="3cqZAo" node="q4IqgjMSmB" resolve="it" />
                        </node>
                      </node>
                      <node concept="3EllGN" id="q4IqgjMSmw" role="37vLTJ">
                        <node concept="1LFfDK" id="q4IqgjMSmx" role="3ElVtu">
                          <node concept="3cmrfG" id="q4IqgjMSmy" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="q4IqgjMSmz" role="1LFl5Q">
                            <ref role="3cqZAo" node="q4IqgjMSmB" resolve="it" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="q4IqgjMSm$" role="3ElQJh">
                          <node concept="37vLTw" id="q4IqgjMSm_" role="2Oq$k0">
                            <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="q4IqgjMSVP" role="2OqNvi">
                            <ref role="2Oxat5" node="q4IqgjMHgi" resolve="references" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="q4IqgjMSmB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="q4IqgjMSmC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q4IqgjN1i9" role="3cqZAp">
          <node concept="2OqwBi" id="q4IqgjN2KK" role="3clFbG">
            <node concept="2OqwBi" id="q4IqgjN1_I" role="2Oq$k0">
              <node concept="37vLTw" id="q4IqgjN1i7" role="2Oq$k0">
                <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
              </node>
              <node concept="2OwXpG" id="q4IqgjN1Yo" role="2OqNvi">
                <ref role="2Oxat5" node="q4IqgjMHhZ" resolve="children" />
              </node>
            </node>
            <node concept="X8dFx" id="q4IqgjN45s" role="2OqNvi">
              <node concept="2OqwBi" id="q4IqgjMT8_" role="25WWJ7">
                <node concept="2OqwBi" id="q4IqgjMT8A" role="2Oq$k0">
                  <node concept="37vLTw" id="q4IqgjMT8B" role="2Oq$k0">
                    <ref role="3cqZAo" node="q4IqgjMLpo" resolve="node" />
                  </node>
                  <node concept="liA8E" id="q4IqgjMT8C" role="2OqNvi">
                    <ref role="37wK5l" node="q4IqgjMpXZ" resolve="getChildren" />
                  </node>
                </node>
                <node concept="3$u5V9" id="q4IqgjMZ1j" role="2OqNvi">
                  <node concept="1bVj0M" id="q4IqgjMZ1l" role="23t8la">
                    <node concept="3clFbS" id="q4IqgjMZ1m" role="1bW5cS">
                      <node concept="3clFbF" id="q4IqgjMZ4h" role="3cqZAp">
                        <node concept="1rXfSq" id="q4IqgjMZ4g" role="3clFbG">
                          <ref role="37wK5l" node="q4IqgjMLwy" resolve="load" />
                          <node concept="37vLTw" id="q4IqgjMZ7X" role="37wK5m">
                            <ref role="3cqZAo" node="q4IqgjMZ1n" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="q4IqgjMZ1n" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="q4IqgjMZ1o" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="q4IqgjMLDF" role="3cqZAp">
          <node concept="37vLTw" id="q4IqgjMLEd" role="3cqZAk">
            <ref role="3cqZAo" node="q4IqgjMLyC" resolve="s" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="q4IqgjMLpo" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="q4IqgjMLpV" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMLx_" role="3clF45">
        <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMLnC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="q4IqgjMHku" role="jymVt" />
    <node concept="3Tm1VV" id="q4IqgjMHd0" role="1B3o_S" />
    <node concept="2AHcQZ" id="q4IqgjNtzJ" role="2AJF6D">
      <ref role="2AI5Lk" to="lhc4:~Immutable" resolve="Immutable" />
    </node>
    <node concept="3clFb_" id="2AThsNt$EW1" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="2AThsNt$EW2" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$EW3" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EW4" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$EW5" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$EW0" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNt$EmZ" resolve="id" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$GCa" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$EW7" role="jymVt">
      <property role="TrG5h" value="getConcept" />
      <node concept="17QB3L" id="2AThsNt$EW8" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$EW9" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EWa" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$EWb" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$EW6" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNt$5Lz" resolve="concept" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$HnT" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$EWd" role="jymVt">
      <property role="TrG5h" value="getContainmentLink" />
      <node concept="17QB3L" id="2AThsNt$EWe" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$EWf" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EWg" role="3clF47">
        <node concept="3clFbF" id="2AThsNt$EWh" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNt$EWc" role="3clFbG">
            <ref role="3cqZAo" node="q4IqgjMUQG" resolve="containmentLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$I1f" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$EWj" role="jymVt">
      <property role="TrG5h" value="getProperties" />
      <node concept="3rvAFt" id="2AThsNt$EWk" role="3clF45">
        <node concept="17QB3L" id="2AThsNt$EWl" role="3rvQeY" />
        <node concept="17QB3L" id="2AThsNt$EWm" role="3rvSg0" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$EWn" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EWo" role="3clF47">
        <node concept="3clFbF" id="65KWK1vshVf" role="3cqZAp">
          <node concept="2YIFZM" id="65KWK1vshYC" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="65KWK1vsi0o" role="37wK5m">
              <ref role="3cqZAo" node="q4IqgjMHe6" resolve="properties" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$IL1" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$EWr" role="jymVt">
      <property role="TrG5h" value="getReferences" />
      <node concept="3rvAFt" id="2AThsNt$EWs" role="3clF45">
        <node concept="17QB3L" id="2AThsNt$EWt" role="3rvQeY" />
        <node concept="17QB3L" id="2AThsNt$EWu" role="3rvSg0" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt$EWv" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EWw" role="3clF47">
        <node concept="3clFbF" id="65KWK1vsicD" role="3cqZAp">
          <node concept="2YIFZM" id="65KWK1vsicF" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
            <node concept="37vLTw" id="65KWK1vsilD" role="37wK5m">
              <ref role="3cqZAo" node="q4IqgjMHgi" resolve="references" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$Jgr" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$EWz" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="_YKpA" id="2AThsNt$EW$" role="3clF45">
        <node concept="3uibUv" id="2AThsNt$EW_" role="_ZDj9">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNt$EWA" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$EWB" role="3clF47">
        <node concept="3clFbF" id="65KWK1vsiD1" role="3cqZAp">
          <node concept="2YIFZM" id="65KWK1vsiKV" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="65KWK1vsiMa" role="37wK5m">
              <ref role="3cqZAo" node="q4IqgjMHhZ" resolve="children" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt$JZm" role="jymVt" />
    <node concept="3clFb_" id="2AThsNt$L1b" role="jymVt">
      <property role="TrG5h" value="containsNode" />
      <node concept="37vLTG" id="2AThsNt$MzB" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt$N1o" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2AThsNt$N1L" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt$L1e" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt$L1f" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt$NRh" role="3cqZAp">
          <node concept="17R0WA" id="2AThsNt$Od2" role="3clFbw">
            <node concept="2OqwBi" id="2AThsNt$OoF" role="3uHU7w">
              <node concept="Xjq3P" id="2AThsNt$OdD" role="2Oq$k0" />
              <node concept="2OwXpG" id="2AThsNt$Ou9" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNt$EmZ" resolve="id" />
              </node>
            </node>
            <node concept="37vLTw" id="2AThsNt$NRM" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt$MzB" resolve="id" />
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNt$NRj" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt$OvO" role="3cqZAp">
              <node concept="3clFbT" id="2AThsNt$Pb8" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNt$QeA" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNt$QeC" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="37vLTw" id="2AThsNt$QWr" role="2GsD0m">
            <ref role="3cqZAo" node="q4IqgjMHhZ" resolve="children" />
          </node>
          <node concept="3clFbS" id="2AThsNt$QeG" role="2LFqv$">
            <node concept="3clFbJ" id="2AThsNt$R2P" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNt$Ra6" role="3clFbw">
                <node concept="2GrUjf" id="2AThsNt$R3o" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2AThsNt$QeC" resolve="child" />
                </node>
                <node concept="liA8E" id="2AThsNt$Rql" role="2OqNvi">
                  <ref role="37wK5l" node="2AThsNt$L1b" resolve="containsNode" />
                  <node concept="37vLTw" id="2AThsNt$RAV" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNt$MzB" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2AThsNt$R2R" role="3clFbx">
                <node concept="3cpWs6" id="2AThsNt$RNE" role="3cqZAp">
                  <node concept="3clFbT" id="2AThsNt$Sph" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AThsNt$TYC" role="3cqZAp">
          <node concept="3clFbT" id="2AThsNt$TZg" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2AThsNtK5xx">
    <property role="TrG5h" value="IModule" />
    <node concept="3Tm1VV" id="2AThsNtK5xy" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtK5$D" role="3HQHJm">
      <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      <node concept="3uibUv" id="2AThsNtK5$T" role="11_B2D">
        <ref role="3uigEE" node="q4IqgjMpFf" resolve="IModel" />
      </node>
      <node concept="3uibUv" id="2AThsNtK5MH" role="11_B2D">
        <ref role="3uigEE" node="2AThsNtK5E8" resolve="IRepository" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2AThsNtK5E8">
    <property role="TrG5h" value="IRepository" />
    <node concept="3Tm1VV" id="2AThsNtK5E9" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtK5EB" role="3HQHJm">
      <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      <node concept="3uibUv" id="2AThsNtK5ER" role="11_B2D">
        <ref role="3uigEE" node="2AThsNtK5xx" resolve="IModule" />
      </node>
      <node concept="3uibUv" id="2AThsNtK5HF" role="11_B2D">
        <ref role="3uigEE" node="q4IqgjMpFz" resolve="IElement" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="65KWK1vrFr1">
    <property role="TrG5h" value="SerializedModel" />
    <node concept="2tJIrI" id="65KWK1vrFsd" role="jymVt" />
    <node concept="312cEg" id="65KWK1vrKt8" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="65KWK1vrKt9" role="1B3o_S" />
      <node concept="17QB3L" id="65KWK1vrLbc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="65KWK1vrFsC" role="jymVt">
      <property role="TrG5h" value="rootNodes" />
      <node concept="3Tm6S6" id="65KWK1vrFsD" role="1B3o_S" />
      <node concept="_YKpA" id="65KWK1vrFsU" role="1tU5fm">
        <node concept="3uibUv" id="65KWK1vrFtI" role="_ZDj9">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="65KWK1vrFvh" role="33vP2m">
        <node concept="Tc6Ow" id="65KWK1vrFuA" role="2ShVmc">
          <node concept="3uibUv" id="65KWK1vrFuB" role="HW$YZ">
            <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vrFvS" role="jymVt" />
    <node concept="2YIFZL" id="65KWK1vrFxO" role="jymVt">
      <property role="TrG5h" value="load" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="65KWK1vrFxP" role="3clF47">
        <node concept="3cpWs8" id="65KWK1vrFxQ" role="3cqZAp">
          <node concept="3cpWsn" id="65KWK1vrFxR" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="65KWK1vrIoe" role="1tU5fm">
              <ref role="3uigEE" node="65KWK1vrFr1" resolve="SerializedModel" />
            </node>
            <node concept="2ShNRf" id="65KWK1vrFxT" role="33vP2m">
              <node concept="HV5vD" id="65KWK1vrJjz" role="2ShVmc">
                <ref role="HV5vE" node="65KWK1vrFr1" resolve="SerializedModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vrFy3" role="3cqZAp">
          <node concept="37vLTI" id="65KWK1vrFy4" role="3clFbG">
            <node concept="2OqwBi" id="65KWK1vrFy5" role="37vLTx">
              <node concept="37vLTw" id="65KWK1vrFy6" role="2Oq$k0">
                <ref role="3cqZAo" node="65KWK1vrFzj" resolve="model" />
              </node>
              <node concept="liA8E" id="65KWK1vrFy7" role="2OqNvi">
                <ref role="37wK5l" node="65KWK1vrMvc" resolve="getId" />
              </node>
            </node>
            <node concept="2OqwBi" id="65KWK1vrFy8" role="37vLTJ">
              <node concept="37vLTw" id="65KWK1vrFy9" role="2Oq$k0">
                <ref role="3cqZAo" node="65KWK1vrFxR" resolve="s" />
              </node>
              <node concept="2OwXpG" id="65KWK1vrSI5" role="2OqNvi">
                <ref role="2Oxat5" node="65KWK1vrKt8" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vrTTH" role="3cqZAp">
          <node concept="2OqwBi" id="65KWK1vrVLG" role="3clFbG">
            <node concept="2OqwBi" id="65KWK1vrUpx" role="2Oq$k0">
              <node concept="37vLTw" id="65KWK1vrTTF" role="2Oq$k0">
                <ref role="3cqZAo" node="65KWK1vrFxR" resolve="s" />
              </node>
              <node concept="2OwXpG" id="65KWK1vrUY7" role="2OqNvi">
                <ref role="2Oxat5" node="65KWK1vrFsC" resolve="rootNodes" />
              </node>
            </node>
            <node concept="X8dFx" id="65KWK1vrXc7" role="2OqNvi">
              <node concept="2OqwBi" id="65KWK1vrZmV" role="25WWJ7">
                <node concept="2OqwBi" id="65KWK1vrXJe" role="2Oq$k0">
                  <node concept="37vLTw" id="65KWK1vrXgj" role="2Oq$k0">
                    <ref role="3cqZAo" node="65KWK1vrFzj" resolve="model" />
                  </node>
                  <node concept="liA8E" id="65KWK1vrYKq" role="2OqNvi">
                    <ref role="37wK5l" node="q4IqgjMpXZ" resolve="getChildren" />
                  </node>
                </node>
                <node concept="3$u5V9" id="65KWK1vs05E" role="2OqNvi">
                  <node concept="1bVj0M" id="65KWK1vs05G" role="23t8la">
                    <node concept="3clFbS" id="65KWK1vs05H" role="1bW5cS">
                      <node concept="3clFbF" id="65KWK1vs0jT" role="3cqZAp">
                        <node concept="2YIFZM" id="65KWK1vs0CZ" role="3clFbG">
                          <ref role="37wK5l" node="q4IqgjMLwy" resolve="load" />
                          <ref role="1Pybhc" node="q4IqgjMHcZ" resolve="SerializedNode" />
                          <node concept="37vLTw" id="65KWK1vs0We" role="37wK5m">
                            <ref role="3cqZAo" node="65KWK1vs05I" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="65KWK1vs05I" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="65KWK1vs05J" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="65KWK1vrFzh" role="3cqZAp">
          <node concept="37vLTw" id="65KWK1vrFzi" role="3cqZAk">
            <ref role="3cqZAo" node="65KWK1vrFxR" resolve="s" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65KWK1vrFzj" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="65KWK1vrH9j" role="1tU5fm">
          <ref role="3uigEE" node="q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3uibUv" id="65KWK1vrGsu" role="3clF45">
        <ref role="3uigEE" node="65KWK1vrFr1" resolve="SerializedModel" />
      </node>
      <node concept="3Tm1VV" id="65KWK1vrFzm" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="65KWK1vrFxy" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vrFr2" role="1B3o_S" />
    <node concept="2AHcQZ" id="65KWK1vrFrT" role="2AJF6D">
      <ref role="2AI5Lk" to="lhc4:~Immutable" resolve="Immutable" />
    </node>
    <node concept="3clFb_" id="65KWK1vs5l5" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="65KWK1vs5l6" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vs5l7" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vs5l8" role="3clF47">
        <node concept="3clFbF" id="65KWK1vs5l9" role="3cqZAp">
          <node concept="37vLTw" id="65KWK1vs5l4" role="3clFbG">
            <ref role="3cqZAo" node="65KWK1vrKt8" resolve="id" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vs5NO" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vs5lb" role="jymVt">
      <property role="TrG5h" value="getRootNodes" />
      <node concept="_YKpA" id="65KWK1vs5lc" role="3clF45">
        <node concept="3uibUv" id="65KWK1vs5ld" role="_ZDj9">
          <ref role="3uigEE" node="q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="65KWK1vs5le" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vs5lf" role="3clF47">
        <node concept="3clFbF" id="65KWK1vs75y" role="3cqZAp">
          <node concept="2YIFZM" id="65KWK1vshyj" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="65KWK1vshzD" role="37wK5m">
              <ref role="3cqZAo" node="65KWK1vrFsC" resolve="rootNodes" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

