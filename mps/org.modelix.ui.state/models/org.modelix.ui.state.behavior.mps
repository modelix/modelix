<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d5a75d6a-e56f-4c12-a58e-3acb971cef19(org.modelix.ui.state.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="da8e6b62-7ca3-4489-86bc-b70a501ca28f" name="de.q60.mps.incremental" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mmar" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom(MPS.IDEA/)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(org.modelix.ui.sm.structure)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="2wxy" ref="r:a64bf504-1b65-47d6-8d8c-e9aef4535e3a(de.q60.mps.incremental.runtime)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" implicit="true" />
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
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="13h7C7" id="4bjL$lUeO_r">
    <ref role="13h7C2" to="fnup:4bjL$lUeeQe" resolve="EditorComponentState" />
    <node concept="13i0hz" id="4bjL$lUeOEb" role="13h7CS">
      <property role="TrG5h" value="save" />
      <node concept="37vLTG" id="4bjL$lUeOKn" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4bjL$lUeOTq" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4bjL$lUeOEc" role="1B3o_S" />
      <node concept="3cqZAl" id="4bjL$lUeOFv" role="3clF45" />
      <node concept="3clFbS" id="4bjL$lUeOEe" role="3clF47">
        <node concept="3cpWs8" id="4bjL$lUeUhi" role="3cqZAp">
          <node concept="3cpWsn" id="4bjL$lUeUhj" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="4bjL$lUeUcl" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorComponentState" resolve="EditorComponentState" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="2UHWH1pQlwF" role="3cqZAp">
          <node concept="1QHqEC" id="2UHWH1pQlwH" role="1QHqEI">
            <node concept="3clFbS" id="2UHWH1pQlwJ" role="1bW5cS">
              <node concept="3clFbF" id="2UHWH1pQlQk" role="3cqZAp">
                <node concept="37vLTI" id="2UHWH1pQlQm" role="3clFbG">
                  <node concept="2OqwBi" id="4bjL$lUeUhk" role="37vLTx">
                    <node concept="2OqwBi" id="4bjL$lUeUhl" role="2Oq$k0">
                      <node concept="37vLTw" id="4bjL$lUeUhm" role="2Oq$k0">
                        <ref role="3cqZAo" node="4bjL$lUeOKn" resolve="editor" />
                      </node>
                      <node concept="liA8E" id="4bjL$lUeUhn" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4bjL$lUeUho" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponentState()" resolve="getEditorComponentState" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2UHWH1pQlQq" role="37vLTJ">
                    <ref role="3cqZAo" node="4bjL$lUeUhj" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2UHWH1pQlEa" role="ukAjM">
            <node concept="2OqwBi" id="2UHWH1pQlEb" role="2Oq$k0">
              <node concept="37vLTw" id="2UHWH1pQlEc" role="2Oq$k0">
                <ref role="3cqZAo" node="4bjL$lUeOKn" resolve="editor" />
              </node>
              <node concept="liA8E" id="2UHWH1pQlEd" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="2UHWH1pQlEe" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4bjL$lUeUyo" role="3cqZAp">
          <node concept="3cpWsn" id="4bjL$lUeUyp" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="4bjL$lUeUxD" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="4bjL$lUeUyq" role="33vP2m">
              <node concept="1pGfFk" id="4bjL$lUeUyr" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="Xl_RD" id="4bjL$lUeXT1" role="37wK5m">
                  <property role="Xl_RC" value="editorState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4bjL$lUeUmg" role="3cqZAp">
          <node concept="2YIFZM" id="4bjL$lUeUoh" role="3clFbG">
            <ref role="37wK5l" to="exr9:~MementoPersistence.saveMemento(jetbrains.mps.openapi.editor.EditorComponentState,org.jdom.Element)" resolve="saveMemento" />
            <ref role="1Pybhc" to="exr9:~MementoPersistence" resolve="MementoPersistence" />
            <node concept="37vLTw" id="4bjL$lUeUp$" role="37wK5m">
              <ref role="3cqZAo" node="4bjL$lUeUhj" resolve="state" />
            </node>
            <node concept="37vLTw" id="4bjL$lUeUys" role="37wK5m">
              <ref role="3cqZAo" node="4bjL$lUeUyp" resolve="element" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2UHWH1pM_Qe" role="3cqZAp">
          <node concept="3cpWsn" id="2UHWH1pM_Qf" role="3cpWs9">
            <property role="TrG5h" value="serialized" />
            <node concept="17QB3L" id="2UHWH1pM_Tr" role="1tU5fm" />
            <node concept="2YIFZM" id="2UHWH1pM_Qg" role="33vP2m">
              <ref role="1Pybhc" to="zn9m:~JDOMUtil" resolve="JDOMUtil" />
              <ref role="37wK5l" to="zn9m:~JDOMUtil.write(org.jdom.Element)" resolve="write" />
              <node concept="37vLTw" id="2UHWH1pM_Qh" role="37wK5m">
                <ref role="3cqZAo" node="4bjL$lUeUyp" resolve="element" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UHWH1pM_XD" role="3cqZAp">
          <node concept="3clFbS" id="2UHWH1pM_XF" role="3clFbx">
            <node concept="3clFbF" id="2UHWH1pIzlB" role="3cqZAp">
              <node concept="37vLTI" id="2UHWH1pI$0X" role="3clFbG">
                <node concept="2OqwBi" id="2UHWH1pIzz2" role="37vLTJ">
                  <node concept="13iPFW" id="2UHWH1pIzl_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2UHWH1pIzGg" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
                  </node>
                </node>
                <node concept="37vLTw" id="2UHWH1pM_Qi" role="37vLTx">
                  <ref role="3cqZAo" node="2UHWH1pM_Qf" resolve="serialized" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="2UHWH1pMAJ_" role="3clFbw">
            <node concept="37vLTw" id="2UHWH1pMAKi" role="3uHU7w">
              <ref role="3cqZAo" node="2UHWH1pM_Qf" resolve="serialized" />
            </node>
            <node concept="2OqwBi" id="2UHWH1pMAdI" role="3uHU7B">
              <node concept="13iPFW" id="2UHWH1pM_YL" role="2Oq$k0" />
              <node concept="3TrcHB" id="2UHWH1pMAnA" role="2OqNvi">
                <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2UHWH1pI$vB" role="13h7CS">
      <property role="TrG5h" value="restore" />
      <node concept="37vLTG" id="2UHWH1pI$vC" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="2UHWH1pI$vD" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2UHWH1pI$vE" role="1B3o_S" />
      <node concept="3cqZAl" id="2UHWH1pI$vF" role="3clF45" />
      <node concept="3clFbS" id="2UHWH1pI$vG" role="3clF47">
        <node concept="3J1_TO" id="2UHWH1pILHy" role="3cqZAp">
          <node concept="3uVAMA" id="2UHWH1pINdP" role="1zxBo5">
            <node concept="XOnhg" id="2UHWH1pINdQ" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2UHWH1pINdR" role="1tU5fm">
                <node concept="3uibUv" id="2UHWH1pINgx" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2UHWH1pINdS" role="1zc67A">
              <node concept="YS8fn" id="2UHWH1pIOgT" role="3cqZAp">
                <node concept="2ShNRf" id="2UHWH1pIOgX" role="YScLw">
                  <node concept="1pGfFk" id="2UHWH1pJ7nF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="Xl_RD" id="2UHWH1pJ7qt" role="37wK5m">
                      <property role="Xl_RC" value="Failed to restore editor state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2UHWH1pILH$" role="1zxBo7">
            <node concept="3cpWs8" id="2UHWH1pICd9" role="3cqZAp">
              <node concept="3cpWsn" id="2UHWH1pICda" role="3cpWs9">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="2UHWH1pIC2g" role="1tU5fm">
                  <ref role="3uigEE" to="mmar:~Element" resolve="Element" />
                </node>
                <node concept="2YIFZM" id="2UHWH1pICdb" role="33vP2m">
                  <ref role="37wK5l" to="zn9m:~JDOMUtil.load(java.lang.CharSequence)" resolve="load" />
                  <ref role="1Pybhc" to="zn9m:~JDOMUtil" resolve="JDOMUtil" />
                  <node concept="2OqwBi" id="2UHWH1pICdc" role="37wK5m">
                    <node concept="13iPFW" id="2UHWH1pICdd" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2UHWH1pICde" role="2OqNvi">
                      <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2UHWH1pIJkn" role="3cqZAp">
              <node concept="3cpWsn" id="2UHWH1pIJko" role="3cpWs9">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="2UHWH1pIJhb" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponentState" resolve="EditorComponentState" />
                </node>
                <node concept="2YIFZM" id="2UHWH1pIJkp" role="33vP2m">
                  <ref role="37wK5l" to="exr9:~MementoPersistence.loadMemento(org.jdom.Element)" resolve="loadMemento" />
                  <ref role="1Pybhc" to="exr9:~MementoPersistence" resolve="MementoPersistence" />
                  <node concept="37vLTw" id="2UHWH1pIJkq" role="37wK5m">
                    <ref role="3cqZAo" node="2UHWH1pICda" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2UHWH1pIHvr" role="3cqZAp">
              <node concept="2OqwBi" id="2UHWH1pIHVf" role="3clFbG">
                <node concept="2OqwBi" id="2UHWH1pIHD8" role="2Oq$k0">
                  <node concept="37vLTw" id="2UHWH1pIHvp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UHWH1pI$vC" resolve="editor" />
                  </node>
                  <node concept="liA8E" id="2UHWH1pIHLy" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                  </node>
                </node>
                <node concept="liA8E" id="2UHWH1pII69" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.restoreEditorComponentState(jetbrains.mps.openapi.editor.EditorComponentState)" resolve="restoreEditorComponentState" />
                  <node concept="37vLTw" id="2UHWH1pIJOw" role="37wK5m">
                    <ref role="3cqZAo" node="2UHWH1pIJko" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4bjL$lUeO_s" role="13h7CW">
      <node concept="3clFbS" id="4bjL$lUeO_t" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Yll$oNPehx" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5Yll$oNPehW" role="1B3o_S" />
      <node concept="3clFbS" id="5Yll$oNPehX" role="3clF47">
        <node concept="3clFbF" id="5Yll$oNPeXf" role="3cqZAp">
          <node concept="3cpWs3" id="5Yll$oNPgTO" role="3clFbG">
            <node concept="Xl_RD" id="5Yll$oNPgIl" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="5Yll$oNPgIi" role="3uHU7B">
              <node concept="3cpWs3" id="5Yll$oNPeYA" role="3uHU7B">
                <node concept="2OqwBi" id="5Yll$oNPfKQ" role="3uHU7B">
                  <node concept="2OqwBi" id="5Yll$oNPf9a" role="2Oq$k0">
                    <node concept="13iPFW" id="5Yll$oNPeYY" role="2Oq$k0" />
                    <node concept="2yIwOk" id="5Yll$oNPfoO" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="5Yll$oNPgd4" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5Yll$oNPeXe" role="3uHU7w">
                  <property role="Xl_RC" value="[" />
                </node>
              </node>
              <node concept="2OqwBi" id="5Yll$oNPhdd" role="3uHU7w">
                <node concept="13iPFW" id="5Yll$oNPgW4" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Yll$oNPhng" role="2OqNvi">
                  <ref role="3TsBF5" to="fnup:2UHWH1pKOia" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5Yll$oNPehY" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2UHWH1pKQ4c">
    <ref role="13h7C2" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
    <node concept="13hLZK" id="2UHWH1pKQ4d" role="13h7CW">
      <node concept="3clFbS" id="2UHWH1pKQ4e" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5Yll$oNOmgy">
    <ref role="13h7C2" to="fnup:4bjL$lUee0m" resolve="User" />
    <node concept="13hLZK" id="5Yll$oNOmgz" role="13h7CW">
      <node concept="3clFbS" id="5Yll$oNOmg$" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Yll$oNOmrx" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5Yll$oNOmrW" role="1B3o_S" />
      <node concept="3clFbS" id="5Yll$oNOmrX" role="3clF47">
        <node concept="3clFbF" id="5Yll$oNOnUQ" role="3cqZAp">
          <node concept="3cpWs3" id="5Yll$oNOokf" role="3clFbG">
            <node concept="Xl_RD" id="5Yll$oNOoe8" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="5Yll$oNOoe5" role="3uHU7B">
              <node concept="Xl_RD" id="5Yll$oNOnUP" role="3uHU7B">
                <property role="Xl_RC" value="User[" />
              </node>
              <node concept="2OqwBi" id="5Yll$oNOo_Z" role="3uHU7w">
                <node concept="13iPFW" id="5Yll$oNOop2" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Yll$oNOoJr" role="2OqNvi">
                  <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5Yll$oNOmrY" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5Yll$oNP4wE">
    <ref role="13h7C2" to="fnup:4bjL$lUedD6" resolve="UserSession" />
    <node concept="13hLZK" id="5Yll$oNP4wF" role="13h7CW">
      <node concept="3clFbS" id="5Yll$oNP4wG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Yll$oNP4xT" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5Yll$oNP4yk" role="1B3o_S" />
      <node concept="3clFbS" id="5Yll$oNP4yl" role="3clF47">
        <node concept="3clFbF" id="5Yll$oNP4F2" role="3cqZAp">
          <node concept="3cpWs3" id="5Yll$oNP5le" role="3clFbG">
            <node concept="3cpWs3" id="5Yll$oNP6An" role="3uHU7B">
              <node concept="2OqwBi" id="5Yll$oNP7kH" role="3uHU7w">
                <node concept="2OqwBi" id="5Yll$oNP6No" role="2Oq$k0">
                  <node concept="13iPFW" id="5Yll$oNP6AF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5Yll$oNP6Yk" role="2OqNvi">
                    <ref role="3Tt5mk" to="fnup:4bjL$lUeeoQ" resolve="user" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5Yll$oNP7zu" role="2OqNvi">
                  <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                </node>
              </node>
              <node concept="3cpWs3" id="5Yll$oNP6cT" role="3uHU7B">
                <node concept="3cpWs3" id="5Yll$oNP5jJ" role="3uHU7B">
                  <node concept="Xl_RD" id="5Yll$oNP4F1" role="3uHU7B">
                    <property role="Xl_RC" value="UserSession[" />
                  </node>
                  <node concept="2OqwBi" id="5Yll$oNP5y_" role="3uHU7w">
                    <node concept="13iPFW" id="5Yll$oNP5mh" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5Yll$oNP5F_" role="2OqNvi">
                      <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5Yll$oNP6cW" role="3uHU7w">
                  <property role="Xl_RC" value=", " />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="5Yll$oNP4ZH" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5Yll$oNP4ym" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5Yll$oNPp7L" role="13h7CS">
      <property role="TrG5h" value="updateLastActivity" />
      <node concept="3Tm1VV" id="5Yll$oNPp7M" role="1B3o_S" />
      <node concept="3cqZAl" id="5Yll$oNPrj0" role="3clF45" />
      <node concept="3clFbS" id="5Yll$oNPp7O" role="3clF47">
        <node concept="3clFbF" id="5Yll$oNPps5" role="3cqZAp">
          <node concept="37vLTI" id="5Yll$oNPqiR" role="3clFbG">
            <node concept="2YIFZM" id="5Yll$oNPr2R" role="37vLTx">
              <ref role="37wK5l" to="wyt6:~Long.toString(long)" resolve="toString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="FJ1c_" id="5Yll$oNPwQu" role="37wK5m">
                <node concept="1adDum" id="5Yll$oNPwXE" role="3uHU7w">
                  <property role="1adDun" value="1000L" />
                </node>
                <node concept="2YIFZM" id="5Yll$oNPqBS" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5Yll$oNPp$a" role="37vLTJ">
              <node concept="13iPFW" id="5Yll$oNPps4" role="2Oq$k0" />
              <node concept="3TrcHB" id="5WTF2yfCgc5" role="2OqNvi">
                <ref role="3TsBF5" to="fnup:5Yll$oNPopq" resolve="lastActivity" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Yll$oNPrnH" role="13h7CS">
      <property role="TrG5h" value="getAgeInSeconds" />
      <node concept="37vLTG" id="1URtOatNa2c" role="3clF46">
        <property role="TrG5h" value="currentTimeMillis" />
        <node concept="3cpWsb" id="1URtOatNcWF" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5Yll$oNPrnI" role="1B3o_S" />
      <node concept="3cpWsb" id="5Yll$oNPrs0" role="3clF45" />
      <node concept="3clFbS" id="5Yll$oNPrnK" role="3clF47">
        <node concept="3cpWs8" id="5Yll$oNPrZI" role="3cqZAp">
          <node concept="3cpWsn" id="5Yll$oNPrZL" role="3cpWs9">
            <property role="TrG5h" value="lastActivity" />
            <node concept="3cpWsb" id="5Yll$oNPrZH" role="1tU5fm" />
            <node concept="3K4zz7" id="5Yll$oNPtCi" role="33vP2m">
              <node concept="2YIFZM" id="5Yll$oNPtJd" role="3K4E3e">
                <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                <node concept="2OqwBi" id="5Yll$oNPtXU" role="37wK5m">
                  <node concept="13iPFW" id="5Yll$oNPtOb" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5Yll$oNPu8E" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:5Yll$oNPopq" resolve="lastActivity" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="5Yll$oNPucY" role="3K4GZi">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="5Yll$oNPsPI" role="3K4Cdx">
                <node concept="2OqwBi" id="5Yll$oNPsbs" role="2Oq$k0">
                  <node concept="13iPFW" id="5Yll$oNPs1Q" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5WTF2yfCgki" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:5Yll$oNPopq" resolve="lastActivity" />
                  </node>
                </node>
                <node concept="17RvpY" id="5Yll$oNPtfP" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Yll$oNPuq6" role="3cqZAp">
          <node concept="3cpWsd" id="5Yll$oNPvz8" role="3cqZAk">
            <node concept="37vLTw" id="5Yll$oNPv_2" role="3uHU7w">
              <ref role="3cqZAo" node="5Yll$oNPrZL" resolve="lastActivity" />
            </node>
            <node concept="FJ1c_" id="5Yll$oNPzNx" role="3uHU7B">
              <node concept="1adDum" id="5Yll$oNP$14" role="3uHU7w">
                <property role="1adDun" value="1000L" />
              </node>
              <node concept="37vLTw" id="1URtOatNdrY" role="3uHU7B">
                <ref role="3cqZAo" node="1URtOatNa2c" resolve="currentTimeMillis" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="p8q6LlRg3Z" role="13h7CS">
      <property role="TrG5h" value="getCSSColor" />
      <node concept="3Tm1VV" id="p8q6LlRg40" role="1B3o_S" />
      <node concept="17QB3L" id="p8q6LlRiF3" role="3clF45" />
      <node concept="3clFbS" id="p8q6LlRg42" role="3clF47">
        <node concept="3J1_TO" id="pTkEjZguyU" role="3cqZAp">
          <node concept="3uVAMA" id="pTkEjZgv2S" role="1zxBo5">
            <node concept="XOnhg" id="pTkEjZgv2T" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="pTkEjZgv2U" role="1tU5fm">
                <node concept="3uibUv" id="pTkEjZgvjf" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="pTkEjZgv2V" role="1zc67A">
              <node concept="RRSsy" id="pTkEjZgBW8" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="pTkEjZgBWa" role="RRSoy" />
                <node concept="37vLTw" id="pTkEjZgCrP" role="RRSow">
                  <ref role="3cqZAo" node="pTkEjZgv2T" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="pTkEjZguyW" role="1zxBo7">
            <node concept="3cpWs8" id="pTkEjZ7FC1" role="3cqZAp">
              <node concept="3cpWsn" id="pTkEjZ7FC2" role="3cpWs9">
                <property role="TrG5h" value="sessionId" />
                <node concept="17QB3L" id="pTkEjZ7Fhu" role="1tU5fm" />
                <node concept="2OqwBi" id="p8q6LlRkdP" role="33vP2m">
                  <node concept="13iPFW" id="p8q6LlRk4O" role="2Oq$k0" />
                  <node concept="3TrcHB" id="p8q6LlRkns" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="pTkEjZ7GhY" role="3cqZAp">
              <node concept="3clFbS" id="pTkEjZ7Gi0" role="3clFbx">
                <node concept="3cpWs8" id="pTkEjZ7KwS" role="3cqZAp">
                  <node concept="3cpWsn" id="pTkEjZ7KwV" role="3cpWs9">
                    <property role="TrG5h" value="h" />
                    <node concept="10Oyi0" id="pTkEjZ7KwQ" role="1tU5fm" />
                    <node concept="3cmrfG" id="pTkEjZ7MG$" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="pTkEjZ7Y3B" role="3cqZAp">
                  <node concept="2OqwBi" id="pTkEjZ7Yqs" role="3clFbG">
                    <node concept="2OqwBi" id="pTkEjZ7Y3D" role="2Oq$k0">
                      <node concept="37vLTw" id="pTkEjZ7Y3E" role="2Oq$k0">
                        <ref role="3cqZAo" node="pTkEjZ7FC2" resolve="sessionId" />
                      </node>
                      <node concept="liA8E" id="pTkEjZ7Y3F" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.chars()" resolve="chars" />
                      </node>
                    </node>
                    <node concept="liA8E" id="pTkEjZ7ZbV" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~IntStream.forEach(java.util.function.IntConsumer)" resolve="forEach" />
                      <node concept="1bVj0M" id="pTkEjZ7ZKs" role="37wK5m">
                        <node concept="37vLTG" id="pTkEjZ8105" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="10Oyi0" id="pTkEjZ84S$" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="pTkEjZ7ZKt" role="1bW5cS">
                          <node concept="3clFbF" id="pTkEjZctcv" role="3cqZAp">
                            <node concept="37vLTI" id="pTkEjZctZP" role="3clFbG">
                              <node concept="2dk9JS" id="pTkEjZcxg1" role="37vLTx">
                                <node concept="3cmrfG" id="pTkEjZcx_b" role="3uHU7w">
                                  <property role="3cmrfH" value="360" />
                                </node>
                                <node concept="1eOMI4" id="pTkEjZcuPT" role="3uHU7B">
                                  <node concept="3cpWs3" id="pTkEjZcwcV" role="1eOMHV">
                                    <node concept="37vLTw" id="pTkEjZcwiY" role="3uHU7w">
                                      <ref role="3cqZAo" node="pTkEjZ8105" resolve="c" />
                                    </node>
                                    <node concept="37vLTw" id="pTkEjZcuWI" role="3uHU7B">
                                      <ref role="3cqZAo" node="pTkEjZ7KwV" resolve="h" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="pTkEjZctct" role="37vLTJ">
                                <ref role="3cqZAo" node="pTkEjZ7KwV" resolve="h" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="pTkEjZ7CNX" role="3cqZAp">
                  <node concept="3cpWs3" id="pTkEjZ8prX" role="3cqZAk">
                    <node concept="3cpWs3" id="pTkEjZ8oXK" role="3uHU7B">
                      <node concept="Xl_RD" id="pTkEjZ8oXQ" role="3uHU7B">
                        <property role="Xl_RC" value="hsla(" />
                      </node>
                      <node concept="37vLTw" id="pTkEjZ8pLs" role="3uHU7w">
                        <ref role="3cqZAo" node="pTkEjZ7KwV" resolve="h" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="pTkEjZ8qso" role="3uHU7w">
                      <property role="Xl_RC" value=", 70%, 50%, 1.0)" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="pTkEjZ7HrT" role="3clFbw">
                <node concept="37vLTw" id="pTkEjZ7GER" role="2Oq$k0">
                  <ref role="3cqZAo" node="pTkEjZ7FC2" resolve="sessionId" />
                </node>
                <node concept="17RvpY" id="p8q6LlRsM9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pTkEjZgy_r" role="3cqZAp">
          <node concept="10Nm6u" id="p8q6LlRtp6" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3zRodHmG2Mo">
    <ref role="13h7C2" to="fnup:3zRodHmDJdv" resolve="ProjectViewState" />
    <node concept="13i0hz" id="1Acnoi_70Ik" role="13h7CS">
      <property role="TrG5h" value="isExpanded" />
      <node concept="37vLTG" id="1Acnoi_70J7" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1Acnoi_70Jl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5NjUL5VDs6K" role="3clF46">
        <property role="TrG5h" value="additionalKey" />
        <node concept="17QB3L" id="5NjUL5VDxBN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2KYpxsWPxb$" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="10P_77" id="2KYpxsWPDUK" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1Acnoi_70Il" role="1B3o_S" />
      <node concept="10P_77" id="1Acnoi_70I$" role="3clF45" />
      <node concept="3clFbS" id="1Acnoi_70In" role="3clF47">
        <node concept="3cpWs8" id="xMO1MCRmCk" role="3cqZAp">
          <node concept="3cpWsn" id="xMO1MCRmCl" role="3cpWs9">
            <property role="TrG5h" value="statesMap" />
            <node concept="3uibUv" id="xMO1MCRmCj" role="1tU5fm">
              <ref role="3uigEE" to="2wxy:1ADQdKvAAoO" resolve="MapInModel" />
              <node concept="3Tqbb2" id="xMO1MCRjb3" role="11_B2D">
                <ref role="ehGHo" to="fnup:3zRodHmDJdv" resolve="ProjectViewState" />
              </node>
              <node concept="3Tqbb2" id="xMO1MCRjb2" role="11_B2D">
                <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
              </node>
              <node concept="1LlUBW" id="xMO1MCRjaZ" role="11_B2D">
                <node concept="3Tqbb2" id="xMO1MCRjb0" role="1Lm7xW" />
                <node concept="17QB3L" id="xMO1MCRjb1" role="1Lm7xW" />
              </node>
              <node concept="3uibUv" id="xMO1MCRjb4" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2ShNRf" id="xMO1MCRmCm" role="33vP2m">
              <node concept="YeOm9" id="xMO1MCRmCn" role="2ShVmc">
                <node concept="1Y3b0j" id="xMO1MCRmCo" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="2wxy:xMO1MCQiHa" resolve="MapInModel" />
                  <ref role="1Y3XeK" to="2wxy:1ADQdKvAAoO" resolve="MapInModel" />
                  <node concept="3Tm1VV" id="xMO1MCRmCp" role="1B3o_S" />
                  <node concept="13iPFW" id="xMO1MCRmCq" role="37wK5m" />
                  <node concept="3Tqbb2" id="xMO1MCRmCr" role="2Ghqu4">
                    <ref role="ehGHo" to="fnup:3zRodHmDJdv" resolve="ProjectViewState" />
                  </node>
                  <node concept="3Tqbb2" id="xMO1MCRmCs" role="2Ghqu4">
                    <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
                  </node>
                  <node concept="1LlUBW" id="xMO1MCRmCt" role="2Ghqu4">
                    <node concept="3Tqbb2" id="xMO1MCRmCu" role="1Lm7xW" />
                    <node concept="17QB3L" id="xMO1MCRmCv" role="1Lm7xW" />
                  </node>
                  <node concept="3uibUv" id="xMO1MCRmCw" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                  </node>
                  <node concept="3clFb_" id="xMO1MCRmCx" role="jymVt">
                    <property role="TrG5h" value="computeEntries" />
                    <node concept="37vLTG" id="xMO1MCRmCy" role="3clF46">
                      <property role="TrG5h" value="map" />
                      <node concept="3Tqbb2" id="xMO1MCRmCz" role="1tU5fm">
                        <ref role="ehGHo" to="fnup:3zRodHmDJdv" resolve="ProjectViewState" />
                      </node>
                    </node>
                    <node concept="A3Dl8" id="xMO1MCRmC$" role="3clF45">
                      <node concept="3Tqbb2" id="xMO1MCRmC_" role="A3Ik2">
                        <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
                      </node>
                    </node>
                    <node concept="3Tmbuc" id="xMO1MCRmCA" role="1B3o_S" />
                    <node concept="3clFbS" id="xMO1MCRmCB" role="3clF47">
                      <node concept="3clFbF" id="xMO1MCRmCC" role="3cqZAp">
                        <node concept="2OqwBi" id="xMO1MCRmCD" role="3clFbG">
                          <node concept="37vLTw" id="xMO1MCRmCE" role="2Oq$k0">
                            <ref role="3cqZAo" node="xMO1MCRmCy" resolve="map" />
                          </node>
                          <node concept="3Tsc0h" id="xMO1MCRmCF" role="2OqNvi">
                            <ref role="3TtcxE" to="fnup:1Acnoi_70CH" resolve="expansionStates" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xMO1MCRmCG" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="xMO1MCRmCH" role="jymVt">
                    <property role="TrG5h" value="computeKey" />
                    <node concept="37vLTG" id="xMO1MCRmCI" role="3clF46">
                      <property role="TrG5h" value="entry" />
                      <node concept="3Tqbb2" id="xMO1MCRmCJ" role="1tU5fm">
                        <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
                      </node>
                    </node>
                    <node concept="1LlUBW" id="xMO1MCRmCK" role="3clF45">
                      <node concept="3Tqbb2" id="xMO1MCRmCL" role="1Lm7xW" />
                      <node concept="17QB3L" id="xMO1MCRmCM" role="1Lm7xW" />
                    </node>
                    <node concept="3Tmbuc" id="xMO1MCRmCN" role="1B3o_S" />
                    <node concept="3clFbS" id="xMO1MCRmCO" role="3clF47">
                      <node concept="3clFbF" id="xMO1MCRmCP" role="3cqZAp">
                        <node concept="1Ls8ON" id="xMO1MCRmCQ" role="3clFbG">
                          <node concept="2OqwBi" id="xMO1MCRmCR" role="1Lso8e">
                            <node concept="37vLTw" id="xMO1MCRmCS" role="2Oq$k0">
                              <ref role="3cqZAo" node="xMO1MCRmCI" resolve="entry" />
                            </node>
                            <node concept="3TrEf2" id="xMO1MCRmCT" role="2OqNvi">
                              <ref role="3Tt5mk" to="j481:1Acnoi_70Fv" resolve="node" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="xMO1MCRmCU" role="1Lso8e">
                            <node concept="37vLTw" id="xMO1MCRmCV" role="2Oq$k0">
                              <ref role="3cqZAo" node="xMO1MCRmCI" resolve="entry" />
                            </node>
                            <node concept="3TrcHB" id="xMO1MCRmCW" role="2OqNvi">
                              <ref role="3TsBF5" to="j481:5NjUL5VDxCu" resolve="additionalKey" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xMO1MCRmCX" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="xMO1MCRmCY" role="jymVt">
                    <property role="TrG5h" value="computeValue" />
                    <node concept="37vLTG" id="xMO1MCRmCZ" role="3clF46">
                      <property role="TrG5h" value="entry" />
                      <node concept="3Tqbb2" id="xMO1MCRmD0" role="1tU5fm">
                        <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="xMO1MCRmD1" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="3Tmbuc" id="xMO1MCRmD2" role="1B3o_S" />
                    <node concept="3clFbS" id="xMO1MCRmD3" role="3clF47">
                      <node concept="3clFbF" id="xMO1MCRmD4" role="3cqZAp">
                        <node concept="2OqwBi" id="xMO1MCRmD5" role="3clFbG">
                          <node concept="37vLTw" id="xMO1MCRmD6" role="2Oq$k0">
                            <ref role="3cqZAo" node="xMO1MCRmCZ" resolve="entry" />
                          </node>
                          <node concept="3TrcHB" id="xMO1MCRmD7" role="2OqNvi">
                            <ref role="3TsBF5" to="j481:1Acnoi_70Fz" resolve="expanded" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xMO1MCRmD8" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7_BE$5LBacB" role="3cqZAp">
          <node concept="3cpWsn" id="7_BE$5LBacC" role="3cpWs9">
            <property role="TrG5h" value="expanded" />
            <node concept="3uibUv" id="7_BE$5LBa8K" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
            <node concept="2OqwBi" id="xMO1MCRpqW" role="33vP2m">
              <node concept="37vLTw" id="7_BE$5LBacH" role="2Oq$k0">
                <ref role="3cqZAo" node="xMO1MCRmCl" resolve="statesMap" />
              </node>
              <node concept="liA8E" id="xMO1MCRpKo" role="2OqNvi">
                <ref role="37wK5l" to="2wxy:1ADQdKvAApy" resolve="get" />
                <node concept="1Ls8ON" id="xMO1MCRq28" role="37wK5m">
                  <node concept="37vLTw" id="xMO1MCRq29" role="1Lso8e">
                    <ref role="3cqZAo" node="1Acnoi_70J7" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="xMO1MCRq2a" role="1Lso8e">
                    <ref role="3cqZAo" node="5NjUL5VDs6K" resolve="additionalKey" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Acnoi_70JH" role="3cqZAp">
          <node concept="3K4zz7" id="1Acnoi_76iM" role="3clFbG">
            <node concept="37vLTw" id="2KYpxsWPHg6" role="3K4E3e">
              <ref role="3cqZAo" node="2KYpxsWPxb$" resolve="defaultValue" />
            </node>
            <node concept="37vLTw" id="7_BE$5LBb2t" role="3K4GZi">
              <ref role="3cqZAo" node="7_BE$5LBacC" resolve="expanded" />
            </node>
            <node concept="3clFbC" id="7_BE$5LBaTt" role="3K4Cdx">
              <node concept="10Nm6u" id="7_BE$5LBb1k" role="3uHU7w" />
              <node concept="37vLTw" id="7_BE$5LBaBn" role="3uHU7B">
                <ref role="3cqZAo" node="7_BE$5LBacC" resolve="expanded" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1Acnoi_78wP" role="13h7CS">
      <property role="TrG5h" value="setExpanded" />
      <node concept="37vLTG" id="1Acnoi_78$P" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1Acnoi_78_3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5NjUL5VDDx4" role="3clF46">
        <property role="TrG5h" value="additionalKey" />
        <node concept="17QB3L" id="5NjUL5VDDx5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Acnoi_78_g" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="1Acnoi_78_w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2KYpxsWPHow" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="10P_77" id="2KYpxsWPHCc" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1Acnoi_78wQ" role="1B3o_S" />
      <node concept="3cqZAl" id="1Acnoi_78$E" role="3clF45" />
      <node concept="3clFbS" id="1Acnoi_78wS" role="3clF47">
        <node concept="3cpWs8" id="1Acnoi_78Gh" role="3cqZAp">
          <node concept="3cpWsn" id="1Acnoi_78Gi" role="3cpWs9">
            <property role="TrG5h" value="expansionState" />
            <node concept="3Tqbb2" id="1Acnoi_78Gj" role="1tU5fm">
              <ref role="ehGHo" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
            </node>
            <node concept="2OqwBi" id="1Acnoi_78Gk" role="33vP2m">
              <node concept="2OqwBi" id="1Acnoi_78Gl" role="2Oq$k0">
                <node concept="13iPFW" id="1Acnoi_78Gm" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1Acnoi_78Gn" role="2OqNvi">
                  <ref role="3TtcxE" to="fnup:1Acnoi_70CH" resolve="expansionStates" />
                </node>
              </node>
              <node concept="1z4cxt" id="1Acnoi_78Go" role="2OqNvi">
                <node concept="1bVj0M" id="1Acnoi_78Gp" role="23t8la">
                  <node concept="3clFbS" id="1Acnoi_78Gq" role="1bW5cS">
                    <node concept="3clFbF" id="1Acnoi_78Gr" role="3cqZAp">
                      <node concept="1Wc70l" id="5NjUL5VDDNO" role="3clFbG">
                        <node concept="17R0WA" id="1Acnoi_78Gs" role="3uHU7B">
                          <node concept="2OqwBi" id="1Acnoi_78Gu" role="3uHU7B">
                            <node concept="37vLTw" id="1Acnoi_78Gv" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Acnoi_78Gx" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="1Acnoi_78Gw" role="2OqNvi">
                              <ref role="3Tt5mk" to="j481:1Acnoi_70Fv" resolve="node" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1Acnoi_78Gt" role="3uHU7w">
                            <ref role="3cqZAo" node="1Acnoi_78$P" resolve="node" />
                          </node>
                        </node>
                        <node concept="17R0WA" id="5NjUL5VDDT0" role="3uHU7w">
                          <node concept="37vLTw" id="5NjUL5VDDT1" role="3uHU7w">
                            <ref role="3cqZAo" node="5NjUL5VDDx4" resolve="additionalKey" />
                          </node>
                          <node concept="2OqwBi" id="5NjUL5VDDT2" role="3uHU7B">
                            <node concept="37vLTw" id="5NjUL5VDDT3" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Acnoi_78Gx" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="5NjUL5VDDT4" role="2OqNvi">
                              <ref role="3TsBF5" to="j481:5NjUL5VDxCu" resolve="additionalKey" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1Acnoi_78Gx" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1Acnoi_78Gy" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Acnoi_78Fj" role="3cqZAp">
          <node concept="3y3z36" id="2KYpxsWPI46" role="3clFbw">
            <node concept="37vLTw" id="2KYpxsWPIhu" role="3uHU7w">
              <ref role="3cqZAo" node="2KYpxsWPHow" resolve="defaultValue" />
            </node>
            <node concept="37vLTw" id="1Acnoi_78Fv" role="3uHU7B">
              <ref role="3cqZAo" node="1Acnoi_78_g" resolve="value" />
            </node>
          </node>
          <node concept="3clFbS" id="1Acnoi_78Fl" role="3clFbx">
            <node concept="3clFbJ" id="1Acnoi_7aWz" role="3cqZAp">
              <node concept="3clFbS" id="1Acnoi_7aW_" role="3clFbx">
                <node concept="3clFbF" id="1Acnoi_7bkB" role="3cqZAp">
                  <node concept="37vLTI" id="1Acnoi_7fX3" role="3clFbG">
                    <node concept="37vLTw" id="1Acnoi_7fP_" role="37vLTJ">
                      <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                    </node>
                    <node concept="1PxgMI" id="1Acnoi_7h4G" role="37vLTx">
                      <node concept="chp4Y" id="1Acnoi_7h6j" role="3oSUPX">
                        <ref role="cht4Q" to="j481:1Acnoi_70Fu" resolve="ExpansionState" />
                      </node>
                      <node concept="2YIFZM" id="1Acnoi_7gFy" role="1m5AlR">
                        <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                        <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                        <node concept="13iPFW" id="5qyKc0MpL3G" role="37wK5m" />
                        <node concept="359W_D" id="1Acnoi_7gLD" role="37wK5m">
                          <ref role="359W_E" to="fnup:3zRodHmDJdv" resolve="ProjectViewState" />
                          <ref role="359W_F" to="fnup:1Acnoi_70CH" resolve="expansionStates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="76u1raAkgRJ" role="3cqZAp">
                  <node concept="37vLTI" id="76u1raAkhus" role="3clFbG">
                    <node concept="37vLTw" id="76u1raAkhuR" role="37vLTx">
                      <ref role="3cqZAo" node="1Acnoi_78$P" resolve="node" />
                    </node>
                    <node concept="2OqwBi" id="76u1raAkh1t" role="37vLTJ">
                      <node concept="37vLTw" id="76u1raAkgRH" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                      </node>
                      <node concept="3TrEf2" id="76u1raAkhcc" role="2OqNvi">
                        <ref role="3Tt5mk" to="j481:1Acnoi_70Fv" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5NjUL5VDEf$" role="3cqZAp">
                  <node concept="37vLTI" id="5NjUL5VDEOf" role="3clFbG">
                    <node concept="37vLTw" id="5NjUL5VDEV0" role="37vLTx">
                      <ref role="3cqZAo" node="5NjUL5VDDx4" resolve="additionalKey" />
                    </node>
                    <node concept="2OqwBi" id="5NjUL5VDEoM" role="37vLTJ">
                      <node concept="37vLTw" id="5NjUL5VDEfy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                      </node>
                      <node concept="3TrcHB" id="5NjUL5VDExU" role="2OqNvi">
                        <ref role="3TsBF5" to="j481:5NjUL5VDxCu" resolve="additionalKey" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1Acnoi_7b5P" role="3clFbw">
                <node concept="37vLTw" id="1Acnoi_7aWM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                </node>
                <node concept="3w_OXm" id="1Acnoi_7bgk" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="1Acnoi_78Um" role="3cqZAp">
              <node concept="37vLTI" id="1Acnoi_79LV" role="3clFbG">
                <node concept="37vLTw" id="2KYpxsWPIwP" role="37vLTx">
                  <ref role="3cqZAo" node="1Acnoi_78_g" resolve="value" />
                </node>
                <node concept="2OqwBi" id="1Acnoi_791w" role="37vLTJ">
                  <node concept="37vLTw" id="1Acnoi_78Ul" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                  </node>
                  <node concept="3TrcHB" id="1Acnoi_79bX" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:1Acnoi_70Fz" resolve="expanded" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1Acnoi_78FL" role="9aQIa">
            <node concept="3clFbS" id="1Acnoi_78FM" role="9aQI4">
              <node concept="3clFbJ" id="1Acnoi_7heL" role="3cqZAp">
                <node concept="3clFbS" id="1Acnoi_7heN" role="3clFbx">
                  <node concept="3clFbF" id="1Acnoi_79V1" role="3cqZAp">
                    <node concept="2OqwBi" id="1Acnoi_7a2r" role="3clFbG">
                      <node concept="37vLTw" id="1Acnoi_79V0" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                      </node>
                      <node concept="3YRAZt" id="1Acnoi_7adj" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1Acnoi_7ho8" role="3clFbw">
                  <node concept="37vLTw" id="1Acnoi_7hfc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Acnoi_78Gi" resolve="expansionState" />
                  </node>
                  <node concept="3x8VRR" id="1Acnoi_7hz2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3zRodHmG2Mp" role="13h7CW">
      <node concept="3clFbS" id="3zRodHmG2Mq" role="2VODD2" />
    </node>
  </node>
</model>

