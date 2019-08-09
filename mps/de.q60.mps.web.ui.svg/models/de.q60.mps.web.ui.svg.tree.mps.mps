<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b1d968e4-0e15-46c9-9cce-63a8489d5bdd(de.q60.mps.web.ui.svg.tree.mps)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pwx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.property(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wb4m" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.link(MPS.Core/)" />
    <import index="rzjr" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.ref(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="mcvo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.language(MPS.Core/)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="b3cn" ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.web.ui.svg.tree)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
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
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
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
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
    </language>
  </registry>
  <node concept="312cEu" id="2AThsNt_OLZ">
    <property role="TrG5h" value="AdapterUtil" />
    <node concept="2tJIrI" id="2AThsNt_OMs" role="jymVt" />
    <node concept="2YIFZL" id="2AThsNt_OP$" role="jymVt">
      <property role="TrG5h" value="propertyToId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_OMP" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_ZGh" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_ZGi" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZGj" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_ZGk" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZGl" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_ZGm" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_ZJ8" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_OOQ" resolve="property" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_OQj" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_PYt" role="3clFbG">
            <node concept="1eOMI4" id="2AThsNt_PEp" role="2Oq$k0">
              <node concept="10QFUN" id="2AThsNt_PoD" role="1eOMHV">
                <node concept="37vLTw" id="2AThsNt_PoC" role="10QFUP">
                  <ref role="3cqZAo" node="2AThsNt_OOQ" resolve="property" />
                </node>
                <node concept="3uibUv" id="2AThsNt_PpZ" role="10QFUM">
                  <ref role="3uigEE" to="pwx:~SPropertyAdapterById" resolve="SPropertyAdapterById" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2AThsNt_QdJ" role="2OqNvi">
              <ref role="37wK5l" to="pwx:~SPropertyAdapterById.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_OOQ" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="2AThsNt_OPa" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNt_OO_" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_OMO" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNt_Qfg" role="jymVt">
      <property role="TrG5h" value="containentLinkToId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_Qfh" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_Z3b" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_Z3d" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZtN" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_Z$G" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZmJ" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_Zsn" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_Z53" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_Qfp" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_Qfi" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_Qfj" role="3clFbG">
            <node concept="1eOMI4" id="2AThsNt_Qfk" role="2Oq$k0">
              <node concept="10QFUN" id="2AThsNt_Qfl" role="1eOMHV">
                <node concept="37vLTw" id="2AThsNt_Qfm" role="10QFUP">
                  <ref role="3cqZAo" node="2AThsNt_Qfp" resolve="link" />
                </node>
                <node concept="3uibUv" id="2AThsNt_Qj7" role="10QFUM">
                  <ref role="3uigEE" to="wb4m:~SContainmentLinkAdapterById" resolve="SContainmentLinkAdapterById" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2AThsNt_Qfo" role="2OqNvi">
              <ref role="37wK5l" to="wb4m:~SContainmentLinkAdapterById.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_Qfp" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="2AThsNt_Qkr" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNt_Qfr" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_Qfs" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNt_Q_V" role="jymVt">
      <property role="TrG5h" value="referenceLinkToId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_Q_W" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_ZEn" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_ZEo" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZEp" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_ZEq" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZEr" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_ZEs" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_ZEt" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_QA4" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_Q_X" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_Q_Y" role="3clFbG">
            <node concept="1eOMI4" id="2AThsNt_Q_Z" role="2Oq$k0">
              <node concept="10QFUN" id="2AThsNt_QA0" role="1eOMHV">
                <node concept="37vLTw" id="2AThsNt_QA1" role="10QFUP">
                  <ref role="3cqZAo" node="2AThsNt_QA4" resolve="link" />
                </node>
                <node concept="3uibUv" id="2AThsNt_QFn" role="10QFUM">
                  <ref role="3uigEE" to="rzjr:~SReferenceLinkAdapterById" resolve="SReferenceLinkAdapterById" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2AThsNt_QA3" role="2OqNvi">
              <ref role="37wK5l" to="rzjr:~SReferenceLinkAdapterById.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_QA4" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="2AThsNt_QDZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNt_QA6" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_QA7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AThsNt_QKq" role="jymVt" />
    <node concept="2YIFZL" id="2AThsNt_Skz" role="jymVt">
      <property role="TrG5h" value="idToProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_QLV" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_ZKr" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_ZKs" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZKt" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_ZKu" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZKv" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_ZKw" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_ZRR" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_QQf" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt_RqX" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt_RqY" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="2AThsNt_RyN" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNt_ROr" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNt_RqZ" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt_Rr0" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_QPx" resolve="concept" />
              </node>
              <node concept="liA8E" id="2AThsNt_Rr1" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_QRS" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_S5H" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt_Rr2" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_RqY" resolve="properties" />
            </node>
            <node concept="1z4cxt" id="2AThsNt_SeG" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNt_SeI" role="23t8la">
                <node concept="3clFbS" id="2AThsNt_SeJ" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNt_SvK" role="3cqZAp">
                    <node concept="17R0WA" id="2AThsNt_SZS" role="3clFbG">
                      <node concept="37vLTw" id="2AThsNt_T61" role="3uHU7w">
                        <ref role="3cqZAo" node="2AThsNt_QQf" resolve="id" />
                      </node>
                      <node concept="1rXfSq" id="2AThsNt_SvJ" role="3uHU7B">
                        <ref role="37wK5l" node="2AThsNt_OP$" resolve="propertyToId" />
                        <node concept="37vLTw" id="2AThsNt_SBB" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNt_SeK" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNt_SeK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNt_SeL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_QPx" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2AThsNt_QPP" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_QQf" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_QQ_" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AThsNt_QR9" role="3clF45">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_QLU" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNt_TbD" role="jymVt">
      <property role="TrG5h" value="idToContainmentLink" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_TbE" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_ZSN" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_ZSO" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZSP" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_ZSQ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZSR" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_ZSS" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_ZST" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_Tc1" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt_TbF" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt_TbG" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="A3Dl8" id="2AThsNt_TbH" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNt_UuM" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNt_TbJ" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt_TbK" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_TbZ" resolve="concept" />
              </node>
              <node concept="liA8E" id="2AThsNt_TbL" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_TbM" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_TbN" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt_TbO" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_TbG" resolve="link" />
            </node>
            <node concept="1z4cxt" id="2AThsNt_TbP" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNt_TbQ" role="23t8la">
                <node concept="3clFbS" id="2AThsNt_TbR" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNt_TbS" role="3cqZAp">
                    <node concept="17R0WA" id="2AThsNt_TbT" role="3clFbG">
                      <node concept="37vLTw" id="2AThsNt_TbU" role="3uHU7w">
                        <ref role="3cqZAo" node="2AThsNt_Tc1" resolve="id" />
                      </node>
                      <node concept="1rXfSq" id="2AThsNt_TbV" role="3uHU7B">
                        <ref role="37wK5l" node="2AThsNt_Qfg" resolve="containentLinkToId" />
                        <node concept="37vLTw" id="2AThsNt_TbW" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNt_TbX" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNt_TbX" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNt_TbY" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_TbZ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2AThsNt_Tc0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_Tc1" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_Tc2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AThsNt_UlX" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_Tc4" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNt_UXv" role="jymVt">
      <property role="TrG5h" value="idToReferenceLink" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNt_UXw" role="3clF47">
        <node concept="3clFbJ" id="2AThsNt_ZZB" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNt_ZZC" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNt_ZZD" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNt_ZZE" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNt_ZZF" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNt_ZZG" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNt_ZZH" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNt_UXR" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNt_UXx" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNt_UXy" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="A3Dl8" id="2AThsNt_UXz" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNt_Vd4" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNt_UX_" role="33vP2m">
              <node concept="37vLTw" id="2AThsNt_UXA" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_UXP" resolve="concept" />
              </node>
              <node concept="liA8E" id="2AThsNt_UXB" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNt_UXC" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_UXD" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt_UXE" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_UXy" resolve="link" />
            </node>
            <node concept="1z4cxt" id="2AThsNt_UXF" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNt_UXG" role="23t8la">
                <node concept="3clFbS" id="2AThsNt_UXH" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNt_UXI" role="3cqZAp">
                    <node concept="17R0WA" id="2AThsNt_UXJ" role="3clFbG">
                      <node concept="37vLTw" id="2AThsNt_UXK" role="3uHU7w">
                        <ref role="3cqZAo" node="2AThsNt_UXR" resolve="id" />
                      </node>
                      <node concept="1rXfSq" id="2AThsNt_UXL" role="3uHU7B">
                        <ref role="37wK5l" node="2AThsNt_Q_V" resolve="referenceLinkToId" />
                        <node concept="37vLTw" id="2AThsNt_UXM" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNt_UXN" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNt_UXN" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNt_UXO" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_UXP" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2AThsNt_UXQ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNt_UXR" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_UXS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AThsNt_Vux" role="3clF45">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_UXU" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNtBhAx" role="jymVt">
      <property role="TrG5h" value="idToConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNtBhAy" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtBk55" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBk56" role="3cpWs9">
            <property role="TrG5h" value="conceptId" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2AThsNtBk52" role="1tU5fm">
              <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
            </node>
            <node concept="2YIFZM" id="2AThsNtBk57" role="33vP2m">
              <ref role="37wK5l" to="e8bb:~SConceptId.deserialize(java.lang.String)" resolve="deserialize" />
              <ref role="1Pybhc" to="e8bb:~SConceptId" resolve="SConceptId" />
              <node concept="37vLTw" id="2AThsNtBk58" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtBhB0" resolve="id_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtBqlT" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBqlU" role="3cpWs9">
            <property role="TrG5h" value="allLanguages" />
            <node concept="A3Dl8" id="2AThsNtBq$8" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNtBqOj" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtBqlV" role="33vP2m">
              <node concept="2YIFZM" id="2AThsNtBqlW" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <node concept="37vLTw" id="2AThsNtBqlX" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtBl_Y" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="2AThsNtBqlY" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtBuDU" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBuDV" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="2AThsNtBuDN" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
            <node concept="2OqwBi" id="2AThsNtBuDW" role="33vP2m">
              <node concept="2OqwBi" id="2AThsNtBEn7" role="2Oq$k0">
                <node concept="37vLTw" id="2AThsNtBuDX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBqlU" resolve="allLanguages" />
                </node>
                <node concept="UnYns" id="2AThsNtBEK6" role="2OqNvi">
                  <node concept="3uibUv" id="2AThsNtBESj" role="UnYnz">
                    <ref role="3uigEE" to="mcvo:~SLanguageAdapterById" resolve="SLanguageAdapterById" />
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="2AThsNtBuDY" role="2OqNvi">
                <node concept="1bVj0M" id="2AThsNtBuDZ" role="23t8la">
                  <node concept="3clFbS" id="2AThsNtBuE0" role="1bW5cS">
                    <node concept="3clFbF" id="2AThsNtBuE1" role="3cqZAp">
                      <node concept="17R0WA" id="2AThsNtBuE2" role="3clFbG">
                        <node concept="2OqwBi" id="2AThsNtBuE3" role="3uHU7w">
                          <node concept="37vLTw" id="2AThsNtBuE4" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtBk56" resolve="conceptId" />
                          </node>
                          <node concept="liA8E" id="2AThsNtBuE5" role="2OqNvi">
                            <ref role="37wK5l" to="e8bb:~SConceptId.getLanguageId()" resolve="getLanguageId" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2AThsNtBFck" role="3uHU7B">
                          <node concept="37vLTw" id="2AThsNtBuE9" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtBuEb" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2AThsNtBuEa" role="2OqNvi">
                            <ref role="37wK5l" to="mcvo:~SLanguageAdapterById.getId()" resolve="getId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2AThsNtBuEb" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2AThsNtBuEc" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtBwc6" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBwc7" role="3cpWs9">
            <property role="TrG5h" value="concepts" />
            <node concept="A3Dl8" id="2AThsNtBw$i" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNtBwF8" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtBwc8" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtBwc9" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtBuDV" resolve="language" />
              </node>
              <node concept="liA8E" id="2AThsNtBwca" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtBBvA" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBBvB" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="2AThsNtBCVA" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2OqwBi" id="2AThsNtBBvC" role="33vP2m">
              <node concept="2OqwBi" id="2AThsNtBCxG" role="2Oq$k0">
                <node concept="37vLTw" id="2AThsNtBBvD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBwc7" resolve="concepts" />
                </node>
                <node concept="UnYns" id="2AThsNtBCPj" role="2OqNvi">
                  <node concept="3uibUv" id="2AThsNtBCWi" role="UnYnz">
                    <ref role="3uigEE" to="vxxo:~SConceptAdapterById" resolve="SConceptAdapterById" />
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="2AThsNtBBvE" role="2OqNvi">
                <node concept="1bVj0M" id="2AThsNtBBvF" role="23t8la">
                  <node concept="3clFbS" id="2AThsNtBBvG" role="1bW5cS">
                    <node concept="3clFbF" id="2AThsNtBBvH" role="3cqZAp">
                      <node concept="17R0WA" id="2AThsNtBBvI" role="3clFbG">
                        <node concept="37vLTw" id="2AThsNtBBvJ" role="3uHU7w">
                          <ref role="3cqZAo" node="2AThsNtBk56" resolve="conceptId" />
                        </node>
                        <node concept="2OqwBi" id="2AThsNtBD__" role="3uHU7B">
                          <node concept="37vLTw" id="2AThsNtBBvN" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtBBvP" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2AThsNtBBvO" role="2OqNvi">
                            <ref role="37wK5l" to="vxxo:~SConceptAdapterById.getId()" resolve="getId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2AThsNtBBvP" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2AThsNtBBvQ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtBDdK" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNtBDdI" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNtBBvB" resolve="concept" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtBhB0" role="3clF46">
        <property role="TrG5h" value="id_" />
        <node concept="17QB3L" id="2AThsNtBhB1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNtBl_Y" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2AThsNtBlBg" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNtBi08" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtBhB3" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNtBi3Q" role="jymVt">
      <property role="TrG5h" value="conceptToId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2AThsNtBi3R" role="3clF47">
        <node concept="3clFbJ" id="2AThsNtByyA" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtByyC" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNtByWk" role="3cqZAp">
              <node concept="10Nm6u" id="2AThsNtBz6O" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtByRb" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtByUE" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtBy_n" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNtBi3S" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtBiIW" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtBjPT" role="3clFbG">
            <node concept="2OqwBi" id="2AThsNtBjqx" role="2Oq$k0">
              <node concept="1eOMI4" id="2AThsNtBiIU" role="2Oq$k0">
                <node concept="10QFUN" id="2AThsNtBiIR" role="1eOMHV">
                  <node concept="3uibUv" id="2AThsNtBiJn" role="10QFUM">
                    <ref role="3uigEE" to="vxxo:~SConceptAdapterById" resolve="SConceptAdapterById" />
                  </node>
                  <node concept="37vLTw" id="2AThsNtBiQB" role="10QFUP">
                    <ref role="3cqZAo" node="2AThsNtBi3S" resolve="concept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2AThsNtBjJM" role="2OqNvi">
                <ref role="37wK5l" to="vxxo:~SConceptAdapterById.getId()" resolve="getId" />
              </node>
            </node>
            <node concept="liA8E" id="2AThsNtBjXk" role="2OqNvi">
              <ref role="37wK5l" to="e8bb:~SConceptId.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtBi3S" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2AThsNtBiaZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNtBjYO" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtBi3V" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AThsNtANNV" role="jymVt" />
    <node concept="2YIFZL" id="2AThsNtANYP" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="nodeToId" />
      <node concept="37vLTG" id="2AThsNtAO4k" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2AThsNtAO4I" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtANUE" role="3clF47">
        <node concept="3clFbF" id="2AThsNtFV1k" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtFVzs" role="3clFbG">
            <node concept="2OqwBi" id="2AThsNtFV9L" role="2Oq$k0">
              <node concept="37vLTw" id="2AThsNtFV1i" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtAO4k" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtFVsG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
            <node concept="liA8E" id="2AThsNtFVLd" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNtAO31" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtANUD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AThsNtFUKM" role="jymVt" />
    <node concept="2YIFZL" id="2AThsNtFUBL" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="nodeToReference" />
      <node concept="37vLTG" id="2AThsNtFUBM" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2AThsNtFUBN" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtFUBO" role="3clF47">
        <node concept="3clFbF" id="2AThsNtFUBP" role="3cqZAp">
          <node concept="2YIFZM" id="2AThsNtFUBQ" role="3clFbG">
            <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
            <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
            <node concept="2OqwBi" id="2AThsNtFUBR" role="37wK5m">
              <node concept="37vLTw" id="2AThsNtFUBS" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtFUBM" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtFUBT" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNtFUBU" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtFUBV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AThsNtAPr0" role="jymVt" />
    <node concept="2YIFZL" id="2AThsNtAOUO" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="idToNode" />
      <node concept="37vLTG" id="2AThsNtAPix" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2AThsNtFZGs" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtAOUP" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNtAP3C" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2AThsNtAOUR" role="3clF47">
        <node concept="3clFbF" id="2AThsNtFVPe" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtFWgW" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtFZLi" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtAPix" resolve="model" />
            </node>
            <node concept="liA8E" id="2AThsNtFWod" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
              <node concept="2YIFZM" id="2AThsNtFWtc" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~SNodeId.fromString(java.lang.String)" resolve="fromString" />
                <ref role="1Pybhc" to="w1kc:~SNodeId" resolve="SNodeId" />
                <node concept="37vLTw" id="2AThsNtFWxz" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtAOUP" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNtAP11" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtAOUY" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2AThsNtBXt8" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="refToNode" />
      <node concept="37vLTG" id="2AThsNtBXt9" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2AThsNtBXAT" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtBXtb" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNtBXtc" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2AThsNtBXtd" role="3clF47">
        <node concept="3clFbF" id="2AThsNtBXte" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtBXtf" role="3clFbG">
            <node concept="liA8E" id="2AThsNtBXtg" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
              <node concept="37vLTw" id="2AThsNtBXLa" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtBXt9" resolve="repository" />
              </node>
            </node>
            <node concept="2YIFZM" id="2AThsNtBXtm" role="2Oq$k0">
              <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
              <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
              <node concept="37vLTw" id="2AThsNtBXtn" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtBXtb" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNtBXto" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtBXtp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2AThsNtBfKw" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNt_OM0" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2AThsNtDuzu">
    <property role="TrG5h" value="ModelAdapter" />
    <node concept="2tJIrI" id="2AThsNtDuzG" role="jymVt" />
    <node concept="312cEg" id="2AThsNtDu$3" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="2AThsNtDu$4" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtDu$p" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtDuzR" role="jymVt" />
    <node concept="3clFbW" id="2AThsNtDygZ" role="jymVt">
      <node concept="3cqZAl" id="2AThsNtDyh0" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtDyh1" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDyh3" role="3clF47">
        <node concept="3clFbF" id="2AThsNtDyh7" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtDyh9" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtDyhd" role="37vLTJ">
              <ref role="3cqZAo" node="2AThsNtDu$3" resolve="model" />
            </node>
            <node concept="37vLTw" id="2AThsNtDyhe" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtDyh6" resolve="model1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtDyh6" role="3clF46">
        <property role="TrG5h" value="model1" />
        <node concept="3uibUv" id="2AThsNtDyh5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtDxZD" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtDuzv" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtDu$Y" role="EKbjA">
      <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
    </node>
    <node concept="3clFb_" id="2AThsNtDu_c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="resolveNode" />
      <node concept="37vLTG" id="2AThsNtDu_d" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="17QB3L" id="2AThsNtDu_e" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AThsNtDu_f" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtDu_g" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDu_i" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtI0cU" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtI0cV" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="2AThsNtI0cQ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="2AThsNtI0cW" role="33vP2m">
              <ref role="37wK5l" node="2AThsNtAOUO" resolve="idToNode" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="37vLTw" id="2AThsNtI0cX" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtDu$3" resolve="model" />
              </node>
              <node concept="37vLTw" id="2AThsNtI0cY" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtDu_d" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtHZyC" role="3cqZAp">
          <node concept="3K4zz7" id="2AThsNtI0M4" role="3clFbG">
            <node concept="10Nm6u" id="2AThsNtI0Nd" role="3K4E3e" />
            <node concept="2ShNRf" id="2AThsNtI0Oa" role="3K4GZi">
              <node concept="1pGfFk" id="2AThsNtI17W" role="2ShVmc">
                <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
                <node concept="37vLTw" id="2AThsNtI19C" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtI0cV" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2AThsNtI0BY" role="3K4Cdx">
              <node concept="10Nm6u" id="2AThsNtI0HL" role="3uHU7w" />
              <node concept="37vLTw" id="2AThsNtI0cZ" role="3uHU7B">
                <ref role="3cqZAo" node="2AThsNtI0cV" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtDu_j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$gEJgL7_6f" role="jymVt" />
    <node concept="3clFb_" id="2$gEJgL7_rK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3uibUv" id="2$gEJgL7_rR" role="3clF45">
        <ref role="3uigEE" to="b3cn:2AThsNtK5xx" resolve="IModule" />
      </node>
      <node concept="3Tm1VV" id="2$gEJgL7_rM" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL7_rS" role="3clF47">
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
      <node concept="2AHcQZ" id="2$gEJgL7_rT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtDu_w" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="delete" />
      <node concept="3cqZAl" id="2AThsNtDu_x" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtDu_y" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDu_A" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvHs" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvHt" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvHu" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvHv" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtDu_B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtDu_C" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="2AThsNtDu_D" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNtDu_K" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtDu_F" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtDu_G" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDu_L" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvKT" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvKU" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvKV" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvKW" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtDu_M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtDu_N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="2AThsNtDu_O" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNtDu_P" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNtDu_Q" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNtDu_X" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtDu_S" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtDu_T" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDu_Y" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvOv" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvOw" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvOx" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvOy" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtDu_Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtDuA0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeChild" />
      <node concept="37vLTG" id="2AThsNtDuA1" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNtDuA8" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtDuA3" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtDuA4" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDuA9" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDvSe" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDvSf" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDvSg" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDvSh" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtDuAa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtDuAb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <node concept="A3Dl8" id="2AThsNtDuAc" role="3clF45">
        <node concept="3uibUv" id="2AThsNtDuAi" role="A3Ik2">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNtDuAe" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtDuAj" role="3clF47">
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
      <node concept="2AHcQZ" id="2AThsNtDuAk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2$gEJgL79bA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="2$gEJgL79bB" role="3clF45" />
      <node concept="3Tm1VV" id="2$gEJgL79bC" role="1B3o_S" />
      <node concept="3clFbS" id="2$gEJgL79bH" role="3clF47">
        <node concept="YS8fn" id="2$gEJgL79$y" role="3cqZAp">
          <node concept="2ShNRf" id="2$gEJgL79$z" role="YScLw">
            <node concept="1pGfFk" id="2$gEJgL79$$" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2$gEJgL79$_" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2$gEJgL79bI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2AThsNt_6ui">
    <property role="TrG5h" value="NodeAdapter" />
    <node concept="2tJIrI" id="2AThsNt_7fG" role="jymVt" />
    <node concept="312cEg" id="2AThsNt_8s6" role="jymVt">
      <property role="TrG5h" value="node" />
      <node concept="3Tmbuc" id="2AThsNt_916" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNt_kiQ" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtCGw8" role="jymVt" />
    <node concept="3clFbW" id="2AThsNtCCly" role="jymVt">
      <node concept="3cqZAl" id="2AThsNtCClz" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtCCl$" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtCClA" role="3clF47">
        <node concept="3clFbF" id="2AThsNtCClE" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtCClG" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtCClK" role="37vLTJ">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="37vLTw" id="2AThsNtCClL" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtCClD" resolve="node1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtCClD" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="2AThsNtCClC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtKZzV" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtL1$8" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3uibUv" id="2AThsNtL5gF" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtL1$b" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtL1$c" role="3clF47">
        <node concept="3clFbF" id="2AThsNtL713" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNtL712" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNt_7in" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNt_6uj" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNt_6uL" role="EKbjA">
      <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
    </node>
    <node concept="3clFb_" id="2AThsNt_6v9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="2AThsNt_6va" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vb" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vd" role="3clF47">
        <node concept="3clFbF" id="2AThsNtAT$O" role="3cqZAp">
          <node concept="2YIFZM" id="2AThsNtATC6" role="3clFbG">
            <ref role="37wK5l" node="2AThsNtANYP" resolve="nodeToId" />
            <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
            <node concept="37vLTw" id="2AThsNtATFW" role="37wK5m">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6ve" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6vf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <node concept="17QB3L" id="2AThsNt_6vg" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vh" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vj" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_nGk" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_wAc" role="3clFbG">
            <node concept="2OqwBi" id="2AThsNt_veQ" role="2Oq$k0">
              <node concept="1eOMI4" id="2AThsNt_u9b" role="2Oq$k0">
                <node concept="10QFUN" id="2AThsNt_rYA" role="1eOMHV">
                  <node concept="2OqwBi" id="2AThsNt_rYz" role="10QFUP">
                    <node concept="37vLTw" id="2AThsNt_rY$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                    <node concept="liA8E" id="2AThsNt_rY_" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="2AThsNt_swq" role="10QFUM">
                    <ref role="3uigEE" to="vxxo:~SConceptAdapterById" resolve="SConceptAdapterById" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2AThsNt_ws1" role="2OqNvi">
                <ref role="37wK5l" to="vxxo:~SConceptAdapterById.getId()" resolve="getId" />
              </node>
            </node>
            <node concept="liA8E" id="2AThsNt_xnG" role="2OqNvi">
              <ref role="37wK5l" to="e8bb:~SConceptId.serialize()" resolve="serialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6vk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6vl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContainmentLink" />
      <node concept="17QB3L" id="2AThsNt_6vm" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vn" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vp" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_Xh$" role="3cqZAp">
          <node concept="2YIFZM" id="2AThsNt_XoX" role="3clFbG">
            <ref role="37wK5l" node="2AThsNt_Qfg" resolve="containentLinkToId" />
            <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
            <node concept="2OqwBi" id="2AThsNt_X_U" role="37wK5m">
              <node concept="37vLTw" id="2AThsNt_XsX" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNt_YmQ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6vq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6vr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProperty" />
      <node concept="37vLTG" id="2AThsNt_6vs" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_6vt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6vu" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2AThsNt_6vv" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2AThsNt_6vw" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vx" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vz" role="3clF47">
        <node concept="3clFbF" id="2AThsNt_BXc" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNt_C5h" role="3clFbG">
            <node concept="37vLTw" id="2AThsNt_BXb" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNt_CLk" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="2YIFZM" id="2AThsNtA0OW" role="37wK5m">
                <ref role="37wK5l" node="2AThsNt_Skz" resolve="idToProperty" />
                <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                <node concept="2OqwBi" id="2AThsNtA32T" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtA2Ub" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2AThsNtA3KU" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AThsNtA0UL" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6vs" resolve="id" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtA1BM" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6vu" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6v$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6v_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="replacePropertyRange" />
      <node concept="37vLTG" id="2AThsNt_6vA" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_6vB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6vC" role="3clF46">
        <property role="TrG5h" value="start" />
        <node concept="10Oyi0" id="2AThsNt_6vD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6vE" role="3clF46">
        <property role="TrG5h" value="length" />
        <node concept="10Oyi0" id="2AThsNt_6vF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6vG" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2AThsNt_6vH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2AThsNt_6vI" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vJ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vL" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtA4uK" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtA4uL" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="2AThsNtA4uF" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
            <node concept="2YIFZM" id="2AThsNtA4uM" role="33vP2m">
              <ref role="37wK5l" node="2AThsNt_Skz" resolve="idToProperty" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="2OqwBi" id="2AThsNtA4uN" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtA4uO" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtA4uP" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtA4uQ" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6vA" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtA5ec" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtA5ef" role="3cpWs9">
            <property role="TrG5h" value="oldValue" />
            <node concept="17QB3L" id="2AThsNtA5ea" role="1tU5fm" />
            <node concept="2OqwBi" id="2AThsNtA5tL" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtA5ka" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtA69W" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                <node concept="37vLTw" id="2AThsNtA6gM" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtA4uL" resolve="property" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtAoxk" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtAoxm" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtAq7q" role="3cqZAp">
              <node concept="37vLTI" id="2AThsNtAqqh" role="3clFbG">
                <node concept="Xl_RD" id="2AThsNtAqrS" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="2AThsNtAq7o" role="37vLTJ">
                  <ref role="3cqZAo" node="2AThsNtA5ef" resolve="oldValue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtAp_o" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtAq4a" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtAoTZ" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNtA5ef" resolve="oldValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtA3Qa" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtA3Qb" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtA3Qc" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtA3Qd" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="2AThsNtA4uR" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtA4uL" resolve="property" />
              </node>
              <node concept="3cpWs3" id="2AThsNtAj$Q" role="37wK5m">
                <node concept="2OqwBi" id="2AThsNtAkX7" role="3uHU7w">
                  <node concept="37vLTw" id="2AThsNtAkyu" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNtA5ef" resolve="oldValue" />
                  </node>
                  <node concept="liA8E" id="2AThsNtAlwE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="3cpWs3" id="2AThsNtAnb0" role="37wK5m">
                      <node concept="37vLTw" id="2AThsNtAncy" role="3uHU7w">
                        <ref role="3cqZAo" node="2AThsNt_6vE" resolve="length" />
                      </node>
                      <node concept="37vLTw" id="2AThsNtAlHW" role="3uHU7B">
                        <ref role="3cqZAo" node="2AThsNt_6vC" resolve="start" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="2AThsNtAhLc" role="3uHU7B">
                  <node concept="2OqwBi" id="2AThsNtAfdw" role="3uHU7B">
                    <node concept="37vLTw" id="2AThsNtAenH" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtA5ef" resolve="oldValue" />
                    </node>
                    <node concept="liA8E" id="2AThsNtAfI$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                      <node concept="3cmrfG" id="2AThsNtAfR4" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="2AThsNtAgML" role="37wK5m">
                        <ref role="3cqZAo" node="2AThsNt_6vC" resolve="start" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2AThsNtAiFR" role="3uHU7w">
                    <ref role="3cqZAo" node="2AThsNt_6vG" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6vM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6vN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperty" />
      <node concept="37vLTG" id="2AThsNt_6vO" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_6vP" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="2AThsNt_6vQ" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6vR" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6vT" role="3clF47">
        <node concept="3clFbF" id="2AThsNtAu3y" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtAud7" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtAu3x" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtAuTq" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
              <node concept="2YIFZM" id="2AThsNtAv8i" role="37wK5m">
                <ref role="37wK5l" node="2AThsNt_Skz" resolve="idToProperty" />
                <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                <node concept="2OqwBi" id="2AThsNtAw99" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtAvZK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2AThsNtAwUO" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AThsNtAvfr" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6vO" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6vU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6vV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperties" />
      <node concept="A3Dl8" id="2AThsNt_6vW" role="3clF45">
        <node concept="1LlUBW" id="2AThsNt_6vX" role="A3Ik2">
          <node concept="17QB3L" id="2AThsNt_6vY" role="1Lm7xW" />
          <node concept="17QB3L" id="2AThsNt_6vZ" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6w0" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6w2" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtAxYi" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtAxYj" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="2AThsNtAyCi" role="1tU5fm">
              <node concept="3uibUv" id="2AThsNtAyOg" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtAxYk" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtAxYl" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtAxYm" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtAx18" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtAz6c" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtAxYn" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtAxYj" resolve="properties" />
            </node>
            <node concept="3$u5V9" id="2AThsNtAzo1" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNtAzo3" role="23t8la">
                <node concept="3clFbS" id="2AThsNtAzo4" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNtAztf" role="3cqZAp">
                    <node concept="1Ls8ON" id="2AThsNtA_gk" role="3clFbG">
                      <node concept="2YIFZM" id="2AThsNtAAka" role="1Lso8e">
                        <ref role="37wK5l" node="2AThsNt_OP$" resolve="propertyToId" />
                        <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                        <node concept="37vLTw" id="2AThsNtAAs5" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNtAzo5" resolve="it" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2AThsNtAzCY" role="1Lso8e">
                        <node concept="37vLTw" id="2AThsNtAzte" role="2Oq$k0">
                          <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                        </node>
                        <node concept="liA8E" id="2AThsNtA$n9" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                          <node concept="37vLTw" id="2AThsNtA$yh" role="37wK5m">
                            <ref role="3cqZAo" node="2AThsNtAzo5" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNtAzo5" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNtAzo6" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6w3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6w4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReference" />
      <node concept="37vLTG" id="2AThsNt_6w5" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_6w6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6w7" role="3clF46">
        <property role="TrG5h" value="targetId" />
        <node concept="17QB3L" id="2AThsNt_6w8" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2AThsNt_6w9" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6wa" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wc" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtAK3v" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtAK3w" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="2AThsNtAK3q" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="2AThsNtAREx" role="33vP2m">
              <ref role="37wK5l" node="2AThsNtAOUO" resolve="idToNode" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="2OqwBi" id="2AThsNtG3IB" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtARI$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtG4rk" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtASta" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6w7" resolve="targetId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtAAzW" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtAAG1" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtAAzV" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtAKSJ" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="2YIFZM" id="2AThsNtALKl" role="37wK5m">
                <ref role="37wK5l" node="2AThsNt_UXv" resolve="idToReferenceLink" />
                <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                <node concept="2OqwBi" id="2AThsNtAMZ2" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtAMQm" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2AThsNtANHE" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AThsNtALKm" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6w5" resolve="id" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtAMCp" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtAK3w" resolve="target" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6wd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6we" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReference" />
      <node concept="37vLTG" id="2AThsNt_6wf" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2AThsNt_6wg" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="2AThsNt_6wh" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6wi" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wk" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtAWHu" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtAWHv" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="2AThsNtAWHr" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
            <node concept="2OqwBi" id="2AThsNtAWHw" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtAWHx" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtAWHy" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                <node concept="2YIFZM" id="2AThsNtAWHz" role="37wK5m">
                  <ref role="37wK5l" node="2AThsNt_UXv" resolve="idToReferenceLink" />
                  <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtB098" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtAZZl" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                    <node concept="liA8E" id="2AThsNtB0RI" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2AThsNtAWH$" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNt_6wf" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtAYel" role="3cqZAp">
          <node concept="2YIFZM" id="2AThsNtAYkA" role="3clFbG">
            <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
            <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
            <node concept="2OqwBi" id="2AThsNtAXwj" role="37wK5m">
              <node concept="37vLTw" id="2AThsNtAWH_" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNtAWHv" resolve="reference" />
              </node>
              <node concept="liA8E" id="2AThsNtAXFu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6wl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6wm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferences" />
      <node concept="A3Dl8" id="2AThsNt_6wn" role="3clF45">
        <node concept="1LlUBW" id="2AThsNt_6wo" role="A3Ik2">
          <node concept="17QB3L" id="2AThsNt_6wp" role="1Lm7xW" />
          <node concept="17QB3L" id="2AThsNt_6wq" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6wr" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wt" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtB1XB" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtB1XC" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="2OqwBi" id="2AThsNtB1XD" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtB1XE" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtB1XF" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
              </node>
            </node>
            <node concept="A3Dl8" id="2AThsNtB3Ma" role="1tU5fm">
              <node concept="3qUE_q" id="2AThsNtB3AN" role="A3Ik2">
                <node concept="3uibUv" id="2AThsNtB3AO" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtB0YY" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtB4aT" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtB1XG" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtB1XC" resolve="references" />
            </node>
            <node concept="3$u5V9" id="2AThsNtB4tj" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNtB4tl" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2AThsNtB4tm" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNtB4KF" role="3cqZAp">
                    <node concept="1Ls8ON" id="2AThsNtB4KE" role="3clFbG">
                      <node concept="2YIFZM" id="2AThsNtB53S" role="1Lso8e">
                        <ref role="37wK5l" node="2AThsNt_Q_V" resolve="referenceLinkToId" />
                        <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                        <node concept="2OqwBi" id="2AThsNtB5od" role="37wK5m">
                          <node concept="37vLTw" id="2AThsNtB5a5" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtB4tn" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2AThsNtB5$P" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="2AThsNtB5Wb" role="1Lso8e">
                        <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                        <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
                        <node concept="2OqwBi" id="2AThsNtB5Wc" role="37wK5m">
                          <node concept="37vLTw" id="2AThsNtB69h" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtB4tn" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2AThsNtB5We" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNtB4tn" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNtB4to" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6wu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6wv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="2AThsNt_6ww" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="17QB3L" id="2AThsNt_6wx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6wy" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6wz" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNt_6w$" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6w_" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wB" role="3clF47">
        <node concept="3clFbF" id="2AThsNtB6qi" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtB6yn" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtB6qh" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtB7fs" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="2YIFZM" id="2AThsNtB7we" role="37wK5m">
                <ref role="37wK5l" node="2AThsNt_TbD" resolve="idToContainmentLink" />
                <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                <node concept="2OqwBi" id="2AThsNtB9ae" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtB91y" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2AThsNtB9Tg" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AThsNtB7Af" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6ww" resolve="link" />
                </node>
              </node>
              <node concept="2OqwBi" id="2AThsNtBdAU" role="37wK5m">
                <node concept="1eOMI4" id="2AThsNtBcKA" role="2Oq$k0">
                  <node concept="10QFUN" id="2AThsNtBbtD" role="1eOMHV">
                    <node concept="37vLTw" id="2AThsNtBbtC" role="10QFUP">
                      <ref role="3cqZAo" node="2AThsNt_6wy" resolve="child" />
                    </node>
                    <node concept="3uibUv" id="2AThsNtBc41" role="10QFUM">
                      <ref role="3uigEE" node="2AThsNt_6ui" resolve="NodeAdapter" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2AThsNtBetG" role="2OqNvi">
                  <ref role="2Oxat5" node="2AThsNt_8s6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6wC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6wD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="2AThsNt_6wE" role="3clF46">
        <property role="TrG5h" value="linkId" />
        <node concept="17QB3L" id="2AThsNt_6wF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6wG" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6wH" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt_6wI" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6wJ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wL" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtCxX0" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtCxX1" role="3cpWs9">
            <property role="TrG5h" value="deserialized" />
            <node concept="3uibUv" id="2AThsNtCxWW" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="2AThsNtCxX2" role="33vP2m">
              <node concept="2ShNRf" id="2AThsNtCxX3" role="2Oq$k0">
                <node concept="1pGfFk" id="2AThsNtCxX4" role="2ShVmc">
                  <ref role="37wK5l" node="2AThsNtCozB" resolve="NodeDeserializer" />
                  <node concept="2OqwBi" id="2AThsNtCxX6" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtCxX7" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                    <node concept="liA8E" id="2AThsNtCxX8" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2AThsNtCxXa" role="2OqNvi">
                <ref role="37wK5l" node="2AThsNtCaB0" resolve="deserialize" />
                <node concept="37vLTw" id="2AThsNtCxXb" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6wG" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtCzba" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtCzbb" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2AThsNtCzb5" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2YIFZM" id="2AThsNtCzbc" role="33vP2m">
              <ref role="37wK5l" node="2AThsNt_TbD" resolve="idToContainmentLink" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="2OqwBi" id="2AThsNtCzbd" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtCzbe" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtCzbf" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtCOfd" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6wE" resolve="linkId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtCkUw" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtCl2B" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtCkUv" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtClJy" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="37vLTw" id="2AThsNtCzbh" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCzbb" resolve="link" />
              </node>
              <node concept="37vLTw" id="2AThsNtCxXc" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCxX1" resolve="deserialized" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AThsNtC$bc" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtC_wS" role="3cqZAk">
            <node concept="1pGfFk" id="2AThsNtCI0K" role="2ShVmc">
              <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
              <node concept="37vLTw" id="2AThsNtCJlu" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCxX1" resolve="deserialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6wM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6wP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="2AThsNt_6wQ" role="3clF46">
        <property role="TrG5h" value="linkId" />
        <node concept="17QB3L" id="2AThsNt_6wR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6wS" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNt_6wT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6wU" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6wV" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNt_6wW" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6wX" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6wZ" role="3clF47">
        <node concept="YS8fn" id="2AThsNtDi9p" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtDibk" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtDitQ" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtDi_6" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6x0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6x1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="2AThsNt_6x2" role="3clF46">
        <property role="TrG5h" value="linkId" />
        <node concept="17QB3L" id="2AThsNt_6x3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6x4" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNt_6x5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6x6" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6x7" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNt_6x8" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6x9" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6xb" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtCOL8" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtCOL9" role="3cpWs9">
            <property role="TrG5h" value="deserialized" />
            <node concept="3uibUv" id="2AThsNtCOLa" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="2AThsNtCOLb" role="33vP2m">
              <node concept="2ShNRf" id="2AThsNtCOLc" role="2Oq$k0">
                <node concept="1pGfFk" id="2AThsNtCOLd" role="2ShVmc">
                  <ref role="37wK5l" node="2AThsNtCozB" resolve="NodeDeserializer" />
                  <node concept="2OqwBi" id="2AThsNtCOLf" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtCOLg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                    <node concept="liA8E" id="2AThsNtCOLh" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2AThsNtCOLj" role="2OqNvi">
                <ref role="37wK5l" node="2AThsNtCaB0" resolve="deserialize" />
                <node concept="37vLTw" id="2AThsNtCOLk" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNt_6x6" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtCOLl" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtCOLm" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2AThsNtCOLn" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2YIFZM" id="2AThsNtCOLo" role="33vP2m">
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <ref role="37wK5l" node="2AThsNt_TbD" resolve="idToContainmentLink" />
              <node concept="2OqwBi" id="2AThsNtCOLp" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtCOLq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtCOLr" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtCOLs" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6x2" resolve="linkId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtD3Qx" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtD3Qy" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="2AThsNtD5jQ" role="1tU5fm">
              <node concept="3qUE_q" id="2AThsNtD3Qh" role="A3Ik2">
                <node concept="3uibUv" id="2AThsNtD3Qi" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtD3Qz" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtD3Q$" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtD3Q_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                <node concept="37vLTw" id="2AThsNtD3QA" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtCOLm" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtDf3D" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtDf3E" role="3cpWs9">
            <property role="TrG5h" value="anchor" />
            <node concept="3uibUv" id="2AThsNtDf3F" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="2AThsNtDf3G" role="33vP2m">
              <node concept="2OqwBi" id="2AThsNtDf3H" role="2Oq$k0">
                <node concept="37vLTw" id="2AThsNtDf3I" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtD3Qy" resolve="children" />
                </node>
                <node concept="7r0gD" id="2AThsNtDf3J" role="2OqNvi">
                  <node concept="37vLTw" id="2AThsNtDf3K" role="7T0AP">
                    <ref role="3cqZAo" node="2AThsNt_6x4" resolve="index" />
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="2AThsNtDf3L" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtCOLt" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtCOLu" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtCOLv" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtCOLw" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
              <node concept="37vLTw" id="2AThsNtCOLx" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCOLm" resolve="link" />
              </node>
              <node concept="37vLTw" id="2AThsNtCOLy" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCOL9" resolve="deserialized" />
              </node>
              <node concept="37vLTw" id="2AThsNtDi0B" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtDf3E" resolve="anchor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AThsNtCOLz" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtCOL$" role="3cqZAk">
            <node concept="1pGfFk" id="2AThsNtCOL_" role="2ShVmc">
              <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
              <node concept="37vLTw" id="2AThsNtCOLA" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCOL9" resolve="deserialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6xc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6xf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="2AThsNt_6xg" role="3clF46">
        <property role="TrG5h" value="linkId" />
        <node concept="17QB3L" id="2AThsNt_6xh" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="2AThsNt_6xi" role="3clF45">
        <node concept="3uibUv" id="2AThsNt_6xj" role="A3Ik2">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6xk" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6xm" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtDje3" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtDje4" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2AThsNtDje5" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2YIFZM" id="2AThsNtDje6" role="33vP2m">
              <ref role="37wK5l" node="2AThsNt_TbD" resolve="idToContainmentLink" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="2OqwBi" id="2AThsNtDje7" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtDje8" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtDje9" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="37vLTw" id="2AThsNtDjea" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNt_6xg" resolve="linkId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtDlMQ" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtDlMR" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="2AThsNtDlMS" role="1tU5fm">
              <node concept="3qUE_q" id="2AThsNtDlMT" role="A3Ik2">
                <node concept="3uibUv" id="2AThsNtDlMU" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtDlMV" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtDlMW" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtDlMX" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                <node concept="37vLTw" id="2AThsNtDlMY" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtDje4" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtDjRC" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtDooy" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtDl9C" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtDlMR" resolve="children" />
            </node>
            <node concept="3$u5V9" id="2AThsNtDoIo" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNtDoIq" role="23t8la">
                <node concept="3clFbS" id="2AThsNtDoIr" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNtDoOs" role="3cqZAp">
                    <node concept="2ShNRf" id="2AThsNtDoOq" role="3clFbG">
                      <node concept="1pGfFk" id="2AThsNtDp9z" role="2ShVmc">
                        <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
                        <node concept="37vLTw" id="2AThsNtDpIo" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNtDoIs" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNtDoIs" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNtDoIt" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6xn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6xo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3uibUv" id="2AThsNt_6xp" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMpFz" resolve="IElement" />
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6xq" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6xu" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtDASt" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtDASu" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="2AThsNtDASs" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="2AThsNtDASv" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtDASw" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtDASx" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtDCaf" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtDCah" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNtDE20" role="3cqZAp">
              <node concept="2ShNRf" id="2AThsNtDE22" role="3cqZAk">
                <node concept="1pGfFk" id="2AThsNtDE23" role="2ShVmc">
                  <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
                  <node concept="37vLTw" id="2AThsNtDE24" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtDASu" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2AThsNtDD3u" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtDDrt" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtDCyQ" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNtDASu" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtDIft" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtDIfu" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="2AThsNtDIfr" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="2AThsNtDIfv" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtDIfw" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtDIfx" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtDNKz" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtDNK_" role="3clFbx">
            <node concept="3cpWs6" id="2AThsNtDQ09" role="3cqZAp">
              <node concept="2ShNRf" id="2AThsNtDRS2" role="3cqZAk">
                <node concept="1pGfFk" id="2AThsNtDRS3" role="2ShVmc">
                  <ref role="37wK5l" node="2AThsNtDygZ" resolve="ModelAdapter" />
                  <node concept="37vLTw" id="2AThsNtDRS4" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtDIfu" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2AThsNtDPOX" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtDPUK" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtDPCz" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNtDIfu" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2AThsNtDWRA" role="3cqZAp">
          <node concept="10Nm6u" id="2AThsNtDXRR" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6xv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6xy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="delete" />
      <node concept="3cqZAl" id="2AThsNt_6xz" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6x$" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6xC" role="3clF47">
        <node concept="3clFbJ" id="2AThsNtDZsQ" role="3cqZAp">
          <node concept="3y3z36" id="2AThsNtE0yb" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtE0zX" role="3uHU7w" />
            <node concept="2OqwBi" id="2AThsNtDZCn" role="3uHU7B">
              <node concept="37vLTw" id="2AThsNtDZuL" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtE0m7" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNtDZsS" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtE1e1" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtE2ca" role="3clFbG">
                <node concept="2OqwBi" id="2AThsNtE1m6" role="2Oq$k0">
                  <node concept="37vLTw" id="2AThsNtE1e0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2AThsNtE23S" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="liA8E" id="2AThsNtE31I" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
                  <node concept="37vLTw" id="2AThsNtE3e8" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2AThsNtE3Q8" role="3eNLev">
            <node concept="3y3z36" id="2AThsNtE6jG" role="3eO9$A">
              <node concept="10Nm6u" id="2AThsNtE6XK" role="3uHU7w" />
              <node concept="2OqwBi" id="2AThsNtE43p" role="3uHU7B">
                <node concept="37vLTw" id="2AThsNtE3TN" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtE4L9" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2AThsNtE3Qa" role="3eOfB_">
              <node concept="3clFbF" id="2AThsNtE70I" role="3cqZAp">
                <node concept="2OqwBi" id="2AThsNtE7Zx" role="3clFbG">
                  <node concept="2OqwBi" id="2AThsNtE78N" role="2Oq$k0">
                    <node concept="37vLTw" id="2AThsNtE70H" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                    <node concept="liA8E" id="2AThsNtE7Q_" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2AThsNtE8Mt" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.removeRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="removeRootNode" />
                    <node concept="37vLTw" id="2AThsNtE8Rn" role="37wK5m">
                      <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6xD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6xE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="2AThsNt_6xF" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6xM" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNt_6xH" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6xI" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6xN" role="3clF47">
        <node concept="YS8fn" id="2AThsNtE9rM" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtE9rN" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtE9rO" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtE9rP" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6xO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6xP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChild" />
      <node concept="37vLTG" id="2AThsNt_6xQ" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AThsNt_6xR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AThsNt_6xS" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6xZ" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNt_6xU" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6xV" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6y0" role="3clF47">
        <node concept="YS8fn" id="2AThsNtE9vt" role="3cqZAp">
          <node concept="2ShNRf" id="2AThsNtE9vu" role="YScLw">
            <node concept="1pGfFk" id="2AThsNtE9vv" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="2AThsNtE9vw" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6y1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6y2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeChild" />
      <node concept="37vLTG" id="2AThsNt_6y3" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="2AThsNt_6ya" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNt_6y5" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNt_6y6" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6yb" role="3clF47">
        <node concept="3clFbF" id="2AThsNtE9$A" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtE9GF" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtE9$_" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtEaq_" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
              <node concept="2OqwBi" id="2AThsNtEbUs" role="37wK5m">
                <node concept="1eOMI4" id="2AThsNtEaxU" role="2Oq$k0">
                  <node concept="10QFUN" id="2AThsNtEaxR" role="1eOMHV">
                    <node concept="3uibUv" id="2AThsNtEa$T" role="10QFUM">
                      <ref role="3uigEE" node="2AThsNt_6ui" resolve="NodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="2AThsNtEbdj" role="10QFUP">
                      <ref role="3cqZAo" node="2AThsNt_6y3" resolve="child" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2AThsNtEcNd" role="2OqNvi">
                  <ref role="2Oxat5" node="2AThsNt_8s6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6yc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNt_6yd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <node concept="A3Dl8" id="2AThsNt_6ye" role="3clF45">
        <node concept="3uibUv" id="2AThsNt_6yk" role="A3Ik2">
          <ref role="3uigEE" to="b3cn:q4IqgjMpEX" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2AThsNt_6yg" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNt_6yl" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtEemY" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtEemZ" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="2AThsNtEf5q" role="1tU5fm">
              <node concept="3qUE_q" id="2AThsNtEemM" role="A3Ik2">
                <node concept="3uibUv" id="2AThsNtEemN" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2AThsNtEen0" role="33vP2m">
              <node concept="37vLTw" id="2AThsNtEen1" role="2Oq$k0">
                <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
              </node>
              <node concept="liA8E" id="2AThsNtEen2" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtEdnz" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtEfux" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtEen3" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtEemZ" resolve="children" />
            </node>
            <node concept="3$u5V9" id="2AThsNtEfKT" role="2OqNvi">
              <node concept="1bVj0M" id="2AThsNtEfKV" role="23t8la">
                <node concept="3clFbS" id="2AThsNtEfKW" role="1bW5cS">
                  <node concept="3clFbF" id="2AThsNtEfQX" role="3cqZAp">
                    <node concept="2ShNRf" id="2AThsNtEfQV" role="3clFbG">
                      <node concept="1pGfFk" id="2AThsNtEgc6" role="2ShVmc">
                        <ref role="37wK5l" node="2AThsNtCCly" resolve="NodeAdapter" />
                        <node concept="37vLTw" id="2AThsNtEgLl" role="37wK5m">
                          <ref role="3cqZAo" node="2AThsNtEfKX" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2AThsNtEfKX" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2AThsNtEfKY" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNt_6ym" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtJ9WR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIndex" />
      <node concept="10Oyi0" id="2AThsNtJ9WS" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtJ9WT" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtJ9WV" role="3clF47">
        <node concept="3clFbF" id="2AThsNtJbSV" role="3cqZAp">
          <node concept="2YIFZM" id="2AThsNtJbUN" role="3clFbG">
            <ref role="37wK5l" to="i8bi:5IkW5anFey3" resolve="getIndexInParent" />
            <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
            <node concept="37vLTw" id="2AThsNtJbXu" role="37wK5m">
              <ref role="3cqZAo" node="2AThsNt_8s6" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtJ9WW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2AThsNtBgg5">
    <property role="TrG5h" value="NodeDeserializer" />
    <node concept="2tJIrI" id="2AThsNtBgg_" role="jymVt" />
    <node concept="312cEg" id="2AThsNtFYwE" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="2AThsNtFYwF" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtFZ65" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="2AThsNtBSVB" role="jymVt">
      <property role="TrG5h" value="pendingReferences" />
      <node concept="3Tm6S6" id="2AThsNtBSVC" role="1B3o_S" />
      <node concept="_YKpA" id="2AThsNtBT5I" role="1tU5fm">
        <node concept="1ajhzC" id="2AThsNtBT60" role="_ZDj9">
          <node concept="3cqZAl" id="2AThsNtBT6n" role="1ajl9A" />
        </node>
      </node>
      <node concept="2ShNRf" id="2AThsNtBT92" role="33vP2m">
        <node concept="Tc6Ow" id="2AThsNtBT8D" role="2ShVmc">
          <node concept="1ajhzC" id="2AThsNtBT8E" role="HW$YZ">
            <node concept="3cqZAl" id="2AThsNtBT8F" role="1ajl9A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtBFGy" role="jymVt" />
    <node concept="3clFbW" id="2AThsNtCozB" role="jymVt">
      <node concept="3cqZAl" id="2AThsNtCozC" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtCozD" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtCozF" role="3clF47">
        <node concept="3clFbF" id="2AThsNtFZ82" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtFZvo" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtFZzP" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtFXDQ" resolve="model" />
            </node>
            <node concept="2OqwBi" id="2AThsNtFZei" role="37vLTJ">
              <node concept="Xjq3P" id="2AThsNtFZ80" role="2Oq$k0" />
              <node concept="2OwXpG" id="2AThsNtFZjP" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNtFYwE" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtFXDQ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2AThsNtFZ6o" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtCtgi" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtCaB0" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="37vLTG" id="2AThsNtCaB1" role="3clF46">
        <property role="TrG5h" value="serialized" />
        <node concept="3uibUv" id="2AThsNtCaB2" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNtCaB3" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="2AThsNtCeoc" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtCaB5" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtCf6t" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtCf6u" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2AThsNtCf6s" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="2AThsNtCf6v" role="33vP2m">
              <ref role="37wK5l" node="2AThsNtBggM" resolve="deserialize_" />
              <node concept="37vLTw" id="2AThsNtCf6w" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtCaB1" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNtCf9s" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNtCf9u" role="2Gsz3X">
            <property role="TrG5h" value="pending" />
          </node>
          <node concept="37vLTw" id="2AThsNtCfbT" role="2GsD0m">
            <ref role="3cqZAo" node="2AThsNtBSVB" resolve="pendingReferences" />
          </node>
          <node concept="3clFbS" id="2AThsNtCf9y" role="2LFqv$">
            <node concept="3clFbF" id="2AThsNtCfj8" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtCfjm" role="3clFbG">
                <node concept="2GrUjf" id="2AThsNtCfj7" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2AThsNtCf9u" resolve="pending" />
                </node>
                <node concept="1Bd96e" id="2AThsNtCfqy" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtCfzK" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtCgl9" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtCfzI" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtBSVB" resolve="pendingReferences" />
            </node>
            <node concept="2Kehj3" id="2AThsNtChwi" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtCf2T" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNtCf6x" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNtCf6u" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtC9fI" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtBggM" role="jymVt">
      <property role="TrG5h" value="deserialize_" />
      <node concept="37vLTG" id="2AThsNtBgjl" role="3clF46">
        <property role="TrG5h" value="serialized" />
        <node concept="3uibUv" id="2AThsNtBgjH" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
        </node>
      </node>
      <node concept="3uibUv" id="2AThsNtBGVe" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tmbuc" id="2AThsNtC9Aq" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtBggQ" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtBNY3" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBNY4" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="2AThsNtBNXY" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2YIFZM" id="2AThsNtBNY5" role="33vP2m">
              <ref role="37wK5l" node="2AThsNtBhAx" resolve="idToConcept" />
              <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
              <node concept="2OqwBi" id="2AThsNtBNY6" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtBNY7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBgjl" resolve="serialized" />
                </node>
                <node concept="liA8E" id="2AThsNtBNY8" role="2OqNvi">
                  <ref role="37wK5l" to="b3cn:2AThsNt$EW7" resolve="getConcept" />
                </node>
              </node>
              <node concept="2OqwBi" id="2AThsNtGb1X" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtGaCh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtFYwE" resolve="model" />
                </node>
                <node concept="liA8E" id="2AThsNtGbxM" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AThsNtBglq" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtBglr" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2AThsNtBgls" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2ShNRf" id="2AThsNtBgmv" role="33vP2m">
              <node concept="1pGfFk" id="2AThsNtBhvW" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SNode.&lt;init&gt;(org.jetbrains.mps.openapi.language.SConcept)" resolve="SNode" />
                <node concept="37vLTw" id="2AThsNtBNYa" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtBNY4" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtIf1Q" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtIft$" role="3clFbG">
            <node concept="1eOMI4" id="2AThsNtIg8o" role="2Oq$k0">
              <node concept="10QFUN" id="2AThsNtIg8n" role="1eOMHV">
                <node concept="37vLTw" id="2AThsNtIg8m" role="10QFUP">
                  <ref role="3cqZAo" node="2AThsNtBglr" resolve="node" />
                </node>
                <node concept="3uibUv" id="2AThsNtIg96" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2AThsNtIgib" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId)" resolve="setId" />
              <node concept="2YIFZM" id="2AThsNtIg$b" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~SNodeId.fromString(java.lang.String)" resolve="fromString" />
                <ref role="1Pybhc" to="w1kc:~SNodeId" resolve="SNodeId" />
                <node concept="2OqwBi" id="2AThsNtIgVV" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtIgNm" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNtBgjl" resolve="serialized" />
                  </node>
                  <node concept="liA8E" id="2AThsNtIh5Z" role="2OqNvi">
                    <ref role="37wK5l" to="b3cn:2AThsNt$EW1" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNtBH7I" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNtBH7K" role="2Gsz3X">
            <property role="TrG5h" value="serializedChild" />
          </node>
          <node concept="2OqwBi" id="2AThsNtBHof" role="2GsD0m">
            <node concept="37vLTw" id="2AThsNtBHek" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtBgjl" resolve="serialized" />
            </node>
            <node concept="liA8E" id="2AThsNtBHwY" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:2AThsNt$EWz" resolve="getChildren" />
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNtBH7O" role="2LFqv$">
            <node concept="3cpWs8" id="2AThsNtBKHb" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtBKHc" role="3cpWs9">
                <property role="TrG5h" value="deserializedChild" />
                <node concept="3uibUv" id="2AThsNtBKH7" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="1rXfSq" id="2AThsNtBKHd" role="33vP2m">
                  <ref role="37wK5l" node="2AThsNtBggM" resolve="deserialize_" />
                  <node concept="2GrUjf" id="2AThsNtBKHe" role="37wK5m">
                    <ref role="2Gs0qQ" node="2AThsNtBH7K" resolve="serializedChild" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2AThsNtBM1Y" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtBM1Z" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3uibUv" id="2AThsNtBM1U" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="2YIFZM" id="2AThsNtBM20" role="33vP2m">
                  <ref role="37wK5l" node="2AThsNt_TbD" resolve="idToContainmentLink" />
                  <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="37vLTw" id="2AThsNtBO$N" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBNY4" resolve="concept" />
                  </node>
                  <node concept="2OqwBi" id="2AThsNtBM24" role="37wK5m">
                    <node concept="2GrUjf" id="2AThsNtBM25" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2AThsNtBH7K" resolve="serializedChild" />
                    </node>
                    <node concept="liA8E" id="2AThsNtBM26" role="2OqNvi">
                      <ref role="37wK5l" to="b3cn:2AThsNt$EWd" resolve="getContainmentLink" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtBHy$" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtBHDX" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtBHyz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBglr" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtBHPF" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="37vLTw" id="2AThsNtBM27" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBM1Z" resolve="link" />
                  </node>
                  <node concept="37vLTw" id="2AThsNtBKHf" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBKHc" resolve="deserializedChild" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNtBNbS" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNtBNbU" role="2Gsz3X">
            <property role="TrG5h" value="entry" />
          </node>
          <node concept="2OqwBi" id="2AThsNtBNux" role="2GsD0m">
            <node concept="37vLTw" id="2AThsNtBNik" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtBgjl" resolve="serialized" />
            </node>
            <node concept="liA8E" id="2AThsNtBNDy" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:2AThsNt$EWj" resolve="getProperties" />
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNtBNbY" role="2LFqv$">
            <node concept="3cpWs8" id="2AThsNtBPVb" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtBPVc" role="3cpWs9">
                <property role="TrG5h" value="property" />
                <node concept="3uibUv" id="2AThsNtBPV0" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                </node>
                <node concept="2YIFZM" id="2AThsNtBPVd" role="33vP2m">
                  <ref role="37wK5l" node="2AThsNt_Skz" resolve="idToProperty" />
                  <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="37vLTw" id="2AThsNtBPVe" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBNY4" resolve="concept" />
                  </node>
                  <node concept="2OqwBi" id="2AThsNtBPVf" role="37wK5m">
                    <node concept="2GrUjf" id="2AThsNtBPVg" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2AThsNtBNbU" resolve="entry" />
                    </node>
                    <node concept="3AY5_j" id="2AThsNtBPVh" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtBQoU" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtBQBR" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtBQoS" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBglr" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtBQNW" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="37vLTw" id="2AThsNtBQUk" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBPVc" resolve="property" />
                  </node>
                  <node concept="2OqwBi" id="2AThsNtBRl9" role="37wK5m">
                    <node concept="2GrUjf" id="2AThsNtBR7V" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2AThsNtBNbU" resolve="entry" />
                    </node>
                    <node concept="3AV6Ez" id="2AThsNtBRPE" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2AThsNtBTkf" role="3cqZAp">
          <node concept="2GrKxI" id="2AThsNtBTkh" role="2Gsz3X">
            <property role="TrG5h" value="entry" />
          </node>
          <node concept="2OqwBi" id="2AThsNtBTIe" role="2GsD0m">
            <node concept="37vLTw" id="2AThsNtBTuE" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtBgjl" resolve="serialized" />
            </node>
            <node concept="liA8E" id="2AThsNtBTX4" role="2OqNvi">
              <ref role="37wK5l" to="b3cn:2AThsNt$EWr" resolve="getReferences" />
            </node>
          </node>
          <node concept="3clFbS" id="2AThsNtBTkl" role="2LFqv$">
            <node concept="3cpWs8" id="2AThsNtBV$B" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtBV$C" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="2AThsNtBV$0" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                </node>
                <node concept="2YIFZM" id="2AThsNtBV$D" role="33vP2m">
                  <ref role="37wK5l" node="2AThsNt_UXv" resolve="idToReferenceLink" />
                  <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="37vLTw" id="2AThsNtBV$E" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtBNY4" resolve="concept" />
                  </node>
                  <node concept="2OqwBi" id="2AThsNtBV$F" role="37wK5m">
                    <node concept="2GrUjf" id="2AThsNtBV$G" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2AThsNtBTkh" resolve="entry" />
                    </node>
                    <node concept="3AY5_j" id="2AThsNtBV$H" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2AThsNtC0ab" role="3cqZAp">
              <node concept="3cpWsn" id="2AThsNtC0ac" role="3cpWs9">
                <property role="TrG5h" value="targetId" />
                <property role="3TUv4t" value="true" />
                <node concept="17QB3L" id="2AThsNtC09_" role="1tU5fm" />
                <node concept="2OqwBi" id="2AThsNtC0ad" role="33vP2m">
                  <node concept="2GrUjf" id="2AThsNtC0ae" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2AThsNtBTkh" resolve="entry" />
                  </node>
                  <node concept="3AV6Ez" id="2AThsNtC0af" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtC1AR" role="3cqZAp">
              <node concept="2OqwBi" id="2AThsNtC2yE" role="3clFbG">
                <node concept="37vLTw" id="2AThsNtC1AP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtBSVB" resolve="pendingReferences" />
                </node>
                <node concept="TSZUe" id="2AThsNtC3HI" role="2OqNvi">
                  <node concept="1bVj0M" id="2AThsNtC3P_" role="25WWJ7">
                    <node concept="3clFbS" id="2AThsNtC3PB" role="1bW5cS">
                      <node concept="3cpWs8" id="2AThsNtBZCT" role="3cqZAp">
                        <node concept="3cpWsn" id="2AThsNtBZCU" role="3cpWs9">
                          <property role="TrG5h" value="target" />
                          <node concept="3uibUv" id="2AThsNtBZBW" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2YIFZM" id="2AThsNtFXkM" role="33vP2m">
                            <ref role="37wK5l" node="2AThsNtAOUO" resolve="idToNode" />
                            <ref role="1Pybhc" node="2AThsNt_OLZ" resolve="AdapterUtil" />
                            <node concept="37vLTw" id="2AThsNtG4SL" role="37wK5m">
                              <ref role="3cqZAo" node="2AThsNtFYwE" resolve="model" />
                            </node>
                            <node concept="37vLTw" id="2AThsNtFXkO" role="37wK5m">
                              <ref role="3cqZAo" node="2AThsNtC0ac" resolve="targetId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2AThsNtBW8r" role="3cqZAp">
                        <node concept="2OqwBi" id="2AThsNtBWr7" role="3clFbG">
                          <node concept="37vLTw" id="2AThsNtBW8p" role="2Oq$k0">
                            <ref role="3cqZAo" node="2AThsNtBglr" resolve="node" />
                          </node>
                          <node concept="liA8E" id="2AThsNtBWBf" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                            <node concept="37vLTw" id="2AThsNtBWHj" role="37wK5m">
                              <ref role="3cqZAo" node="2AThsNtBV$C" resolve="link" />
                            </node>
                            <node concept="37vLTw" id="2AThsNtC5JN" role="37wK5m">
                              <ref role="3cqZAo" node="2AThsNtBZCU" resolve="target" />
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
        <node concept="3clFbF" id="2AThsNtBGaB" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNtBGa_" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNtBglr" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtBRZH" role="jymVt" />
    <node concept="2tJIrI" id="2AThsNtBSBG" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtBgg6" role="1B3o_S" />
  </node>
</model>

