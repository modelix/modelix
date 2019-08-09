<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ad9b9e36-6a2e-49cf-96d6-a1b4ef7befcd(de.q60.mps.web.ui.svg.environment)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="qr12" ref="r:24ed310f-f0ab-4270-aa2f-e2180b5d4c31(de.q60.mps.web.ui.svg.repository)" />
    <import index="wy2b" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:com.google.gson(de.q60.mps.lazywebmps.runtime/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="48Vb4Zfw6hS">
    <property role="TrG5h" value="EnvironmentConfig" />
    <node concept="2tJIrI" id="48Vb4Zfw6io" role="jymVt" />
    <node concept="312cEg" id="48Vb4Zfxmo6" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mpsHash" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="48Vb4Zfxm8Q" role="1B3o_S" />
      <node concept="17QB3L" id="48Vb4ZfxmPh" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="48Vb4Zfw6jW" role="jymVt">
      <property role="TrG5h" value="modules" />
      <node concept="3Tmbuc" id="48Vb4Zfw6o2" role="1B3o_S" />
      <node concept="_YKpA" id="48Vb4ZfCuP4" role="1tU5fm">
        <node concept="3uibUv" id="48Vb4ZfCv_3" role="_ZDj9">
          <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
        </node>
      </node>
      <node concept="2ShNRf" id="48Vb4Zfw6n9" role="33vP2m">
        <node concept="Tc6Ow" id="48Vb4ZfCxzA" role="2ShVmc">
          <node concept="3uibUv" id="48Vb4ZfCxzC" role="HW$YZ">
            <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfw6nK" role="jymVt" />
    <node concept="3clFb_" id="4SLY67o9lYu" role="jymVt">
      <property role="TrG5h" value="setMPSHash" />
      <node concept="37vLTG" id="4SLY67o9o98" role="3clF46">
        <property role="TrG5h" value="hash" />
        <node concept="17QB3L" id="4SLY67o9ot2" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4SLY67o9lYw" role="3clF45" />
      <node concept="3Tm1VV" id="4SLY67o9lYx" role="1B3o_S" />
      <node concept="3clFbS" id="4SLY67o9lYy" role="3clF47">
        <node concept="3clFbF" id="4SLY67o9otW" role="3cqZAp">
          <node concept="37vLTI" id="4SLY67o9oKc" role="3clFbG">
            <node concept="37vLTw" id="4SLY67o9oPM" role="37vLTx">
              <ref role="3cqZAo" node="4SLY67o9o98" resolve="hash" />
            </node>
            <node concept="37vLTw" id="4SLY67o9otV" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4Zfxmo6" resolve="mpsHash" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4SLY67o9oR0" role="jymVt" />
    <node concept="3clFb_" id="4SLY67o9peF" role="jymVt">
      <property role="TrG5h" value="getMPSHash" />
      <node concept="17QB3L" id="4SLY67o9rxN" role="3clF45" />
      <node concept="3Tm1VV" id="4SLY67o9peI" role="1B3o_S" />
      <node concept="3clFbS" id="4SLY67o9peJ" role="3clF47">
        <node concept="3clFbF" id="4SLY67o9rRj" role="3cqZAp">
          <node concept="37vLTw" id="4SLY67o9rRi" role="3clFbG">
            <ref role="3cqZAo" node="48Vb4Zfxmo6" resolve="mpsHash" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4SLY67o9lDR" role="jymVt" />
    <node concept="3clFb_" id="6kOYU1q1_Gr" role="jymVt">
      <property role="TrG5h" value="addModule" />
      <node concept="37vLTG" id="6kOYU1q1_Gs" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6kOYU1q1Al7" role="1tU5fm">
          <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="6kOYU1q1_Gu" role="3clF45" />
      <node concept="3Tm1VV" id="6kOYU1q1_Gv" role="1B3o_S" />
      <node concept="3clFbS" id="6kOYU1q1_Gw" role="3clF47">
        <node concept="3clFbF" id="6kOYU1q1_GH" role="3cqZAp">
          <node concept="2OqwBi" id="6kOYU1q1_GI" role="3clFbG">
            <node concept="37vLTw" id="6kOYU1q1_GJ" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4Zfw6jW" resolve="modules" />
            </node>
            <node concept="TSZUe" id="6kOYU1q1_GK" role="2OqNvi">
              <node concept="37vLTw" id="6kOYU1q1AIS" role="25WWJ7">
                <ref role="3cqZAo" node="6kOYU1q1_Gs" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfw6iq" role="jymVt" />
    <node concept="3clFb_" id="5BgWpoK_zg6" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="A3Dl8" id="5BgWpoK__6b" role="3clF45">
        <node concept="3uibUv" id="5BgWpoK__rF" role="A3Ik2">
          <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5BgWpoK_zg9" role="1B3o_S" />
      <node concept="3clFbS" id="5BgWpoK_zga" role="3clF47">
        <node concept="3clFbF" id="5BgWpoK__sE" role="3cqZAp">
          <node concept="37vLTw" id="5BgWpoK__sD" role="3clFbG">
            <ref role="3cqZAo" node="48Vb4Zfw6jW" resolve="modules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BgWpoK_y6T" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfwcyB" role="jymVt">
      <property role="TrG5h" value="getModules_" />
      <node concept="37vLTG" id="48Vb4ZfwdRb" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="48Vb4Zfwe01" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="A3Dl8" id="48Vb4Zfwe0s" role="3clF45">
        <node concept="3uibUv" id="48Vb4Zfwen2" role="A3Ik2">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfwcyE" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfwcyF" role="3clF47">
        <node concept="3clFbF" id="48Vb4Zfwenw" role="3cqZAp">
          <node concept="2OqwBi" id="48Vb4Zfwf5w" role="3clFbG">
            <node concept="37vLTw" id="48Vb4Zfwenv" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4Zfw6jW" resolve="modules" />
            </node>
            <node concept="3$u5V9" id="48Vb4Zfwg1l" role="2OqNvi">
              <node concept="1bVj0M" id="48Vb4Zfwg1n" role="23t8la">
                <node concept="3clFbS" id="48Vb4Zfwg1o" role="1bW5cS">
                  <node concept="3clFbF" id="48Vb4Zfwg9$" role="3cqZAp">
                    <node concept="2OqwBi" id="48Vb4ZfwglN" role="3clFbG">
                      <node concept="37vLTw" id="48Vb4Zfwg9z" role="2Oq$k0">
                        <ref role="3cqZAo" node="48Vb4ZfwdRb" resolve="repo" />
                      </node>
                      <node concept="liA8E" id="48Vb4ZfwgAr" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId)" resolve="getModule" />
                        <node concept="2YIFZM" id="48Vb4ZfD4D7" role="37wK5m">
                          <ref role="37wK5l" to="z1c3:~ModuleId.fromString(java.lang.String)" resolve="fromString" />
                          <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                          <node concept="2OqwBi" id="48Vb4Zfwip_" role="37wK5m">
                            <node concept="37vLTw" id="48Vb4ZfwgWJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="48Vb4Zfwg1p" resolve="it" />
                            </node>
                            <node concept="liA8E" id="48Vb4ZfwiGf" role="2OqNvi">
                              <ref role="37wK5l" to="qr12:48Vb4ZfCujp" resolve="getModuleId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="48Vb4Zfwg1p" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="48Vb4Zfwg1q" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfw6it" role="jymVt" />
    <node concept="3clFb_" id="6kOYU1q1b44" role="jymVt">
      <property role="TrG5h" value="toJSON" />
      <node concept="17QB3L" id="6kOYU1q1iRI" role="3clF45" />
      <node concept="3Tm1VV" id="6kOYU1q1b47" role="1B3o_S" />
      <node concept="3clFbS" id="6kOYU1q1b48" role="3clF47">
        <node concept="3clFbF" id="6kOYU1q1j$a" role="3cqZAp">
          <node concept="2OqwBi" id="6kOYU1q1zAc" role="3clFbG">
            <node concept="2OqwBi" id="6kOYU1q1GUW" role="2Oq$k0">
              <node concept="2OqwBi" id="6kOYU1q1GDL" role="2Oq$k0">
                <node concept="2ShNRf" id="6kOYU1q1j$8" role="2Oq$k0">
                  <node concept="1pGfFk" id="6kOYU1q1zu7" role="2ShVmc">
                    <ref role="37wK5l" to="wy2b:~GsonBuilder.&lt;init&gt;()" resolve="GsonBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="6kOYU1q1GJF" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~GsonBuilder.setPrettyPrinting()" resolve="setPrettyPrinting" />
                </node>
              </node>
              <node concept="liA8E" id="6kOYU1q1H37" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~GsonBuilder.create()" resolve="create" />
              </node>
            </node>
            <node concept="liA8E" id="6kOYU1q1zH7" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~Gson.toJson(java.lang.Object)" resolve="toJson" />
              <node concept="Xjq3P" id="6kOYU1q1zMd" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kOYU1q1hvq" role="jymVt" />
    <node concept="2YIFZL" id="6kOYU1q1j9z" role="jymVt">
      <property role="TrG5h" value="fromJSON" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="6kOYU1q1$Bu" role="3clF46">
        <property role="TrG5h" value="json" />
        <node concept="17QB3L" id="6kOYU1q1$Dn" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6kOYU1q1hWf" role="3clF47">
        <node concept="3clFbF" id="6kOYU1q1$2J" role="3cqZAp">
          <node concept="2OqwBi" id="6kOYU1q1$pw" role="3clFbG">
            <node concept="2ShNRf" id="6kOYU1q1$2H" role="2Oq$k0">
              <node concept="1pGfFk" id="6kOYU1q1$iy" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~Gson.&lt;init&gt;()" resolve="Gson" />
              </node>
            </node>
            <node concept="liA8E" id="6kOYU1q1$_l" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~Gson.fromJson(java.lang.String,java.lang.Class)" resolve="fromJson" />
              <node concept="37vLTw" id="6kOYU1q1$DY" role="37wK5m">
                <ref role="3cqZAo" node="6kOYU1q1$Bu" resolve="json" />
              </node>
              <node concept="3VsKOn" id="6kOYU1q1_p8" role="37wK5m">
                <ref role="3VsUkX" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6kOYU1q1jzi" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
      </node>
      <node concept="3Tm1VV" id="6kOYU1q1hWe" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="48Vb4Zfw6hT" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="48Vb4Zfw6iN">
    <property role="TrG5h" value="EnvironmentLoader" />
    <node concept="2tJIrI" id="48Vb4ZfwiWG" role="jymVt" />
    <node concept="312cEg" id="48Vb4Zfwybp" role="jymVt">
      <property role="TrG5h" value="idSequence" />
      <node concept="3Tm6S6" id="48Vb4Zfwybq" role="1B3o_S" />
      <node concept="10Oyi0" id="48Vb4Zfwyms" role="1tU5fm" />
      <node concept="3cmrfG" id="48Vb4ZfwynI" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="312cEg" id="48Vb4ZfwiZ4" role="jymVt">
      <property role="TrG5h" value="targetDir" />
      <node concept="3Tm6S6" id="48Vb4ZfwiZ5" role="1B3o_S" />
      <node concept="3uibUv" id="48Vb4ZfwiZr" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="312cEg" id="48Vb4Zfw_Mt" role="jymVt">
      <property role="TrG5h" value="config" />
      <node concept="3Tm6S6" id="48Vb4Zfw_Mu" role="1B3o_S" />
      <node concept="3uibUv" id="48Vb4ZfwA6M" role="1tU5fm">
        <ref role="3uigEE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="312cEg" id="5BgWpoK_EOq" role="jymVt">
      <property role="TrG5h" value="repo" />
      <node concept="3Tm6S6" id="5BgWpoK_EOr" role="1B3o_S" />
      <node concept="3uibUv" id="5BgWpoK_Fr$" role="1tU5fm">
        <ref role="3uigEE" to="qr12:48Vb4ZfB$Oh" resolve="ILanguageRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfwiYP" role="jymVt" />
    <node concept="3clFbW" id="48Vb4ZfwiZR" role="jymVt">
      <node concept="3cqZAl" id="48Vb4ZfwiZS" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4ZfwiZT" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfwiZV" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfwiZZ" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4Zfwj01" role="3clFbG">
            <node concept="2OqwBi" id="48Vb4Zfwjmm" role="37vLTJ">
              <node concept="Xjq3P" id="48Vb4ZfwjgD" role="2Oq$k0" />
              <node concept="2OwXpG" id="48Vb4ZfwjwS" role="2OqNvi">
                <ref role="2Oxat5" node="48Vb4ZfwiZ4" resolve="targetDir" />
              </node>
            </node>
            <node concept="2ShNRf" id="4SLY67o9yAi" role="37vLTx">
              <node concept="1pGfFk" id="4SLY67o9yA6" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="4SLY67o9yM9" role="37wK5m">
                  <ref role="3cqZAo" node="48Vb4ZfwiZY" resolve="targetFolder" />
                </node>
                <node concept="Xl_RD" id="4SLY67o9yBS" role="37wK5m">
                  <property role="Xl_RC" value="Contents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfwA8x" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfwA$X" role="3clFbG">
            <node concept="37vLTw" id="48Vb4ZfwAAd" role="37vLTx">
              <ref role="3cqZAo" node="48Vb4ZfwrZv" resolve="config" />
            </node>
            <node concept="2OqwBi" id="48Vb4ZfwAeW" role="37vLTJ">
              <node concept="Xjq3P" id="48Vb4ZfwA8v" role="2Oq$k0" />
              <node concept="2OwXpG" id="48Vb4ZfwApz" role="2OqNvi">
                <ref role="2Oxat5" node="48Vb4Zfw_Mt" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BgWpoK_Fuu" role="3cqZAp">
          <node concept="37vLTI" id="5BgWpoK_FXa" role="3clFbG">
            <node concept="37vLTw" id="5BgWpoK_FY_" role="37vLTx">
              <ref role="3cqZAo" node="5BgWpoK_Eau" resolve="repo" />
            </node>
            <node concept="2OqwBi" id="5BgWpoK_F_P" role="37vLTJ">
              <node concept="Xjq3P" id="5BgWpoK_Fus" role="2Oq$k0" />
              <node concept="2OwXpG" id="5BgWpoK_FKw" role="2OqNvi">
                <ref role="2Oxat5" node="5BgWpoK_EOq" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BgWpoK_Eau" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="5BgWpoK_EcN" role="1tU5fm">
          <ref role="3uigEE" to="qr12:48Vb4ZfB$Oh" resolve="ILanguageRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfwiZY" role="3clF46">
        <property role="TrG5h" value="targetFolder" />
        <node concept="3uibUv" id="48Vb4ZfwiZX" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfwrZv" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="48Vb4Zfws0N" role="1tU5fm">
          <ref role="3uigEE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfwj4U" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfwiX1" role="jymVt">
      <property role="TrG5h" value="load" />
      <node concept="3cqZAl" id="48Vb4ZfwiX3" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4ZfwiX4" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfwiX5" role="3clF47">
        <node concept="SfApY" id="48Vb4Zfwlu4" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4Zfwlu6" role="SfCbr">
            <node concept="3clFbJ" id="48Vb4Zfwm20" role="3cqZAp">
              <node concept="3clFbS" id="48Vb4Zfwm22" role="3clFbx">
                <node concept="3clFbF" id="48Vb4ZfwljV" role="3cqZAp">
                  <node concept="2YIFZM" id="48Vb4Zfwn1F" role="3clFbG">
                    <ref role="37wK5l" to="8oaq:~FileUtils.deleteDirectory(java.io.File)" resolve="deleteDirectory" />
                    <ref role="1Pybhc" to="8oaq:~FileUtils" resolve="FileUtils" />
                    <node concept="37vLTw" id="48Vb4Zfwn1G" role="37wK5m">
                      <ref role="3cqZAo" node="48Vb4ZfwiZ4" resolve="targetDir" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="48Vb4Zfwmnd" role="3clFbw">
                <node concept="37vLTw" id="48Vb4Zfwm41" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfwiZ4" resolve="targetDir" />
                </node>
                <node concept="liA8E" id="48Vb4ZfwmP3" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4ZfwjE8" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfwjE7" role="3clFbG">
                <ref role="37wK5l" node="48Vb4Zfwj_i" resolve="loadMPS" />
              </node>
            </node>
            <node concept="2Gpval" id="48Vb4ZfwAFa" role="3cqZAp">
              <node concept="2GrKxI" id="48Vb4ZfwAFc" role="2Gsz3X">
                <property role="TrG5h" value="version" />
              </node>
              <node concept="2OqwBi" id="48Vb4ZfwAQ_" role="2GsD0m">
                <node concept="37vLTw" id="48Vb4ZfwAIQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4Zfw_Mt" resolve="config" />
                </node>
                <node concept="liA8E" id="48Vb4ZfwB2E" role="2OqNvi">
                  <ref role="37wK5l" node="5BgWpoK_zg6" resolve="getModules" />
                </node>
              </node>
              <node concept="3clFbS" id="48Vb4ZfwAFg" role="2LFqv$">
                <node concept="3clFbF" id="48Vb4ZfwCyO" role="3cqZAp">
                  <node concept="1rXfSq" id="48Vb4ZfwCyN" role="3clFbG">
                    <ref role="37wK5l" node="48Vb4Zfws7R" resolve="loadModule" />
                    <node concept="2GrUjf" id="48Vb4ZfwCBo" role="37wK5m">
                      <ref role="2Gs0qQ" node="48Vb4ZfwAFc" resolve="version" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="48Vb4Zfwlu7" role="TEbGg">
            <node concept="3cpWsn" id="48Vb4Zfwlu9" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="48Vb4ZfwlIH" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="48Vb4Zfwlud" role="TDEfX" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfwjzi" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfwj_i" role="jymVt">
      <property role="TrG5h" value="loadMPS" />
      <node concept="3cqZAl" id="48Vb4Zfwj_k" role="3clF45" />
      <node concept="3Tmbuc" id="48Vb4ZfwjED" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfwj_m" role="3clF47">
        <node concept="3clFbF" id="4SLY67oab9l" role="3cqZAp">
          <node concept="2OqwBi" id="4SLY67oabU9" role="3clFbG">
            <node concept="2OqwBi" id="4SLY67oabqP" role="2Oq$k0">
              <node concept="37vLTw" id="4SLY67oab9j" role="2Oq$k0">
                <ref role="3cqZAo" node="5BgWpoK_EOq" resolve="repo" />
              </node>
              <node concept="liA8E" id="4SLY67oabKU" role="2OqNvi">
                <ref role="37wK5l" to="qr12:4SLY67o9zMJ" resolve="getFileRepository" />
              </node>
            </node>
            <node concept="liA8E" id="4SLY67oachr" role="2OqNvi">
              <ref role="37wK5l" to="qr12:48Vb4ZfxofM" resolve="loadFile" />
              <node concept="37vLTw" id="4SLY67oacng" role="37wK5m">
                <ref role="3cqZAo" node="48Vb4ZfwiZ4" resolve="targetDir" />
              </node>
              <node concept="2OqwBi" id="4SLY67oacPd" role="37wK5m">
                <node concept="37vLTw" id="4SLY67oacEm" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4Zfw_Mt" resolve="config" />
                </node>
                <node concept="liA8E" id="4SLY67oaddU" role="2OqNvi">
                  <ref role="37wK5l" node="4SLY67o9peF" resolve="getMPSHash" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4Zfwn6n" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfws1E" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfws7R" role="jymVt">
      <property role="TrG5h" value="loadModule" />
      <node concept="37vLTG" id="48Vb4ZfwsLc" role="3clF46">
        <property role="TrG5h" value="version" />
        <node concept="3uibUv" id="5BgWpoK_BV2" role="1tU5fm">
          <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="48Vb4Zfws7T" role="3clF45" />
      <node concept="3Tmbuc" id="48Vb4Zfwsdp" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfws7V" role="3clF47">
        <node concept="3cpWs8" id="48Vb4ZfwwsV" role="3cqZAp">
          <node concept="3cpWsn" id="48Vb4ZfwwsW" role="3cpWs9">
            <property role="TrG5h" value="targetModuleDir" />
            <node concept="3uibUv" id="48Vb4ZfwwsX" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="48Vb4Zfwwwr" role="33vP2m">
              <node concept="1pGfFk" id="48Vb4Zfwwwf" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2ShNRf" id="48Vb4Zfx93R" role="37wK5m">
                  <node concept="1pGfFk" id="48Vb4Zfx93S" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="48Vb4Zfx93T" role="37wK5m">
                      <ref role="3cqZAo" node="48Vb4ZfwiZ4" resolve="targetDir" />
                    </node>
                    <node concept="Xl_RD" id="48Vb4Zfx93U" role="37wK5m">
                      <property role="Xl_RC" value="modules" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="48Vb4ZfwO1o" role="37wK5m">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="Xl_RD" id="48Vb4ZfwO9u" role="37wK5m">
                    <property role="Xl_RC" value="%05d" />
                  </node>
                  <node concept="3uNrnE" id="48Vb4ZfwzFm" role="37wK5m">
                    <node concept="37vLTw" id="48Vb4ZfwzFo" role="2$L3a6">
                      <ref role="3cqZAo" node="48Vb4Zfwybp" resolve="idSequence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BgWpoK_KTx" role="3cqZAp">
          <node concept="2OqwBi" id="5BgWpoK_LxU" role="3clFbG">
            <node concept="37vLTw" id="5BgWpoK_KTv" role="2Oq$k0">
              <ref role="3cqZAo" node="5BgWpoK_EOq" resolve="repo" />
            </node>
            <node concept="liA8E" id="5BgWpoK_PMA" role="2OqNvi">
              <ref role="37wK5l" to="qr12:5BgWpoK_OBs" resolve="loadVersion" />
              <node concept="37vLTw" id="5BgWpoK_PQP" role="37wK5m">
                <ref role="3cqZAo" node="48Vb4ZfwsLc" resolve="version" />
              </node>
              <node concept="37vLTw" id="5BgWpoK_Q1d" role="37wK5m">
                <ref role="3cqZAo" node="48Vb4ZfwwsW" resolve="targetModuleDir" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4Zfw$uO" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfwiWR" role="jymVt" />
    <node concept="3Tm1VV" id="48Vb4Zfw6iO" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="48Vb4ZfxmPr">
    <property role="TrG5h" value="MPSVersion" />
    <node concept="2tJIrI" id="48Vb4ZfxmRK" role="jymVt" />
    <node concept="Wx3nA" id="48Vb4Zfxn4j" role="jymVt">
      <property role="TrG5h" value="MPS_2017_1" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="2dld4O" value="false" />
      <node concept="3uibUv" id="48Vb4Zfxn4m" role="1tU5fm">
        <ref role="3uigEE" node="48Vb4ZfxmPr" resolve="MPSVersion" />
      </node>
      <node concept="3Tm1VV" id="48Vb4Zfxn4l" role="1B3o_S" />
      <node concept="2ShNRf" id="48Vb4Zfxn8Z" role="33vP2m">
        <node concept="1pGfFk" id="48Vb4ZfxnnF" role="2ShVmc">
          <ref role="37wK5l" node="48Vb4ZfxmZn" resolve="MPSVersion" />
          <node concept="Xl_RD" id="48Vb4Zfxnoe" role="37wK5m">
            <property role="Xl_RC" value="MPS-171.1065" />
          </node>
          <node concept="Xl_RD" id="48Vb4ZfxnpH" role="37wK5m">
            <property role="Xl_RC" value="20170403" />
          </node>
          <node concept="Xl_RD" id="48Vb4Zfxnrz" role="37wK5m">
            <property role="Xl_RC" value="7b3f795c3fc93920a3a8481df440aa53dd8f8f47" />
          </node>
          <node concept="Xl_RD" id="48Vb4ZfxnsR" role="37wK5m">
            <property role="Xl_RC" value="2017.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfxmS1" role="jymVt" />
    <node concept="312cEg" id="48Vb4ZfxmPX" role="jymVt">
      <property role="TrG5h" value="buildNumber" />
      <node concept="3Tm6S6" id="48Vb4ZfxmPY" role="1B3o_S" />
      <node concept="17QB3L" id="48Vb4ZfxmQd" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="48Vb4ZfxmUE" role="jymVt">
      <property role="TrG5h" value="date" />
      <node concept="3Tm6S6" id="48Vb4ZfxmUF" role="1B3o_S" />
      <node concept="17QB3L" id="48Vb4ZfxmVa" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="48Vb4ZfxmVX" role="jymVt">
      <property role="TrG5h" value="gitHash" />
      <node concept="3Tm6S6" id="48Vb4ZfxmVY" role="1B3o_S" />
      <node concept="17QB3L" id="48Vb4ZfxmWw" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="48Vb4ZfxmXN" role="jymVt">
      <property role="TrG5h" value="version" />
      <node concept="3Tm6S6" id="48Vb4ZfxmXO" role="1B3o_S" />
      <node concept="17QB3L" id="48Vb4ZfxmYp" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="48Vb4ZfxmUi" role="jymVt" />
    <node concept="3Tm1VV" id="48Vb4ZfxmPs" role="1B3o_S" />
    <node concept="3clFbW" id="48Vb4ZfxmZn" role="jymVt">
      <node concept="3cqZAl" id="48Vb4ZfxmZo" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4ZfxmZp" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfxmZr" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfxmZv" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfxmZx" role="3clFbG">
            <node concept="37vLTw" id="48Vb4ZfxmZ_" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4ZfxmPX" resolve="buildNumber" />
            </node>
            <node concept="37vLTw" id="48Vb4ZfxmZA" role="37vLTx">
              <ref role="3cqZAo" node="48Vb4ZfxmZu" resolve="buildNumber1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfxmZD" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfxmZF" role="3clFbG">
            <node concept="37vLTw" id="48Vb4ZfxmZJ" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4ZfxmUE" resolve="date" />
            </node>
            <node concept="37vLTw" id="48Vb4ZfxmZK" role="37vLTx">
              <ref role="3cqZAo" node="48Vb4ZfxmZC" resolve="date1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfxmZN" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfxmZP" role="3clFbG">
            <node concept="37vLTw" id="48Vb4ZfxmZT" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4ZfxmVX" resolve="gitHash" />
            </node>
            <node concept="37vLTw" id="48Vb4ZfxmZU" role="37vLTx">
              <ref role="3cqZAo" node="48Vb4ZfxmZM" resolve="gitHash1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfxmZX" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfxmZZ" role="3clFbG">
            <node concept="37vLTw" id="48Vb4Zfxn03" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4ZfxmXN" resolve="version" />
            </node>
            <node concept="37vLTw" id="48Vb4Zfxn04" role="37vLTx">
              <ref role="3cqZAo" node="48Vb4ZfxmZW" resolve="version1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfxmZu" role="3clF46">
        <property role="TrG5h" value="buildNumber1" />
        <node concept="17QB3L" id="48Vb4ZfxmZt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48Vb4ZfxmZC" role="3clF46">
        <property role="TrG5h" value="date1" />
        <node concept="17QB3L" id="48Vb4ZfxmZB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48Vb4ZfxmZM" role="3clF46">
        <property role="TrG5h" value="gitHash1" />
        <node concept="17QB3L" id="48Vb4ZfxmZL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48Vb4ZfxmZW" role="3clF46">
        <property role="TrG5h" value="version1" />
        <node concept="17QB3L" id="48Vb4ZfxmZV" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5BgWpoK$6vk">
    <property role="TrG5h" value="EnvironmentBuilder" />
    <node concept="2tJIrI" id="5BgWpoK$6wc" role="jymVt" />
    <node concept="312cEg" id="5BgWpoK_XZt" role="jymVt">
      <property role="TrG5h" value="repo" />
      <node concept="3Tm6S6" id="5BgWpoK_XZu" role="1B3o_S" />
      <node concept="3uibUv" id="5BgWpoK_Y0J" role="1tU5fm">
        <ref role="3uigEE" to="qr12:48Vb4ZfB$Oh" resolve="ILanguageRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BgWpoK_Y96" role="jymVt" />
    <node concept="3clFbW" id="5BgWpoK_Y1l" role="jymVt">
      <node concept="3cqZAl" id="5BgWpoK_Y1m" role="3clF45" />
      <node concept="3Tm1VV" id="5BgWpoK_Y1n" role="1B3o_S" />
      <node concept="3clFbS" id="5BgWpoK_Y1p" role="3clF47">
        <node concept="3clFbF" id="5BgWpoK_Y1t" role="3cqZAp">
          <node concept="37vLTI" id="5BgWpoK_Y1v" role="3clFbG">
            <node concept="37vLTw" id="5BgWpoK_Y1z" role="37vLTJ">
              <ref role="3cqZAo" node="5BgWpoK_XZt" resolve="repo" />
            </node>
            <node concept="37vLTw" id="5BgWpoK_Y1$" role="37vLTx">
              <ref role="3cqZAo" node="5BgWpoK_Y1s" resolve="repo1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BgWpoK_Y1s" role="3clF46">
        <property role="TrG5h" value="repo1" />
        <node concept="3uibUv" id="5BgWpoK_Y1r" role="1tU5fm">
          <ref role="3uigEE" to="qr12:48Vb4ZfB$Oh" resolve="ILanguageRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BgWpoK_XXz" role="jymVt" />
    <node concept="3clFb_" id="5BgWpoK$6x0" role="jymVt">
      <property role="TrG5h" value="build" />
      <node concept="37vLTG" id="5BgWpoK$6Y7" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5BgWpoK$75h" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="4SLY67oaaoi" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
      </node>
      <node concept="3Tm1VV" id="5BgWpoK$6x3" role="1B3o_S" />
      <node concept="3clFbS" id="5BgWpoK$6x4" role="3clF47">
        <node concept="3cpWs8" id="5BgWpoKyeds" role="3cqZAp">
          <node concept="3cpWsn" id="5BgWpoKyedt" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="5BgWpoKyedu" role="1tU5fm">
              <ref role="3uigEE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
            </node>
            <node concept="2ShNRf" id="5BgWpoKyedv" role="33vP2m">
              <node concept="HV5vD" id="5BgWpoKyedw" role="2ShVmc">
                <ref role="HV5vE" node="48Vb4Zfw6hS" resolve="EnvironmentConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4SLY67o9BJa" role="3cqZAp" />
        <node concept="3cpWs8" id="4SLY67o9BRk" role="3cqZAp">
          <node concept="3cpWsn" id="4SLY67o9BRl" role="3cpWs9">
            <property role="TrG5h" value="mpshome" />
            <node concept="3uibUv" id="4SLY67o9BRm" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="4SLY67o9BRn" role="33vP2m">
              <node concept="1pGfFk" id="4SLY67o9BRo" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="2YIFZM" id="4SLY67o9BRp" role="37wK5m">
                  <ref role="37wK5l" to="18ew:~PathManager.getHomePath()" resolve="getHomePath" />
                  <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4SLY67o9CQd" role="3cqZAp">
          <node concept="3cpWsn" id="4SLY67o9CQe" role="3cpWs9">
            <property role="TrG5h" value="mpsHash" />
            <node concept="17QB3L" id="4SLY67o9CQ4" role="1tU5fm" />
            <node concept="2OqwBi" id="4SLY67o9CQf" role="33vP2m">
              <node concept="2OqwBi" id="4SLY67o9CQg" role="2Oq$k0">
                <node concept="37vLTw" id="4SLY67o9CQh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5BgWpoK_XZt" resolve="repo" />
                </node>
                <node concept="liA8E" id="4SLY67o9CQi" role="2OqNvi">
                  <ref role="37wK5l" to="qr12:4SLY67o9zMJ" resolve="getFileRepository" />
                </node>
              </node>
              <node concept="liA8E" id="4SLY67o9CQj" role="2OqNvi">
                <ref role="37wK5l" to="qr12:48Vb4Zfxo1c" resolve="storeFileOrDir" />
                <node concept="37vLTw" id="4SLY67o9CQk" role="37wK5m">
                  <ref role="3cqZAo" node="4SLY67o9BRl" resolve="mpshome" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SLY67o9Dm6" role="3cqZAp">
          <node concept="2OqwBi" id="4SLY67o9Dza" role="3clFbG">
            <node concept="37vLTw" id="4SLY67o9Dm4" role="2Oq$k0">
              <ref role="3cqZAo" node="5BgWpoKyedt" resolve="config" />
            </node>
            <node concept="liA8E" id="4SLY67o9DKo" role="2OqNvi">
              <ref role="37wK5l" node="4SLY67o9lYu" resolve="setMPSHash" />
              <node concept="37vLTw" id="4SLY67o9DLw" role="37wK5m">
                <ref role="3cqZAo" node="4SLY67o9CQe" resolve="mpsHash" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4SLY67o9BK_" role="3cqZAp" />
        <node concept="3cpWs8" id="5BgWpoKyedG" role="3cqZAp">
          <node concept="3cpWsn" id="5BgWpoKyedH" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="5BgWpoKyedI" role="1tU5fm">
              <node concept="3uibUv" id="5BgWpoKyedJ" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="5BgWpoKyedK" role="33vP2m">
              <node concept="37vLTw" id="5BgWpoK$7dF" role="2Oq$k0">
                <ref role="3cqZAo" node="5BgWpoK$6Y7" resolve="repository" />
              </node>
              <node concept="liA8E" id="5BgWpoKyedO" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5BgWpoKyedP" role="3cqZAp">
          <node concept="2GrKxI" id="5BgWpoKyedQ" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="37vLTw" id="5BgWpoKyedS" role="2GsD0m">
            <ref role="3cqZAo" node="5BgWpoKyedH" resolve="modules" />
          </node>
          <node concept="3clFbS" id="5BgWpoKyedV" role="2LFqv$">
            <node concept="3clFbF" id="5BgWpoKyedW" role="3cqZAp">
              <node concept="2OqwBi" id="5BgWpoKyedX" role="3clFbG">
                <node concept="10M0yZ" id="5BgWpoKyedY" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5BgWpoKyedZ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="2OqwBi" id="5BgWpoKyee0" role="37wK5m">
                    <node concept="2GrUjf" id="5BgWpoKyee1" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5BgWpoKyedQ" resolve="module" />
                    </node>
                    <node concept="liA8E" id="5BgWpoKyee2" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5BgWpoKyee3" role="3cqZAp">
              <node concept="3cpWsn" id="5BgWpoKyee4" role="3cpWs9">
                <property role="TrG5h" value="v" />
                <node concept="3uibUv" id="5BgWpoKyee5" role="1tU5fm">
                  <ref role="3uigEE" to="qr12:48Vb4ZfCu9G" resolve="VersionedModule" />
                </node>
                <node concept="2OqwBi" id="5BgWpoKyee6" role="33vP2m">
                  <node concept="37vLTw" id="5BgWpoK_Ybz" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BgWpoK_XZt" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="5BgWpoKyee8" role="2OqNvi">
                    <ref role="37wK5l" to="qr12:48Vb4ZfC_KE" resolve="storeVersion" />
                    <node concept="2GrUjf" id="5BgWpoKyee9" role="37wK5m">
                      <ref role="2Gs0qQ" node="5BgWpoKyedQ" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5BgWpoKyeea" role="3cqZAp">
              <node concept="3clFbS" id="5BgWpoKyeeb" role="3clFbx">
                <node concept="3N13vt" id="5BgWpoKyeec" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="5BgWpoKyeed" role="3clFbw">
                <node concept="10Nm6u" id="5BgWpoKyeee" role="3uHU7w" />
                <node concept="37vLTw" id="5BgWpoKyeef" role="3uHU7B">
                  <ref role="3cqZAo" node="5BgWpoKyee4" resolve="v" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5BgWpoKyeeg" role="3cqZAp">
              <node concept="2OqwBi" id="5BgWpoKyeeh" role="3clFbG">
                <node concept="37vLTw" id="5BgWpoKyeei" role="2Oq$k0">
                  <ref role="3cqZAo" node="5BgWpoKyedt" resolve="config" />
                </node>
                <node concept="liA8E" id="5BgWpoKyeej" role="2OqNvi">
                  <ref role="37wK5l" node="6kOYU1q1_Gr" resolve="addModule" />
                  <node concept="37vLTw" id="5BgWpoKyeek" role="37wK5m">
                    <ref role="3cqZAo" node="5BgWpoKyee4" resolve="v" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4SLY67o9E2K" role="3cqZAp" />
        <node concept="3cpWs8" id="4SLY67oa8Yh" role="3cqZAp">
          <node concept="3cpWsn" id="4SLY67oa8Yi" role="3cpWs9">
            <property role="TrG5h" value="hash" />
            <node concept="17QB3L" id="4SLY67oa8Y9" role="1tU5fm" />
            <node concept="2OqwBi" id="4SLY67oa8Yj" role="33vP2m">
              <node concept="2OqwBi" id="4SLY67oa8Yk" role="2Oq$k0">
                <node concept="37vLTw" id="4SLY67oa8Yl" role="2Oq$k0">
                  <ref role="3cqZAo" node="5BgWpoK_XZt" resolve="repo" />
                </node>
                <node concept="liA8E" id="4SLY67oa8Ym" role="2OqNvi">
                  <ref role="37wK5l" to="qr12:4SLY67o9zMJ" resolve="getFileRepository" />
                </node>
              </node>
              <node concept="liA8E" id="4SLY67oa8Yn" role="2OqNvi">
                <ref role="37wK5l" to="qr12:4SLY67o9EeF" resolve="saveString" />
                <node concept="2OqwBi" id="4SLY67oa8Yo" role="37wK5m">
                  <node concept="37vLTw" id="4SLY67oa8Yp" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BgWpoKyedt" resolve="config" />
                  </node>
                  <node concept="liA8E" id="4SLY67oa8Yq" role="2OqNvi">
                    <ref role="37wK5l" node="6kOYU1q1b44" resolve="toJSON" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SLY67oa9wb" role="3cqZAp">
          <node concept="2OqwBi" id="4SLY67oa9w8" role="3clFbG">
            <node concept="10M0yZ" id="4SLY67oa9w9" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4SLY67oa9wa" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="4SLY67oaa33" role="37wK5m">
                <node concept="37vLTw" id="4SLY67oaa6c" role="3uHU7w">
                  <ref role="3cqZAo" node="4SLY67oa8Yi" resolve="hash" />
                </node>
                <node concept="Xl_RD" id="4SLY67oa9E8" role="3uHU7B">
                  <property role="Xl_RC" value="Config: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4SLY67o9E3N" role="3cqZAp" />
        <node concept="3cpWs6" id="5BgWpoKyeel" role="3cqZAp">
          <node concept="37vLTw" id="4SLY67oaaAt" role="3cqZAk">
            <ref role="3cqZAo" node="5BgWpoKyedt" resolve="config" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BgWpoK$6wn" role="jymVt" />
    <node concept="3Tm1VV" id="5BgWpoK$6vl" role="1B3o_S" />
  </node>
</model>

