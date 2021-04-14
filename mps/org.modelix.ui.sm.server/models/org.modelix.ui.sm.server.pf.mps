<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e99be64-2426-4999-853c-5db2cd8b90dc(org.modelix.ui.sm.server.pf)">
  <persistence version="9" />
  <languages>
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="yo94" ref="r:4629a434-6c59-4e7a-9315-92ac147f2aaa(de.q60.mps.explorer.pf)" />
    <import index="2uyn" ref="r:eff6946b-526f-4642-b774-15a90feebcbf(de.q60.mps.shadowmodels.debugview.pf)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="2qs1" ref="r:f8990486-c591-4463-8538-99bfa890834b(org.modelix.ui.sm.server.plugin)" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(org.modelix.ui.sm.structure)" />
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(org.modelix.ui.sm.dom.structure)" />
    <import index="6y8" ref="r:84bdf498-a7b7-4050-8eec-ebd94d3bd321(org.modelix.ui.sm.json.structure)" />
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(org.modelix.ui.sm.transformations)" />
    <import index="2wxy" ref="r:a64bf504-1b65-47d6-8d8c-e9aef4535e3a(de.q60.mps.incremental.runtime)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mxf6" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.json(de.q60.mps.web.lib/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qvpu" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.area(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" implicit="true" />
    <import index="v1cj" ref="r:2c4bc58b-9da3-4f5f-8ea2-32f043278ab7(org.modelix.ui.sm.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="yhmx" ref="r:e87ae99a-a050-4d92-b546-f559a1ec5998(org.modelix.ui.sm.json.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions">
      <concept id="3378269547577556077" name="de.q60.mps.polymorphicfunctions.structure.ContextDeclaration" flags="ng" index="s0NCG" />
      <concept id="3378269547577557354" name="de.q60.mps.polymorphicfunctions.structure.ContextContainer" flags="ng" index="s0OsF">
        <reference id="3378269547577557365" name="contextDeclaration" index="s0OsO" />
        <child id="3378269547577558129" name="content" index="s0O8K" />
      </concept>
      <concept id="3378269547578515869" name="de.q60.mps.polymorphicfunctions.structure.ContextCall" flags="ng" index="s3uvs">
        <reference id="3378269547578515871" name="contextDecl" index="s3uvu" />
        <child id="3378269547578515873" name="body" index="s3uvw" />
        <child id="3378269547578515876" name="contextParameterValues" index="s3uv_" />
      </concept>
      <concept id="3378269547578341334" name="de.q60.mps.polymorphicfunctions.structure.ContextParameterReference" flags="ng" index="s3N6n">
        <reference id="3378269547578341336" name="decl" index="s3N6p" />
      </concept>
      <concept id="3814377006350445070" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionCall" flags="ng" index="2M0cAz">
        <reference id="3814377006350445193" name="decl" index="2M0c$$" />
        <child id="3814377006350445199" name="parameterValues" index="2M0c$y" />
      </concept>
      <concept id="1700528364959285475" name="de.q60.mps.polymorphicfunctions.structure.PFParameterDeclaration" flags="ng" index="3khFPE">
        <child id="1700528364959285604" name="type" index="3khFNH" />
      </concept>
      <concept id="1700528364959225008" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionsModule" flags="ng" index="3khU$T">
        <child id="1700528364959226185" name="content" index="3khUj0" />
      </concept>
      <concept id="1700528364959225676" name="de.q60.mps.polymorphicfunctions.structure.EmptyLine" flags="ng" index="3khUF5" />
      <concept id="1700528364959392070" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionImplementation" flags="ng" index="3ku1Nf">
        <reference id="1700528364959392205" name="decl" index="3ku1L4" />
        <child id="1700528364959392199" name="body" index="3ku1Le" />
        <child id="1700528364959497320" name="parameters" index="3kuS7x" />
      </concept>
      <concept id="1700528364959781069" name="de.q60.mps.polymorphicfunctions.structure.PFParameterReference" flags="ng" index="3kvyP4">
        <reference id="1700528364959781192" name="decl" index="3kvyN1" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="3khU$T" id="2TbqVtHtjde">
    <property role="TrG5h" value="PF" />
    <node concept="3khUF5" id="2TbqVtHtjdf" role="3khUj0" />
    <node concept="3ku1Nf" id="2TbqVtHt$mV" role="3khUj0">
      <ref role="3ku1L4" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
      <node concept="3clFbS" id="2TbqVtHt$mX" role="3ku1Le">
        <node concept="3cpWs8" id="57jJhorBn4" role="3cqZAp">
          <node concept="3cpWsn" id="57jJhorBn5" role="3cpWs9">
            <property role="TrG5h" value="ee" />
            <node concept="3uibUv" id="57jJhorBn6" role="1tU5fm">
              <ref role="3uigEE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
            </node>
            <node concept="2ShNRf" id="57jJhorBr5" role="33vP2m">
              <node concept="HV5vD" id="57jJhorCFp" role="2ShVmc">
                <ref role="HV5vE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57jJhosgdd" role="3cqZAp">
          <node concept="37vLTI" id="57jJhosgNY" role="3clFbG">
            <node concept="3clFbT" id="57jJhosgPc" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="57jJhosgtJ" role="37vLTJ">
              <node concept="37vLTw" id="57jJhosgdb" role="2Oq$k0">
                <ref role="3cqZAo" node="57jJhorBn5" resolve="ee" />
              </node>
              <node concept="2OwXpG" id="57jJhosgvZ" role="2OqNvi">
                <ref role="2Oxat5" to="yo94:41QOk3ISXsz" resolve="transparent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="57jJhouWXA" role="3cqZAp">
          <node concept="3cpWsn" id="57jJhouWXB" role="3cpWs9">
            <property role="TrG5h" value="viewerState" />
            <node concept="3Tqbb2" id="57jJhouWM5" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
            </node>
            <node concept="10Nm6u" id="6rcGC6EzHfQ" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="6rcGC6EyS_u" role="3cqZAp">
          <node concept="2YIFZM" id="6rcGC6EyS_w" role="3clFbG">
            <ref role="37wK5l" to="qsto:6gw1ikf12gp" resolve="readOnStateRoots" />
            <ref role="1Pybhc" to="qsto:6gw1ikeUVSA" resolve="UiStateUtil" />
            <node concept="1bVj0M" id="6rcGC6EyTr_" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="37vLTG" id="6rcGC6EyTs$" role="1bW2Oz">
                <property role="TrG5h" value="stateRoot" />
                <node concept="3Tqbb2" id="6rcGC6EyTx2" role="1tU5fm">
                  <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                </node>
              </node>
              <node concept="3clFbS" id="6rcGC6EyTrB" role="1bW5cS">
                <node concept="3clFbF" id="6rcGC6Ez$pn" role="3cqZAp">
                  <node concept="37vLTI" id="6rcGC6Ez$pp" role="3clFbG">
                    <node concept="2OqwBi" id="6rcGC6EzuTV" role="37vLTx">
                      <node concept="2OqwBi" id="6rcGC6EzuTW" role="2Oq$k0">
                        <node concept="2OqwBi" id="6rcGC6EzuTX" role="2Oq$k0">
                          <node concept="2OqwBi" id="6rcGC6EzuTY" role="2Oq$k0">
                            <node concept="37vLTw" id="6rcGC6EzuTZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="6rcGC6EyTs$" resolve="stateRoot" />
                            </node>
                            <node concept="3Tsc0h" id="6rcGC6EzuU0" role="2OqNvi">
                              <ref role="3TtcxE" to="fnup:4bjL$lUeegP" resolve="sessions" />
                            </node>
                          </node>
                          <node concept="2S7cBI" id="6rcGC6EzuU1" role="2OqNvi">
                            <node concept="1bVj0M" id="6rcGC6EzuU2" role="23t8la">
                              <node concept="3clFbS" id="6rcGC6EzuU3" role="1bW5cS">
                                <node concept="3clFbF" id="6rcGC6EzuU4" role="3cqZAp">
                                  <node concept="3K4zz7" id="6rcGC6EzuU5" role="3clFbG">
                                    <node concept="3cmrfG" id="6rcGC6EzuU6" role="3K4E3e">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="2YIFZM" id="6rcGC6EzuU7" role="3K4GZi">
                                      <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                      <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                      <node concept="2OqwBi" id="6rcGC6EzuU8" role="37wK5m">
                                        <node concept="37vLTw" id="6rcGC6EzuU9" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6rcGC6EzuUg" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="6rcGC6EzuUa" role="2OqNvi">
                                          <ref role="3TsBF5" to="fnup:5Yll$oNPopq" resolve="lastActivity" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="6rcGC6EzuUb" role="3K4Cdx">
                                      <node concept="2OqwBi" id="6rcGC6EzuUc" role="2Oq$k0">
                                        <node concept="37vLTw" id="6rcGC6EzuUd" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6rcGC6EzuUg" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="6rcGC6EzuUe" role="2OqNvi">
                                          <ref role="3TsBF5" to="fnup:5Yll$oNPopq" resolve="lastActivity" />
                                        </node>
                                      </node>
                                      <node concept="17RlXB" id="6rcGC6EzuUf" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6rcGC6EzuUg" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6rcGC6EzuUh" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1nlBCl" id="6rcGC6EzuUi" role="2S7zOq" />
                          </node>
                        </node>
                        <node concept="13MTOL" id="6rcGC6EzuUj" role="2OqNvi">
                          <ref role="13MTZf" to="fnup:6gw1ikeUpjH" resolve="smViewerStates" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="6rcGC6EzuUk" role="2OqNvi">
                        <node concept="1bVj0M" id="6rcGC6EzuUl" role="23t8la">
                          <node concept="3clFbS" id="6rcGC6EzuUm" role="1bW5cS">
                            <node concept="3clFbF" id="6rcGC6EzuUn" role="3cqZAp">
                              <node concept="1Wc70l" id="6rcGC6EzuUo" role="3clFbG">
                                <node concept="2OqwBi" id="6rcGC6EzuUp" role="3uHU7B">
                                  <node concept="2OqwBi" id="6rcGC6EzuUq" role="2Oq$k0">
                                    <node concept="37vLTw" id="6rcGC6EzuUr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6rcGC6EzuUD" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="6rcGC6EzuUs" role="2OqNvi">
                                      <ref role="3TsBF5" to="j481:6rcGC6Eym_P" resolve="rootNodeRef" />
                                    </node>
                                  </node>
                                  <node concept="17RvpY" id="6rcGC6EzuUt" role="2OqNvi" />
                                </node>
                                <node concept="17R0WA" id="6rcGC6EzuUu" role="3uHU7w">
                                  <node concept="2OqwBi" id="6rcGC6EzuUv" role="3uHU7w">
                                    <node concept="3kvyP4" id="6rcGC6EzuUw" role="2Oq$k0">
                                      <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                                    </node>
                                    <node concept="2OwXpG" id="6rcGC6EzuUx" role="2OqNvi">
                                      <ref role="2Oxat5" node="6$M6y1eYEZ8" resolve="rootNode" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="7$7_4Zicsc8" role="3uHU7B">
                                    <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                    <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                    <node concept="2OqwBi" id="6rcGC6EzuUy" role="37wK5m">
                                      <node concept="2YIFZM" id="6rcGC6EzuUz" role="2Oq$k0">
                                        <ref role="37wK5l" to="qsto:5npwda7ZW_A" resolve="deserialize" />
                                        <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                                        <node concept="2OqwBi" id="6rcGC6EzuU$" role="37wK5m">
                                          <node concept="37vLTw" id="6rcGC6EzuU_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6rcGC6EzuUD" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="6rcGC6EzuUA" role="2OqNvi">
                                            <ref role="3TsBF5" to="j481:6rcGC6Eym_P" resolve="rootNodeRef" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6rcGC6EzuUB" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~INodeReference.resolveNode(org.modelix.model.area.IArea)" resolve="resolveNode" />
                                        <node concept="2OqwBi" id="7$7_4Zicm4K" role="37wK5m">
                                          <node concept="10M0yZ" id="7$7_4Zicl5_" role="2Oq$k0">
                                            <ref role="1PxDUh" to="qvpu:~ContextArea" resolve="ContextArea" />
                                            <ref role="3cqZAo" to="qvpu:~ContextArea.INSTANCE" resolve="INSTANCE" />
                                          </node>
                                          <node concept="liA8E" id="7$7_4Zicn7l" role="2OqNvi">
                                            <ref role="37wK5l" to="qvpu:~ContextArea.getArea()" resolve="getArea" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6rcGC6EzuUD" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6rcGC6EzuUE" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6rcGC6EzASg" role="37vLTJ">
                      <ref role="3cqZAo" node="57jJhouWXB" resolve="viewerState" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6rcGC6EzQaK" role="3cqZAp">
                  <node concept="3clFbC" id="6rcGC6EzSVR" role="3cqZAk">
                    <node concept="10Nm6u" id="6rcGC6EzUe8" role="3uHU7w" />
                    <node concept="37vLTw" id="6rcGC6EzR6H" role="3uHU7B">
                      <ref role="3cqZAo" node="57jJhouWXB" resolve="viewerState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6rcGC6EyRLv" role="3cqZAp" />
        <node concept="3cpWs8" id="57jJhorHED" role="3cqZAp">
          <node concept="3cpWsn" id="57jJhorHEE" role="3cpWs9">
            <property role="TrG5h" value="viewer" />
            <node concept="3Tqbb2" id="57jJhorHE3" role="1tU5fm">
              <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
            </node>
            <node concept="2YIFZM" id="57jJhorHEF" role="33vP2m">
              <ref role="1Pybhc" to="2qs1:6kYN8GakajA" resolve="InteractionSession" />
              <ref role="37wK5l" to="2qs1:6rcGC6ExX9V" resolve="getTransformedViewer" />
              <node concept="2OqwBi" id="57jJhorHEG" role="37wK5m">
                <node concept="3kvyP4" id="57jJhorHEH" role="2Oq$k0">
                  <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                </node>
                <node concept="2OwXpG" id="57jJhorHEI" role="2OqNvi">
                  <ref role="2Oxat5" node="2Vy1$4Mci68" resolve="engine" />
                </node>
              </node>
              <node concept="2OqwBi" id="57jJhorHEJ" role="37wK5m">
                <node concept="3kvyP4" id="57jJhorHEK" role="2Oq$k0">
                  <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                </node>
                <node concept="2OwXpG" id="57jJhorHEL" role="2OqNvi">
                  <ref role="2Oxat5" node="6$M6y1eYEZ8" resolve="rootNode" />
                </node>
              </node>
              <node concept="37vLTw" id="6rcGC6EzYCK" role="37wK5m">
                <ref role="3cqZAo" node="57jJhouWXB" resolve="viewerState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="57jJhorIKu" role="3cqZAp">
          <node concept="3cpWsn" id="57jJhorIKv" role="3cpWs9">
            <property role="TrG5h" value="html" />
            <node concept="3Tqbb2" id="57jJhorIJq" role="1tU5fm">
              <ref role="ehGHo" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
            </node>
            <node concept="2YIFZM" id="57jJhorIKw" role="33vP2m">
              <ref role="37wK5l" to="2qs1:57jJhoqQUH" resolve="getTransformedHtml" />
              <ref role="1Pybhc" to="2qs1:6kYN8GakajA" resolve="InteractionSession" />
              <node concept="2OqwBi" id="57jJhorIKx" role="37wK5m">
                <node concept="3kvyP4" id="57jJhorIKy" role="2Oq$k0">
                  <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                </node>
                <node concept="2OwXpG" id="57jJhorIKz" role="2OqNvi">
                  <ref role="2Oxat5" node="2Vy1$4Mci68" resolve="engine" />
                </node>
              </node>
              <node concept="37vLTw" id="57jJhorIK$" role="37wK5m">
                <ref role="3cqZAo" node="57jJhorHEE" resolve="viewer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="57jJhorEat" role="3cqZAp" />
        <node concept="3clFbF" id="57jJhorD__" role="3cqZAp">
          <node concept="2OqwBi" id="57jJhorDIH" role="3clFbG">
            <node concept="37vLTw" id="57jJhorD_z" role="2Oq$k0">
              <ref role="3cqZAo" node="57jJhorBn5" resolve="ee" />
            </node>
            <node concept="liA8E" id="57jJhorDPz" role="2OqNvi">
              <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
              <node concept="Xl_RD" id="57jJhov2AT" role="37wK5m">
                <property role="Xl_RC" value="Viewer State: " />
              </node>
              <node concept="s3uvs" id="57jJhorDQN" role="37wK5m">
                <ref role="s3uvu" node="2TbqVtHt$HE" resolve="webCellExplorerContext" />
                <node concept="s3uvs" id="57jJhorDQO" role="s3uvw">
                  <ref role="s3uvu" to="2uyn:2CK1QGRyc63" resolve="traceBuilderContext" />
                  <node concept="2M0cAz" id="57jJhorDQP" role="s3uvw">
                    <ref role="2M0c$$" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
                    <node concept="37vLTw" id="57jJhov1Zz" role="2M0c$y">
                      <ref role="3cqZAo" node="57jJhouWXB" resolve="viewerState" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="57jJhorDQT" role="s3uv_">
                    <node concept="3kvyP4" id="57jJhorDQU" role="2Oq$k0">
                      <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="57jJhorDQV" role="2OqNvi">
                      <ref role="2Oxat5" node="2CK1QGRy_sK" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57jJhov1Nv" role="3cqZAp">
          <node concept="2OqwBi" id="57jJhov1Nw" role="3clFbG">
            <node concept="37vLTw" id="57jJhov1Nx" role="2Oq$k0">
              <ref role="3cqZAo" node="57jJhorBn5" resolve="ee" />
            </node>
            <node concept="liA8E" id="57jJhov1Ny" role="2OqNvi">
              <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
              <node concept="Xl_RD" id="57jJhov3pv" role="37wK5m">
                <property role="Xl_RC" value="Viewer: " />
              </node>
              <node concept="s3uvs" id="57jJhov1Nz" role="37wK5m">
                <ref role="s3uvu" node="2TbqVtHt$HE" resolve="webCellExplorerContext" />
                <node concept="s3uvs" id="57jJhov1N$" role="s3uvw">
                  <ref role="s3uvu" to="2uyn:2CK1QGRyc63" resolve="traceBuilderContext" />
                  <node concept="2M0cAz" id="57jJhov1N_" role="s3uvw">
                    <ref role="2M0c$$" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
                    <node concept="37vLTw" id="57jJhov1NA" role="2M0c$y">
                      <ref role="3cqZAo" node="57jJhorHEE" resolve="viewer" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="57jJhov1NB" role="s3uv_">
                    <node concept="3kvyP4" id="57jJhov1NC" role="2Oq$k0">
                      <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="57jJhov1ND" role="2OqNvi">
                      <ref role="2Oxat5" node="2CK1QGRy_sK" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57jJhorKHF" role="3cqZAp">
          <node concept="2OqwBi" id="57jJhorKHG" role="3clFbG">
            <node concept="37vLTw" id="57jJhorKHH" role="2Oq$k0">
              <ref role="3cqZAo" node="57jJhorBn5" resolve="ee" />
            </node>
            <node concept="liA8E" id="57jJhorKHI" role="2OqNvi">
              <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
              <node concept="Xl_RD" id="57jJhov491" role="37wK5m">
                <property role="Xl_RC" value="HTML: " />
              </node>
              <node concept="s3uvs" id="57jJhorKHJ" role="37wK5m">
                <ref role="s3uvu" node="2TbqVtHt$HE" resolve="webCellExplorerContext" />
                <node concept="s3uvs" id="57jJhorKHK" role="s3uvw">
                  <ref role="s3uvu" to="2uyn:2CK1QGRyc63" resolve="traceBuilderContext" />
                  <node concept="2M0cAz" id="57jJhorKHL" role="s3uvw">
                    <ref role="2M0c$$" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
                    <node concept="37vLTw" id="57jJhorKP6" role="2M0c$y">
                      <ref role="3cqZAo" node="57jJhorIKv" resolve="html" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="57jJhorKHN" role="s3uv_">
                    <node concept="3kvyP4" id="57jJhorKHO" role="2Oq$k0">
                      <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="57jJhorKHP" role="2OqNvi">
                      <ref role="2Oxat5" node="2CK1QGRy_sK" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="57jJhorCG5" role="3cqZAp">
          <node concept="37vLTw" id="57jJhorCGp" role="3cqZAk">
            <ref role="3cqZAo" node="57jJhorBn5" resolve="ee" />
          </node>
        </node>
      </node>
      <node concept="3khFPE" id="2TbqVtHt$qR" role="3kuS7x">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="2TbqVtHt$ul" role="3khFNH">
          <ref role="3uigEE" node="2TbqVtHtzck" resolve="WebCellExplorerRoot" />
        </node>
      </node>
    </node>
    <node concept="3khUF5" id="2TbqVtHt$9l" role="3khUj0" />
    <node concept="s0NCG" id="2TbqVtHt$HE" role="3khUj0">
      <property role="TrG5h" value="webCellExplorerContext" />
    </node>
    <node concept="3khUF5" id="2TbqVtHt_7t" role="3khUj0" />
    <node concept="s0OsF" id="2TbqVtHt_fy" role="3khUj0">
      <ref role="s0OsO" node="2TbqVtHt$HE" resolve="webCellExplorerContext" />
      <node concept="3ku1Nf" id="2TbqVtHtjdo" role="s0O8K">
        <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
        <node concept="3clFbS" id="2TbqVtHtjdq" role="3ku1Le">
          <node concept="3cpWs6" id="2TbqVtHtjiR" role="3cqZAp">
            <node concept="2OqwBi" id="2TbqVtHtla3" role="3cqZAk">
              <node concept="2OqwBi" id="2TbqVtHtoNZ" role="2Oq$k0">
                <node concept="2OqwBi" id="2TbqVtHtjrB" role="2Oq$k0">
                  <node concept="3kvyP4" id="eq067UoQdz" role="2Oq$k0">
                    <ref role="3kvyN1" node="2TbqVtHtjdw" resolve="o" />
                  </node>
                  <node concept="3Tsc0h" id="2TbqVtHtj_X" role="2OqNvi">
                    <ref role="3TtcxE" to="j481:AkkmJBMaEM" resolve="children" />
                  </node>
                </node>
                <node concept="3$u5V9" id="2TbqVtHtren" role="2OqNvi">
                  <node concept="1bVj0M" id="2TbqVtHtrep" role="23t8la">
                    <node concept="3clFbS" id="2TbqVtHtreq" role="1bW5cS">
                      <node concept="3clFbF" id="2TbqVtHtrlf" role="3cqZAp">
                        <node concept="2M0cAz" id="2TbqVtHtrle" role="3clFbG">
                          <ref role="2M0c$$" to="yo94:55FR5saAszt" resolve="toString" />
                          <node concept="37vLTw" id="2TbqVtHtrof" role="2M0c$y">
                            <ref role="3cqZAo" node="2TbqVtHtrer" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2TbqVtHtrer" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2TbqVtHtres" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uJxvA" id="2TbqVtHtmsy" role="2OqNvi">
                <node concept="Xl_RD" id="2TbqVtHtngy" role="3uJOhx">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3khFPE" id="2TbqVtHtjdw" role="3kuS7x">
          <property role="TrG5h" value="o" />
          <node concept="3Tqbb2" id="2TbqVtHtjgs" role="3khFNH">
            <ref role="ehGHo" to="j481:AkkmJBMaEC" resolve="CollectionCell" />
          </node>
        </node>
      </node>
      <node concept="3khUF5" id="2TbqVtHtjdh" role="s0O8K" />
      <node concept="3ku1Nf" id="2TbqVtHtrvL" role="s0O8K">
        <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
        <node concept="3clFbS" id="2TbqVtHtrvN" role="3ku1Le">
          <node concept="3cpWs6" id="2TbqVtHtrRZ" role="3cqZAp">
            <node concept="2OqwBi" id="2TbqVtHts0J" role="3cqZAk">
              <node concept="3kvyP4" id="2TbqVtHtrS7" role="2Oq$k0">
                <ref role="3kvyN1" node="2TbqVtHtrzf" resolve="o" />
              </node>
              <node concept="2qgKlT" id="2TbqVtHtsbo" role="2OqNvi">
                <ref role="37wK5l" to="v1cj:TSXTNiS5iE" resolve="getVisibleText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3khFPE" id="2TbqVtHtrzf" role="3kuS7x">
          <property role="TrG5h" value="o" />
          <node concept="3Tqbb2" id="2TbqVtHtrEQ" role="3khFNH">
            <ref role="ehGHo" to="j481:AkkmJBMaED" resolve="TextCell" />
          </node>
        </node>
      </node>
      <node concept="3ku1Nf" id="28lgASq$ICW" role="s0O8K">
        <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
        <node concept="3clFbS" id="28lgASq$ICY" role="3ku1Le">
          <node concept="3cpWs6" id="28lgASq$IMo" role="3cqZAp">
            <node concept="Xl_RD" id="28lgASq$IMw" role="3cqZAk">
              <property role="Xl_RC" value="⚡" />
            </node>
          </node>
        </node>
        <node concept="3khFPE" id="28lgASq$IGF" role="3kuS7x">
          <property role="TrG5h" value="o" />
          <node concept="3Tqbb2" id="28lgASq$IJZ" role="3khFNH">
            <ref role="ehGHo" to="j481:3EG7IPowvGK" resolve="ActionCell" />
          </node>
        </node>
      </node>
      <node concept="3ku1Nf" id="eq067Uneki" role="s0O8K">
        <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
        <node concept="3clFbS" id="eq067Unekj" role="3ku1Le">
          <node concept="3cpWs6" id="eq067Unekk" role="3cqZAp">
            <node concept="Xl_RD" id="eq067Unekl" role="3cqZAk">
              <property role="Xl_RC" value="&gt;&lt;" />
            </node>
          </node>
        </node>
        <node concept="3khFPE" id="eq067Unekm" role="3kuS7x">
          <property role="TrG5h" value="o" />
          <node concept="3Tqbb2" id="eq067Unekn" role="3khFNH">
            <ref role="ehGHo" to="j481:5aNLs4JxOze" resolve="RemoveSpaceCell" />
          </node>
        </node>
      </node>
      <node concept="3khUF5" id="57jJhoxnZk" role="s0O8K" />
    </node>
    <node concept="s0OsF" id="57jJhoxrIs" role="3khUj0">
      <ref role="s0OsO" to="2uyn:2CK1QGRyc63" resolve="traceBuilderContext" />
      <node concept="3ku1Nf" id="57jJhoxoqM" role="s0O8K">
        <ref role="3ku1L4" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
        <node concept="3clFbS" id="57jJhoxoqN" role="3ku1Le">
          <node concept="3cpWs8" id="57jJhoxpKE" role="3cqZAp">
            <node concept="3cpWsn" id="57jJhoxpKF" role="3cpWs9">
              <property role="TrG5h" value="ee" />
              <node concept="3uibUv" id="57jJhoxpKG" role="1tU5fm">
                <ref role="3uigEE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
              </node>
              <node concept="2ShNRf" id="57jJhoxpKU" role="33vP2m">
                <node concept="HV5vD" id="57jJhoxpRk" role="2ShVmc">
                  <ref role="HV5vE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="57jJhoxpSb" role="3cqZAp">
            <node concept="37vLTI" id="57jJhoxqes" role="3clFbG">
              <node concept="2M0cAz" id="57jJhoxqg7" role="37vLTx">
                <ref role="2M0c$$" to="yo94:55FR5saAszt" resolve="toString" />
                <node concept="3kvyP4" id="57jJhoxqgs" role="2M0c$y">
                  <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                </node>
              </node>
              <node concept="2OqwBi" id="57jJhoxpTR" role="37vLTJ">
                <node concept="37vLTw" id="57jJhoxpS9" role="2Oq$k0">
                  <ref role="3cqZAo" node="57jJhoxpKF" resolve="ee" />
                </node>
                <node concept="2OwXpG" id="57jJhoxpUM" role="2OqNvi">
                  <ref role="2Oxat5" to="yo94:41QOk3IEvnH" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="57jJhoyVOv" role="3cqZAp" />
          <node concept="2Gpval" id="57jJhoyWJT" role="3cqZAp">
            <node concept="2GrKxI" id="57jJhoyWJV" role="2Gsz3X">
              <property role="TrG5h" value="child" />
            </node>
            <node concept="2OqwBi" id="57jJhoyX$i" role="2GsD0m">
              <node concept="3kvyP4" id="57jJhoyXnz" role="2Oq$k0">
                <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
              </node>
              <node concept="3Tsc0h" id="57jJhozaEM" role="2OqNvi">
                <ref role="3TtcxE" to="70w2:7NImM053Sep" resolve="children" />
              </node>
            </node>
            <node concept="3clFbS" id="57jJhoyWJZ" role="2LFqv$">
              <node concept="3clFbF" id="57jJhoyYIz" role="3cqZAp">
                <node concept="2OqwBi" id="57jJhoyYK4" role="3clFbG">
                  <node concept="37vLTw" id="57jJhoyYIy" role="2Oq$k0">
                    <ref role="3cqZAo" node="57jJhoxpKF" resolve="ee" />
                  </node>
                  <node concept="liA8E" id="57jJhoyYL$" role="2OqNvi">
                    <ref role="37wK5l" to="yo94:41QOk3IFYkF" resolve="addChild" />
                    <node concept="2GrUjf" id="57jJhoyZWU" role="37wK5m">
                      <ref role="2Gs0qQ" node="57jJhoyWJV" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="57jJhoyVOZ" role="3cqZAp" />
          <node concept="3cpWs8" id="57jJhozjht" role="3cqZAp">
            <node concept="3cpWsn" id="57jJhozjhu" role="3cpWs9">
              <property role="TrG5h" value="eeDetail" />
              <node concept="3uibUv" id="57jJhozjhv" role="1tU5fm">
                <ref role="3uigEE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
              </node>
              <node concept="2ShNRf" id="57jJhozk3Z" role="33vP2m">
                <node concept="HV5vD" id="57jJhozkgB" role="2ShVmc">
                  <ref role="HV5vE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="57jJhozm8K" role="3cqZAp">
            <node concept="37vLTI" id="57jJhozmV$" role="3clFbG">
              <node concept="37vLTw" id="57jJhozmXc" role="37vLTx">
                <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
              </node>
              <node concept="2OqwBi" id="57jJhozmwK" role="37vLTJ">
                <node concept="37vLTw" id="57jJhozm8I" role="2Oq$k0">
                  <ref role="3cqZAo" node="57jJhoxpKF" resolve="ee" />
                </node>
                <node concept="2OwXpG" id="57jJhozmQH" role="2OqNvi">
                  <ref role="2Oxat5" to="yo94:3kUHLKEQ$Ma" resolve="detailViewRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="57jJho$rjW" role="3cqZAp">
            <node concept="37vLTI" id="57jJho$zgc" role="3clFbG">
              <node concept="3clFbT" id="57jJho$zhq" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="57jJho$sKk" role="37vLTJ">
                <node concept="37vLTw" id="57jJho$rjU" role="2Oq$k0">
                  <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
                </node>
                <node concept="2OwXpG" id="57jJho$sLO" role="2OqNvi">
                  <ref role="2Oxat5" to="yo94:1_qG3hNTMMU" resolve="expandByDefault" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="57jJhozlO2" role="3cqZAp" />
          <node concept="2Gpval" id="57jJhozyjX" role="3cqZAp">
            <node concept="2GrKxI" id="57jJhozyjZ" role="2Gsz3X">
              <property role="TrG5h" value="property" />
            </node>
            <node concept="3clFbS" id="57jJhozyk3" role="2LFqv$">
              <node concept="3clFbF" id="57jJhozqda" role="3cqZAp">
                <node concept="2OqwBi" id="57jJhozqzx" role="3clFbG">
                  <node concept="37vLTw" id="57jJhozqd8" role="2Oq$k0">
                    <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
                  </node>
                  <node concept="liA8E" id="57jJhozq_1" role="2OqNvi">
                    <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
                    <node concept="3cpWs3" id="57jJhoz$ct" role="37wK5m">
                      <node concept="2OqwBi" id="57jJhoz_jH" role="3uHU7B">
                        <node concept="2GrUjf" id="57jJhoz$Ey" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="57jJhozyjZ" resolve="property" />
                        </node>
                        <node concept="liA8E" id="57jJhozAEY" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="57jJhozq_P" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="57jJhozEAj" role="37wK5m">
                      <node concept="2JrnkZ" id="57jJhozDMR" role="2Oq$k0">
                        <node concept="3kvyP4" id="57jJhozBUK" role="2JrQYb">
                          <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                        </node>
                      </node>
                      <node concept="liA8E" id="57jJhozFDp" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="2GrUjf" id="57jJhozG$7" role="37wK5m">
                          <ref role="2Gs0qQ" node="57jJhozyjZ" resolve="property" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="57jJhozwh3" role="2GsD0m">
              <node concept="2OqwBi" id="57jJhozv9n" role="2Oq$k0">
                <node concept="3kvyP4" id="57jJhozuHO" role="2Oq$k0">
                  <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                </node>
                <node concept="2yIwOk" id="57jJhozvXX" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="57jJhozxfd" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="57jJhozHts" role="3cqZAp">
            <node concept="2GrKxI" id="57jJhozHtt" role="2Gsz3X">
              <property role="TrG5h" value="link" />
            </node>
            <node concept="3clFbS" id="57jJhozHtu" role="2LFqv$">
              <node concept="3clFbF" id="57jJhozHtv" role="3cqZAp">
                <node concept="2OqwBi" id="57jJhozHtw" role="3clFbG">
                  <node concept="37vLTw" id="57jJhozHtx" role="2Oq$k0">
                    <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
                  </node>
                  <node concept="liA8E" id="57jJhozHty" role="2OqNvi">
                    <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
                    <node concept="3cpWs3" id="57jJhozHtz" role="37wK5m">
                      <node concept="2OqwBi" id="57jJhozHt$" role="3uHU7B">
                        <node concept="2GrUjf" id="57jJhozHt_" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="57jJhozHtt" resolve="link" />
                        </node>
                        <node concept="liA8E" id="57jJhozHtA" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="57jJhozHtB" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="57jJhozHtC" role="37wK5m">
                      <node concept="2JrnkZ" id="57jJhozHtD" role="2Oq$k0">
                        <node concept="3kvyP4" id="57jJhozHtE" role="2JrQYb">
                          <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                        </node>
                      </node>
                      <node concept="liA8E" id="57jJhozHtF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                        <node concept="2GrUjf" id="57jJhozHtG" role="37wK5m">
                          <ref role="2Gs0qQ" node="57jJhozHtt" resolve="link" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="57jJhozHtH" role="2GsD0m">
              <node concept="2OqwBi" id="57jJhozHtI" role="2Oq$k0">
                <node concept="3kvyP4" id="57jJhozHtJ" role="2Oq$k0">
                  <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                </node>
                <node concept="2yIwOk" id="57jJhozHtK" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="57jJhozJ$t" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="57jJhozR3f" role="3cqZAp">
            <node concept="2GrKxI" id="57jJhozR3g" role="2Gsz3X">
              <property role="TrG5h" value="link" />
            </node>
            <node concept="3clFbS" id="57jJhozR3h" role="2LFqv$">
              <node concept="3clFbJ" id="57jJho$9yh" role="3cqZAp">
                <node concept="3clFbS" id="57jJho$9yj" role="3clFbx">
                  <node concept="3N13vt" id="57jJho$fQO" role="3cqZAp" />
                </node>
                <node concept="17R0WA" id="57jJho$aUo" role="3clFbw">
                  <node concept="359W_D" id="57jJho$cja" role="3uHU7w">
                    <ref role="359W_E" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
                    <ref role="359W_F" to="70w2:7NImM053Sep" resolve="children" />
                  </node>
                  <node concept="2GrUjf" id="57jJho$axb" role="3uHU7B">
                    <ref role="2Gs0qQ" node="57jJhozR3g" resolve="link" />
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="57jJhozUew" role="3cqZAp">
                <node concept="2GrKxI" id="57jJhozUey" role="2Gsz3X">
                  <property role="TrG5h" value="child" />
                </node>
                <node concept="2OqwBi" id="57jJhozXnF" role="2GsD0m">
                  <node concept="2JrnkZ" id="57jJhozVWT" role="2Oq$k0">
                    <node concept="3kvyP4" id="57jJhozVya" role="2JrQYb">
                      <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                    </node>
                  </node>
                  <node concept="liA8E" id="57jJhozYq7" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                    <node concept="2GrUjf" id="57jJhozYXG" role="37wK5m">
                      <ref role="2Gs0qQ" node="57jJhozR3g" resolve="link" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="57jJhozUeA" role="2LFqv$">
                  <node concept="3clFbF" id="57jJhozR3i" role="3cqZAp">
                    <node concept="2OqwBi" id="57jJhozR3j" role="3clFbG">
                      <node concept="37vLTw" id="57jJhozR3k" role="2Oq$k0">
                        <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
                      </node>
                      <node concept="liA8E" id="57jJhozR3l" role="2OqNvi">
                        <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
                        <node concept="3cpWs3" id="57jJhozR3m" role="37wK5m">
                          <node concept="2OqwBi" id="57jJhozR3n" role="3uHU7B">
                            <node concept="2GrUjf" id="57jJhozR3o" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="57jJhozR3g" resolve="link" />
                            </node>
                            <node concept="liA8E" id="57jJhozR3p" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="57jJhozR3q" role="3uHU7w">
                            <property role="Xl_RC" value=": " />
                          </node>
                        </node>
                        <node concept="2GrUjf" id="57jJho$3bK" role="37wK5m">
                          <ref role="2Gs0qQ" node="57jJhozUey" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="57jJhozR3w" role="2GsD0m">
              <node concept="2OqwBi" id="57jJhozR3x" role="2Oq$k0">
                <node concept="3kvyP4" id="57jJhozR3y" role="2Oq$k0">
                  <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                </node>
                <node concept="2yIwOk" id="57jJhozR3z" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="57jJhozSkC" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="57jJhozp$e" role="3cqZAp" />
          <node concept="3cpWs8" id="57jJhoxwW5" role="3cqZAp">
            <node concept="3cpWsn" id="57jJhoxwW6" role="3cpWs9">
              <property role="TrG5h" value="json" />
              <node concept="3Tqbb2" id="57jJhoxu7E" role="1tU5fm">
                <ref role="ehGHo" to="6y8:6kYN8GaiMZW" resolve="JSONObject" />
              </node>
              <node concept="2YIFZM" id="57jJhoxwW7" role="33vP2m">
                <ref role="1Pybhc" to="2qs1:6kYN8GakajA" resolve="InteractionSession" />
                <ref role="37wK5l" to="2qs1:3pn$gDKz7Md" resolve="getTransformedJSON" />
                <node concept="2OqwBi" id="57jJhoxwW8" role="37wK5m">
                  <node concept="s3N6n" id="57jJhoxwW9" role="2Oq$k0">
                    <ref role="s3N6p" to="2uyn:2CK1QGRyhgc" resolve="context" />
                  </node>
                  <node concept="liA8E" id="57jJhoxwWa" role="2OqNvi">
                    <ref role="37wK5l" to="2uyn:41QOk3IAAit" resolve="getTransformationEngine" />
                  </node>
                </node>
                <node concept="3kvyP4" id="57jJhoxwWb" role="37wK5m">
                  <ref role="3kvyN1" node="57jJhoxoqQ" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="57jJhozkVN" role="3cqZAp">
            <node concept="2OqwBi" id="57jJhozn0X" role="3clFbG">
              <node concept="37vLTw" id="57jJhozkVL" role="2Oq$k0">
                <ref role="3cqZAo" node="57jJhozjhu" resolve="eeDetail" />
              </node>
              <node concept="liA8E" id="57jJhozn2t" role="2OqNvi">
                <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
                <node concept="Xl_RD" id="57jJhozn3d" role="37wK5m">
                  <property role="Xl_RC" value="JSON: " />
                </node>
                <node concept="2OqwBi" id="57jJhozo9B" role="37wK5m">
                  <node concept="37vLTw" id="57jJhozo9C" role="2Oq$k0">
                    <ref role="3cqZAo" node="57jJhoxwW6" resolve="json" />
                  </node>
                  <node concept="2qgKlT" id="57jJhozo9D" role="2OqNvi">
                    <ref role="37wK5l" to="yhmx:6kYN8Gaj5VO" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="57jJhozlt9" role="3cqZAp" />
          <node concept="3cpWs6" id="57jJhoxpRN" role="3cqZAp">
            <node concept="37vLTw" id="57jJhoxpS2" role="3cqZAk">
              <ref role="3cqZAo" node="57jJhoxpKF" resolve="ee" />
            </node>
          </node>
        </node>
        <node concept="3khFPE" id="57jJhoxoqQ" role="3kuS7x">
          <property role="TrG5h" value="o" />
          <node concept="3Tqbb2" id="57jJhoxorJ" role="3khFNH">
            <ref role="ehGHo" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3khUF5" id="57jJho$Htc" role="3khUj0" />
    <node concept="3ku1Nf" id="5Ju76AMpj_3" role="3khUj0">
      <ref role="3ku1L4" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
      <node concept="3clFbS" id="5Ju76AMpj_5" role="3ku1Le">
        <node concept="3cpWs8" id="5Ju76AMpmyn" role="3cqZAp">
          <node concept="3cpWsn" id="5Ju76AMpmyo" role="3cpWs9">
            <property role="TrG5h" value="ee" />
            <node concept="3uibUv" id="5Ju76AMpmyp" role="1tU5fm">
              <ref role="3uigEE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
            </node>
            <node concept="2ShNRf" id="5Ju76AMpmyH" role="33vP2m">
              <node concept="HV5vD" id="5Ju76AMpnHR" role="2ShVmc">
                <ref role="HV5vE" to="yo94:41QOk3IEvi1" resolve="ExplorerElement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ju76AMpnQx" role="3cqZAp">
          <node concept="37vLTI" id="5Ju76AMpoia" role="3clFbG">
            <node concept="2M0cAz" id="5Ju76AMpook" role="37vLTx">
              <ref role="2M0c$$" to="yo94:55FR5saAszt" resolve="toString" />
              <node concept="3kvyP4" id="5Ju76AMpotE" role="2M0c$y">
                <ref role="3kvyN1" node="5Ju76AMplbA" resolve="o" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Ju76AMpnSh" role="37vLTJ">
              <node concept="37vLTw" id="5Ju76AMpnQv" role="2Oq$k0">
                <ref role="3cqZAo" node="5Ju76AMpmyo" resolve="ee" />
              </node>
              <node concept="2OwXpG" id="5Ju76AMpnY8" role="2OqNvi">
                <ref role="2Oxat5" to="yo94:41QOk3IEvnH" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5Ju76AMprbN" role="3cqZAp">
          <node concept="2GrKxI" id="5Ju76AMprbP" role="2Gsz3X">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="2OqwBi" id="5Ju76AMprk7" role="2GsD0m">
            <node concept="3kvyP4" id="5Ju76AMprd4" role="2Oq$k0">
              <ref role="3kvyN1" node="5Ju76AMplbA" resolve="o" />
            </node>
            <node concept="liA8E" id="5Ju76AMp_uz" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.keySet()" resolve="keySet" />
            </node>
          </node>
          <node concept="3clFbS" id="5Ju76AMprbT" role="2LFqv$">
            <node concept="3clFbF" id="5Ju76AMpvev" role="3cqZAp">
              <node concept="2OqwBi" id="5Ju76AMpw7Q" role="3clFbG">
                <node concept="37vLTw" id="5Ju76AMpveu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Ju76AMpmyo" resolve="ee" />
                </node>
                <node concept="liA8E" id="5Ju76AMpwJf" role="2OqNvi">
                  <ref role="37wK5l" to="yo94:41QOk3IFokw" resolve="addChild" />
                  <node concept="3cpWs3" id="5Ju76AMpy7M" role="37wK5m">
                    <node concept="2GrUjf" id="5Ju76AMpyX5" role="3uHU7B">
                      <ref role="2Gs0qQ" node="5Ju76AMprbP" resolve="key" />
                    </node>
                    <node concept="Xl_RD" id="5Ju76AMpwKf" role="3uHU7w">
                      <property role="Xl_RC" value=": " />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5Ju76AMpsA8" role="37wK5m">
                    <node concept="3kvyP4" id="5Ju76AMps$A" role="2Oq$k0">
                      <ref role="3kvyN1" node="5Ju76AMplbA" resolve="o" />
                    </node>
                    <node concept="liA8E" id="5Ju76AMptVo" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.get(java.lang.String)" resolve="get" />
                      <node concept="2GrUjf" id="5Ju76AMptWz" role="37wK5m">
                        <ref role="2Gs0qQ" node="5Ju76AMprbP" resolve="key" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Ju76AMpnIg" role="3cqZAp">
          <node concept="37vLTw" id="5Ju76AMpnIu" role="3cqZAk">
            <ref role="3cqZAo" node="5Ju76AMpmyo" resolve="ee" />
          </node>
        </node>
      </node>
      <node concept="3khFPE" id="5Ju76AMplbA" role="3kuS7x">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5Ju76AMpmjY" role="3khFNH">
          <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
        </node>
      </node>
    </node>
    <node concept="3khUF5" id="5Ju76AMphY$" role="3khUj0" />
    <node concept="3ku1Nf" id="57jJho$J23" role="3khUj0">
      <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
      <node concept="3clFbS" id="57jJho$J25" role="3ku1Le">
        <node concept="3cpWs8" id="57jJho$Qxz" role="3cqZAp">
          <node concept="3cpWsn" id="57jJho$Qx$" role="3cpWs9">
            <property role="TrG5h" value="tag" />
            <node concept="17QB3L" id="57jJho$Qxe" role="1tU5fm" />
            <node concept="2OqwBi" id="57jJho$Qx_" role="33vP2m">
              <node concept="2OqwBi" id="57jJho$QxA" role="2Oq$k0">
                <node concept="3kvyP4" id="57jJho$QxB" role="2Oq$k0">
                  <ref role="3kvyN1" node="57jJho$KyL" resolve="o" />
                </node>
                <node concept="2yIwOk" id="57jJho$QxC" role="2OqNvi" />
              </node>
              <node concept="3n3YKJ" id="57jJho$QxD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="57jJho$OxH" role="3cqZAp">
          <node concept="3cpWs3" id="57jJho$QYE" role="3cqZAk">
            <node concept="Xl_RD" id="57jJho$QPz" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="57jJho$QPw" role="3uHU7B">
              <node concept="3cpWs3" id="57jJho$QoR" role="3uHU7B">
                <node concept="3cpWs3" id="57jJho$Rj8" role="3uHU7B">
                  <node concept="2OqwBi" id="57jJho$Yd7" role="3uHU7w">
                    <node concept="2OqwBi" id="57jJho$THo" role="2Oq$k0">
                      <node concept="2OqwBi" id="57jJho$RCS" role="2Oq$k0">
                        <node concept="3kvyP4" id="57jJho$Rr0" role="2Oq$k0">
                          <ref role="3kvyN1" node="57jJho$KyL" resolve="o" />
                        </node>
                        <node concept="3Tsc0h" id="57jJho$RYV" role="2OqNvi">
                          <ref role="3TtcxE" to="70w2:7NImM053Sep" resolve="children" />
                        </node>
                      </node>
                      <node concept="3$u5V9" id="57jJho$Vz2" role="2OqNvi">
                        <node concept="1bVj0M" id="57jJho$Vz4" role="23t8la">
                          <node concept="3clFbS" id="57jJho$Vz5" role="1bW5cS">
                            <node concept="3clFbF" id="57jJho$VJN" role="3cqZAp">
                              <node concept="2M0cAz" id="57jJho$Wsn" role="3clFbG">
                                <ref role="2M0c$$" to="yo94:55FR5saAszt" resolve="toString" />
                                <node concept="37vLTw" id="57jJho$WAJ" role="2M0c$y">
                                  <ref role="3cqZAo" node="57jJho$Vz6" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="57jJho$Vz6" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="57jJho$Vz7" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uJxvA" id="57jJho$ZZ8" role="2OqNvi" />
                  </node>
                  <node concept="3cpWs3" id="57jJho$Qgn" role="3uHU7B">
                    <node concept="3cpWs3" id="57jJho$OND" role="3uHU7B">
                      <node concept="Xl_RD" id="57jJho$OxP" role="3uHU7B">
                        <property role="Xl_RC" value="&lt;" />
                      </node>
                      <node concept="37vLTw" id="57jJho$QxE" role="3uHU7w">
                        <ref role="3cqZAo" node="57jJho$Qx$" resolve="tag" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="57jJho$Qgq" role="3uHU7w">
                      <property role="Xl_RC" value="&gt;" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="57jJho$QoU" role="3uHU7w">
                  <property role="Xl_RC" value="&lt;/" />
                </node>
              </node>
              <node concept="37vLTw" id="57jJho$R0d" role="3uHU7w">
                <ref role="3cqZAo" node="57jJho$Qx$" resolve="tag" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3khFPE" id="57jJho$KyL" role="3kuS7x">
        <property role="TrG5h" value="o" />
        <node concept="3Tqbb2" id="57jJho$MkV" role="3khFNH">
          <ref role="ehGHo" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
        </node>
      </node>
    </node>
    <node concept="3ku1Nf" id="57jJho_52g" role="3khUj0">
      <ref role="3ku1L4" to="yo94:55FR5saAszt" resolve="toString" />
      <node concept="3clFbS" id="57jJho_52h" role="3ku1Le">
        <node concept="3cpWs6" id="57jJho_8Nk" role="3cqZAp">
          <node concept="2OqwBi" id="57jJho_anM" role="3cqZAk">
            <node concept="3TrcHB" id="57jJho_c6r" role="2OqNvi">
              <ref role="3TsBF5" to="70w2:7NImM04TrPE" resolve="data" />
            </node>
            <node concept="3kvyP4" id="1oBvzyiMocu" role="2Oq$k0">
              <ref role="3kvyN1" node="57jJho_52P" resolve="o" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3khFPE" id="57jJho_52P" role="3kuS7x">
        <property role="TrG5h" value="o" />
        <node concept="3Tqbb2" id="57jJho_52Q" role="3khFNH">
          <ref role="ehGHo" to="70w2:7NImM04RGAS" resolve="CharacterData" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2TbqVtHtzck">
    <property role="TrG5h" value="WebCellExplorerRoot" />
    <node concept="2tJIrI" id="2TbqVtHtzhx" role="jymVt" />
    <node concept="312cEg" id="2Vy1$4Mci68" role="jymVt">
      <property role="TrG5h" value="engine" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2Vy1$4Mciba" role="1B3o_S" />
      <node concept="3uibUv" id="2Vy1$4MciaP" role="1tU5fm">
        <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
      </node>
    </node>
    <node concept="312cEg" id="6$M6y1eYEZ8" role="jymVt">
      <property role="TrG5h" value="rootNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6$M6y1eYF8O" role="1B3o_S" />
      <node concept="3Tqbb2" id="57jJhorD4G" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2CK1QGRy_sK" role="jymVt">
      <property role="TrG5h" value="context" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2CK1QGRyLjY" role="1B3o_S" />
      <node concept="3uibUv" id="2CK1QGRy_xW" role="1tU5fm">
        <ref role="3uigEE" to="2uyn:41QOk3IAAeD" resolve="ITraceBuilderContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$M6y1eYEX1" role="jymVt" />
    <node concept="3clFbW" id="2Vy1$4McibA" role="jymVt">
      <node concept="3cqZAl" id="2Vy1$4McibB" role="3clF45" />
      <node concept="3Tm1VV" id="2Vy1$4McibC" role="1B3o_S" />
      <node concept="3clFbS" id="2Vy1$4McibE" role="3clF47">
        <node concept="3clFbF" id="2Vy1$4McibI" role="3cqZAp">
          <node concept="37vLTI" id="2Vy1$4McibK" role="3clFbG">
            <node concept="2OqwBi" id="2Vy1$4McibO" role="37vLTJ">
              <node concept="Xjq3P" id="2Vy1$4McibP" role="2Oq$k0" />
              <node concept="2OwXpG" id="2Vy1$4McibQ" role="2OqNvi">
                <ref role="2Oxat5" node="2Vy1$4Mci68" resolve="engine" />
              </node>
            </node>
            <node concept="37vLTw" id="2Vy1$4McibR" role="37vLTx">
              <ref role="3cqZAo" node="2Vy1$4McibH" resolve="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Vy1$4McibU" role="3cqZAp">
          <node concept="37vLTI" id="2Vy1$4McibW" role="3clFbG">
            <node concept="2OqwBi" id="2Vy1$4Mcic0" role="37vLTJ">
              <node concept="Xjq3P" id="2Vy1$4Mcic1" role="2Oq$k0" />
              <node concept="2OwXpG" id="2Vy1$4Mcic2" role="2OqNvi">
                <ref role="2Oxat5" node="6$M6y1eYEZ8" resolve="rootNode" />
              </node>
            </node>
            <node concept="37vLTw" id="2Vy1$4Mcic3" role="37vLTx">
              <ref role="3cqZAo" node="2Vy1$4McibT" resolve="rootNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CK1QGRy_Ka" role="3cqZAp">
          <node concept="37vLTI" id="2CK1QGRyA68" role="3clFbG">
            <node concept="37vLTw" id="2CK1QGRyAj3" role="37vLTx">
              <ref role="3cqZAo" node="2CK1QGRy_yi" resolve="context" />
            </node>
            <node concept="2OqwBi" id="2CK1QGRy_So" role="37vLTJ">
              <node concept="Xjq3P" id="2CK1QGRy_K8" role="2Oq$k0" />
              <node concept="2OwXpG" id="2CK1QGRy_YR" role="2OqNvi">
                <ref role="2Oxat5" node="2CK1QGRy_sK" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Vy1$4McibH" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="2Vy1$4McibG" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="37vLTG" id="2Vy1$4McibT" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="57jJhorD28" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2CK1QGRy_yi" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2CK1QGRy_D3" role="1tU5fm">
          <ref role="3uigEE" to="2uyn:41QOk3IAAeD" resolve="ITraceBuilderContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="57jJhorCSg" role="jymVt" />
    <node concept="3Tm1VV" id="2TbqVtHtzcl" role="1B3o_S" />
  </node>
</model>

