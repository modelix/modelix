<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38471075-de8a-4a91-a626-13195397f5c5(de.q60.mps.web.model.mpsplugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(de.q60.mps.web.model.mpsplugin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="um17" ref="r:f4bd718a-0e10-4b62-9f5d-6c915f7d4572(de.q60.mps.web.model.mpsplugin.history)" />
    <import index="4nil" ref="r:a50ac3a0-164c-48fd-b7af-208637427fd6(de.q60.mps.web.model.mpsplugin.projectview)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="mjcn" ref="r:89ac1ee0-92ac-49e1-83e6-167854d2040e(de.q60.mps.shadowmodels.runtime.model)" />
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="dj5d" ref="r:8bca245c-17c6-44f4-9367-ad6ce25cabf5(de.q60.mps.shadowmodels.runtimelang.structure)" />
    <import index="jon5" ref="r:49169b91-8585-49ee-98e0-962a243b40d4(de.q60.mps.web.model.lazy)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681841" name="jetbrains.mps.lang.resources.structure.Primitive" flags="ng" index="1irPi6">
        <child id="1860120738943552529" name="fillColor" index="3PKjn_" />
      </concept>
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="2756621024541675105" name="jetbrains.mps.lang.resources.structure.Rect" flags="ng" index="1irR9m" />
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
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
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="26ispG7XkVU" />
  <node concept="2uRRBC" id="26ispG7XkVV">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2uRRBj" id="26ispG7ZZOJ" role="2uRRBE">
      <node concept="3clFbS" id="26ispG7ZZOK" role="2VODD2">
        <node concept="3clFbH" id="5nE7Pe9eRRt" role="3cqZAp" />
      </node>
    </node>
    <node concept="2uRRBI" id="26ispG800pu" role="2uRRBF">
      <node concept="3clFbS" id="26ispG800pv" role="2VODD2">
        <node concept="SfApY" id="5nE7Pe9db9y" role="3cqZAp">
          <node concept="3clFbS" id="5nE7Pe9db9z" role="SfCbr">
            <node concept="3clFbF" id="1LVcV5KEBn5" role="3cqZAp">
              <node concept="2OqwBi" id="1LVcV5KEBu2" role="3clFbG">
                <node concept="2YIFZM" id="6aRQr1WOLEv" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="1LVcV5KEBGc" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxAPz" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5nE7Pe9db9E" role="TEbGg">
            <node concept="3cpWsn" id="5nE7Pe9db9F" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="5nE7Pe9db9G" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="5nE7Pe9db9H" role="TDEfX">
              <node concept="RRSsy" id="5nE7Pe9db9I" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="5nE7Pe9db9J" role="RRSoy" />
                <node concept="37vLTw" id="5nE7Pe9db9K" role="RRSow">
                  <ref role="3cqZAo" node="5nE7Pe9db9F" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="49CIzaqqEiE" role="3cqZAp">
          <node concept="3clFbS" id="49CIzaqqEiF" role="SfCbr">
            <node concept="3clFbF" id="49CIzaqqDPd" role="3cqZAp">
              <node concept="2OqwBi" id="49CIzaqqDXy" role="3clFbG">
                <node concept="2YIFZM" id="49CIzaqqDRc" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:49CIzaqqD1y" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:26ispG7Y1u2" resolve="CloudTransientModules" />
                </node>
                <node concept="liA8E" id="49CIzaqqEcc" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:26ispG7Y1vD" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="49CIzaqqEiK" role="TEbGg">
            <node concept="3cpWsn" id="49CIzaqqEiL" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="49CIzaqqEiM" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="49CIzaqqEiN" role="TDEfX">
              <node concept="RRSsy" id="49CIzaqqEiO" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="49CIzaqqEiP" role="RRSoy" />
                <node concept="37vLTw" id="49CIzaqqEiQ" role="RRSow">
                  <ref role="3cqZAo" node="49CIzaqqEiL" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="115Xaa3ZjNG">
    <property role="TrG5h" value="ProjectPlugin" />
    <node concept="2uRRBT" id="115Xaa3ZjO5" role="2uRRB$">
      <node concept="3clFbS" id="115Xaa3ZjO6" role="2VODD2">
        <node concept="3clFbF" id="115Xaa3ZjUM" role="3cqZAp">
          <node concept="2OqwBi" id="115Xaa3Zmcd" role="3clFbG">
            <node concept="2YIFZM" id="wa_gCmsPr2" role="2Oq$k0">
              <ref role="37wK5l" to="4nil:4S3q4YkONiE" resolve="getInstance" />
              <ref role="1Pybhc" to="4nil:115Xaa3Z2Jb" resolve="CloudProjectViewExtension" />
              <node concept="1KvdUw" id="115Xaa3ZlVJ" role="37wK5m" />
            </node>
            <node concept="liA8E" id="115Xaa3ZmtM" role="2OqNvi">
              <ref role="37wK5l" to="4nil:115Xaa3Zj8M" resolve="init" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="115Xaa3ZjOv" role="2uRRB_">
      <node concept="3clFbS" id="115Xaa3ZjOw" role="2VODD2">
        <node concept="3clFbF" id="115Xaa3ZmMp" role="3cqZAp">
          <node concept="2OqwBi" id="115Xaa3ZmMq" role="3clFbG">
            <node concept="2YIFZM" id="wa_gCmsPr3" role="2Oq$k0">
              <ref role="37wK5l" to="4nil:4S3q4YkONiE" resolve="getInstance" />
              <ref role="1Pybhc" to="4nil:115Xaa3Z2Jb" resolve="CloudProjectViewExtension" />
              <node concept="1KvdUw" id="115Xaa3ZmMs" role="37wK5m" />
            </node>
            <node concept="liA8E" id="115Xaa3ZmMt" role="2OqNvi">
              <ref role="37wK5l" to="4nil:115Xaa3Zj_d" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sEfby" id="2D0HTQh99J9">
    <property role="TrG5h" value="CloudTool" />
    <property role="2XNbzY" value="Cloud" />
    <node concept="2BZ0e9" id="2D0HTQh99UN" role="2XNbBz">
      <property role="TrG5h" value="component" />
      <node concept="3Tm6S6" id="2D0HTQh99UO" role="1B3o_S" />
      <node concept="3uibUv" id="6aRQr1WNvqm" role="1tU5fm">
        <ref role="3uigEE" to="um17:6aRQr1WM9Db" resolve="CloudView" />
      </node>
    </node>
    <node concept="2UmK3q" id="2D0HTQh99Ja" role="2Um5zG">
      <node concept="3clFbS" id="2D0HTQh99Jb" role="2VODD2">
        <node concept="3clFbJ" id="2D0HTQh9adl" role="3cqZAp">
          <node concept="3clFbC" id="2D0HTQh9bp6" role="3clFbw">
            <node concept="10Nm6u" id="2D0HTQh9bEc" role="3uHU7w" />
            <node concept="2OqwBi" id="2D0HTQh9aoK" role="3uHU7B">
              <node concept="2WthIp" id="2D0HTQh9aoN" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2D0HTQh9aoP" role="2OqNvi">
                <ref role="2WH_rO" node="2D0HTQh99UN" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2D0HTQh9adn" role="3clFbx">
            <node concept="3clFbF" id="2D0HTQh9bWc" role="3cqZAp">
              <node concept="37vLTI" id="2D0HTQh9diV" role="3clFbG">
                <node concept="2ShNRf" id="2D0HTQh9dpa" role="37vLTx">
                  <node concept="1pGfFk" id="2D0HTQh9i33" role="2ShVmc">
                    <ref role="37wK5l" to="um17:6aRQr1WMiBA" resolve="CloudView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2D0HTQh9bW6" role="37vLTJ">
                  <node concept="2WthIp" id="2D0HTQh9bW9" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2D0HTQh9bWb" role="2OqNvi">
                    <ref role="2WH_rO" node="2D0HTQh99UN" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2D0HTQh9iMw" role="3cqZAp">
          <node concept="2OqwBi" id="2D0HTQh9iMy" role="3cqZAk">
            <node concept="2WthIp" id="2D0HTQh9iMz" role="2Oq$k0" />
            <node concept="2BZ7hE" id="2D0HTQh9iM$" role="2OqNvi">
              <ref role="2WH_rO" node="2D0HTQh99UN" resolve="component" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="2D0HTQhaen1" role="uR5cp">
      <node concept="3clFbS" id="2D0HTQhaen2" role="2VODD2">
        <node concept="3clFbF" id="2D0HTQhaeEU" role="3cqZAp">
          <node concept="2OqwBi" id="2D0HTQhaePi" role="3clFbG">
            <node concept="2WthIp" id="2D0HTQhaeET" role="2Oq$k0" />
            <node concept="liA8E" id="2D0HTQhaf04" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.makeAvailableLater()" resolve="makeAvailableLater" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1irR5M" id="6aRQr1WOLc0" role="1nVCmq">
      <property role="2$rrk2" value="1" />
      <node concept="1irR9m" id="6aRQr1WOLdI" role="1irR9h">
        <node concept="3PKj8D" id="6aRQr1WOLdP" role="3PKjn_">
          <property role="3PKj8l" value="ffff00" />
        </node>
      </node>
      <node concept="1irPie" id="6aRQr1WOLdy" role="1irR9h">
        <property role="1irPi9" value="C" />
        <node concept="3PKj8D" id="6aRQr1WOLdB" role="3PKjny">
          <property role="3PKj8l" value="000000" />
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6aRQr1WNZ9J">
    <property role="TrG5h" value="CloudRootGroup" />
    <property role="3GE5qa" value="actions" />
    <node concept="ftmFs" id="6aRQr1WNZaH" role="ftER_">
      <node concept="tCFHf" id="6aRQr1WNZb5" role="ftvYc">
        <ref role="tCJdB" node="6aRQr1WNZaK" resolve="AddCloudRepository" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6aRQr1WNZaK">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AddCloudRepository" />
    <property role="2uzpH1" value="Add Repository" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="6aRQr1WNZaL" role="tncku">
      <node concept="3clFbS" id="6aRQr1WNZaM" role="2VODD2">
        <node concept="3cpWs8" id="6aRQr1WODg3" role="3cqZAp">
          <node concept="3cpWsn" id="6aRQr1WODg4" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="6aRQr1WODm1" role="1tU5fm" />
            <node concept="2YIFZM" id="6aRQr1WODg5" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="6aRQr1WODg6" role="37wK5m">
                <node concept="2WthIp" id="6aRQr1WODg7" role="2Oq$k0" />
                <node concept="1DTwFV" id="6aRQr1WODg8" role="2OqNvi">
                  <ref role="2WH_rO" node="6aRQr1WO_Ld" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="6aRQr1WODg9" role="37wK5m">
                <property role="Xl_RC" value="URL" />
              </node>
              <node concept="Xl_RD" id="6aRQr1WODga" role="37wK5m">
                <property role="Xl_RC" value="Add Cloud Repository" />
              </node>
              <node concept="10Nm6u" id="6aRQr1WODgb" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aRQr1WPM6n" role="3cqZAp">
          <node concept="3clFbS" id="6aRQr1WPM6p" role="3clFbx">
            <node concept="3clFbF" id="6aRQr1WPNrM" role="3cqZAp">
              <node concept="2OqwBi" id="6aRQr1WPNy1" role="3clFbG">
                <node concept="2YIFZM" id="6aRQr1WPNsl" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="6aRQr1WPNDu" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:6aRQr1WPk$8" resolve="addRepository" />
                  <node concept="37vLTw" id="6aRQr1WPNEp" role="37wK5m">
                    <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6aRQr1WPMwc" role="3clFbw">
            <node concept="37vLTw" id="6aRQr1WPM8R" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
            </node>
            <node concept="17RvpY" id="6aRQr1WPNkC" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6aRQr1WO_Ld" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6aRQr1WO_Le" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="6aRQr1XbZf3">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="CloudRepositoryGroup" />
    <node concept="ftmFs" id="6aRQr1XbZf5" role="ftER_">
      <node concept="tCFHf" id="6aRQr1XbZft" role="ftvYc">
        <ref role="tCJdB" node="6aRQr1XbZf8" resolve="AddTree" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6aRQr1XbZf8">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AddTree" />
    <property role="2uzpH1" value="Add Tree" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="6aRQr1XbZf9" role="tncku">
      <node concept="3clFbS" id="6aRQr1XbZfa" role="2VODD2">
        <node concept="3cpWs8" id="6aRQr1Xc7fU" role="3cqZAp">
          <node concept="3cpWsn" id="6aRQr1Xc7fV" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="6aRQr1Xc7ff" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="6aRQr1Xc7fW" role="33vP2m">
              <node concept="1eOMI4" id="6aRQr1Xc7fX" role="2Oq$k0">
                <node concept="10QFUN" id="6aRQr1Xc7fY" role="1eOMHV">
                  <node concept="2OqwBi" id="6aRQr1Xc7fZ" role="10QFUP">
                    <node concept="2WthIp" id="6aRQr1Xc7g0" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6aRQr1Xc7g1" role="2OqNvi">
                      <ref role="2WH_rO" node="6aRQr1XbZt0" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6aRQr1Xc7g2" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6aRQr1Xc7g3" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6aRQr1Xcp__" role="3cqZAp" />
        <node concept="3cpWs8" id="6aRQr1Xcpml" role="3cqZAp">
          <node concept="3cpWsn" id="6aRQr1Xcpmm" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="6aRQr1Xcpmn" role="1tU5fm" />
            <node concept="2YIFZM" id="6aRQr1Xcpmo" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="6aRQr1Xcpmp" role="37wK5m">
                <node concept="2WthIp" id="6aRQr1Xcpmq" role="2Oq$k0" />
                <node concept="1DTwFV" id="6aRQr1Xcpmr" role="2OqNvi">
                  <ref role="2WH_rO" node="6aRQr1Xcq1Y" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="6aRQr1Xcpms" role="37wK5m">
                <property role="Xl_RC" value="Name" />
              </node>
              <node concept="Xl_RD" id="6aRQr1Xcpmt" role="37wK5m">
                <property role="Xl_RC" value="Add Tree" />
              </node>
              <node concept="10M0yZ" id="6aRQr1XcqeS" role="37wK5m">
                <ref role="3cqZAo" to="csg2:6aRQr1WUw7m" resolve="TREE_ICON" />
                <ref role="1PxDUh" to="csg2:6aRQr1WMwO8" resolve="CloudIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aRQr1XcqDp" role="3cqZAp">
          <node concept="3clFbS" id="6aRQr1XcqDr" role="3clFbx">
            <node concept="3cpWs6" id="6aRQr1Xcsjf" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6aRQr1Xcrui" role="3clFbw">
            <node concept="37vLTw" id="6aRQr1XcqEj" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1Xcpmm" resolve="name" />
            </node>
            <node concept="17RlXB" id="6aRQr1Xcsfl" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="6aRQr1Xcq7D" role="3cqZAp">
          <node concept="3cpWsn" id="6aRQr1Xcq7E" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="17QB3L" id="6aRQr1Xcq7F" role="1tU5fm" />
            <node concept="2YIFZM" id="6aRQr1Xcq7G" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="6aRQr1Xcq7H" role="37wK5m">
                <node concept="2WthIp" id="6aRQr1Xcq7I" role="2Oq$k0" />
                <node concept="1DTwFV" id="6aRQr1Xcq7J" role="2OqNvi">
                  <ref role="2WH_rO" node="6aRQr1Xcq1Y" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="6aRQr1Xcq7K" role="37wK5m">
                <property role="Xl_RC" value="ID" />
              </node>
              <node concept="Xl_RD" id="6aRQr1Xcq7L" role="37wK5m">
                <property role="Xl_RC" value="Add Tree" />
              </node>
              <node concept="10M0yZ" id="6aRQr1Xcqht" role="37wK5m">
                <ref role="3cqZAo" to="csg2:6aRQr1WUw7m" resolve="TREE_ICON" />
                <ref role="1PxDUh" to="csg2:6aRQr1WMwO8" resolve="CloudIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aRQr1Xcsr_" role="3cqZAp">
          <node concept="3clFbS" id="6aRQr1XcsrB" role="3clFbx">
            <node concept="3cpWs6" id="6aRQr1XctEc" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6aRQr1XcsQB" role="3clFbw">
            <node concept="37vLTw" id="6aRQr1Xcss_" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1Xcq7E" resolve="id" />
            </node>
            <node concept="17RlXB" id="6aRQr1XctAi" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6aRQr1Xc0fZ" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1Xc7rv" role="3clFbG">
            <node concept="37vLTw" id="6aRQr1Xc7g4" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1Xc7fV" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="6aRQr1Xcpda" role="2OqNvi">
              <ref role="37wK5l" to="csg2:6aRQr1Xc8A_" resolve="addTree" />
              <node concept="37vLTw" id="6aRQr1XctFz" role="37wK5m">
                <ref role="3cqZAo" node="6aRQr1Xcpmm" resolve="name" />
              </node>
              <node concept="37vLTw" id="6aRQr1XctHG" role="37wK5m">
                <ref role="3cqZAo" node="6aRQr1Xcq7E" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6aRQr1Xcq1Y" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6aRQr1Xcq1Z" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6aRQr1XbZt0" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="6aRQr1XbZt1" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="6aRQr1XbZtm" role="tmbBb">
      <node concept="3clFbS" id="6aRQr1XbZtn" role="2VODD2">
        <node concept="3clFbF" id="6aRQr1XbZ$J" role="3cqZAp">
          <node concept="2ZW3vV" id="6aRQr1XbZVX" role="3clFbG">
            <node concept="3uibUv" id="6aRQr1Xc04O" role="2ZW6by">
              <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
            </node>
            <node concept="2OqwBi" id="6aRQr1XbZ$D" role="2ZW6bz">
              <node concept="2WthIp" id="6aRQr1XbZ$G" role="2Oq$k0" />
              <node concept="1DTwFV" id="6aRQr1XbZ$I" role="2OqNvi">
                <ref role="2WH_rO" node="6aRQr1XbZt0" resolve="treeNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="49CIzaqqTEI">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="CloudNodeGroup" />
    <node concept="ftmFs" id="49CIzaqqTEK" role="ftER_">
      <node concept="tCFHf" id="49CIzaqsm5S" role="ftvYc">
        <ref role="tCJdB" node="49CIzaqr2TB" resolve="AddModuleNode" />
      </node>
      <node concept="tCFHf" id="EMWAvBlHXg" role="ftvYc">
        <ref role="tCJdB" node="EMWAvBfOFs" resolve="AddModelNode" />
      </node>
      <node concept="tCFHf" id="EMWAvBfi7c" role="ftvYc">
        <ref role="tCJdB" node="EMWAvBdVtK" resolve="AddTransientModuleBinding" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="49CIzaqr2TB">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AddModuleNode" />
    <property role="2uzpH1" value="Add Module" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="49CIzaqr3hK" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="49CIzaqr3hL" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="49CIzaqr3z7" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="49CIzaqr3z8" role="1oa70y" />
    </node>
    <node concept="tnohg" id="49CIzaqr2TC" role="tncku">
      <node concept="3clFbS" id="49CIzaqr2TD" role="2VODD2">
        <node concept="3cpWs8" id="49CIzaqra5N" role="3cqZAp">
          <node concept="3cpWsn" id="49CIzaqra5O" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="49CIzaqra3h" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="49CIzaqra5P" role="33vP2m">
              <node concept="2OqwBi" id="49CIzaqra5Q" role="10QFUP">
                <node concept="2WthIp" id="49CIzaqra5R" role="2Oq$k0" />
                <node concept="1DTwFV" id="49CIzaqra5S" role="2OqNvi">
                  <ref role="2WH_rO" node="49CIzaqr3z7" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="49CIzaqra5T" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="49CIzaqrkvU" role="3cqZAp" />
        <node concept="3cpWs8" id="49CIzaqrkpq" role="3cqZAp">
          <node concept="3cpWsn" id="49CIzaqrkpr" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="49CIzaqrkps" role="1tU5fm" />
            <node concept="2YIFZM" id="49CIzaqrkpt" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="49CIzaqrkpu" role="37wK5m">
                <node concept="2WthIp" id="49CIzaqrkpv" role="2Oq$k0" />
                <node concept="1DTwFV" id="49CIzaqrkpw" role="2OqNvi">
                  <ref role="2WH_rO" node="49CIzaqr3hK" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="49CIzaqrkpx" role="37wK5m">
                <property role="Xl_RC" value="Name" />
              </node>
              <node concept="Xl_RD" id="49CIzaqrkpy" role="37wK5m">
                <property role="Xl_RC" value="Add Module" />
              </node>
              <node concept="10Nm6u" id="49CIzaqrkIy" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="49CIzaqrkp$" role="3cqZAp">
          <node concept="3clFbS" id="49CIzaqrkp_" role="3clFbx">
            <node concept="3cpWs6" id="49CIzaqrkpA" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="49CIzaqrkpB" role="3clFbw">
            <node concept="37vLTw" id="49CIzaqrkpC" role="2Oq$k0">
              <ref role="3cqZAo" node="49CIzaqrkpr" resolve="name" />
            </node>
            <node concept="17RlXB" id="49CIzaqrkpD" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="49CIzaqrjVq" role="3cqZAp" />
        <node concept="3clFbF" id="49CIzaqr9PX" role="3cqZAp">
          <node concept="2OqwBi" id="49CIzaqrhza" role="3clFbG">
            <node concept="2OqwBi" id="49CIzaqraPB" role="2Oq$k0">
              <node concept="37vLTw" id="49CIzaqra5U" role="2Oq$k0">
                <ref role="3cqZAo" node="49CIzaqra5O" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="49CIzaqrhsJ" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="49CIzaqrhMv" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0jWS" resolve="runWrite" />
              <node concept="1bVj0M" id="49CIzaqrhNP" role="37wK5m">
                <node concept="3clFbS" id="49CIzaqrhNQ" role="1bW5cS">
                  <node concept="3cpWs8" id="49CIzaqrkLq" role="3cqZAp">
                    <node concept="3cpWsn" id="49CIzaqrkLr" role="3cpWs9">
                      <property role="TrG5h" value="newModule" />
                      <node concept="3uibUv" id="49CIzaqrkzh" role="1tU5fm">
                        <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="49CIzaqrkLs" role="33vP2m">
                        <node concept="2OqwBi" id="49CIzaqrkLt" role="2Oq$k0">
                          <node concept="37vLTw" id="49CIzaqrkLu" role="2Oq$k0">
                            <ref role="3cqZAo" node="49CIzaqra5O" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="49CIzaqrkLv" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49CIzaqrkLw" role="2OqNvi">
                          <ref role="37wK5l" to="mjcn:3ECE8iPHBwB" resolve="addNewChild" />
                          <node concept="Xl_RD" id="49CIzaqrkLx" role="37wK5m">
                            <property role="Xl_RC" value="modules" />
                          </node>
                          <node concept="3cmrfG" id="49CIzaqrkLy" role="37wK5m">
                            <property role="3cmrfH" value="-1" />
                          </node>
                          <node concept="2YIFZM" id="49CIzaqrkLz" role="37wK5m">
                            <ref role="37wK5l" to="l6bp:3ECE8iPOmg5" resolve="wrap" />
                            <ref role="1Pybhc" to="l6bp:5gTrVpGjuL2" resolve="SConceptAdapter" />
                            <node concept="35c_gC" id="49CIzaqrkL$" role="37wK5m">
                              <ref role="35c_gD" to="dj5d:qmkA5fOskf" resolve="Module" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="49CIzaqrhXY" role="3cqZAp">
                    <node concept="2OqwBi" id="49CIzaqrl3H" role="3clFbG">
                      <node concept="37vLTw" id="49CIzaqrkL_" role="2Oq$k0">
                        <ref role="3cqZAo" node="49CIzaqrkLr" resolve="newModule" />
                      </node>
                      <node concept="liA8E" id="49CIzaqrll8" role="2OqNvi">
                        <ref role="37wK5l" to="mjcn:5gTrVpGiTEM" resolve="setPropertyValue" />
                        <node concept="2OqwBi" id="49CIzaqrlUe" role="37wK5m">
                          <node concept="355D3s" id="49CIzaqrlp6" role="2Oq$k0">
                            <ref role="355D3t" to="dj5d:qmkA5fOskf" resolve="Module" />
                            <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="liA8E" id="49CIzaqrmvY" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="49CIzaqrmEM" role="37wK5m">
                          <ref role="3cqZAo" node="49CIzaqrkpr" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="49CIzaqr2TW" role="tmbBb">
      <node concept="3clFbS" id="49CIzaqr2TX" role="2VODD2">
        <node concept="3cpWs8" id="49CIzaqsrFt" role="3cqZAp">
          <node concept="3cpWsn" id="49CIzaqsrFu" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="49CIzaqsrE8" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="0kSF2" id="49CIzaqsrFv" role="33vP2m">
              <node concept="3uibUv" id="49CIzaqsrFw" role="0kSFW">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
              <node concept="2OqwBi" id="49CIzaqsrFx" role="0kSFX">
                <node concept="2WthIp" id="49CIzaqsrFy" role="2Oq$k0" />
                <node concept="1DTwFV" id="49CIzaqsrFz" role="2OqNvi">
                  <ref role="2WH_rO" node="49CIzaqr3z7" resolve="treeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="49CIzaqssbE" role="3cqZAp">
          <node concept="3clFbS" id="49CIzaqssbG" role="3clFbx">
            <node concept="3cpWs6" id="49CIzaqstgy" role="3cqZAp">
              <node concept="3clFbT" id="49CIzaqstgT" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="49CIzaqssSA" role="3clFbw">
            <node concept="10Nm6u" id="49CIzaqsta_" role="3uHU7w" />
            <node concept="37vLTw" id="49CIzaqsseS" role="3uHU7B">
              <ref role="3cqZAo" node="49CIzaqsrFu" resolve="nodeTreeNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBdj8l" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBdj8m" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="EMWAvBdj6t" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="EMWAvBdj8n" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBdj8o" role="2Oq$k0">
                <ref role="3cqZAo" node="49CIzaqsrFu" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="EMWAvBdj8p" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EMWAvBdgTI" role="3cqZAp">
          <node concept="3clFbS" id="EMWAvBdgTK" role="3clFbx">
            <node concept="3cpWs6" id="EMWAvBdjJo" role="3cqZAp">
              <node concept="3clFbT" id="EMWAvBdjQA" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="EMWAvBdjCz" role="3clFbw">
            <node concept="2ZW3vV" id="EMWAvBdjC_" role="3fr31v">
              <node concept="3uibUv" id="EMWAvBdjCA" role="2ZW6by">
                <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
              </node>
              <node concept="37vLTw" id="EMWAvBdjCB" role="2ZW6bz">
                <ref role="3cqZAo" node="EMWAvBdj8m" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="49CIzaqsyRm" role="3cqZAp">
          <node concept="3clFbC" id="EMWAvBdncE" role="3cqZAk">
            <node concept="2OqwBi" id="EMWAvBdncF" role="3uHU7B">
              <node concept="1eOMI4" id="EMWAvBdncG" role="2Oq$k0">
                <node concept="10QFUN" id="EMWAvBdncH" role="1eOMHV">
                  <node concept="3uibUv" id="EMWAvBdncI" role="10QFUM">
                    <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
                  </node>
                  <node concept="37vLTw" id="EMWAvBdncJ" role="10QFUP">
                    <ref role="3cqZAo" node="EMWAvBdj8m" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="EMWAvBdncK" role="2OqNvi">
                <ref role="37wK5l" to="3hky:QurUgi3vlP" resolve="getNodeId" />
              </node>
            </node>
            <node concept="10M0yZ" id="EMWAvBdncL" role="3uHU7w">
              <ref role="1PxDUh" to="3hky:4_SQzDO0jRP" resolve="PTree" />
              <ref role="3cqZAo" to="3hky:5QP6xyjNAP1" resolve="ROOT_ID" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="EMWAvBdVtK">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AddTransientModuleBinding" />
    <property role="2uzpH1" value="Bind to Transient Module" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="EMWAvBdVtL" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="EMWAvBdVtM" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="EMWAvBdVtN" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="EMWAvBdVtO" role="1oa70y" />
    </node>
    <node concept="tnohg" id="EMWAvBdVtP" role="tncku">
      <node concept="3clFbS" id="EMWAvBdVtQ" role="2VODD2">
        <node concept="3cpWs8" id="EMWAvBdVtR" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBdVtS" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="EMWAvBdVtT" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="EMWAvBdVtU" role="33vP2m">
              <node concept="2OqwBi" id="EMWAvBdVtV" role="10QFUP">
                <node concept="2WthIp" id="EMWAvBdVtW" role="2Oq$k0" />
                <node concept="1DTwFV" id="EMWAvBdVtX" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBdVtN" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="EMWAvBdVtY" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBggyZ" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBggz0" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="EMWAvBggwr" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="EMWAvBggz1" role="33vP2m">
              <node concept="2OqwBi" id="EMWAvBggz2" role="2Oq$k0">
                <node concept="37vLTw" id="EMWAvBggz3" role="2Oq$k0">
                  <ref role="3cqZAo" node="EMWAvBdVtS" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="EMWAvBggz4" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="EMWAvBggz5" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="EMWAvBggz6" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBgCWC" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBgCWD" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="EMWAvBgCU9" role="1tU5fm">
              <ref role="3uigEE" to="jon5:1LVcV5K_9N8" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="EMWAvBgCWE" role="33vP2m">
              <node concept="2OqwBi" id="EMWAvBgCWF" role="2Oq$k0">
                <node concept="37vLTw" id="EMWAvBgCWG" role="2Oq$k0">
                  <ref role="3cqZAo" node="EMWAvBdVtS" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="EMWAvBgCWH" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="EMWAvBgCWI" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="EMWAvBgCWJ" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBgG$0" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBgGMM" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBgGzY" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBggz0" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="EMWAvBgH4w" role="2OqNvi">
              <ref role="37wK5l" to="csg2:EMWAvBf_zL" resolve="addBinding" />
              <node concept="2ShNRf" id="EMWAvBftrk" role="37wK5m">
                <node concept="1pGfFk" id="EMWAvBfSvu" role="2ShVmc">
                  <ref role="37wK5l" to="csg2:EMWAvBfuHL" resolve="TransientModuleBinding" />
                  <node concept="37vLTw" id="EMWAvBgDiZ" role="37wK5m">
                    <ref role="3cqZAo" node="EMWAvBgCWD" resolve="treeId" />
                  </node>
                  <node concept="2OqwBi" id="EMWAvBgFJD" role="37wK5m">
                    <node concept="1eOMI4" id="EMWAvBgF_o" role="2Oq$k0">
                      <node concept="10QFUN" id="EMWAvBgFgK" role="1eOMHV">
                        <node concept="2OqwBi" id="EMWAvBgFgH" role="10QFUP">
                          <node concept="37vLTw" id="EMWAvBgFgI" role="2Oq$k0">
                            <ref role="3cqZAo" node="EMWAvBdVtS" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="EMWAvBgFgJ" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="EMWAvBgFww" role="10QFUM">
                          <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="EMWAvBgFYO" role="2OqNvi">
                      <ref role="37wK5l" to="3hky:QurUgi3vlP" resolve="getNodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="EMWAvBdVuH" role="tmbBb">
      <node concept="3clFbS" id="EMWAvBdVuI" role="2VODD2">
        <node concept="3cpWs8" id="EMWAvBdVuJ" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBdVuK" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="EMWAvBdVuL" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="0kSF2" id="EMWAvBdVuM" role="33vP2m">
              <node concept="3uibUv" id="EMWAvBdVuN" role="0kSFW">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
              <node concept="2OqwBi" id="EMWAvBdVuO" role="0kSFX">
                <node concept="2WthIp" id="EMWAvBdVuP" role="2Oq$k0" />
                <node concept="1DTwFV" id="EMWAvBdVuQ" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBdVtN" resolve="treeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EMWAvBdVuR" role="3cqZAp">
          <node concept="3clFbS" id="EMWAvBdVuS" role="3clFbx">
            <node concept="3cpWs6" id="EMWAvBdVuT" role="3cqZAp">
              <node concept="3clFbT" id="EMWAvBdVuU" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="EMWAvBdVuV" role="3clFbw">
            <node concept="10Nm6u" id="EMWAvBdVuW" role="3uHU7w" />
            <node concept="37vLTw" id="EMWAvBdVuX" role="3uHU7B">
              <ref role="3cqZAo" node="EMWAvBdVuK" resolve="nodeTreeNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBdVuY" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBdVuZ" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="EMWAvBdVv0" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="EMWAvBdVv1" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBdVv2" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBdVuK" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="EMWAvBdVv3" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBe7$T" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBe7$U" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="EMWAvBe7yT" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="EMWAvBe7$V" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBe7$W" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBdVuZ" resolve="node" />
              </node>
              <node concept="liA8E" id="EMWAvBe7$X" role="2OqNvi">
                <ref role="37wK5l" to="mjcn:5gTrVpGjdrb" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2lKlK7f2p60" role="3cqZAp">
          <node concept="3clFbS" id="2lKlK7f2p62" role="3clFbx">
            <node concept="3cpWs6" id="2lKlK7f2pLT" role="3cqZAp">
              <node concept="3clFbT" id="2lKlK7f2pW4" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2lKlK7f2ps4" role="3clFbw">
            <node concept="10Nm6u" id="2lKlK7f2pCR" role="3uHU7w" />
            <node concept="37vLTw" id="2lKlK7f2pcK" role="3uHU7B">
              <ref role="3cqZAo" node="EMWAvBe7$U" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5D5xac1qX8B" role="3cqZAp">
          <node concept="3clFbS" id="5D5xac1qX8D" role="3clFbx">
            <node concept="3cpWs6" id="5D5xac1qXlv" role="3cqZAp">
              <node concept="3clFbT" id="5D5xac1qXlQ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5D5xac1qXbQ" role="3clFbw">
            <node concept="2OqwBi" id="5D5xac1qXer" role="3fr31v">
              <node concept="37vLTw" id="5D5xac1qXes" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBe7$U" resolve="concept" />
              </node>
              <node concept="liA8E" id="5D5xac1qXet" role="2OqNvi">
                <ref role="37wK5l" to="mjcn:5gTrVpGiXQU" resolve="isSubconceptOf" />
                <node concept="2YIFZM" id="5D5xac1qXeu" role="37wK5m">
                  <ref role="37wK5l" to="l6bp:3ECE8iPOmg5" resolve="wrap" />
                  <ref role="1Pybhc" to="l6bp:5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <node concept="35c_gC" id="5D5xac1qXev" role="37wK5m">
                    <ref role="35c_gD" to="dj5d:qmkA5fOskf" resolve="Module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5D5xac1qYEU" role="3cqZAp">
          <node concept="3cpWsn" id="5D5xac1qYEV" role="3cpWs9">
            <property role="TrG5h" value="nodeId" />
            <node concept="3cpWsb" id="5D5xac1qYCS" role="1tU5fm" />
            <node concept="2OqwBi" id="5D5xac1qYEW" role="33vP2m">
              <node concept="1eOMI4" id="5D5xac1qYEX" role="2Oq$k0">
                <node concept="10QFUN" id="5D5xac1qYEY" role="1eOMHV">
                  <node concept="3uibUv" id="5D5xac1qYEZ" role="10QFUM">
                    <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
                  </node>
                  <node concept="37vLTw" id="5D5xac1qYF0" role="10QFUP">
                    <ref role="3cqZAo" node="EMWAvBdVuZ" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5D5xac1qYF1" role="2OqNvi">
                <ref role="37wK5l" to="3hky:QurUgi3vlP" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5D5xac1r13d" role="3cqZAp">
          <node concept="3cpWsn" id="5D5xac1r13e" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="5D5xac1r13f" role="1tU5fm">
              <ref role="3uigEE" to="jon5:1LVcV5K_9N8" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="5D5xac1r13g" role="33vP2m">
              <node concept="2OqwBi" id="5D5xac1r13h" role="2Oq$k0">
                <node concept="37vLTw" id="5D5xac1r13i" role="2Oq$k0">
                  <ref role="3cqZAo" node="EMWAvBdVuK" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="5D5xac1r13j" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="5D5xac1r13k" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5D5xac1r13l" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5D5xac1qZ6R" role="3cqZAp">
          <node concept="3clFbS" id="5D5xac1qZ6T" role="3clFbx">
            <node concept="3cpWs6" id="5D5xac1r1Cb" role="3cqZAp">
              <node concept="3clFbT" id="5D5xac1r1LZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="5D5xac1r0No" role="3clFbw">
            <node concept="2OqwBi" id="5D5xac1qZQj" role="2Oq$k0">
              <node concept="37vLTw" id="5D5xac1qZbw" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBdVuK" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="5D5xac1r0_H" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBfk$Y" resolve="getCloudRepository" />
              </node>
            </node>
            <node concept="liA8E" id="5D5xac1r0YU" role="2OqNvi">
              <ref role="37wK5l" to="csg2:5D5xac1qIoP" resolve="hasBinding" />
              <node concept="37vLTw" id="5D5xac1r1bh" role="37wK5m">
                <ref role="3cqZAo" node="5D5xac1r13e" resolve="treeId" />
              </node>
              <node concept="37vLTw" id="5D5xac1r1un" role="37wK5m">
                <ref role="3cqZAo" node="5D5xac1qYEV" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5D5xac1qXB8" role="3cqZAp">
          <node concept="3clFbT" id="5D5xac1qXC4" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="EMWAvBfOFs">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AddModelNode" />
    <property role="2uzpH1" value="Add Model" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="EMWAvBfOFt" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="EMWAvBfOFu" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="EMWAvBfOFv" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="EMWAvBfOFw" role="1oa70y" />
    </node>
    <node concept="tnohg" id="EMWAvBfOFx" role="tncku">
      <node concept="3clFbS" id="EMWAvBfOFy" role="2VODD2">
        <node concept="3cpWs8" id="EMWAvBfOFz" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBfOF$" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="EMWAvBfOF_" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="EMWAvBfOFA" role="33vP2m">
              <node concept="2OqwBi" id="EMWAvBfOFB" role="10QFUP">
                <node concept="2WthIp" id="EMWAvBfOFC" role="2Oq$k0" />
                <node concept="1DTwFV" id="EMWAvBfOFD" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBfOFv" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="EMWAvBfOFE" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="EMWAvBfOFF" role="3cqZAp" />
        <node concept="3cpWs8" id="EMWAvBfOFG" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBfOFH" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="EMWAvBfOFI" role="1tU5fm" />
            <node concept="2YIFZM" id="EMWAvBfOFJ" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="EMWAvBfOFK" role="37wK5m">
                <node concept="2WthIp" id="EMWAvBfOFL" role="2Oq$k0" />
                <node concept="1DTwFV" id="EMWAvBfOFM" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBfOFt" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="EMWAvBfOFN" role="37wK5m">
                <property role="Xl_RC" value="Name" />
              </node>
              <node concept="Xl_RD" id="EMWAvBfOFO" role="37wK5m">
                <property role="Xl_RC" value="Add Model" />
              </node>
              <node concept="10Nm6u" id="EMWAvBfOFP" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EMWAvBfOFQ" role="3cqZAp">
          <node concept="3clFbS" id="EMWAvBfOFR" role="3clFbx">
            <node concept="3cpWs6" id="EMWAvBfOFS" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="EMWAvBfOFT" role="3clFbw">
            <node concept="37vLTw" id="EMWAvBfOFU" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfOFH" resolve="name" />
            </node>
            <node concept="17RlXB" id="EMWAvBfOFV" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="EMWAvBfOFW" role="3cqZAp" />
        <node concept="3clFbF" id="EMWAvBfOFX" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBfOFY" role="3clFbG">
            <node concept="2OqwBi" id="EMWAvBfOFZ" role="2Oq$k0">
              <node concept="37vLTw" id="EMWAvBfOG0" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBfOF$" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="EMWAvBfOG1" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="EMWAvBfOG2" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0jWS" resolve="runWrite" />
              <node concept="1bVj0M" id="EMWAvBfOG3" role="37wK5m">
                <node concept="3clFbS" id="EMWAvBfOG4" role="1bW5cS">
                  <node concept="3cpWs8" id="EMWAvBfOG5" role="3cqZAp">
                    <node concept="3cpWsn" id="EMWAvBfOG6" role="3cpWs9">
                      <property role="TrG5h" value="newModel" />
                      <node concept="3uibUv" id="EMWAvBfOG7" role="1tU5fm">
                        <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="EMWAvBfOG8" role="33vP2m">
                        <node concept="2OqwBi" id="EMWAvBfOG9" role="2Oq$k0">
                          <node concept="37vLTw" id="EMWAvBfOGa" role="2Oq$k0">
                            <ref role="3cqZAo" node="EMWAvBfOF$" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="EMWAvBfOGb" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="EMWAvBfOGc" role="2OqNvi">
                          <ref role="37wK5l" to="mjcn:3ECE8iPHBwB" resolve="addNewChild" />
                          <node concept="2OqwBi" id="EMWAvBfQM9" role="37wK5m">
                            <node concept="359W_D" id="EMWAvBfQ7B" role="2Oq$k0">
                              <ref role="359W_E" to="dj5d:qmkA5fOskf" resolve="Module" />
                              <ref role="359W_F" to="dj5d:qmkA5fOski" resolve="models" />
                            </node>
                            <node concept="liA8E" id="EMWAvBfRtX" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="EMWAvBfOGe" role="37wK5m">
                            <property role="3cmrfH" value="-1" />
                          </node>
                          <node concept="2YIFZM" id="EMWAvBfOGf" role="37wK5m">
                            <ref role="37wK5l" to="l6bp:3ECE8iPOmg5" resolve="wrap" />
                            <ref role="1Pybhc" to="l6bp:5gTrVpGjuL2" resolve="SConceptAdapter" />
                            <node concept="35c_gC" id="EMWAvBfOGg" role="37wK5m">
                              <ref role="35c_gD" to="dj5d:qmkA5fOskc" resolve="Model" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="EMWAvBfOGh" role="3cqZAp">
                    <node concept="2OqwBi" id="EMWAvBfOGi" role="3clFbG">
                      <node concept="37vLTw" id="EMWAvBfOGj" role="2Oq$k0">
                        <ref role="3cqZAo" node="EMWAvBfOG6" resolve="newModel" />
                      </node>
                      <node concept="liA8E" id="EMWAvBfOGk" role="2OqNvi">
                        <ref role="37wK5l" to="mjcn:5gTrVpGiTEM" resolve="setPropertyValue" />
                        <node concept="2OqwBi" id="EMWAvBfOGl" role="37wK5m">
                          <node concept="355D3s" id="EMWAvBfOGm" role="2Oq$k0">
                            <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                            <ref role="355D3t" to="dj5d:qmkA5fOskc" resolve="Model" />
                          </node>
                          <node concept="liA8E" id="EMWAvBfOGn" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="EMWAvBfOGo" role="37wK5m">
                          <ref role="3cqZAo" node="EMWAvBfOFH" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="EMWAvBfOGp" role="tmbBb">
      <node concept="3clFbS" id="EMWAvBfOGq" role="2VODD2">
        <node concept="3cpWs8" id="EMWAvBfPHe" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBfPHf" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="EMWAvBfPHg" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="0kSF2" id="EMWAvBfPHh" role="33vP2m">
              <node concept="3uibUv" id="EMWAvBfPHi" role="0kSFW">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
              <node concept="2OqwBi" id="EMWAvBfPHj" role="0kSFX">
                <node concept="2WthIp" id="EMWAvBfPHk" role="2Oq$k0" />
                <node concept="1DTwFV" id="EMWAvBfPHl" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBfOFv" resolve="treeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EMWAvBfPHm" role="3cqZAp">
          <node concept="3clFbS" id="EMWAvBfPHn" role="3clFbx">
            <node concept="3cpWs6" id="EMWAvBfPHo" role="3cqZAp">
              <node concept="3clFbT" id="EMWAvBfPHp" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="EMWAvBfPHq" role="3clFbw">
            <node concept="10Nm6u" id="EMWAvBfPHr" role="3uHU7w" />
            <node concept="37vLTw" id="EMWAvBfPHs" role="3uHU7B">
              <ref role="3cqZAo" node="EMWAvBfPHf" resolve="nodeTreeNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBfPHt" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBfPHu" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="EMWAvBfPHv" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="EMWAvBfPHw" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBfPHx" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBfPHf" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="EMWAvBfPHy" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBfPHz" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBfPH$" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="EMWAvBfPH_" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="EMWAvBfPHA" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBfPHB" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBfPHu" resolve="node" />
              </node>
              <node concept="liA8E" id="EMWAvBfPHC" role="2OqNvi">
                <ref role="37wK5l" to="mjcn:5gTrVpGjdrb" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2lKlK7f2rqn" role="3cqZAp">
          <node concept="3clFbS" id="2lKlK7f2rqp" role="3clFbx">
            <node concept="3cpWs6" id="2lKlK7f2rXo" role="3cqZAp">
              <node concept="3clFbT" id="2lKlK7f2s4D" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2lKlK7f2rR0" role="3clFbw">
            <node concept="37vLTw" id="2lKlK7f2rtS" role="3uHU7B">
              <ref role="3cqZAo" node="EMWAvBfPH$" resolve="concept" />
            </node>
            <node concept="10Nm6u" id="2lKlK7f2rOi" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="EMWAvBfPHD" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBfPHE" role="3cqZAk">
            <node concept="37vLTw" id="EMWAvBfPHF" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfPH$" resolve="concept" />
            </node>
            <node concept="liA8E" id="EMWAvBfPHG" role="2OqNvi">
              <ref role="37wK5l" to="mjcn:5gTrVpGiXQU" resolve="isSubconceptOf" />
              <node concept="2YIFZM" id="EMWAvBfPHH" role="37wK5m">
                <ref role="37wK5l" to="l6bp:3ECE8iPOmg5" resolve="wrap" />
                <ref role="1Pybhc" to="l6bp:5gTrVpGjuL2" resolve="SConceptAdapter" />
                <node concept="35c_gC" id="EMWAvBfPHI" role="37wK5m">
                  <ref role="35c_gD" to="dj5d:qmkA5fOskf" resolve="Module" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

