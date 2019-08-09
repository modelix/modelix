<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:27b37bb5-6282-4939-ae7f-535bfd474303(de.q60.lwmps.tree.ot)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="88at" ref="r:2077b9cb-d6f5-46a2-9b75-7ca019fa40cc(de.q60.mps.lazywebmps.runtime.ot)" implicit="true" />
    <import index="b3cn" ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.lazywebmps.runtime.tree)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
  </registry>
  <node concept="3HP615" id="1vRxIp21E17">
    <property role="TrG5h" value="ITreeClient" />
    <node concept="3clFb_" id="65KWK1vskYN" role="jymVt">
      <property role="TrG5h" value="operationToClient" />
      <node concept="37vLTG" id="65KWK1vskZU" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vsl0p" role="1tU5fm">
          <ref role="3uigEE" node="1vRxIp21E39" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vskYP" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vskYQ" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vskYR" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1vRxIp21E18" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1vRxIp21DWK">
    <property role="TrG5h" value="ITreeServer" />
    <node concept="2tJIrI" id="1vRxIp21DXq" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vskVT" role="jymVt">
      <property role="TrG5h" value="operationToServer" />
      <node concept="37vLTG" id="65KWK1vskXf" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="65KWK1vskXI" role="1tU5fm">
          <ref role="3uigEE" node="1vRxIp21E39" resolve="IOperation" />
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
        <node concept="3uibUv" id="1vRxIp21E67" role="1tU5fm">
          <ref role="3uigEE" node="1vRxIp21E17" resolve="ITreeClient" />
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
        <node concept="3uibUv" id="1vRxIp21E6Q" role="1tU5fm">
          <ref role="3uigEE" node="1vRxIp21E17" resolve="ITreeClient" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsmab" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsmac" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsmad" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1vRxIp21DXy" role="jymVt" />
    <node concept="3Tm1VV" id="1vRxIp21DWL" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1vRxIp21E39">
    <property role="TrG5h" value="IOperation" />
    <node concept="3clFb_" id="q4IqgjMqHS" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="q4IqgjMqJG" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="q4IqgjMqK3" role="1tU5fm">
          <ref role="3uigEE" to="88at:q4IqgjMqHg" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="q4IqgjMqKH" role="3clF45">
        <ref role="3uigEE" to="88at:q4IqgjMqHg" resolve="IOperation" />
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
        <ref role="3uigEE" to="88at:q4IqgjMr6A" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMr7H" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMr7I" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1vRxIp21Ego" role="jymVt" />
    <node concept="3Tm1VV" id="1vRxIp21E3a" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1vRxIp21EjN">
    <property role="TrG5h" value="IAppliedOperation" />
    <node concept="3clFb_" id="q4IqgjMBcv" role="jymVt">
      <property role="TrG5h" value="originalOperation" />
      <node concept="3uibUv" id="q4IqgjMBdN" role="3clF45">
        <ref role="3uigEE" node="1vRxIp21E39" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="q4IqgjMBcy" role="1B3o_S" />
      <node concept="3clFbS" id="q4IqgjMBcz" role="3clF47" />
    </node>
    <node concept="3clFb_" id="q4IqgjMrcD" role="jymVt">
      <property role="TrG5h" value="invert" />
      <node concept="3uibUv" id="q4IqgjMrdx" role="3clF45">
        <ref role="3uigEE" node="1vRxIp21E39" resolve="IOperation" />
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
    <node concept="2tJIrI" id="1vRxIp21Elq" role="jymVt" />
    <node concept="3Tm1VV" id="1vRxIp21EjO" role="1B3o_S" />
  </node>
</model>

