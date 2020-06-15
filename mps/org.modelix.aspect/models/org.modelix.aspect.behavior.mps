<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:17a7af0b-7a93-4688-b13e-195872d8e289(org.modelix.aspect.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="eaz0" ref="c740997f-28c0-47e8-9b5a-e87dfdb17a21/java:javax.xml.bind(de.q60.mps.web.jersey/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="79yt" ref="r:ded575ba-957a-4f7f-89f0-d9fc02ad1b0c(org.modelix.aspect.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
  <node concept="13h7C7" id="wa_gCmoW9N">
    <ref role="13h7C2" to="79yt:wa_gCmoW26" resolve="CloudModelDefinition" />
    <node concept="13i0hz" id="wa_gCmoW9Y" role="13h7CS">
      <property role="TrG5h" value="computeCloudModelId" />
      <node concept="3Tm1VV" id="wa_gCmoW9Z" role="1B3o_S" />
      <node concept="17QB3L" id="wa_gCmoWae" role="3clF45" />
      <node concept="3clFbS" id="wa_gCmoWa1" role="3clF47">
        <node concept="3J1_TO" id="8pH3FQ2B5J" role="3cqZAp">
          <node concept="3clFbS" id="8pH3FQ2B5L" role="1zxBo7">
            <node concept="3cpWs8" id="8pH3FQ2lDm" role="3cqZAp">
              <node concept="3cpWsn" id="8pH3FQ2lDn" role="3cpWs9">
                <property role="TrG5h" value="digest" />
                <node concept="3uibUv" id="8pH3FQ2lDl" role="1tU5fm">
                  <ref role="3uigEE" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                </node>
                <node concept="2YIFZM" id="8pH3FQ2lDo" role="33vP2m">
                  <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                  <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
                  <node concept="Xl_RD" id="8pH3FQ2lDp" role="37wK5m">
                    <property role="Xl_RC" value="SHA-256" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8pH3FQ2lsH" role="3cqZAp">
              <node concept="2OqwBi" id="8pH3FQ2lYa" role="3clFbG">
                <node concept="37vLTw" id="8pH3FQ2lDq" role="2Oq$k0">
                  <ref role="3cqZAo" node="8pH3FQ2lDn" resolve="digest" />
                </node>
                <node concept="liA8E" id="8pH3FQ2me3" role="2OqNvi">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte[])" resolve="update" />
                  <node concept="2OqwBi" id="wa_gCmpliN" role="37wK5m">
                    <node concept="2OqwBi" id="wa_gCmpkvk" role="2Oq$k0">
                      <node concept="2OqwBi" id="wa_gCmpihs" role="2Oq$k0">
                        <node concept="2JrnkZ" id="wa_gCmpi23" role="2Oq$k0">
                          <node concept="13iPFW" id="wa_gCmphgw" role="2JrQYb" />
                        </node>
                        <node concept="liA8E" id="wa_gCmpi_m" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                        </node>
                      </node>
                      <node concept="liA8E" id="wa_gCmpkJ4" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="liA8E" id="wa_gCmplC$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                      <node concept="10M0yZ" id="wa_gCmpmdI" role="37wK5m">
                        <ref role="3cqZAo" to="7x5y:~StandardCharsets.UTF_8" resolve="UTF_8" />
                        <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="8pH3FQ2zym" role="3cqZAp">
              <node concept="3cpWsn" id="8pH3FQ2zyn" role="3cpWs9">
                <property role="TrG5h" value="sha256Bytes" />
                <node concept="10Q1$e" id="8pH3FQ2zyc" role="1tU5fm">
                  <node concept="10PrrI" id="8pH3FQ2zyf" role="10Q1$1" />
                </node>
                <node concept="2OqwBi" id="8pH3FQ2zyo" role="33vP2m">
                  <node concept="37vLTw" id="8pH3FQ2zyp" role="2Oq$k0">
                    <ref role="3cqZAo" node="8pH3FQ2lDn" resolve="digest" />
                  </node>
                  <node concept="liA8E" id="8pH3FQ2zyq" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.digest()" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6sqLxIGHh5P" role="3cqZAp">
              <node concept="2YIFZM" id="wa_gCmpobi" role="3cqZAk">
                <ref role="1Pybhc" to="eaz0:~DatatypeConverter" resolve="DatatypeConverter" />
                <ref role="37wK5l" to="eaz0:~DatatypeConverter.printHexBinary(byte[])" resolve="printHexBinary" />
                <node concept="37vLTw" id="wa_gCmpobj" role="37wK5m">
                  <ref role="3cqZAo" node="8pH3FQ2zyn" resolve="sha256Bytes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="8pH3FQ2B5M" role="1zxBo5">
            <node concept="XOnhg" id="8pH3FQ2B5O" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="cenUPJ5WUiJ" role="1tU5fm">
                <node concept="3uibUv" id="8pH3FQ2BvO" role="nSUat">
                  <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="8pH3FQ2B5S" role="1zc67A">
              <node concept="YS8fn" id="8pH3FQ2BEl" role="3cqZAp">
                <node concept="2ShNRf" id="8pH3FQ2BEA" role="YScLw">
                  <node concept="1pGfFk" id="8pH3FQ2BQ2" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="8pH3FQ2BU3" role="37wK5m">
                      <ref role="3cqZAo" node="8pH3FQ2B5O" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="wa_gCmppOO" role="13h7CS">
      <property role="TrG5h" value="getCloudModelId" />
      <node concept="3Tm1VV" id="wa_gCmppOP" role="1B3o_S" />
      <node concept="17QB3L" id="wa_gCmpqax" role="3clF45" />
      <node concept="3clFbS" id="wa_gCmppOR" role="3clF47">
        <node concept="3clFbF" id="wa_gCmpAHs" role="3cqZAp">
          <node concept="3K4zz7" id="wa_gCmpC$e" role="3clFbG">
            <node concept="2OqwBi" id="wa_gCmpCKR" role="3K4E3e">
              <node concept="13iPFW" id="wa_gCmpCI0" role="2Oq$k0" />
              <node concept="3TrcHB" id="wa_gCmpD6H" role="2OqNvi">
                <ref role="3TsBF5" to="79yt:wa_gCmppc_" resolve="cloudModelId" />
              </node>
            </node>
            <node concept="2OqwBi" id="wa_gCmpDU5" role="3K4GZi">
              <node concept="13iPFW" id="wa_gCmpD79" role="2Oq$k0" />
              <node concept="3TrcHB" id="wa_gCmpEih" role="2OqNvi">
                <ref role="3TsBF5" to="79yt:wa_gCmoW6H" resolve="computedCloudModelId" />
              </node>
            </node>
            <node concept="2OqwBi" id="wa_gCmpBvO" role="3K4Cdx">
              <node concept="2OqwBi" id="wa_gCmpAQ6" role="2Oq$k0">
                <node concept="13iPFW" id="wa_gCmpAHr" role="2Oq$k0" />
                <node concept="3TrcHB" id="wa_gCmpB0x" role="2OqNvi">
                  <ref role="3TsBF5" to="79yt:wa_gCmppc_" resolve="cloudModelId" />
                </node>
              </node>
              <node concept="17RvpY" id="wa_gCmpBZ8" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="wa_gCmoW9O" role="13h7CW">
      <node concept="3clFbS" id="wa_gCmoW9P" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="wa_gCmpWYT" role="13h7CS">
      <property role="TrG5h" value="generatedClassName" />
      <node concept="3Tm1VV" id="wa_gCmpWYU" role="1B3o_S" />
      <node concept="17QB3L" id="wa_gCmpXiB" role="3clF45" />
      <node concept="3clFbS" id="wa_gCmpWYW" role="3clF47">
        <node concept="3clFbF" id="wa_gCmpXlX" role="3cqZAp">
          <node concept="3cpWs3" id="wa_gCmpXtd" role="3clFbG">
            <node concept="Xl_RD" id="wa_gCmpXu1" role="3uHU7B">
              <property role="Xl_RC" value="CloudModel_" />
            </node>
            <node concept="2YIFZM" id="wa_gCmpXnZ" role="3uHU7w">
              <ref role="37wK5l" to="18ew:~NameUtil.toValidIdentifier(java.lang.String)" resolve="toValidIdentifier" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="wa_gCmspKT" role="37wK5m">
                <node concept="13iPFW" id="wa_gCmspxN" role="2Oq$k0" />
                <node concept="3TrcHB" id="wa_gCmsq13" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="wa_gCmpXAy" role="13h7CS">
      <property role="TrG5h" value="generatedFqClassName" />
      <node concept="3Tm1VV" id="wa_gCmpXAz" role="1B3o_S" />
      <node concept="17QB3L" id="wa_gCmpY0D" role="3clF45" />
      <node concept="3clFbS" id="wa_gCmpXA_" role="3clF47">
        <node concept="3clFbF" id="wa_gCmpY3J" role="3cqZAp">
          <node concept="3cpWs3" id="wa_gCmpZ0e" role="3clFbG">
            <node concept="BsUDl" id="wa_gCmpZ1a" role="3uHU7w">
              <ref role="37wK5l" node="wa_gCmpWYT" resolve="generatedClassName" />
            </node>
            <node concept="3cpWs3" id="wa_gCmpYOa" role="3uHU7B">
              <node concept="2OqwBi" id="wa_gCmpYI_" role="3uHU7B">
                <node concept="2OqwBi" id="wa_gCmpYej" role="2Oq$k0">
                  <node concept="13iPFW" id="wa_gCmpY3I" role="2Oq$k0" />
                  <node concept="I4A8Y" id="wa_gCmpYoI" role="2OqNvi" />
                </node>
                <node concept="LkI2h" id="wa_gCmpYNC" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="wa_gCmpYOd" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3XNyhUad$Q3">
    <property role="3GE5qa" value="httpPage" />
    <ref role="13h7C2" to="79yt:3XNyhUa8oNE" resolve="HttpPage" />
    <node concept="13hLZK" id="3XNyhUad$Q4" role="13h7CW">
      <node concept="3clFbS" id="3XNyhUad$Q5" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3XNyhUadALT" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="3XNyhUadAM6" role="1B3o_S" />
      <node concept="3clFbS" id="3XNyhUadAM7" role="3clF47">
        <node concept="3clFbF" id="3XNyhUadARn" role="3cqZAp">
          <node concept="3cpWs3" id="3XNyhUadCiI" role="3clFbG">
            <node concept="Xl_RD" id="3XNyhUadCiL" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="3XNyhUadCMc" role="3uHU7B">
              <node concept="3cpWs3" id="3XNyhUadBUR" role="3uHU7B">
                <node concept="2OqwBi" id="3XNyhUadBqz" role="3uHU7B">
                  <node concept="2OqwBi" id="3XNyhUadAZb" role="2Oq$k0">
                    <node concept="13iPFW" id="3XNyhUadARm" role="2Oq$k0" />
                    <node concept="2yIwOk" id="3XNyhUadB7W" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="3XNyhUadBEK" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3XNyhUadBUU" role="3uHU7w">
                  <property role="Xl_RC" value="[" />
                </node>
              </node>
              <node concept="2OqwBi" id="3XNyhUadD6A" role="3uHU7w">
                <node concept="13iPFW" id="3XNyhUadCSV" role="2Oq$k0" />
                <node concept="2qgKlT" id="6MQUJsz41s9" role="2OqNvi">
                  <ref role="37wK5l" node="6MQUJsz4004" resolve="getUrlDescription" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3XNyhUadAM8" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6MQUJsz4004" role="13h7CS">
      <property role="TrG5h" value="getUrlDescription" />
      <node concept="3Tm1VV" id="6MQUJsz4005" role="1B3o_S" />
      <node concept="17QB3L" id="6MQUJsz407o" role="3clF45" />
      <node concept="3clFbS" id="6MQUJsz4007" role="3clF47">
        <node concept="3cpWs8" id="6MQUJsz40bQ" role="3cqZAp">
          <node concept="3cpWsn" id="6MQUJsz40bR" role="3cpWs9">
            <property role="TrG5h" value="paramStr" />
            <node concept="17QB3L" id="6MQUJsz40bS" role="1tU5fm" />
            <node concept="2OqwBi" id="6MQUJsz40bT" role="33vP2m">
              <node concept="2OqwBi" id="6MQUJsz40bU" role="2Oq$k0">
                <node concept="2OqwBi" id="6MQUJsz40bV" role="2Oq$k0">
                  <node concept="13iPFW" id="6MQUJsz40bW" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6MQUJsz40bX" role="2OqNvi">
                    <ref role="3TtcxE" to="79yt:3XNyhUabOze" resolve="parameters" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6MQUJsz40bY" role="2OqNvi">
                  <node concept="1bVj0M" id="6MQUJsz40bZ" role="23t8la">
                    <node concept="3clFbS" id="6MQUJsz40c0" role="1bW5cS">
                      <node concept="3clFbF" id="6MQUJsz40c1" role="3cqZAp">
                        <node concept="3cpWs3" id="6MQUJsz40c2" role="3clFbG">
                          <node concept="Xl_RD" id="6MQUJsz40c3" role="3uHU7w">
                            <property role="Xl_RC" value="=..." />
                          </node>
                          <node concept="2OqwBi" id="6MQUJsz40c4" role="3uHU7B">
                            <node concept="37vLTw" id="6MQUJsz40c5" role="2Oq$k0">
                              <ref role="3cqZAo" node="6MQUJsz40c7" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6MQUJsz40c6" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6MQUJsz40c7" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6MQUJsz40c8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uJxvA" id="6MQUJsz40c9" role="2OqNvi">
                <node concept="Xl_RD" id="6MQUJsz40ca" role="3uJOhx">
                  <property role="Xl_RC" value="&amp;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6MQUJsz40cb" role="3cqZAp">
          <node concept="3clFbS" id="6MQUJsz40cc" role="3clFbx">
            <node concept="3clFbF" id="6MQUJsz40cd" role="3cqZAp">
              <node concept="37vLTI" id="6MQUJsz40ce" role="3clFbG">
                <node concept="3cpWs3" id="6MQUJsz40cf" role="37vLTx">
                  <node concept="37vLTw" id="6MQUJsz40cg" role="3uHU7w">
                    <ref role="3cqZAo" node="6MQUJsz40bR" resolve="paramStr" />
                  </node>
                  <node concept="Xl_RD" id="6MQUJsz40ch" role="3uHU7B">
                    <property role="Xl_RC" value="?" />
                  </node>
                </node>
                <node concept="37vLTw" id="6MQUJsz40ci" role="37vLTJ">
                  <ref role="3cqZAo" node="6MQUJsz40bR" resolve="paramStr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6MQUJsz40cj" role="3clFbw">
            <node concept="37vLTw" id="6MQUJsz40ck" role="2Oq$k0">
              <ref role="3cqZAo" node="6MQUJsz40bR" resolve="paramStr" />
            </node>
            <node concept="17RvpY" id="6MQUJsz40cl" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6MQUJsz40PP" role="3cqZAp">
          <node concept="3cpWs3" id="6MQUJsz414f" role="3clFbG">
            <node concept="37vLTw" id="6MQUJsz41c1" role="3uHU7w">
              <ref role="3cqZAo" node="6MQUJsz40bR" resolve="paramStr" />
            </node>
            <node concept="2OqwBi" id="6MQUJsz4104" role="3uHU7B">
              <node concept="13iPFW" id="6MQUJsz40PN" role="2Oq$k0" />
              <node concept="3TrcHB" id="6MQUJsz412d" role="2OqNvi">
                <ref role="3TsBF5" to="79yt:3XNyhUa8oNU" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6MQUJsyVeI9">
    <property role="3GE5qa" value="httpPage" />
    <ref role="13h7C2" to="79yt:3XNyhUa8p1K" resolve="HttpPageParameterType" />
    <node concept="13i0hz" id="6MQUJsyVeIY" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getJavaType" />
      <node concept="3Tm1VV" id="6MQUJsyVeIZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="6MQUJsyVeJi" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="6MQUJsyVeJ1" role="3clF47">
        <node concept="3clFbF" id="6MQUJsyVeSV" role="3cqZAp">
          <node concept="2c44tf" id="6MQUJsyVeST" role="3clFbG">
            <node concept="3uibUv" id="6MQUJsyVeVX" role="2c44tc">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6MQUJsyVeIa" role="13h7CW">
      <node concept="3clFbS" id="6MQUJsyVeIb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6MQUJsyVeXo">
    <property role="3GE5qa" value="httpPage" />
    <ref role="13h7C2" to="79yt:3XNyhUa8p2g" resolve="NodeHttpPageParameterType" />
    <node concept="13hLZK" id="6MQUJsyVeXp" role="13h7CW">
      <node concept="3clFbS" id="6MQUJsyVeXq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6MQUJsyVeYP" role="13h7CS">
      <property role="TrG5h" value="getJavaType" />
      <ref role="13i0hy" node="6MQUJsyVeIY" resolve="getJavaType" />
      <node concept="3Tm1VV" id="6MQUJsyVeYQ" role="1B3o_S" />
      <node concept="3clFbS" id="6MQUJsyVeYW" role="3clF47">
        <node concept="3clFbF" id="6MQUJsyVf6z" role="3cqZAp">
          <node concept="2pJPEk" id="6MQUJsyVf6x" role="3clFbG">
            <node concept="2pJPED" id="6MQUJsyVmjC" role="2pJPEn">
              <ref role="2pJxaS" to="tp25:gzTqbfa" resolve="SNodeType" />
              <node concept="2pIpSj" id="6MQUJsyVmkX" role="2pJxcM">
                <ref role="2pIpSl" to="tp25:g$ehGDh" resolve="concept" />
                <node concept="36biLy" id="6MQUJsyVmnz" role="28nt2d">
                  <node concept="2OqwBi" id="6MQUJsyVmAV" role="36biLW">
                    <node concept="13iPFW" id="6MQUJsyVmre" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6MQUJsyVmNI" role="2OqNvi">
                      <ref role="3Tt5mk" to="79yt:3XNyhUa8p2w" resolve="concept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="6MQUJsyVeYX" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
  </node>
</model>

