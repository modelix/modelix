<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e99be64-2426-4999-853c-5db2cd8b90dc(de.q60.mps.web.ui.sm.server.pf)">
  <persistence version="9" />
  <languages>
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="yo94" ref="r:4629a434-6c59-4e7a-9315-92ac147f2aaa(de.q60.mps.explorer.pf)" />
    <import index="2uyn" ref="r:eff6946b-526f-4642-b774-15a90feebcbf(de.q60.mps.shadowmodels.debugview.pf)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(de.q60.mps.web.ui.sm.structure)" implicit="true" />
    <import index="v1cj" ref="r:2c4bc58b-9da3-4f5f-8ea2-32f043278ab7(de.q60.mps.web.ui.sm.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
        <reference id="3378269547577557365" name="groupDeclaration" index="s0OsO" />
        <child id="3378269547577558129" name="content" index="s0O8K" />
      </concept>
      <concept id="3378269547578515869" name="de.q60.mps.polymorphicfunctions.structure.ContextCall" flags="ng" index="s3uvs">
        <reference id="3378269547578515871" name="group" index="s3uvu" />
        <child id="3378269547578515873" name="body" index="s3uvw" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="3khU$T" id="2TbqVtHtjde">
    <property role="TrG5h" value="PF" />
    <node concept="3khUF5" id="2TbqVtHtjdf" role="3khUj0" />
    <node concept="3ku1Nf" id="2TbqVtHt$mV" role="3khUj0">
      <ref role="3ku1L4" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
      <node concept="3clFbS" id="2TbqVtHt$mX" role="3ku1Le">
        <node concept="3cpWs6" id="2TbqVtHt$vM" role="3cqZAp">
          <node concept="s3uvs" id="2TbqVtHt_Fb" role="3cqZAk">
            <ref role="s3uvu" node="2TbqVtHt$HE" resolve="webCellExplorerContext" />
            <node concept="2M0cAz" id="2TbqVtHtNQW" role="s3uvw">
              <ref role="2M0c$$" to="yo94:41QOk3IEF5d" resolve="buildTrace" />
              <node concept="3kvyP4" id="2TbqVtHtNSv" role="2M0c$y">
                <ref role="3kvyN1" node="2TbqVtHt$qR" resolve="o" />
              </node>
            </node>
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
                  <node concept="3kvyP4" id="2TbqVtHtjiZ" role="2Oq$k0">
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
    </node>
  </node>
  <node concept="312cEu" id="2TbqVtHtzck">
    <property role="TrG5h" value="WebCellExplorerRoot" />
    <node concept="2tJIrI" id="2TbqVtHtzhx" role="jymVt" />
    <node concept="3Tm1VV" id="2TbqVtHtzcl" role="1B3o_S" />
    <node concept="3uibUv" id="2TbqVtHtzhn" role="1zkMxy">
      <ref role="3uigEE" to="2uyn:6$M6y1eYEdD" resolve="ForkExplorerRoot" />
    </node>
    <node concept="3clFbW" id="2TbqVtHtzhJ" role="jymVt">
      <node concept="3cqZAl" id="2TbqVtHtzhK" role="3clF45" />
      <node concept="3Tm1VV" id="2TbqVtHtzhL" role="1B3o_S" />
      <node concept="3clFbS" id="2TbqVtHtzhN" role="3clF47">
        <node concept="XkiVB" id="2TbqVtHtzhP" role="3cqZAp">
          <ref role="37wK5l" to="2uyn:2Vy1$4McibA" resolve="ForkExplorerRoot" />
          <node concept="37vLTw" id="2TbqVtHtzhT" role="37wK5m">
            <ref role="3cqZAo" node="2TbqVtHtzhQ" resolve="engine" />
          </node>
          <node concept="37vLTw" id="2TbqVtHtzhX" role="37wK5m">
            <ref role="3cqZAo" node="2TbqVtHtzhU" resolve="viewer" />
          </node>
          <node concept="37vLTw" id="2TbqVtHtzi1" role="37wK5m">
            <ref role="3cqZAo" node="2TbqVtHtzhY" resolve="context" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2TbqVtHtzhQ" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="2TbqVtHtzhS" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="37vLTG" id="2TbqVtHtzhU" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3Tqbb2" id="2TbqVtHtzje" role="1tU5fm">
          <ref role="ehGHo" to="j481:7vWAzuEMeQA" resolve="Viewer" />
        </node>
      </node>
      <node concept="37vLTG" id="2TbqVtHtzhY" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2TbqVtHtzi0" role="1tU5fm">
          <ref role="3uigEE" to="2uyn:41QOk3IAAeD" resolve="ITraceBuilderContext" />
        </node>
      </node>
    </node>
  </node>
</model>

