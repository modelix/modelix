<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:129cc740-fb59-4b7a-adef-c057dba87982(de.q60.mps.web.ui.server.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="4h87" ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765277240526" name="de.slisson.mps.reflection.structure.ReflectionMethodCall" flags="ng" index="1PvZjq" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
      <concept id="5573986434797765074" name="jetbrains.mps.ide.httpsupport.structure.HttpRequestParameter" flags="ng" index="pFkrN" />
      <concept id="5573986434797590400" name="jetbrains.mps.ide.httpsupport.structure.RequestHandler" flags="ng" index="pFx2x">
        <child id="5573986434797811183" name="handleFunction" index="pCJbe" />
        <child id="6040064942661848825" name="queryPrefix" index="std7D" />
      </concept>
      <concept id="6040064942661848791" name="jetbrains.mps.ide.httpsupport.structure.QueryPath" flags="ng" index="std77">
        <child id="6040064942661848818" name="segmetns" index="std7y" />
      </concept>
      <concept id="6040064942661848792" name="jetbrains.mps.ide.httpsupport.structure.QuerySegment" flags="ng" index="std78">
        <property id="6040064942662280271" name="segment" index="svBHv" />
      </concept>
      <concept id="6886330673564897217" name="jetbrains.mps.ide.httpsupport.structure.ResponseSendOperation" flags="ng" index="1W9Qq2">
        <property id="6886330673564897341" name="type" index="1W9R_Y" />
        <child id="6886330673564897343" name="buffer" index="1W9R_W" />
      </concept>
    </language>
  </registry>
  <node concept="pFx2x" id="AkkmJBO8Zi">
    <property role="TrG5h" value="Static" />
    <node concept="std77" id="AkkmJBO8Zj" role="std7D">
      <node concept="std78" id="AkkmJBO8Zk" role="std7y">
        <property role="svBHv" value="webmps-ui-static" />
      </node>
    </node>
    <node concept="pF8on" id="AkkmJBO8Zl" role="pCJbe">
      <node concept="3clFbS" id="AkkmJBO8Zm" role="2VODD2">
        <node concept="3cpWs8" id="39ClI1HUy6D" role="3cqZAp">
          <node concept="3cpWsn" id="39ClI1HUy6E" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="17QB3L" id="39ClI1HUywr" role="1tU5fm" />
            <node concept="10Nm6u" id="6GOzicShZta" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="39ClI1HVqv_" role="3cqZAp">
          <node concept="3cpWsn" id="39ClI1HVqvA" role="3cpWs9">
            <property role="TrG5h" value="fileName" />
            <node concept="17QB3L" id="39ClI1HVqM_" role="1tU5fm" />
            <node concept="2OqwBi" id="39ClI1HVWsY" role="33vP2m">
              <node concept="2OqwBi" id="39ClI1HVWsZ" role="2Oq$k0">
                <node concept="2OqwBi" id="39ClI1HVWt0" role="2Oq$k0">
                  <node concept="pFkrN" id="39ClI1HVWt1" role="2Oq$k0" />
                  <node concept="liA8E" id="39ClI1HVWt2" role="2OqNvi">
                    <ref role="37wK5l" to="4h87:1Hl7x1atdjC" resolve="getSegments" />
                  </node>
                </node>
                <node concept="7r0gD" id="39ClI1HVWt3" role="2OqNvi">
                  <node concept="3cmrfG" id="39ClI1HVWt4" role="7T0AP">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="3uJxvA" id="39ClI1HVWt5" role="2OqNvi">
                <node concept="Xl_RD" id="39ClI1HVWt6" role="3uJOhx">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6GOzicSi4Ft" role="3cqZAp">
          <node concept="3cpWsn" id="6GOzicSi4Fu" role="3cpWs9">
            <property role="TrG5h" value="stream" />
            <node concept="3uibUv" id="6GOzicSi4Fv" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
            </node>
            <node concept="10Nm6u" id="6GOzicSi51w" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="6GOzicSi3yE" role="3cqZAp" />
        <node concept="3cpWs8" id="6GOzicSgUEC" role="3cqZAp">
          <node concept="3cpWsn" id="6GOzicSgUED" role="3cpWs9">
            <property role="TrG5h" value="classLoader" />
            <node concept="3uibUv" id="6GOzicSgUE_" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="6GOzicSgUEE" role="33vP2m">
              <node concept="2OqwBi" id="6GOzicSgUEF" role="2Oq$k0">
                <node concept="2ShNRf" id="6GOzicSgUEG" role="2Oq$k0">
                  <node concept="YeOm9" id="6GOzicSgUEH" role="2ShVmc">
                    <node concept="1Y3b0j" id="6GOzicSgUEI" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="wyt6:~Object" resolve="Object" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="6GOzicSgUEJ" role="1B3o_S" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6GOzicSgUEK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="6GOzicSgUEL" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6GOzicSgVCY" role="3cqZAp" />
        <node concept="3SKdUt" id="6GOzicSi9HT" role="3cqZAp">
          <node concept="3SKdUq" id="6GOzicSi9HV" role="3SKWNk">
            <property role="3SKdUp" value="development mode" />
          </node>
        </node>
        <node concept="3clFbJ" id="6GOzicSgW6_" role="3cqZAp">
          <node concept="3clFbS" id="6GOzicSgW6B" role="3clFbx">
            <node concept="3cpWs8" id="6GOzicSgZ5c" role="3cqZAp">
              <node concept="3cpWsn" id="6GOzicSgZ5d" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="6GOzicSgZ50" role="1tU5fm">
                  <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                </node>
                <node concept="2OqwBi" id="6GOzicSgZ5e" role="33vP2m">
                  <node concept="1eOMI4" id="6GOzicSgZ5f" role="2Oq$k0">
                    <node concept="10QFUN" id="6GOzicSgZ5g" role="1eOMHV">
                      <node concept="3uibUv" id="6GOzicSgZ5h" role="10QFUM">
                        <ref role="3uigEE" to="3qmy:~ModuleClassLoader" resolve="ModuleClassLoader" />
                      </node>
                      <node concept="37vLTw" id="6GOzicSgZ5i" role="10QFUP">
                        <ref role="3cqZAo" node="6GOzicSgUED" resolve="classLoader" />
                      </node>
                    </node>
                  </node>
                  <node concept="1PvZjq" id="6GOzicSgZ5j" role="2OqNvi">
                    <ref role="37wK5l" to="3qmy:~ModuleClassLoader.getModule()" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6GOzicSgZUq" role="3cqZAp">
              <node concept="3cpWsn" id="6GOzicSgZUr" role="3cpWs9">
                <property role="TrG5h" value="moduleSourceDir" />
                <node concept="3uibUv" id="6GOzicSgZUp" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="6GOzicSgZUs" role="33vP2m">
                  <node concept="1eOMI4" id="6GOzicSgZUt" role="2Oq$k0">
                    <node concept="10QFUN" id="6GOzicSgZUu" role="1eOMHV">
                      <node concept="37vLTw" id="6GOzicSgZUv" role="10QFUP">
                        <ref role="3cqZAo" node="6GOzicSgZ5d" resolve="module" />
                      </node>
                      <node concept="3uibUv" id="6GOzicSgZUw" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6GOzicSgZUx" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6GOzicSi17B" role="3cqZAp">
              <node concept="3cpWsn" id="6GOzicSi17C" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="6GOzicSi17w" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2YIFZM" id="6GOzicSi17D" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~IFileUtil" resolve="IFileUtil" />
                  <ref role="37wK5l" to="18ew:~IFileUtil.getDescendant(jetbrains.mps.vfs.IFile,java.lang.String)" resolve="getDescendant" />
                  <node concept="37vLTw" id="6GOzicSi17E" role="37wK5m">
                    <ref role="3cqZAo" node="6GOzicSgZUr" resolve="moduleSourceDir" />
                  </node>
                  <node concept="3cpWs3" id="6GOzicSi2Gf" role="37wK5m">
                    <node concept="37vLTw" id="6GOzicSi2HB" role="3uHU7w">
                      <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
                    </node>
                    <node concept="Xl_RD" id="6GOzicSi17F" role="3uHU7B">
                      <property role="Xl_RC" value="../../ui-client/dist/" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6GOzicShR7i" role="3cqZAp">
              <node concept="3clFbS" id="6GOzicShR7k" role="3clFbx">
                <node concept="3clFbF" id="6GOzicSi5mc" role="3cqZAp">
                  <node concept="37vLTI" id="6GOzicSi5me" role="3clFbG">
                    <node concept="2OqwBi" id="6GOzicSi3sJ" role="37vLTx">
                      <node concept="37vLTw" id="6GOzicSi3sK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6GOzicSi17C" resolve="file" />
                      </node>
                      <node concept="liA8E" id="6GOzicSi3sL" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6GOzicSi5mi" role="37vLTJ">
                      <ref role="3cqZAo" node="6GOzicSi4Fu" resolve="stream" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6GOzicSi2bm" role="3clFbw">
                <node concept="3y3z36" id="6GOzicSi2k0" role="3uHU7B">
                  <node concept="10Nm6u" id="6GOzicSi2kU" role="3uHU7w" />
                  <node concept="37vLTw" id="6GOzicSi2cx" role="3uHU7B">
                    <ref role="3cqZAo" node="6GOzicSi17C" resolve="file" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6GOzicShRwg" role="3uHU7w">
                  <node concept="37vLTw" id="6GOzicShRnQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6GOzicSi17C" resolve="file" />
                  </node>
                  <node concept="liA8E" id="6GOzicShZl6" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6GOzicSgWSw" role="3clFbw">
            <node concept="3uibUv" id="6GOzicSgXVU" role="2ZW6by">
              <ref role="3uigEE" to="3qmy:~ModuleClassLoader" resolve="ModuleClassLoader" />
            </node>
            <node concept="37vLTw" id="6GOzicSgWr2" role="2ZW6bz">
              <ref role="3cqZAo" node="6GOzicSgUED" resolve="classLoader" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6GOzicSgVJa" role="3cqZAp" />
        <node concept="3SKdUt" id="6GOzicSiazq" role="3cqZAp">
          <node concept="3SKdUq" id="6GOzicSiazs" role="3SKWNk">
            <property role="3SKdUp" value="deployment mode" />
          </node>
        </node>
        <node concept="3clFbJ" id="6GOzicSi6cp" role="3cqZAp">
          <node concept="3clFbS" id="6GOzicSi6cr" role="3clFbx">
            <node concept="3clFbF" id="6GOzicSi8i1" role="3cqZAp">
              <node concept="37vLTI" id="6GOzicSi8i3" role="3clFbG">
                <node concept="2OqwBi" id="39ClI1HWcfC" role="37vLTx">
                  <node concept="37vLTw" id="6GOzicSgUEM" role="2Oq$k0">
                    <ref role="3cqZAo" node="6GOzicSgUED" resolve="classLoader" />
                  </node>
                  <node concept="liA8E" id="39ClI1HWcfL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ClassLoader.getResourceAsStream(java.lang.String)" resolve="getResourceAsStream" />
                    <node concept="3cpWs3" id="39ClI1HWcfM" role="37wK5m">
                      <node concept="37vLTw" id="39ClI1HWcfN" role="3uHU7w">
                        <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
                      </node>
                      <node concept="Xl_RD" id="39ClI1HWcfO" role="3uHU7B">
                        <property role="Xl_RC" value="de/q60/mps/web/ui/svg/client/static/" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6GOzicSi8i7" role="37vLTJ">
                  <ref role="3cqZAo" node="6GOzicSi4Fu" resolve="stream" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6GOzicSi76h" role="3clFbw">
            <node concept="10Nm6u" id="6GOzicSi76y" role="3uHU7w" />
            <node concept="37vLTw" id="6GOzicSi6$L" role="3uHU7B">
              <ref role="3cqZAo" node="6GOzicSi4Fu" resolve="stream" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6GOzicSiaXi" role="3cqZAp" />
        <node concept="2GUZhq" id="39ClI1HV6OJ" role="3cqZAp">
          <node concept="3clFbS" id="39ClI1HV6OL" role="2GV8ay">
            <node concept="3clFbF" id="39ClI1HV9kD" role="3cqZAp">
              <node concept="37vLTI" id="39ClI1HV9kF" role="3clFbG">
                <node concept="2YIFZM" id="39ClI1HV36R" role="37vLTx">
                  <ref role="1Pybhc" to="8oaq:~IOUtils" resolve="IOUtils" />
                  <ref role="37wK5l" to="8oaq:~IOUtils.toString(java.io.InputStream)" resolve="toString" />
                  <node concept="37vLTw" id="39ClI1HV36S" role="37wK5m">
                    <ref role="3cqZAo" node="6GOzicSi4Fu" resolve="stream" />
                  </node>
                </node>
                <node concept="37vLTw" id="39ClI1HV9kJ" role="37vLTJ">
                  <ref role="3cqZAo" node="39ClI1HUy6E" resolve="content" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="39ClI1HV6OM" role="2GVbov">
            <node concept="3clFbF" id="39ClI1HV4D5" role="3cqZAp">
              <node concept="2YIFZM" id="39ClI1HV4U2" role="3clFbG">
                <ref role="37wK5l" to="8oaq:~IOUtils.closeQuietly(java.io.InputStream)" resolve="closeQuietly" />
                <ref role="1Pybhc" to="8oaq:~IOUtils" resolve="IOUtils" />
                <node concept="37vLTw" id="39ClI1HV59N" role="37wK5m">
                  <ref role="3cqZAo" node="6GOzicSi4Fu" resolve="stream" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="39ClI1HUyCB" role="3cqZAp" />
        <node concept="3clFbJ" id="AkkmJC04o$" role="3cqZAp">
          <node concept="3clFbS" id="AkkmJC04oA" role="3clFbx">
            <node concept="3clFbF" id="AkkmJC0a9y" role="3cqZAp">
              <node concept="2OqwBi" id="AkkmJC0a9z" role="3clFbG">
                <node concept="pFkrN" id="AkkmJC0a9$" role="2Oq$k0" />
                <node concept="1W9Qq2" id="AkkmJC0a9_" role="2OqNvi">
                  <property role="1W9R_Y" value="text/css" />
                  <node concept="37vLTw" id="39ClI1HUy6H" role="1W9R_W">
                    <ref role="3cqZAo" node="39ClI1HUy6E" resolve="content" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="AkkmJC07be" role="3clFbw">
            <node concept="37vLTw" id="39ClI1HVrwh" role="2Oq$k0">
              <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
            </node>
            <node concept="liA8E" id="AkkmJC09Qg" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
              <node concept="Xl_RD" id="AkkmJC09Rg" role="37wK5m">
                <property role="Xl_RC" value=".css" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="AkkmJC09Xj" role="9aQIa">
            <node concept="3clFbS" id="AkkmJC09Xk" role="9aQI4">
              <node concept="3clFbF" id="39ClI1HUzCG" role="3cqZAp">
                <node concept="2OqwBi" id="39ClI1HUzCH" role="3clFbG">
                  <node concept="pFkrN" id="39ClI1HUzCI" role="2Oq$k0" />
                  <node concept="1W9Qq2" id="39ClI1HUzCJ" role="2OqNvi">
                    <property role="1W9R_Y" value="text/plain" />
                    <node concept="37vLTw" id="39ClI1HUzCK" role="1W9R_W">
                      <ref role="3cqZAo" node="39ClI1HUy6E" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="39ClI1HTqtA" role="3eNLev">
            <node concept="3clFbS" id="39ClI1HTqtC" role="3eOfB_">
              <node concept="3clFbF" id="39ClI1HTr9c" role="3cqZAp">
                <node concept="2OqwBi" id="39ClI1HTr9d" role="3clFbG">
                  <node concept="pFkrN" id="39ClI1HTr9e" role="2Oq$k0" />
                  <node concept="1W9Qq2" id="39ClI1HTr9f" role="2OqNvi">
                    <property role="1W9R_Y" value="text/html" />
                    <node concept="37vLTw" id="39ClI1HUy6J" role="1W9R_W">
                      <ref role="3cqZAo" node="39ClI1HUy6E" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="39ClI1HTr2T" role="3eO9$A">
              <node concept="2OqwBi" id="39ClI1HTqIg" role="3uHU7B">
                <node concept="37vLTw" id="39ClI1HVrwy" role="2Oq$k0">
                  <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
                </node>
                <node concept="liA8E" id="39ClI1HTqIk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="39ClI1HTqIl" role="37wK5m">
                    <property role="Xl_RC" value=".html" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="39ClI1HTr5w" role="3uHU7w">
                <node concept="37vLTw" id="39ClI1HVrvZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
                </node>
                <node concept="liA8E" id="39ClI1HTr5$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="39ClI1HTr5_" role="37wK5m">
                    <property role="Xl_RC" value=".htm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="39ClI1HUz1U" role="3eNLev">
            <node concept="3clFbS" id="39ClI1HUz1W" role="3eOfB_">
              <node concept="3clFbF" id="AkkmJBO90l" role="3cqZAp">
                <node concept="2OqwBi" id="AkkmJBO90m" role="3clFbG">
                  <node concept="pFkrN" id="AkkmJBO90n" role="2Oq$k0" />
                  <node concept="1W9Qq2" id="AkkmJBO90o" role="2OqNvi">
                    <property role="1W9R_Y" value="text/javascript" />
                    <node concept="37vLTw" id="39ClI1HUy6I" role="1W9R_W">
                      <ref role="3cqZAo" node="39ClI1HUy6E" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="39ClI1HUz$Y" role="3eO9$A">
              <node concept="37vLTw" id="39ClI1HVrw8" role="2Oq$k0">
                <ref role="3cqZAo" node="39ClI1HVqvA" resolve="fileName" />
              </node>
              <node concept="liA8E" id="39ClI1HUz_0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="39ClI1HUz_1" role="37wK5m">
                  <property role="Xl_RC" value=".js" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6xm2RBl6fwx" />
</model>

