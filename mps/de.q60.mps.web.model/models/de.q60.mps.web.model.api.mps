<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:46060cc2-3362-406a-b40d-9ba8d71212b0(de.q60.mps.web.model.api)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="4tzwkINLh9S">
    <property role="TrG5h" value="IElement" />
    <node concept="3clFb_" id="4_P7CAmvu1W" role="jymVt">
      <property role="TrG5h" value="getTree" />
      <node concept="3uibUv" id="4TPMxteXkVQ" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOqQ5x" resolve="ITree" />
      </node>
      <node concept="3Tm1VV" id="4_P7CAmvu1Z" role="1B3o_S" />
      <node concept="3clFbS" id="4_P7CAmvu20" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1SVbIFIiQ5L" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3uibUv" id="3jzgJ0sZEXA" role="3clF45">
        <ref role="3uigEE" node="4tzwkINLhd2" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="1SVbIFIiQ5O" role="1B3o_S" />
      <node concept="3clFbS" id="1SVbIFIiQ5P" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1SVbIFIiQ7a" role="jymVt">
      <property role="TrG5h" value="getRoleInParent" />
      <node concept="17QB3L" id="1SVbIFIiQ8i" role="3clF45" />
      <node concept="3Tm1VV" id="1SVbIFIiQ7d" role="1B3o_S" />
      <node concept="3clFbS" id="1SVbIFIiQ7e" role="3clF47" />
    </node>
    <node concept="3clFb_" id="ifAKfhPj_M" role="jymVt">
      <property role="TrG5h" value="getRef" />
      <node concept="3uibUv" id="ifAKfhPjBa" role="3clF45">
        <ref role="3uigEE" node="1SVbIFIiQbN" resolve="IElementRef" />
      </node>
      <node concept="3Tm1VV" id="ifAKfhPj_P" role="1B3o_S" />
      <node concept="3clFbS" id="ifAKfhPj_Q" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4TPMxtfJzds" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3cpWsb" id="4TPMxtfJzf4" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxtfJzdv" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtfJzdw" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="4tzwkINLh9T" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1SVbIFIiQbN">
    <property role="TrG5h" value="IElementRef" />
    <node concept="3Tm1VV" id="1SVbIFIiQbO" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4tzwkINLhd2">
    <property role="TrG5h" value="INode" />
    <node concept="3clFb_" id="4TPMxteN6ZG" role="jymVt">
      <property role="TrG5h" value="getConcept" />
      <node concept="17QB3L" id="4TPMxteN70r" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxteN6ZJ" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxteN6ZK" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1SVbIFIiQ3W" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="A3Dl8" id="ifAKfhYtEs" role="3clF45">
        <node concept="3uibUv" id="3jzgJ0sZEZK" role="A3Ik2">
          <ref role="3uigEE" node="4tzwkINLhd2" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1SVbIFIiQ3Z" role="1B3o_S" />
      <node concept="3clFbS" id="1SVbIFIiQ40" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="4tzwkINLhd3" role="1B3o_S" />
  </node>
</model>

