<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de9cabb4-784f-4fb0-be49-90fafcb76298(org.modelix.aspect.runtime)">
  <persistence version="9" />
  <languages>
    <use id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(org.modelix.ui.sm.transformations)" />
    <import index="aoe3" ref="r:2b841f9e-64f6-48c4-8c54-2ee495cb0445(de.q60.mps.shadowmodels.target.text.structure)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="tt46" ref="r:49704863-d656-4884-8ea8-c407f9808c46(de.q60.mps.shadowmodels.target.text.behavior)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(org.modelix.ui.sm.dom.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="v1cj" ref="r:2c4bc58b-9da3-4f5f-8ea2-32f043278ab7(org.modelix.ui.sm.behavior)" implicit="true" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(org.modelix.ui.sm.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    <language id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation">
      <concept id="4572148810970667871" name="de.q60.mps.shadowmodels.transformation.structure.TransformationIdExpression" flags="ng" index="2Pkx91">
        <reference id="4572148810970667887" name="transformation" index="2Pkx9L" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="312cEu" id="7kXB$VSm08s">
    <property role="TrG5h" value="HttpPageUtil" />
    <node concept="2YIFZL" id="7kXB$VSm1eR" role="jymVt">
      <property role="TrG5h" value="htmlToText" />
      <node concept="37vLTG" id="7kXB$VSm1uW" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="7kXB$VSm1JB" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="37vLTG" id="7kXB$VSm1LJ" role="3clF46">
        <property role="TrG5h" value="html" />
        <node concept="3Tqbb2" id="7kXB$VSm22s" role="1tU5fm">
          <ref role="ehGHo" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
        </node>
      </node>
      <node concept="3clFbS" id="7kXB$VSm0GR" role="3clF47">
        <node concept="3clFbF" id="7kXB$VSm0IJ" role="3cqZAp">
          <node concept="2OqwBi" id="7mc9A5ll71_" role="3clFbG">
            <node concept="1PxgMI" id="7mc9A5ll71A" role="2Oq$k0">
              <node concept="chp4Y" id="7mc9A5ll71B" role="3oSUPX">
                <ref role="cht4Q" to="aoe3:TC$M5wRTlk" resolve="ITextElement" />
              </node>
              <node concept="2YIFZM" id="7mc9A5ll71C" role="1m5AlR">
                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                <node concept="2OqwBi" id="7mc9A5ll71D" role="37wK5m">
                  <node concept="2OqwBi" id="7mc9A5ll71E" role="2Oq$k0">
                    <node concept="37vLTw" id="7mc9A5ll71F" role="2Oq$k0">
                      <ref role="3cqZAo" node="7kXB$VSm1uW" resolve="engine" />
                    </node>
                    <node concept="liA8E" id="7mc9A5ll71G" role="2OqNvi">
                      <ref role="37wK5l" to="nv3w:4NgaqHYXF9E" resolve="executeInCurrentStage" />
                      <node concept="2ShNRf" id="7mc9A5ll71H" role="37wK5m">
                        <node concept="1pGfFk" id="7mc9A5ll71I" role="2ShVmc">
                          <ref role="37wK5l" to="nv3w:4NgaqHYY5n_" resolve="TransformationCall" />
                          <node concept="2Pkx91" id="6MQUJsyWxoo" role="37wK5m">
                            <ref role="2Pkx9L" to="m3vg:7NImM054PfC" resolve="node" />
                          </node>
                          <node concept="2ShNRf" id="7mc9A5ll71J" role="37wK5m">
                            <node concept="2HTt$P" id="7mc9A5ll71K" role="2ShVmc">
                              <node concept="3uibUv" id="7mc9A5ll71L" role="2HTBi0">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="2YIFZM" id="HabLxtRSg6" role="2HTEbv">
                                <ref role="37wK5l" to="nv3w:5gTrVpGzMW2" resolve="wrap" />
                                <ref role="1Pybhc" to="nv3w:5gTrVpGxH_V" resolve="DependencyTrackingNode" />
                                <node concept="2YIFZM" id="7mc9A5ll71M" role="37wK5m">
                                  <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                  <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                  <node concept="37vLTw" id="7mc9A5ll71N" role="37wK5m">
                                    <ref role="3cqZAo" node="7kXB$VSm1LJ" resolve="html" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1uHKPH" id="7mc9A5ll71W" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="7mc9A5ll71X" role="2OqNvi">
              <ref role="37wK5l" to="tt46:AkkmJBLwn5" resolve="toText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7kXB$VSm0Iq" role="3clF45" />
      <node concept="3Tm1VV" id="7kXB$VSm0GQ" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7kXB$VSpUvS" role="jymVt">
      <property role="TrG5h" value="getExpectedOutputConcept" />
      <node concept="3clFbS" id="7kXB$VSpTUs" role="3clF47">
        <node concept="3clFbF" id="7kXB$VSpU8J" role="3cqZAp">
          <node concept="2OqwBi" id="7kXB$VSpUhe" role="3clFbG">
            <node concept="37vLTw" id="7kXB$VSpU8I" role="2Oq$k0">
              <ref role="3cqZAo" node="7kXB$VSpU4s" resolve="substituteContext" />
            </node>
            <node concept="2qgKlT" id="7kXB$VSpUrS" role="2OqNvi">
              <ref role="37wK5l" to="v1cj:5xDm4AQxR9" resolve="getExpectedOutputConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kXB$VSpU4s" role="3clF46">
        <property role="TrG5h" value="substituteContext" />
        <node concept="3Tqbb2" id="7kXB$VSpU6j" role="1tU5fm">
          <ref role="ehGHo" to="j481:5xDm4AQxxe" resolve="ISubstituteContext" />
        </node>
      </node>
      <node concept="3bZ5Sz" id="7kXB$VSpUA8" role="3clF45" />
      <node concept="3Tm1VV" id="7kXB$VSpTUr" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7kXB$VSunTq" role="jymVt">
      <property role="TrG5h" value="toConceptRef" />
      <node concept="3clFbS" id="7kXB$VSumGL" role="3clF47">
        <node concept="3clFbF" id="7kXB$VSumPX" role="3cqZAp">
          <node concept="2OqwBi" id="7tcNvKIa_5t" role="3clFbG">
            <node concept="35c_gC" id="7tcNvKIa_5u" role="2Oq$k0">
              <ref role="35c_gD" to="j481:5Nhi$S9RM2i" resolve="SConceptRef" />
            </node>
            <node concept="2qgKlT" id="7tcNvKIa_5v" role="2OqNvi">
              <ref role="37wK5l" to="v1cj:5Nhi$S9RMaD" resolve="fromConcept" />
              <node concept="37vLTw" id="7kXB$VSunm9" role="37wK5m">
                <ref role="3cqZAo" node="7kXB$VSun3O" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kXB$VSun3O" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="7kXB$VSunee" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="7kXB$VSunEN" role="3clF45">
        <ref role="ehGHo" to="j481:5Nhi$S9RM2i" resolve="SConceptRef" />
      </node>
      <node concept="3Tm1VV" id="7kXB$VSumGK" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7kXB$VS_$K0" role="jymVt">
      <property role="TrG5h" value="createDomId" />
      <node concept="3clFbS" id="7kXB$VS_$t2" role="3clF47">
        <node concept="3clFbF" id="7kXB$VS_$_m" role="3cqZAp">
          <node concept="2YIFZM" id="7kXB$VS_$CM" role="3clFbG">
            <ref role="37wK5l" to="m3vg:AkkmJBUK8A" resolve="createDomId" />
            <ref role="1Pybhc" to="m3vg:62_qJBxL8mp" resolve="PageTransformationsUtil" />
            <node concept="37vLTw" id="7kXB$VS_$EZ" role="37wK5m">
              <ref role="3cqZAo" node="7kXB$VS_$x0" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kXB$VS_$x0" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kXB$VS_$yV" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="7kXB$VS_$H$" role="3clF45" />
      <node concept="3Tm1VV" id="7kXB$VS_$t1" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7kXB$VSm08t" role="1B3o_S" />
    <node concept="3UR2Jj" id="7kXB$VSqtyh" role="lGtFl">
      <node concept="TZ5HA" id="7kXB$VSqtyi" role="TZ5H$">
        <node concept="1dT_AC" id="7kXB$VSqtyj" role="1dT_Ay">
          <property role="1dT_AB" value="This class is used to avoid using behavior methods in generated code directly." />
        </node>
      </node>
      <node concept="TZ5HA" id="7kXB$VSqtzH" role="TZ5H$">
        <node concept="1dT_AC" id="7kXB$VSqtzI" role="1dT_Ay">
          <property role="1dT_AB" value="You can't add a language as a runtime solution." />
        </node>
      </node>
    </node>
  </node>
</model>

