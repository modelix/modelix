<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c0e20df5-61e9-48b0-ba6c-c6eb3fb47bfc(org.modelix.ui.sm.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="2" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="91lp" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.intentions(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="nddn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.intentions(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
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
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="2DaZZR" id="7BujJjZ4H50" />
  <node concept="2uRRBC" id="7BujJjZ4H7C">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2uRRBj" id="7BujJjZ5ngo" role="2uRRBE">
      <node concept="3clFbS" id="7BujJjZ5ngp" role="2VODD2" />
    </node>
    <node concept="2uRRBI" id="7BujJjZ5ngI" role="2uRRBF">
      <node concept="3clFbS" id="7BujJjZ5ngJ" role="2VODD2">
        <node concept="3clFbF" id="7BujJjZ5nnb" role="3cqZAp">
          <node concept="2OqwBi" id="7BujJjZ5ntL" role="3clFbG">
            <node concept="2YIFZM" id="7BujJjZ5nnL" role="2Oq$k0">
              <ref role="37wK5l" node="7BujJjZ5mDs" resolve="getInstance" />
              <ref role="1Pybhc" node="7BujJjZ4H7D" resolve="HeadlessIntentions" />
            </node>
            <node concept="liA8E" id="7BujJjZ5n_S" role="2OqNvi">
              <ref role="37wK5l" node="7BujJjZ4TAH" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7BujJjZ4H7D">
    <property role="TrG5h" value="HeadlessIntentions" />
    <node concept="2tJIrI" id="7BujJjZ5kpx" role="jymVt" />
    <node concept="Wx3nA" id="7BujJjZ5lC5" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3uibUv" id="7BujJjZ5la$" role="1tU5fm">
        <ref role="3uigEE" node="7BujJjZ4H7D" resolve="HeadlessIntentions" />
      </node>
      <node concept="3Tm6S6" id="7BujJjZ5kWQ" role="1B3o_S" />
      <node concept="2ShNRf" id="7BujJjZ5len" role="33vP2m">
        <node concept="1pGfFk" id="7BujJjZ5le5" role="2ShVmc">
          <ref role="37wK5l" node="7BujJjZ4HzJ" resolve="HeadlessIntentions" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7BujJjZ5mDs" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="7BujJjZ5m4r" role="3clF47">
        <node concept="3clFbF" id="7BujJjZ5net" role="3cqZAp">
          <node concept="37vLTw" id="7BujJjZ5nes" role="3clFbG">
            <ref role="3cqZAo" node="7BujJjZ5lC5" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7BujJjZ5n8S" role="3clF45">
        <ref role="3uigEE" node="7BujJjZ4H7D" resolve="HeadlessIntentions" />
      </node>
      <node concept="3Tm1VV" id="7BujJjZ5m4q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7BujJjZ4Htk" role="jymVt" />
    <node concept="3clFbW" id="7BujJjZ4HzJ" role="jymVt">
      <node concept="3cqZAl" id="7BujJjZ4HzL" role="3clF45" />
      <node concept="3Tm1VV" id="7BujJjZ4HzM" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZ4HzN" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7BujJjZ4Tl7" role="jymVt" />
    <node concept="3clFb_" id="7BujJjZ4XJB" role="jymVt">
      <property role="TrG5h" value="getIntentions" />
      <node concept="37vLTG" id="7BujJjZ5e2R" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7BujJjZ5eq1" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7BujJjZ4XJE" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZ4XJF" role="3clF47">
        <node concept="3cpWs8" id="7BujJjZ5UUT" role="3cqZAp">
          <node concept="3cpWsn" id="7BujJjZ5UUU" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="7BujJjZ5UUV" role="1tU5fm">
              <ref role="3uigEE" to="7a0s:6qGpHl7IHpK" resolve="HeadlessEditorComponent" />
            </node>
            <node concept="2ShNRf" id="7BujJjZ5Vs3" role="33vP2m">
              <node concept="1pGfFk" id="7BujJjZ5VrL" role="2ShVmc">
                <ref role="37wK5l" to="7a0s:2qx2hw9gxhG" resolve="HeadlessEditorComponent" />
                <node concept="37vLTw" id="7BujJjZ5Vzj" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ5e2R" resolve="node" />
                </node>
                <node concept="2YIFZM" id="7BujJjZ5XH8" role="37wK5m">
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7BujJjZ6rAJ" role="3cqZAp">
          <node concept="3clFbS" id="7BujJjZ6rAL" role="1zxBo7">
            <node concept="3cpWs6" id="7BujJjZ919E" role="3cqZAp">
              <node concept="1rXfSq" id="7BujJjZ91qK" role="3cqZAk">
                <ref role="37wK5l" node="7BujJjZ8Vtu" resolve="getIntentions" />
                <node concept="37vLTw" id="7BujJjZ91E7" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ5e2R" resolve="node" />
                </node>
                <node concept="37vLTw" id="7BujJjZfshP" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ5UUU" resolve="editorComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="bpmpcQijQ2j" role="1zxBo6">
            <node concept="3clFbS" id="7BujJjZ6rAM" role="1wplMD">
              <node concept="3J1_TO" id="7BujJjZ6w7I" role="3cqZAp">
                <node concept="3clFbS" id="7BujJjZ6w7K" role="1zxBo7">
                  <node concept="3clFbF" id="7BujJjZ6nKU" role="3cqZAp">
                    <node concept="2OqwBi" id="7BujJjZ6p2U" role="3clFbG">
                      <node concept="37vLTw" id="7BujJjZ6nKS" role="2Oq$k0">
                        <ref role="3cqZAo" node="7BujJjZ5UUU" resolve="editorComponent" />
                      </node>
                      <node concept="liA8E" id="7BujJjZ6qQz" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="7BujJjZ6w7L" role="1zxBo5">
                  <node concept="XOnhg" id="7BujJjZ6w7N" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="3go7GvnOOmw" role="1tU5fm">
                      <node concept="3uibUv" id="7BujJjZ6xrM" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7BujJjZ6w7R" role="1zc67A">
                    <node concept="RRSsy" id="7BujJjZ6x_v" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fh_4/error" />
                      <node concept="Xl_RD" id="7BujJjZ6x_x" role="RRSoy" />
                      <node concept="37vLTw" id="7BujJjZ6x_z" role="RRSow">
                        <ref role="3cqZAo" node="7BujJjZ6w7N" resolve="ex" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7BujJjZ5jlv" role="3clF45">
        <node concept="1LlUBW" id="7BujJjZ5ZUK" role="A3Ik2">
          <node concept="3uibUv" id="7BujJjZ60Kd" role="1Lm7xW">
            <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
          </node>
          <node concept="3uibUv" id="7BujJjZ61nQ" role="1Lm7xW">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="17QB3L" id="7BujJjZ61WG" role="1Lm7xW" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7BujJjZ8Wrh" role="jymVt" />
    <node concept="3clFb_" id="7BujJjZ8Vtu" role="jymVt">
      <property role="TrG5h" value="getIntentions" />
      <node concept="37vLTG" id="7BujJjZ8Vtv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7BujJjZ8Vtw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7BujJjZ8WHC" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="7BujJjZ8Xu3" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tmbuc" id="7BujJjZ90xR" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZ8Vty" role="3clF47">
        <node concept="3cpWs8" id="7BujJjZ8VtG" role="3cqZAp">
          <node concept="3cpWsn" id="7BujJjZ8VtH" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <node concept="3uibUv" id="7BujJjZ8VtI" role="1tU5fm">
              <ref role="3uigEE" to="91lp:~IntentionsManager$QueryDescriptor" resolve="IntentionsManager.QueryDescriptor" />
            </node>
            <node concept="2ShNRf" id="7BujJjZ8VtJ" role="33vP2m">
              <node concept="1pGfFk" id="7BujJjZ8VtK" role="2ShVmc">
                <ref role="37wK5l" to="91lp:~IntentionsManager$QueryDescriptor.&lt;init&gt;()" resolve="IntentionsManager.QueryDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7BujJjZ8VtL" role="3cqZAp">
          <node concept="2OqwBi" id="7BujJjZ8VtM" role="3clFbG">
            <node concept="37vLTw" id="7BujJjZ8VtN" role="2Oq$k0">
              <ref role="3cqZAo" node="7BujJjZ8VtH" resolve="query" />
            </node>
            <node concept="liA8E" id="7BujJjZ8VtO" role="2OqNvi">
              <ref role="37wK5l" to="91lp:~IntentionsManager$QueryDescriptor.setEnabledOnly(boolean)" resolve="setEnabledOnly" />
              <node concept="3clFbT" id="7BujJjZ8VtP" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7BujJjZ8VtQ" role="3cqZAp">
          <node concept="3cpWsn" id="7BujJjZ8VtR" role="3cpWs9">
            <property role="TrG5h" value="intentions" />
            <node concept="A3Dl8" id="7BujJjZ8VtS" role="1tU5fm">
              <node concept="3uibUv" id="7BujJjZ8VtT" role="A3Ik2">
                <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                <node concept="3uibUv" id="7BujJjZ8VtU" role="11_B2D">
                  <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                </node>
                <node concept="3uibUv" id="7BujJjZ8VtV" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7BujJjZ8VtW" role="33vP2m">
              <node concept="2YIFZM" id="7BujJjZ8VtX" role="2Oq$k0">
                <ref role="1Pybhc" to="91lp:~IntentionsManager" resolve="IntentionsManager" />
                <ref role="37wK5l" to="91lp:~IntentionsManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7BujJjZ8VtY" role="2OqNvi">
                <ref role="37wK5l" to="91lp:~IntentionsManager.getAvailableIntentions(jetbrains.mps.intentions.IntentionsManager$QueryDescriptor,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="getAvailableIntentions" />
                <node concept="37vLTw" id="7BujJjZ8VtZ" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ8VtH" resolve="query" />
                </node>
                <node concept="37vLTw" id="7BujJjZ8Vu0" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ8Vtv" resolve="node" />
                </node>
                <node concept="2OqwBi" id="7BujJjZ8Vu1" role="37wK5m">
                  <node concept="37vLTw" id="7BujJjZ8Vu2" role="2Oq$k0">
                    <ref role="3cqZAo" node="7BujJjZ8WHC" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="7BujJjZ8Vu3" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7BujJjZ8Vu4" role="3cqZAp">
          <node concept="3cpWsn" id="7BujJjZ8Vu5" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7BujJjZ8Vu6" role="1tU5fm">
              <node concept="1LlUBW" id="7BujJjZ8Vu7" role="_ZDj9">
                <node concept="3uibUv" id="7BujJjZ8Vu8" role="1Lm7xW">
                  <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                </node>
                <node concept="3uibUv" id="7BujJjZ8Vu9" role="1Lm7xW">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="17QB3L" id="7BujJjZ8Vua" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2OqwBi" id="7BujJjZ8Vub" role="33vP2m">
              <node concept="2OqwBi" id="7BujJjZ8Vuc" role="2Oq$k0">
                <node concept="37vLTw" id="7BujJjZ8Vud" role="2Oq$k0">
                  <ref role="3cqZAo" node="7BujJjZ8VtR" resolve="intentions" />
                </node>
                <node concept="3$u5V9" id="7BujJjZ8Vue" role="2OqNvi">
                  <node concept="1bVj0M" id="7BujJjZ8Vuf" role="23t8la">
                    <node concept="3clFbS" id="7BujJjZ8Vug" role="1bW5cS">
                      <node concept="3cpWs8" id="7BujJjZ8Vuh" role="3cqZAp">
                        <node concept="3cpWsn" id="7BujJjZ8Vui" role="3cpWs9">
                          <property role="TrG5h" value="description" />
                          <node concept="17QB3L" id="7BujJjZ8Vuj" role="1tU5fm" />
                          <node concept="2OqwBi" id="7BujJjZ8Vuk" role="33vP2m">
                            <node concept="2OqwBi" id="7BujJjZ8Vul" role="2Oq$k0">
                              <node concept="37vLTw" id="7BujJjZ8Vum" role="2Oq$k0">
                                <ref role="3cqZAo" node="7BujJjZ8VuC" resolve="it" />
                              </node>
                              <node concept="2OwXpG" id="7BujJjZ8Vun" role="2OqNvi">
                                <ref role="2Oxat5" to="18ew:~Pair.o1" resolve="o1" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7BujJjZ8Vuo" role="2OqNvi">
                              <ref role="37wK5l" to="nddn:~IntentionExecutable.getDescription(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="getDescription" />
                              <node concept="2OqwBi" id="7BujJjZ8Vup" role="37wK5m">
                                <node concept="37vLTw" id="7BujJjZ8Vuq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7BujJjZ8VuC" resolve="it" />
                                </node>
                                <node concept="2OwXpG" id="7BujJjZ8Vur" role="2OqNvi">
                                  <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7BujJjZ8Vus" role="37wK5m">
                                <node concept="37vLTw" id="7BujJjZ8Vut" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7BujJjZ8WHC" resolve="editorComponent" />
                                </node>
                                <node concept="liA8E" id="7BujJjZ8Vuu" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7BujJjZ8Vuv" role="3cqZAp">
                        <node concept="1Ls8ON" id="7BujJjZ8Vuw" role="3clFbG">
                          <node concept="2OqwBi" id="7BujJjZ8Vux" role="1Lso8e">
                            <node concept="37vLTw" id="7BujJjZ8Vuy" role="2Oq$k0">
                              <ref role="3cqZAo" node="7BujJjZ8VuC" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="7BujJjZ8Vuz" role="2OqNvi">
                              <ref role="2Oxat5" to="18ew:~Pair.o1" resolve="o1" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7BujJjZ8Vu$" role="1Lso8e">
                            <node concept="37vLTw" id="7BujJjZ8Vu_" role="2Oq$k0">
                              <ref role="3cqZAo" node="7BujJjZ8VuC" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="7BujJjZ8VuA" role="2OqNvi">
                              <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7BujJjZ8VuB" role="1Lso8e">
                            <ref role="3cqZAo" node="7BujJjZ8Vui" resolve="description" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7BujJjZ8VuC" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7BujJjZ8VuD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7BujJjZ8VuE" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7BujJjZ8VuF" role="3cqZAp">
          <node concept="37vLTw" id="7BujJjZ8VuG" role="3cqZAk">
            <ref role="3cqZAo" node="7BujJjZ8Vu5" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7BujJjZ8VuV" role="3clF45">
        <node concept="1LlUBW" id="7BujJjZ8VuW" role="A3Ik2">
          <node concept="3uibUv" id="7BujJjZ8VuX" role="1Lm7xW">
            <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
          </node>
          <node concept="3uibUv" id="7BujJjZ8VuY" role="1Lm7xW">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="17QB3L" id="7BujJjZ8VuZ" role="1Lm7xW" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7BujJjZ8RlS" role="jymVt" />
    <node concept="3clFb_" id="7BujJjZ8Rxm" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="37vLTG" id="7BujJjZ8RGI" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7BujJjZ8RWN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7BujJjZ8RXF" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="7BujJjZ8Saf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7BujJjZ8SbW" role="3clF46">
        <property role="TrG5h" value="expectedDescription" />
        <node concept="17QB3L" id="7BujJjZ8Sk0" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7BujJjZ8Rxo" role="3clF45" />
      <node concept="3Tm1VV" id="7BujJjZ8Rxp" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZ8Rxq" role="3clF47">
        <node concept="3cpWs8" id="7BujJjZ91VO" role="3cqZAp">
          <node concept="3cpWsn" id="7BujJjZ91VP" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="7BujJjZ91VQ" role="1tU5fm">
              <ref role="3uigEE" to="7a0s:6qGpHl7IHpK" resolve="HeadlessEditorComponent" />
            </node>
            <node concept="2ShNRf" id="7BujJjZ91VR" role="33vP2m">
              <node concept="1pGfFk" id="7BujJjZ91VS" role="2ShVmc">
                <ref role="37wK5l" to="7a0s:2qx2hw9gxhG" resolve="HeadlessEditorComponent" />
                <node concept="37vLTw" id="7BujJjZ91VT" role="37wK5m">
                  <ref role="3cqZAo" node="7BujJjZ8RGI" resolve="node" />
                </node>
                <node concept="2YIFZM" id="7BujJjZ91VU" role="37wK5m">
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7BujJjZ91VV" role="3cqZAp">
          <node concept="3clFbS" id="7BujJjZ91VW" role="1zxBo7">
            <node concept="3cpWs8" id="7BujJjZ95fA" role="3cqZAp">
              <node concept="3cpWsn" id="7BujJjZ95fB" role="3cpWs9">
                <property role="TrG5h" value="intention" />
                <node concept="1LlUBW" id="7BujJjZ959M" role="1tU5fm">
                  <node concept="3uibUv" id="7BujJjZ959T" role="1Lm7xW">
                    <ref role="3uigEE" to="nddn:~IntentionExecutable" resolve="IntentionExecutable" />
                  </node>
                  <node concept="3uibUv" id="7BujJjZ959U" role="1Lm7xW">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="17QB3L" id="7BujJjZ959V" role="1Lm7xW" />
                </node>
                <node concept="2OqwBi" id="7BujJjZ95fC" role="33vP2m">
                  <node concept="2OqwBi" id="7BujJjZ95fD" role="2Oq$k0">
                    <node concept="1rXfSq" id="7BujJjZ95fE" role="2Oq$k0">
                      <ref role="37wK5l" node="7BujJjZ8Vtu" resolve="getIntentions" />
                      <node concept="37vLTw" id="7BujJjZ95fF" role="37wK5m">
                        <ref role="3cqZAo" node="7BujJjZ8RGI" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="7BujJjZftfP" role="37wK5m">
                        <ref role="3cqZAo" node="7BujJjZ91VP" resolve="editorComponent" />
                      </node>
                    </node>
                    <node concept="7r0gD" id="7BujJjZ95fG" role="2OqNvi">
                      <node concept="37vLTw" id="7BujJjZ95fH" role="7T0AP">
                        <ref role="3cqZAo" node="7BujJjZ8RXF" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="1uHKPH" id="7BujJjZ95fI" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7BujJjZ96t3" role="3cqZAp">
              <node concept="3clFbS" id="7BujJjZ96t5" role="3clFbx">
                <node concept="3clFbF" id="7BujJjZ98LZ" role="3cqZAp">
                  <node concept="2OqwBi" id="7BujJjZ99Cq" role="3clFbG">
                    <node concept="1LFfDK" id="7BujJjZ99xb" role="2Oq$k0">
                      <node concept="3cmrfG" id="7BujJjZ99yp" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7BujJjZ98LX" role="1LFl5Q">
                        <ref role="3cqZAo" node="7BujJjZ95fB" resolve="intention" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7BujJjZ99LT" role="2OqNvi">
                      <ref role="37wK5l" to="nddn:~IntentionExecutable.execute(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext)" resolve="execute" />
                      <node concept="1LFfDK" id="7BujJjZ9a1s" role="37wK5m">
                        <node concept="3cmrfG" id="7BujJjZ9a3n" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7BujJjZ99NG" role="1LFl5Q">
                          <ref role="3cqZAo" node="7BujJjZ95fB" resolve="intention" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7BujJjZ9aWZ" role="37wK5m">
                        <node concept="37vLTw" id="7BujJjZ9a9$" role="2Oq$k0">
                          <ref role="3cqZAo" node="7BujJjZ91VP" resolve="editorComponent" />
                        </node>
                        <node concept="liA8E" id="7BujJjZ9chb" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7BujJjZ98$b" role="3clFbw">
                <node concept="37vLTw" id="7BujJjZ98Ab" role="3uHU7w">
                  <ref role="3cqZAo" node="7BujJjZ8SbW" resolve="expectedDescription" />
                </node>
                <node concept="1LFfDK" id="7BujJjZ98ct" role="3uHU7B">
                  <node concept="3cmrfG" id="7BujJjZ98dL" role="1LF_Uc">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="7BujJjZ96R1" role="1LFl5Q">
                    <ref role="3cqZAo" node="7BujJjZ95fB" resolve="intention" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7BujJjZ9cry" role="9aQIa">
                <node concept="3clFbS" id="7BujJjZ9crz" role="9aQI4">
                  <node concept="YS8fn" id="7BujJjZ9cxJ" role="3cqZAp">
                    <node concept="2ShNRf" id="7BujJjZ9cyd" role="YScLw">
                      <node concept="1pGfFk" id="7BujJjZ9qri" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                        <node concept="3cpWs3" id="7BujJjZ9qSI" role="37wK5m">
                          <node concept="3cpWs3" id="7BujJjZ9sET" role="3uHU7B">
                            <node concept="37vLTw" id="7BujJjZ9sNk" role="3uHU7w">
                              <ref role="3cqZAo" node="7BujJjZ8SbW" resolve="expectedDescription" />
                            </node>
                            <node concept="3cpWs3" id="7BujJjZ9qPE" role="3uHU7B">
                              <node concept="3cpWs3" id="7BujJjZ9roP" role="3uHU7B">
                                <node concept="1LFfDK" id="7BujJjZ9ses" role="3uHU7w">
                                  <node concept="3cmrfG" id="7BujJjZ9sh1" role="1LF_Uc">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="37vLTw" id="7BujJjZ9rsW" role="1LFl5Q">
                                    <ref role="3cqZAo" node="7BujJjZ95fB" resolve="intention" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="7BujJjZ9r1G" role="3uHU7B">
                                  <node concept="3cpWs3" id="7BujJjZ9qOe" role="3uHU7B">
                                    <node concept="Xl_RD" id="7BujJjZ9qOk" role="3uHU7B">
                                      <property role="Xl_RC" value="Intention " />
                                    </node>
                                    <node concept="37vLTw" id="7BujJjZ9r3S" role="3uHU7w">
                                      <ref role="3cqZAo" node="7BujJjZ8RXF" resolve="index" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="7BujJjZ9qPK" role="3uHU7w">
                                    <property role="Xl_RC" value=" is '" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="7BujJjZ9qSO" role="3uHU7w">
                                <property role="Xl_RC" value="' but '" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="7BujJjZ9qSQ" role="3uHU7w">
                            <property role="Xl_RC" value="' expected" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="bpmpcQid2SV" role="1zxBo6">
            <node concept="3clFbS" id="7BujJjZ91W0" role="1wplMD">
              <node concept="3J1_TO" id="7BujJjZ91W1" role="3cqZAp">
                <node concept="3clFbS" id="7BujJjZ91W2" role="1zxBo7">
                  <node concept="3clFbF" id="7BujJjZ91W3" role="3cqZAp">
                    <node concept="2OqwBi" id="7BujJjZ91W4" role="3clFbG">
                      <node concept="37vLTw" id="7BujJjZ91W5" role="2Oq$k0">
                        <ref role="3cqZAo" node="7BujJjZ91VP" resolve="editorComponent" />
                      </node>
                      <node concept="liA8E" id="7BujJjZ91W6" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="7BujJjZ91W7" role="1zxBo5">
                  <node concept="XOnhg" id="7BujJjZ91W8" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="3go7GvnFRxm" role="1tU5fm">
                      <node concept="3uibUv" id="7BujJjZ91W9" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7BujJjZ91Wa" role="1zc67A">
                    <node concept="RRSsy" id="7BujJjZ91Wb" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fh_4/error" />
                      <node concept="Xl_RD" id="7BujJjZ91Wc" role="RRSoy" />
                      <node concept="37vLTw" id="7BujJjZ91Wd" role="RRSow">
                        <ref role="3cqZAo" node="7BujJjZ91W8" resolve="ex" />
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
    <node concept="2tJIrI" id="7BujJjZ8SNJ" role="jymVt" />
    <node concept="3clFb_" id="7BujJjZ4TAH" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="7BujJjZ4TAJ" role="3clF45" />
      <node concept="3Tm1VV" id="7BujJjZ4TAK" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZ4TAL" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="7BujJjZ4H7E" role="1B3o_S" />
  </node>
</model>

