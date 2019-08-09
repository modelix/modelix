<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d82392d4-c42d-4f5e-9b9c-292583ed6ce9(de.q60.mps.lazywebmps.runtime.ot.mps)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="88at" ref="r:2077b9cb-d6f5-46a2-9b75-7ca019fa40cc(de.q60.mps.lazywebmps.runtime.ot)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="wb4m" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.link(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="pwx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.property(MPS.Core/)" />
    <import index="rzjr" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.ref(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mcvo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.language(MPS.Core/)" />
    <import index="mhfm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.annotations(MPS.IDEA/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfn" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="b3cn" ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.lazywebmps.runtime.tree)" />
    <import index="ns" ref="r:b1d968e4-0e15-46c9-9cce-63a8489d5bdd(de.q60.mps.lazywebmps.runtime.tree.mps)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2AThsNtEhAE">
    <property role="TrG5h" value="EventsToOperations" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2AThsNtEhBx" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtEhAF" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtEhD4" role="EKbjA">
      <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
    </node>
    <node concept="3clFb_" id="2AThsNtEhDg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="propertyChanged" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2AThsNtEhDh" role="1B3o_S" />
      <node concept="3cqZAl" id="2AThsNtEhDj" role="3clF45" />
      <node concept="37vLTG" id="2AThsNtEhDk" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2AThsNtEhDl" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
        </node>
        <node concept="2AHcQZ" id="2AThsNtEhDm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfn:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtEhDn" role="3clF47">
        <node concept="3clFbF" id="2AThsNtEjyR" role="3cqZAp">
          <node concept="1rXfSq" id="2AThsNtEjyQ" role="3clFbG">
            <ref role="37wK5l" node="2AThsNtEhY3" resolve="operationCreated" />
            <node concept="2ShNRf" id="2AThsNtEjDp" role="37wK5m">
              <node concept="1pGfFk" id="2AThsNtEjYk" role="2ShVmc">
                <ref role="37wK5l" to="88at:q4IqgjMybi" resolve="SetPropertyOp" />
                <node concept="2YIFZM" id="2AThsNtK4UY" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNtANYP" resolve="nodeToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEl2l" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEkLC" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDk" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtElj5" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtK4UB" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNt_OP$" resolve="propertyToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtElKm" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtElvh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDk" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEm1u" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getProperty()" resolve="getProperty" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2AThsNtEmmP" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtEm7t" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNtEhDk" resolve="event" />
                  </node>
                  <node concept="liA8E" id="2AThsNtEmCo" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtEhDo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtEhDp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="referenceChanged" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2AThsNtEhDq" role="1B3o_S" />
      <node concept="3cqZAl" id="2AThsNtEhDs" role="3clF45" />
      <node concept="37vLTG" id="2AThsNtEhDt" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2AThsNtEhDu" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
        </node>
        <node concept="2AHcQZ" id="2AThsNtEhDv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfn:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtEhDw" role="3clF47">
        <node concept="3clFbF" id="2AThsNtEmGG" role="3cqZAp">
          <node concept="1rXfSq" id="2AThsNtEmGH" role="3clFbG">
            <ref role="37wK5l" node="2AThsNtEhY3" resolve="operationCreated" />
            <node concept="2ShNRf" id="2AThsNtEmGI" role="37wK5m">
              <node concept="1pGfFk" id="2AThsNtEmGJ" role="2ShVmc">
                <ref role="37wK5l" to="88at:q4IqgjME6N" resolve="SetReferenceOp" />
                <node concept="2YIFZM" id="2AThsNtK4UX" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNtANYP" resolve="nodeToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEmGL" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEmGM" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDt" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEmGN" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtK4UI" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNt_Q_V" resolve="referenceLinkToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEmZg" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEmZh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDt" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEmZi" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getAssociationLink()" resolve="getAssociationLink" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtEoh6" role="37wK5m">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
                  <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                  <node concept="2OqwBi" id="2AThsNtEnhU" role="37wK5m">
                    <node concept="2OqwBi" id="2AThsNtEmGS" role="2Oq$k0">
                      <node concept="37vLTw" id="2AThsNtEmGT" role="2Oq$k0">
                        <ref role="3cqZAo" node="2AThsNtEhDt" resolve="event" />
                      </node>
                      <node concept="liA8E" id="2AThsNtEmGU" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNewValue()" resolve="getNewValue" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2AThsNtEnw7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtEhDx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtEhDy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="nodeAdded" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2AThsNtEhDz" role="1B3o_S" />
      <node concept="3cqZAl" id="2AThsNtEhD_" role="3clF45" />
      <node concept="37vLTG" id="2AThsNtEhDA" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2AThsNtEhDB" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
        </node>
        <node concept="2AHcQZ" id="2AThsNtEhDC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfn:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtEhDD" role="3clF47">
        <node concept="3SKdUt" id="2AThsNtEsfQ" role="3cqZAp">
          <node concept="3SKdUq" id="2AThsNtEsfS" role="3SKWNk">
            <property role="3SKdUp" value="TODO index" />
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtEosk" role="3cqZAp">
          <node concept="1rXfSq" id="2AThsNtEosl" role="3clFbG">
            <ref role="37wK5l" node="2AThsNtEhY3" resolve="operationCreated" />
            <node concept="2ShNRf" id="2AThsNtEosm" role="37wK5m">
              <node concept="1pGfFk" id="2AThsNtEosn" role="2ShVmc">
                <ref role="37wK5l" to="88at:q4IqgjMG7X" resolve="AddChildOp" />
                <node concept="2YIFZM" id="2AThsNtK4UZ" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNtANYP" resolve="nodeToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEosp" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEosq" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDA" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEosr" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtK4UF" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNt_Qfg" resolve="containentLinkToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEoKL" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEoKM" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDA" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEoKN" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getAggregationLink()" resolve="getAggregationLink" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtJ7vZ" role="37wK5m">
                  <ref role="37wK5l" to="i8bi:5IkW5anFey3" resolve="getIndexInParent" />
                  <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                  <node concept="2OqwBi" id="2AThsNtJ626" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtJ5ES" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDA" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtJ6lu" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2AThsNtK1sd" role="37wK5m">
                  <ref role="37wK5l" to="b3cn:q4IqgjMLwy" resolve="load" />
                  <ref role="1Pybhc" to="b3cn:q4IqgjMHcZ" resolve="SerializedNode" />
                  <node concept="2ShNRf" id="2AThsNtEp_W" role="37wK5m">
                    <node concept="1pGfFk" id="2AThsNtEpXB" role="2ShVmc">
                      <ref role="37wK5l" to="ns:2AThsNtCCly" resolve="NodeAdapter" />
                      <node concept="2OqwBi" id="2AThsNtEqgJ" role="37wK5m">
                        <node concept="37vLTw" id="2AThsNtEq1X" role="2Oq$k0">
                          <ref role="3cqZAo" node="2AThsNtEhDA" resolve="event" />
                        </node>
                        <node concept="liA8E" id="2AThsNtEqHG" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
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
      <node concept="2AHcQZ" id="2AThsNtEhDE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2AThsNtEhDF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="nodeRemoved" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2AThsNtEhDG" role="1B3o_S" />
      <node concept="3cqZAl" id="2AThsNtEhDI" role="3clF45" />
      <node concept="37vLTG" id="2AThsNtEhDJ" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2AThsNtEhDK" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
        </node>
        <node concept="2AHcQZ" id="2AThsNtEhDL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfn:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2AThsNtEhDM" role="3clF47">
        <node concept="3clFbF" id="2AThsNtEsjU" role="3cqZAp">
          <node concept="1rXfSq" id="2AThsNtEsjT" role="3clFbG">
            <ref role="37wK5l" node="2AThsNtEhY3" resolve="operationCreated" />
            <node concept="2ShNRf" id="2AThsNtEsqO" role="37wK5m">
              <node concept="1pGfFk" id="2AThsNtEsJJ" role="2ShVmc">
                <ref role="37wK5l" to="88at:2AThsNt$j6d" resolve="DeleteChildNodeOp" />
                <node concept="2YIFZM" id="2AThsNtK4V1" role="37wK5m">
                  <ref role="37wK5l" to="ns:2AThsNtANYP" resolve="nodeToId" />
                  <ref role="1Pybhc" to="ns:2AThsNt_OLZ" resolve="AdapterUtil" />
                  <node concept="2OqwBi" id="2AThsNtEt4h" role="37wK5m">
                    <node concept="37vLTw" id="2AThsNtEsLf" role="2Oq$k0">
                      <ref role="3cqZAo" node="2AThsNtEhDJ" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2AThsNtEtkM" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtEhDN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtEhS3" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtEhY3" role="jymVt">
      <property role="TrG5h" value="operationCreated" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2AThsNtEioH" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="2AThsNtEiu6" role="1tU5fm">
          <ref role="3uigEE" to="88at:q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtEhY5" role="3clF45" />
      <node concept="3Tmbuc" id="2AThsNtEiD2" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtEhY7" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="2AThsNtEtNm">
    <property role="TrG5h" value="LoggingEventsToOperations" />
    <node concept="2tJIrI" id="2AThsNtEtOE" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtEtON" role="jymVt">
      <property role="TrG5h" value="operationCreated" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="2AThsNtEtOO" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="2AThsNtEtOP" role="1tU5fm">
          <ref role="3uigEE" to="88at:q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtEtOQ" role="3clF45" />
      <node concept="3Tmbuc" id="2AThsNtEtOR" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtEtOT" role="3clF47">
        <node concept="3clFbF" id="2AThsNtEtRa" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtEtR7" role="3clFbG">
            <node concept="10M0yZ" id="2AThsNtEtR8" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2AThsNtEtR9" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2AThsNtEueN" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtEuh_" role="3uHU7w">
                  <ref role="3cqZAo" node="2AThsNtEtOO" resolve="op" />
                </node>
                <node concept="Xl_RD" id="2AThsNtEtSf" role="3uHU7B">
                  <property role="Xl_RC" value="OP " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtEtOU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2AThsNtEtNn" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtEtOl" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtEhAE" resolve="EventsToOperations" />
    </node>
  </node>
  <node concept="312cEu" id="2AThsNtHDxJ">
    <property role="TrG5h" value="SynchronizingEventsToOperations" />
    <node concept="2tJIrI" id="2AThsNtHDxK" role="jymVt" />
    <node concept="312cEg" id="2AThsNtHE81" role="jymVt">
      <property role="TrG5h" value="targetModel" />
      <node concept="3Tm6S6" id="2AThsNtHE82" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtHEdm" role="1tU5fm">
        <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtHE6n" role="jymVt" />
    <node concept="3clFbW" id="2AThsNtHEgG" role="jymVt">
      <node concept="37vLTG" id="2AThsNtHEi$" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2AThsNtHEjY" role="1tU5fm">
          <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtHEgI" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtHEgJ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtHEgK" role="3clF47">
        <node concept="3clFbF" id="2AThsNtHEkV" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtHFcE" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtHFh8" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtHEi$" resolve="model" />
            </node>
            <node concept="2OqwBi" id="2AThsNtHEvD" role="37vLTJ">
              <node concept="Xjq3P" id="2AThsNtHEkU" role="2Oq$k0" />
              <node concept="2OwXpG" id="2AThsNtHEO4" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNtHE81" resolve="targetModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtHEeR" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtHDxL" role="jymVt">
      <property role="TrG5h" value="operationCreated" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="2AThsNtHDxM" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="2AThsNtHDxN" role="1tU5fm">
          <ref role="3uigEE" to="88at:q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="2AThsNtHDxO" role="3clF45" />
      <node concept="3Tmbuc" id="2AThsNtHDxP" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtHDxQ" role="3clF47">
        <node concept="3clFbF" id="2AThsNtHDxR" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtHDxS" role="3clFbG">
            <node concept="10M0yZ" id="2AThsNtHDxT" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2AThsNtHDxU" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2AThsNtHDxV" role="37wK5m">
                <node concept="37vLTw" id="2AThsNtHDxW" role="3uHU7w">
                  <ref role="3cqZAo" node="2AThsNtHDxM" resolve="op" />
                </node>
                <node concept="Xl_RD" id="2AThsNtHDxX" role="3uHU7B">
                  <property role="Xl_RC" value="OP " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2AThsNtHDVd" role="3cqZAp" />
        <node concept="3clFbF" id="2AThsNtHFmM" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtHFzg" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtHFmK" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtHDxM" resolve="op" />
            </node>
            <node concept="liA8E" id="2AThsNtHFKZ" role="2OqNvi">
              <ref role="37wK5l" to="88at:q4IqgjMr7E" resolve="apply" />
              <node concept="37vLTw" id="2AThsNtHFMl" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtHE81" resolve="targetModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtHDxY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2AThsNtHDxZ" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtHDy0" role="1zkMxy">
      <ref role="3uigEE" node="2AThsNtEhAE" resolve="EventsToOperations" />
    </node>
  </node>
</model>

