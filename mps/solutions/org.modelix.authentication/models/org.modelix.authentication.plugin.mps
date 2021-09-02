<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d08664e2-1f34-4206-af22-5f6ebb6628cd(org.modelix.authentication.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="1e7c1f95-336c-4cec-b00e-8cc6e0c2b265" name="com.mbeddr.mpsutil.preferenceform" version="0" />
    <use id="23f985f2-965f-4af1-aee8-a32677429514" name="com.mbeddr.mpsutil.multilingual.common" version="0" />
    <use id="c3bfea76-7bba-4f0e-b5a2-ff4e7a8d7cf1" name="com.mbeddr.mpsutil.spreferences" version="0" />
  </languages>
  <imports>
    <import index="4h87" ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)" />
    <import index="9xw8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.handler.codec.http(MPS.IDEA/)" />
    <import index="8bn5" ref="r:7fa64b2e-9276-48d0-83e8-bd0a49298c05(jetbrains.mps.ide.httpsupport.nodeaccess.plugin)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="btn2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.impl(MPS.IDEA/)" />
    <import index="l2a6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.conversion.impl(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
      </concept>
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d2a1d976-43a2-462f-ac3a-9b258ced839d" name="com.mbeddr.mpsutil.multilingual.baseLanguage">
      <concept id="2510545900188478754" name="com.mbeddr.mpsutil.multilingual.baseLanguage.structure.MultilingualJavaString" flags="ng" index="3ZQQOj" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="23f985f2-965f-4af1-aee8-a32677429514" name="com.mbeddr.mpsutil.multilingual.common">
      <concept id="568377005202317274" name="com.mbeddr.mpsutil.multilingual.common.structure.ResourceBundle" flags="ng" index="3MtHw5">
        <property id="6737939145712380461" name="baseName" index="1JSPRp" />
        <property id="568377005202317275" name="keyPrefix" index="3MtHw4" />
        <child id="568377005202317276" name="keys" index="3MtHw3" />
      </concept>
      <concept id="568377005202317270" name="com.mbeddr.mpsutil.multilingual.common.structure.MessageKey" flags="ng" index="3MtHw9">
        <property id="568377005202317272" name="default" index="3MtHw7" />
        <property id="568377005202317271" name="technicalKey" index="3MtHw8" />
      </concept>
      <concept id="2510545900188083931" name="com.mbeddr.mpsutil.multilingual.common.structure.IMessageKeyHolder" flags="ng" index="3ZOmrE">
        <reference id="2510545900188083932" name="key" index="3ZOmrH" />
      </concept>
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
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
    </language>
    <language id="1e7c1f95-336c-4cec-b00e-8cc6e0c2b265" name="com.mbeddr.mpsutil.preferenceform">
      <concept id="145956936283289547" name="com.mbeddr.mpsutil.preferenceform.structure.PreferenceForm" flags="ng" index="1DFvN4">
        <child id="145956936283569518" name="properties" index="1DEjpx" />
      </concept>
      <concept id="145956936284064811" name="com.mbeddr.mpsutil.preferenceform.structure.AbstractPreferenceFormProperty" flags="ng" index="1DGss$">
        <child id="8884256830696181817" name="label" index="XGeyX" />
      </concept>
      <concept id="145956936284064820" name="com.mbeddr.mpsutil.preferenceform.structure.TextFieldPreferenceFormProperty" flags="ng" index="1DGssV">
        <property id="145956936284064821" name="defaultValue" index="1DGssU" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="1yokyoYyZSz">
    <property role="TrG5h" value="AuthenticationService" />
    <node concept="2uRRBj" id="1yokyoYyZS$" role="2uRRBE">
      <node concept="3clFbS" id="1yokyoYyZS_" role="2VODD2">
        <node concept="abc8K" id="7HQRnQ5zDs8" role="3cqZAp">
          <node concept="Xl_RD" id="7HQRnQ5zDsz" role="abp_N">
            <property role="Xl_RC" value="AUTHENTICATION SERVICE" />
          </node>
        </node>
        <node concept="3clFbF" id="1yokyoYz2r2" role="3cqZAp">
          <node concept="2YIFZM" id="1yokyoYz2r$" role="3clFbG">
            <ref role="37wK5l" node="1yokyoYz2gC" resolve="initialize" />
            <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1yokyoYyZSK">
    <property role="TrG5h" value="AuthenticationManager" />
    <node concept="2tJIrI" id="7f6_nf_ukTf" role="jymVt" />
    <node concept="Wx3nA" id="7f6_nf_ul8n" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7f6_nf_ukXO" role="1B3o_S" />
      <node concept="2ShNRf" id="7f6_nf_ulfZ" role="33vP2m">
        <node concept="HV5vD" id="7f6_nf_ul_J" role="2ShVmc">
          <ref role="HV5vE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
        </node>
      </node>
      <node concept="3uibUv" id="7f6_nf_ulfu" role="1tU5fm">
        <ref role="3uigEE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_ulL0" role="jymVt" />
    <node concept="2YIFZL" id="7f6_nf_ulX8" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="7f6_nf_ulXb" role="3clF47">
        <node concept="3cpWs6" id="7f6_nf_um8r" role="3cqZAp">
          <node concept="37vLTw" id="7f6_nf_um8Z" role="3cqZAk">
            <ref role="3cqZAo" node="7f6_nf_ul8n" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7f6_nf_ulPA" role="1B3o_S" />
      <node concept="3uibUv" id="7f6_nf_um4E" role="3clF45">
        <ref role="3uigEE" node="1yokyoYyZSK" resolve="AuthenticationManager" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_ukTW" role="jymVt" />
    <node concept="2YIFZL" id="1yokyoYz2gC" role="jymVt">
      <property role="TrG5h" value="initialize" />
      <node concept="3clFbS" id="1yokyoYz2gF" role="3clF47" />
      <node concept="3cqZAl" id="1yokyoYz2k9" role="3clF45" />
      <node concept="3Tm1VV" id="1yokyoYz2ks" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_um9x" role="jymVt" />
    <node concept="312cEg" id="7f6_nf_umnI" role="jymVt">
      <property role="TrG5h" value="token" />
      <node concept="3Tm6S6" id="7f6_nf_umft" role="1B3o_S" />
      <node concept="17QB3L" id="7f6_nf_umnu" role="1tU5fm" />
      <node concept="10Nm6u" id="7f6_nf_umpp" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_uiJb" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_ukOD" role="jymVt">
      <property role="TrG5h" value="hasValidToken" />
      <node concept="3clFbS" id="7f6_nf_ukOG" role="3clF47">
        <node concept="3SKdUt" id="7f6_nf_uncH" role="3cqZAp">
          <node concept="1PaTwC" id="7f6_nf_uncI" role="1aUNEU">
            <node concept="3oM_SD" id="7f6_nf_uncJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_uncT" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unex" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_une_" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_uneM" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unf8" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unfn" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="7f6_nf_unfv" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7f6_nf_ukSH" role="3cqZAp">
          <node concept="3y3z36" id="7f6_nf_umHL" role="3cqZAk">
            <node concept="10Nm6u" id="7f6_nf_umVS" role="3uHU7w" />
            <node concept="37vLTw" id="7f6_nf_umq5" role="3uHU7B">
              <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6_nf_uiNm" role="1B3o_S" />
      <node concept="10P_77" id="7f6_nf_ukOu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6_nf_unfQ" role="jymVt" />
    <node concept="3clFb_" id="7f6_nf_unuU" role="jymVt">
      <property role="TrG5h" value="obtainNewToken" />
      <node concept="3clFbS" id="7f6_nf_unuX" role="3clF47">
        <node concept="3clFbH" id="7f6_nf_vOrd" role="3cqZAp" />
        <node concept="3clFbJ" id="7f6_nf_vlBh" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_vlBj" role="3clFbx">
            <node concept="3cpWs8" id="7f6_nf_vQsu" role="3cqZAp">
              <node concept="3cpWsn" id="7f6_nf_vQsx" role="3cpWs9">
                <property role="TrG5h" value="url" />
                <node concept="17QB3L" id="7f6_nf_vQss" role="1tU5fm" />
                <node concept="2OqwBi" id="7f6_nf_vQ43" role="33vP2m">
                  <node concept="2YIFZM" id="7f6_nf_vWI8" role="2Oq$k0">
                    <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                    <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
                    <node concept="37vLTw" id="7f6_nf_vWI9" role="37wK5m">
                      <ref role="3cqZAo" node="7f6_nf_vT7l" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7f6_nf_vQi6" role="2OqNvi">
                    <ref role="37wK5l" to="jmi8:~PropertiesComponent.getValue(java.lang.String)" resolve="getValue" />
                    <node concept="Xl_RD" id="7f6_nf_vQkk" role="37wK5m">
                      <property role="Xl_RC" value="org.modelix.authentication.plugin.OAuthProxyURL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="7f6_nf_voK5" role="3cqZAp">
              <node concept="3clFbS" id="7f6_nf_voK6" role="1zxBo7">
                <node concept="3clFbF" id="7f6_nf_vnE_" role="3cqZAp">
                  <node concept="2OqwBi" id="7f6_nf_vnJt" role="3clFbG">
                    <node concept="2YIFZM" id="7f6_nf_vnEX" role="2Oq$k0">
                      <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                      <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                    </node>
                    <node concept="liA8E" id="7f6_nf_vnRq" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Desktop.browse(java.net.URI)" resolve="browse" />
                      <node concept="2ShNRf" id="7f6_nf_vnTf" role="37wK5m">
                        <node concept="1pGfFk" id="7f6_nf_vo_H" role="2ShVmc">
                          <ref role="37wK5l" to="zf81:~URI.&lt;init&gt;(java.lang.String)" resolve="URI" />
                          <node concept="37vLTw" id="7f6_nf_xzV1" role="37wK5m">
                            <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7f6_nf_voK8" role="1zxBo5">
                <node concept="3clFbS" id="7f6_nf_voK9" role="1zc67A">
                  <node concept="YS8fn" id="7f6_nf_vp0O" role="3cqZAp">
                    <node concept="2ShNRf" id="7f6_nf_vp1U" role="YScLw">
                      <node concept="1pGfFk" id="7f6_nf_vps_" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="Xl_RD" id="7f6_nf_vpzE" role="37wK5m">
                          <property role="Xl_RC" value="Unable to open browser correctly" />
                        </node>
                        <node concept="37vLTw" id="7f6_nf_vpLd" role="37wK5m">
                          <ref role="3cqZAo" node="7f6_nf_voKa" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="XOnhg" id="7f6_nf_voKa" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="7f6_nf_voKb" role="1tU5fm">
                    <node concept="3uibUv" id="7f6_nf_voK7" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7f6_nf_vpPJ" role="1zxBo5">
                <node concept="3clFbS" id="7f6_nf_vpPK" role="1zc67A">
                  <node concept="YS8fn" id="7f6_nf_vpTM" role="3cqZAp">
                    <node concept="2ShNRf" id="7f6_nf_vpTN" role="YScLw">
                      <node concept="1pGfFk" id="7f6_nf_vpTO" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="3cpWs3" id="7f6_nf_x$ep" role="37wK5m">
                          <node concept="37vLTw" id="7f6_nf_x$u9" role="3uHU7w">
                            <ref role="3cqZAo" node="7f6_nf_vQsx" resolve="url" />
                          </node>
                          <node concept="Xl_RD" id="7f6_nf_vpTP" role="3uHU7B">
                            <property role="Xl_RC" value="Incorrect URI: " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7f6_nf_vpTQ" role="37wK5m">
                          <ref role="3cqZAo" node="7f6_nf_vpPL" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="XOnhg" id="7f6_nf_vpPL" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="7f6_nf_vpPM" role="1tU5fm">
                    <node concept="3uibUv" id="7f6_nf_vpPI" role="nSUat">
                      <ref role="3uigEE" to="zf81:~URISyntaxException" resolve="URISyntaxException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7f6_nf_vm3u" role="3clFbw">
            <node concept="2OqwBi" id="7f6_nf_vmfh" role="3uHU7w">
              <node concept="2YIFZM" id="7f6_nf_vm9e" role="2Oq$k0">
                <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
              </node>
              <node concept="liA8E" id="7f6_nf_vmmO" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Desktop.isSupported(java.awt.Desktop$Action)" resolve="isSupported" />
                <node concept="Rm8GO" id="7f6_nf_vmuD" role="37wK5m">
                  <ref role="Rm8GQ" to="z60i:~Desktop$Action.BROWSE" resolve="BROWSE" />
                  <ref role="1Px2BO" to="z60i:~Desktop$Action" resolve="Desktop.Action" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="7f6_nf_vlOa" role="3uHU7B">
              <ref role="37wK5l" to="z60i:~Desktop.isDesktopSupported()" resolve="isDesktopSupported" />
              <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
            </node>
          </node>
          <node concept="9aQIb" id="7f6_nf_vmvS" role="9aQIa">
            <node concept="3clFbS" id="7f6_nf_vmvT" role="9aQI4">
              <node concept="YS8fn" id="7f6_nf_vm$Z" role="3cqZAp">
                <node concept="2ShNRf" id="7f6_nf_vmAl" role="YScLw">
                  <node concept="1pGfFk" id="7f6_nf_vngo" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="Xl_RD" id="7f6_nf_vnll" role="37wK5m">
                      <property role="Xl_RC" value="No Desktop access to browse" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="7f6_nf_uo72" role="3cqZAp">
          <node concept="2ShNRf" id="7f6_nf_uo7e" role="YScLw">
            <node concept="1pGfFk" id="7f6_nf_uoi_" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7f6_nf_unoP" role="1B3o_S" />
      <node concept="3cqZAl" id="7f6_nf_unSG" role="3clF45" />
      <node concept="37vLTG" id="7f6_nf_vT7l" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7f6_nf_vWYt" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6_nf_uiJC" role="jymVt" />
    <node concept="3clFb_" id="1yokyoYz3Y3" role="jymVt">
      <property role="TrG5h" value="getToken" />
      <node concept="37vLTG" id="7f6_nf_vX19" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7f6_nf_vX1a" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1yokyoYz3Y6" role="3clF47">
        <node concept="3clFbJ" id="7f6_nf_un0F" role="3cqZAp">
          <node concept="3clFbS" id="7f6_nf_un0H" role="3clFbx">
            <node concept="3cpWs6" id="7f6_nf_un5X" role="3cqZAp">
              <node concept="37vLTw" id="7f6_nf_un6b" role="3cqZAk">
                <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7f6_nf_un1m" role="3clFbw">
            <ref role="37wK5l" node="7f6_nf_ukOD" resolve="hasValidToken" />
          </node>
          <node concept="9aQIb" id="7f6_nf_un2d" role="9aQIa">
            <node concept="3clFbS" id="7f6_nf_un2e" role="9aQI4">
              <node concept="3clFbF" id="7f6_nf_unGg" role="3cqZAp">
                <node concept="1rXfSq" id="7f6_nf_unGf" role="3clFbG">
                  <ref role="37wK5l" node="7f6_nf_unuU" resolve="obtainNewToken" />
                  <node concept="37vLTw" id="7f6_nf_vXcn" role="37wK5m">
                    <ref role="3cqZAo" node="7f6_nf_vX19" resolve="project" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7f6_nf_uo0u" role="3cqZAp">
                <node concept="37vLTw" id="7f6_nf_uo0I" role="3cqZAk">
                  <ref role="3cqZAo" node="7f6_nf_umnI" resolve="token" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1yokyoYz3Ur" role="1B3o_S" />
      <node concept="17QB3L" id="1yokyoYz41Y" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1yokyoYyZSL" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="70oIz4akzr4" />
  <node concept="pFx2x" id="1yokyoYz5xr">
    <property role="TrG5h" value="AuthenticationRequestHandler" />
    <node concept="std77" id="1yokyoYz5xs" role="std7D">
      <node concept="std78" id="1yokyoYz5$3" role="std7y">
        <property role="svBHv" value="modelixauth" />
      </node>
    </node>
    <node concept="pF8on" id="1yokyoYz5xt" role="pCJbe">
      <node concept="3clFbS" id="1yokyoYz5xu" role="2VODD2">
        <node concept="abc8K" id="1yokyoYz75U" role="3cqZAp">
          <node concept="Xl_RD" id="1yokyoYz766" role="abp_N">
            <property role="Xl_RC" value="WE GOT IT" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6NlwFoT4OaJ">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="AuthenticationGroup" />
    <node concept="ftmFs" id="6NlwFoT4OdX" role="ftER_">
      <node concept="tCFHf" id="6NlwFoT4Oe0" role="ftvYc">
        <ref role="tCJdB" node="6NlwFoT4O7g" resolve="GetToken" />
      </node>
    </node>
    <node concept="tT9cl" id="6NlwFoT4OdV" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
    </node>
  </node>
  <node concept="sE7Ow" id="6NlwFoT4O7g">
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="GetToken" />
    <property role="2uzpH1" value="Get Token" />
    <node concept="tnohg" id="6NlwFoT4O7h" role="tncku">
      <node concept="3clFbS" id="6NlwFoT4O7i" role="2VODD2">
        <node concept="3cpWs8" id="7f6_nf_vhCl" role="3cqZAp">
          <node concept="3cpWsn" id="7f6_nf_vhCo" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="17QB3L" id="7f6_nf_vhCj" role="1tU5fm" />
            <node concept="2OqwBi" id="7f6_nf_vhrZ" role="33vP2m">
              <node concept="2YIFZM" id="7f6_nf_vhnp" role="2Oq$k0">
                <ref role="1Pybhc" node="1yokyoYyZSK" resolve="AuthenticationManager" />
                <ref role="37wK5l" node="7f6_nf_ulX8" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7f6_nf_vhzz" role="2OqNvi">
                <ref role="37wK5l" node="1yokyoYz3Y3" resolve="getToken" />
                <node concept="2YIFZM" id="7f6_nf_xxV6" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="7f6_nf_xxWh" role="37wK5m">
                    <node concept="2WthIp" id="7f6_nf_xxWk" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7f6_nf_xxWm" role="2OqNvi">
                      <ref role="2WH_rO" node="6NlwFoT5eua" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="abc8K" id="7f6_nf_vhIl" role="3cqZAp">
          <node concept="Xl_RD" id="7f6_nf_vhJ9" role="abp_N">
            <property role="Xl_RC" value="TOKEN obtained: " />
          </node>
          <node concept="37vLTw" id="7f6_nf_vhLG" role="abp_N">
            <ref role="3cqZAo" node="7f6_nf_vhCo" resolve="token" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6NlwFoT5eua" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6NlwFoT5eub" role="1oa70y" />
    </node>
  </node>
  <node concept="1DFvN4" id="7f6_nf_vsMD">
    <property role="TrG5h" value="Modelix Authentication" />
    <property role="3GE5qa" value="preferences" />
    <node concept="1DGssV" id="7f6_nf_vsNj" role="1DEjpx">
      <property role="TrG5h" value="OAuthProxyURL" />
      <property role="1DGssU" value="http://google.com" />
      <node concept="17QB3L" id="7f6_nf_vsNk" role="1tU5fm" />
      <node concept="3ZQQOj" id="7f6_nf_vsP1" role="XGeyX">
        <ref role="3ZOmrH" node="7f6_nf_vuot" resolve="oauthserverurl" />
      </node>
      <node concept="Xl_RD" id="7f6_nf_vLbK" role="33vP2m">
        <property role="Xl_RC" value="http://google.com" />
      </node>
    </node>
  </node>
  <node concept="3MtHw5" id="7f6_nf_vuo9">
    <property role="TrG5h" value="ModelixAuthenticationResourceBundle" />
    <property role="1JSPRp" value="foo" />
    <property role="3MtHw4" value="bar" />
    <property role="3GE5qa" value="preferences" />
    <node concept="3MtHw9" id="7f6_nf_vuot" role="3MtHw3">
      <property role="3MtHw8" value=" " />
      <property role="TrG5h" value="oauthserverurl" />
      <property role="3MtHw7" value="OAuth Server URL" />
    </node>
  </node>
</model>

