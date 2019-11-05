<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f78603a5-743f-4b7d-8aa9-a4c5b172a75a(de.q60.mps.web.aspect.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="4" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="4dhu" ref="r:17a7af0b-7a93-4688-b13e-195872d8e289(de.q60.mps.web.aspect.behavior)" />
    <import index="79yt" ref="r:ded575ba-957a-4f7f-89f0-d9fc02ad1b0c(de.q60.mps.web.aspect.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802791" name="helginsIntention" index="2OEOjU" />
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216383476350" name="quickFixArgument" index="Q6Id_" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383482742" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgument" flags="ng" index="Q6JDH">
        <child id="1216383511839" name="argumentType" index="Q6QK4" />
      </concept>
      <concept id="1216390348809" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference" flags="nn" index="QwW4i">
        <reference id="1216390348810" name="quickFixArgument" index="QwW4h" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <property id="1216127910019" name="applyImmediately" index="ARO6o" />
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="wa_gCmpbpI">
    <property role="TrG5h" value="check_CloudModelDefinition" />
    <node concept="3clFbS" id="wa_gCmpbpJ" role="18ibNy">
      <node concept="3cpWs8" id="wa_gCmpbTg" role="3cqZAp">
        <node concept="3cpWsn" id="wa_gCmpbTh" role="3cpWs9">
          <property role="TrG5h" value="computedId" />
          <node concept="17QB3L" id="wa_gCmpbOE" role="1tU5fm" />
          <node concept="2OqwBi" id="wa_gCmpbTi" role="33vP2m">
            <node concept="1YBJjd" id="wa_gCmpbTj" role="2Oq$k0">
              <ref role="1YBMHb" node="wa_gCmpbpL" resolve="n" />
            </node>
            <node concept="2qgKlT" id="wa_gCmpbTk" role="2OqNvi">
              <ref role="37wK5l" to="4dhu:wa_gCmoW9Y" resolve="computeCloudModelId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="wa_gCmpcm1" role="3cqZAp">
        <node concept="3clFbS" id="wa_gCmpcm3" role="3clFbx">
          <node concept="2MkqsV" id="wa_gCmpd38" role="3cqZAp">
            <node concept="Xl_RD" id="wa_gCmpeaG" role="2MkJ7o">
              <property role="Xl_RC" value="ID update required" />
            </node>
            <node concept="1YBJjd" id="wa_gCmpefT" role="2OEOjV">
              <ref role="1YBMHb" node="wa_gCmpbpL" resolve="n" />
            </node>
            <node concept="3Cnw8n" id="wa_gCmpe92" role="2OEOjU">
              <property role="ARO6o" value="true" />
              <ref role="QpYPw" node="wa_gCmpd4T" resolve="CloudModelDefinition_updateId" />
              <node concept="3CnSsL" id="wa_gCmpeoY" role="3Coj4f">
                <ref role="QkamJ" node="wa_gCmpep5" resolve="cloudModel" />
                <node concept="1YBJjd" id="wa_gCmpew$" role="3CoRuB">
                  <ref role="1YBMHb" node="wa_gCmpbpL" resolve="n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QLQc" id="wa_gCmpcGx" role="3clFbw">
          <node concept="2OqwBi" id="wa_gCmpcN4" role="3uHU7w">
            <node concept="1YBJjd" id="wa_gCmpcGM" role="2Oq$k0">
              <ref role="1YBMHb" node="wa_gCmpbpL" resolve="n" />
            </node>
            <node concept="3TrcHB" id="wa_gCmpd0X" role="2OqNvi">
              <ref role="3TsBF5" to="79yt:wa_gCmoW6H" resolve="computedCloudModelId" />
            </node>
          </node>
          <node concept="37vLTw" id="wa_gCmpcm$" role="3uHU7B">
            <ref role="3cqZAo" node="wa_gCmpbTh" resolve="computedId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="wa_gCmpbpL" role="1YuTPh">
      <property role="TrG5h" value="n" />
      <ref role="1YaFvo" to="79yt:wa_gCmoW26" resolve="CloudModelDefinition" />
    </node>
  </node>
  <node concept="Q5z_Y" id="wa_gCmpd4T">
    <property role="TrG5h" value="CloudModelDefinition_updateId" />
    <node concept="Q6JDH" id="wa_gCmpep5" role="Q6Id_">
      <property role="TrG5h" value="cloudModel" />
      <node concept="3Tqbb2" id="wa_gCmpepb" role="Q6QK4">
        <ref role="ehGHo" to="79yt:wa_gCmoW26" resolve="CloudModelDefinition" />
      </node>
    </node>
    <node concept="Q5ZZ6" id="wa_gCmpd4U" role="Q6x$H">
      <node concept="3clFbS" id="wa_gCmpd4V" role="2VODD2">
        <node concept="3clFbF" id="wa_gCmpdo7" role="3cqZAp">
          <node concept="37vLTI" id="wa_gCmpdSv" role="3clFbG">
            <node concept="2OqwBi" id="wa_gCmpdZo" role="37vLTx">
              <node concept="QwW4i" id="wa_gCmpes1" role="2Oq$k0">
                <ref role="QwW4h" node="wa_gCmpep5" resolve="cloudModel" />
              </node>
              <node concept="2qgKlT" id="wa_gCmpe4Z" role="2OqNvi">
                <ref role="37wK5l" to="4dhu:wa_gCmoW9Y" resolve="computeCloudModelId" />
              </node>
            </node>
            <node concept="2OqwBi" id="wa_gCmpdqp" role="37vLTJ">
              <node concept="QwW4i" id="wa_gCmperB" role="2Oq$k0">
                <ref role="QwW4h" node="wa_gCmpep5" resolve="cloudModel" />
              </node>
              <node concept="3TrcHB" id="wa_gCmpdrA" role="2OqNvi">
                <ref role="3TsBF5" to="79yt:wa_gCmoW6H" resolve="computedCloudModelId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

