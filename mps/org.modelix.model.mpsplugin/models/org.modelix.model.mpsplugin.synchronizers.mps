<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf73a13d-34c6-49b5-9703-7fda9f8f8839(org.modelix.model.mpsplugin.synchronizers)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jh6v" ref="r:f2f39a18-fd23-4090-b7f2-ba8da340eec2(org.modelix.model.repositoryconcepts.structure)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="ztoz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.model(MPS.Core/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7ZZZU$kY9qQ">
    <property role="TrG5h" value="RepositorySynchronizer" />
    <node concept="3Tm1VV" id="7ZZZU$kY9qR" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9uD" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9sA" resolve="ModuleListSynchronizer" />
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kY9rK">
    <property role="TrG5h" value="ProjectSynchronizer" />
    <node concept="3Tm1VV" id="7ZZZU$kY9rL" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9ug" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9sA" resolve="ModuleListSynchronizer" />
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kY9sA">
    <property role="TrG5h" value="ModuleListSynchronizer" />
    <node concept="2tJIrI" id="7ZZZU$kY9uY" role="jymVt" />
    <node concept="2tJIrI" id="7ZZZU$kYfov" role="jymVt" />
    <node concept="2tJIrI" id="7ZZZU$kYfoB" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9vh" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="3cqZAl" id="7ZZZU$kY9vj" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9vk" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9vl" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kY9v3" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kY9sB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kY9wl">
    <property role="TrG5h" value="ModuleList" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFb_" id="7ZZZU$kY9yc" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="7ZZZU$kY9zc" role="3clF45">
        <node concept="3uibUv" id="7ZZZU$kY9zy" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9yf" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9yg" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9$G" role="jymVt">
      <property role="TrG5h" value="addNewModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kY9_D" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7ZZZU$kY9Aj" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7ZZZU$kY9AF" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9$J" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9$K" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9BR" role="jymVt">
      <property role="TrG5h" value="removeModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kY9CS" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7ZZZU$kY9Dk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$kY9BT" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9BU" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9BV" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="7ZZZU$kY9wm" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kY9wH">
    <property role="TrG5h" value="ProjectModuleList" />
    <node concept="312cEg" id="7ZZZU$kY9EL" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="7ZZZU$kY9EM" role="1B3o_S" />
      <node concept="3uibUv" id="7ZZZU$kY9F6" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kY9Fz" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kY9wI" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kY9xD" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kY9wl" resolve="ModuleList" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kY9FU" role="jymVt">
      <property role="TrG5h" value="addNewModule" />
      <node concept="37vLTG" id="7ZZZU$kY9FV" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7ZZZU$kY9FW" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7ZZZU$kY9FX" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9FY" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9G0" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kY9PE" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYari" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kY9PD" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYaXg" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.addModule(org.jetbrains.mps.openapi.module.SModule)" resolve="addModule" />
              <node concept="37vLTw" id="7ZZZU$kYb3b" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$kY9FV" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9G1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYbku" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9G4" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="_YKpA" id="7ZZZU$kY9G5" role="3clF45">
        <node concept="3uibUv" id="7ZZZU$kY9G6" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZZZU$kY9G7" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9G9" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kYbyo" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYcci" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kYbyn" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYdzo" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9Ga" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYbtH" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kY9Gb" role="jymVt">
      <property role="TrG5h" value="removeModule" />
      <node concept="37vLTG" id="7ZZZU$kY9Gc" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7ZZZU$kY9Gd" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ZZZU$kY9Ge" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kY9Gf" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kY9Gh" role="3clF47">
        <node concept="3clFbF" id="7ZZZU$kYdFq" role="3cqZAp">
          <node concept="2OqwBi" id="7ZZZU$kYedO" role="3clFbG">
            <node concept="37vLTw" id="7ZZZU$kYdFp" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZZZU$kY9EL" resolve="project" />
            </node>
            <node concept="liA8E" id="7ZZZU$kYeNu" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~ProjectBase.removeModule(org.jetbrains.mps.openapi.module.SModule)" resolve="removeModule" />
              <node concept="37vLTw" id="7ZZZU$kYeSq" role="37wK5m">
                <ref role="3cqZAo" node="7ZZZU$kY9Gc" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ZZZU$kY9Gi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ZZZU$kYfoU">
    <property role="TrG5h" value="Synchronizer" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7ZZZU$kYfps" role="jymVt" />
    <node concept="312cEg" id="7ZZZU$kYf_q" role="jymVt">
      <property role="TrG5h" value="isSynchronizing" />
      <node concept="3Tm6S6" id="7ZZZU$kYf_r" role="1B3o_S" />
      <node concept="10P_77" id="7ZZZU$kYfA2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7ZZZU$kYhOR" role="jymVt">
      <property role="TrG5h" value="isActive" />
      <node concept="3Tm6S6" id="7ZZZU$kYhOS" role="1B3o_S" />
      <node concept="10P_77" id="7ZZZU$kYhTZ" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYf$r" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfq8" role="jymVt">
      <property role="TrG5h" value="doSyncFromMPS" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYfwB" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYfwZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYfqa" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYfX9" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfqc" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYfrM" role="jymVt">
      <property role="TrG5h" value="doSyncToMPS" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYfxP" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYfyd" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYfrO" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYfYM" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfrQ" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYi1M" role="jymVt">
      <property role="TrG5h" value="doActivate" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYi1O" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkwZ" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYi1Q" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYiaE" role="jymVt">
      <property role="TrG5h" value="doDeactivate" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYiaF" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkAy" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYiaH" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfwh" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYg5r" role="jymVt">
      <property role="TrG5h" value="syncFromMPS" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYgZt" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYh1W" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYg5t" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYg5u" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYg5v" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$kYgap" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$kYgas" role="3cpWs9">
            <property role="TrG5h" value="wasSynchronizing" />
            <node concept="10P_77" id="7ZZZU$kYgao" role="1tU5fm" />
            <node concept="37vLTw" id="7ZZZU$kYgbC" role="33vP2m">
              <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7ZZZU$kYgdQ" role="3cqZAp">
          <node concept="3clFbS" id="7ZZZU$kYgdS" role="1zxBo7">
            <node concept="3clFbF" id="7ZZZU$kYgAy" role="3cqZAp">
              <node concept="37vLTI" id="7ZZZU$kYgU6" role="3clFbG">
                <node concept="3clFbT" id="7ZZZU$kYgVk" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7ZZZU$kYgAw" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ZZZU$kYgXF" role="3cqZAp">
              <node concept="1rXfSq" id="7ZZZU$kYgXD" role="3clFbG">
                <ref role="37wK5l" node="7ZZZU$kYfq8" resolve="doSyncFromMPS" />
                <node concept="37vLTw" id="7ZZZU$kYh3c" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$kYgZt" resolve="allowDelete" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7ZZZU$kYgf6" role="1zxBo6">
            <node concept="3clFbS" id="7ZZZU$kYgf7" role="1wplMD">
              <node concept="3clFbF" id="7ZZZU$kYgfz" role="3cqZAp">
                <node concept="37vLTI" id="7ZZZU$kYgz5" role="3clFbG">
                  <node concept="37vLTw" id="7ZZZU$kYg_1" role="37vLTx">
                    <ref role="3cqZAo" node="7ZZZU$kYgas" resolve="wasSynchronizing" />
                  </node>
                  <node concept="37vLTw" id="7ZZZU$kYgfy" role="37vLTJ">
                    <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYh9r" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYh3P" role="jymVt">
      <property role="TrG5h" value="syncToMPS" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7ZZZU$kYh3Q" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYh3R" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYh3S" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYh3T" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYh3U" role="3clF47">
        <node concept="3cpWs8" id="7ZZZU$kYh3V" role="3cqZAp">
          <node concept="3cpWsn" id="7ZZZU$kYh3W" role="3cpWs9">
            <property role="TrG5h" value="wasSynchronizing" />
            <node concept="10P_77" id="7ZZZU$kYh3X" role="1tU5fm" />
            <node concept="37vLTw" id="7ZZZU$kYh3Y" role="33vP2m">
              <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7ZZZU$kYh3Z" role="3cqZAp">
          <node concept="3clFbS" id="7ZZZU$kYh40" role="1zxBo7">
            <node concept="3clFbF" id="7ZZZU$kYh41" role="3cqZAp">
              <node concept="37vLTI" id="7ZZZU$kYh42" role="3clFbG">
                <node concept="3clFbT" id="7ZZZU$kYh43" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7ZZZU$kYh44" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ZZZU$kYh45" role="3cqZAp">
              <node concept="1rXfSq" id="7ZZZU$kYh46" role="3clFbG">
                <ref role="37wK5l" node="7ZZZU$kYfrM" resolve="doSyncToMPS" />
                <node concept="37vLTw" id="7ZZZU$kYh47" role="37wK5m">
                  <ref role="3cqZAo" node="7ZZZU$kYh3Q" resolve="allowDelete" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7ZZZU$kYh48" role="1zxBo6">
            <node concept="3clFbS" id="7ZZZU$kYh49" role="1wplMD">
              <node concept="3clFbF" id="7ZZZU$kYh4a" role="3cqZAp">
                <node concept="37vLTI" id="7ZZZU$kYh4b" role="3clFbG">
                  <node concept="37vLTw" id="7ZZZU$kYh4c" role="37vLTx">
                    <ref role="3cqZAo" node="7ZZZU$kYh3W" resolve="wasSynchronizing" />
                  </node>
                  <node concept="37vLTw" id="7ZZZU$kYh4d" role="37vLTJ">
                    <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYg16" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfBz" role="jymVt">
      <property role="TrG5h" value="mpsChanged" />
      <node concept="3cqZAl" id="7ZZZU$kYfB_" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfBA" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfBB" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYfFT" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYfGt" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYfFV" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYfHQ" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjh2" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjh0" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYg5r" resolve="syncFromMPS" />
            <node concept="3clFbT" id="7ZZZU$kYjj2" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfCV" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfE2" role="jymVt">
      <property role="TrG5h" value="serverChanged" />
      <node concept="3cqZAl" id="7ZZZU$kYfE4" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfE5" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfE6" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYfIa" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYfII" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYf_q" resolve="isSynchronizing" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYfIc" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYfKf" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjmn" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjml" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYg5r" resolve="syncFromMPS" />
            <node concept="3clFbT" id="7ZZZU$kYjoz" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfAZ" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYfzu" role="jymVt">
      <property role="TrG5h" value="activate" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYfzw" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYfzx" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYfzy" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYjqz" role="3cqZAp">
          <node concept="37vLTw" id="7ZZZU$kYjr7" role="3clFbw">
            <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
          </node>
          <node concept="3clFbS" id="7ZZZU$kYjq_" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYjsO" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjut" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYjur" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYi1M" resolve="doActivate" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYjy6" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$kYjQ7" role="3clFbG">
            <node concept="3clFbT" id="7ZZZU$kYjS6" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="7ZZZU$kYjy4" role="37vLTJ">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYhqk" role="jymVt" />
    <node concept="3clFb_" id="7ZZZU$kYhwJ" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="7ZZZU$kYhwL" role="3clF45" />
      <node concept="3Tm1VV" id="7ZZZU$kYhwM" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYhwN" role="3clF47">
        <node concept="3clFbJ" id="7ZZZU$kYjX0" role="3cqZAp">
          <node concept="3fqX7Q" id="7ZZZU$kYjXs" role="3clFbw">
            <node concept="37vLTw" id="7ZZZU$kYjY4" role="3fr31v">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
          <node concept="3clFbS" id="7ZZZU$kYjX2" role="3clFbx">
            <node concept="3cpWs6" id="7ZZZU$kYk03" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYk1N" role="3cqZAp">
          <node concept="1rXfSq" id="7ZZZU$kYk1L" role="3clFbG">
            <ref role="37wK5l" node="7ZZZU$kYiaE" resolve="doDeactivate" />
          </node>
        </node>
        <node concept="3clFbF" id="7ZZZU$kYk5I" role="3cqZAp">
          <node concept="37vLTI" id="7ZZZU$kYkq2" role="3clFbG">
            <node concept="3clFbT" id="7ZZZU$kYksd" role="37vLTx" />
            <node concept="37vLTw" id="7ZZZU$kYk5G" role="37vLTJ">
              <ref role="3cqZAo" node="7ZZZU$kYhOR" resolve="isActive" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYfpF" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kYfoV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ZZZU$kYkNf">
    <property role="TrG5h" value="ModuleSynchronizer" />
    <node concept="2tJIrI" id="7ZZZU$kYkZr" role="jymVt" />
    <node concept="312cEg" id="7ZZZU$kYl$v" role="jymVt">
      <property role="TrG5h" value="mpsModule" />
      <node concept="3Tm6S6" id="7ZZZU$kYl$w" role="1B3o_S" />
      <node concept="3uibUv" id="7ZZZU$kYlD4" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
    <node concept="312cEg" id="7ZZZU$kYlOX" role="jymVt">
      <property role="TrG5h" value="cloudModule" />
      <node concept="3Tm6S6" id="7ZZZU$kYlOY" role="1B3o_S" />
      <node concept="3Tqbb2" id="7ZZZU$kYmof" role="1tU5fm">
        <ref role="ehGHo" to="jh6v:qmkA5fOskf" resolve="Module" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZZZU$kYm5b" role="jymVt" />
    <node concept="3Tm1VV" id="7ZZZU$kYkNg" role="1B3o_S" />
    <node concept="3uibUv" id="7ZZZU$kYkO1" role="1zkMxy">
      <ref role="3uigEE" node="7ZZZU$kYfoU" resolve="Synchronizer" />
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOh" role="jymVt">
      <property role="TrG5h" value="doActivate" />
      <node concept="3cqZAl" id="7ZZZU$kYkOi" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOj" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOl" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOn" role="jymVt">
      <property role="TrG5h" value="doDeactivate" />
      <node concept="3cqZAl" id="7ZZZU$kYkOo" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOp" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOr" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkOt" role="jymVt">
      <property role="TrG5h" value="doSyncFromMPS" />
      <node concept="37vLTG" id="7ZZZU$kYkOu" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYkOv" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYkOw" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOx" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOz" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkO$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7ZZZU$kYkO_" role="jymVt">
      <property role="TrG5h" value="doSyncToMPS" />
      <node concept="37vLTG" id="7ZZZU$kYkOA" role="3clF46">
        <property role="TrG5h" value="allowDelete" />
        <node concept="10P_77" id="7ZZZU$kYkOB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ZZZU$kYkOC" role="3clF45" />
      <node concept="3Tmbuc" id="7ZZZU$kYkOD" role="1B3o_S" />
      <node concept="3clFbS" id="7ZZZU$kYkOF" role="3clF47" />
      <node concept="2AHcQZ" id="7ZZZU$kYkOG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

