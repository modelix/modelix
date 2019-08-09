<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:91a4d034-58eb-4d74-b6b8-5944d53d253f(de.q60.lwmps.tree)">
  <persistence version="9" />
  <languages>
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
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
  <node concept="3HP615" id="1$HFY8AP_xv">
    <property role="TrG5h" value="ITree" />
    <node concept="3clFb_" id="1$HFY8AP_UF" role="jymVt">
      <property role="TrG5h" value="getRoot" />
      <node concept="3uibUv" id="1$HFY8AP_Vz" role="3clF45">
        <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="1$HFY8AP_UI" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_UJ" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1$HFY8AP_xw" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1$HFY8AP_xL">
    <property role="TrG5h" value="IElement" />
    <node concept="3clFb_" id="1$HFY8AP_Ho" role="jymVt">
      <property role="TrG5h" value="getRole" />
      <node concept="17QB3L" id="1$HFY8AP_KC" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8AP_Hr" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_Hs" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1$HFY8AP_xM" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1$HFY8AP_xZ">
    <property role="TrG5h" value="INode" />
    <node concept="3clFb_" id="1$HFY8AP_BF" role="jymVt">
      <property role="TrG5h" value="getAllChildren" />
      <node concept="A3Dl8" id="1$HFY8AP_CU" role="3clF45">
        <node concept="3uibUv" id="1$HFY8AP_CV" role="A3Ik2">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1$HFY8AP_BI" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_BJ" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1$HFY8AP_EK" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="1$HFY8AP_L$" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1$HFY8AP_M1" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1$HFY8AP_Gr" role="3clF45">
        <node concept="3uibUv" id="1$HFY8AP_GP" role="A3Ik2">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1$HFY8AP_EN" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_EO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1$HFY8AP_Ws" role="jymVt" />
    <node concept="3clFb_" id="1$HFY8AP_Xx" role="jymVt">
      <property role="TrG5h" value="insertChildBefore" />
      <node concept="37vLTG" id="1$HFY8APA0I" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1$HFY8APA1k" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1$HFY8APA1X" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="1$HFY8APA2E" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="1$HFY8APA50" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="1$HFY8APA5L" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="1$HFY8AP_Xz" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8AP_X$" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_X_" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1$HFY8APA8I" role="jymVt">
      <property role="TrG5h" value="insertChildAfter" />
      <node concept="37vLTG" id="1$HFY8APA8J" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1$HFY8APA8K" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1$HFY8APA8L" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="1$HFY8APA8M" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="1$HFY8APA8N" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="1$HFY8APA8O" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="1$HFY8APA8P" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8APA8Q" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8APA8R" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1$HFY8APAbU" role="jymVt">
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="1$HFY8APAbV" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1$HFY8APAbW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1$HFY8APAbX" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="1$HFY8APAbY" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="1$HFY8APAc1" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8APAc2" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8APAc3" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1$HFY8APAlt" role="jymVt">
      <property role="TrG5h" value="insertChildAt" />
      <node concept="37vLTG" id="1$HFY8APAlu" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1$HFY8APAlv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1$HFY8APAqZ" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1$HFY8APAsl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1$HFY8APAlw" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="1$HFY8APAlx" role="1tU5fm">
          <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="1$HFY8APAly" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8APAlz" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8APAl$" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1$HFY8AP_y0" role="1B3o_S" />
    <node concept="3uibUv" id="1$HFY8AP_Oy" role="3HQHJm">
      <ref role="3uigEE" node="1$HFY8AP_xL" resolve="IElement" />
    </node>
  </node>
  <node concept="3HP615" id="1$HFY8AP_yd">
    <property role="TrG5h" value="IProperty" />
    <node concept="3clFb_" id="1$HFY8AP_OZ" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="17QB3L" id="1$HFY8AP_Qz" role="3clF45" />
      <node concept="3Tm1VV" id="1$HFY8AP_P2" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_P3" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1$HFY8AP_ye" role="1B3o_S" />
    <node concept="3uibUv" id="1$HFY8AP_N_" role="3HQHJm">
      <ref role="3uigEE" node="1$HFY8AP_xL" resolve="IElement" />
    </node>
  </node>
  <node concept="3HP615" id="1$HFY8AP_yr">
    <property role="TrG5h" value="IReference" />
    <node concept="3clFb_" id="1$HFY8AP_QV" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3uibUv" id="1$HFY8AP_S2" role="3clF45">
        <ref role="3uigEE" node="1$HFY8AP_xZ" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="1$HFY8AP_QY" role="1B3o_S" />
      <node concept="3clFbS" id="1$HFY8AP_QZ" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1$HFY8AP_ys" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5$slb3OOu5u">
    <property role="TrG5h" value="IForest" />
    <node concept="2tJIrI" id="5$slb3OOu5Q" role="jymVt" />
    <node concept="3clFb_" id="5$slb3OOu6N" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="3cqZAl" id="5$slb3OOu6P" role="3clF45" />
      <node concept="3Tm1VV" id="5$slb3OOu6Q" role="1B3o_S" />
      <node concept="3clFbS" id="5$slb3OOu6R" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5$slb3OOu5Z" role="jymVt" />
    <node concept="3Tm1VV" id="5$slb3OOu5v" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5$slb3OOu6x">
    <property role="TrG5h" value="IOperation" />
    <node concept="3Tm1VV" id="5$slb3OOu6y" role="1B3o_S" />
  </node>
</model>

