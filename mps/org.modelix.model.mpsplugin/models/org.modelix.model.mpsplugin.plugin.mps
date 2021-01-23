<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38471075-de8a-4a91-a626-13195397f5c5(org.modelix.model.mpsplugin.plugin)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(de.q60.mps.web.model.mpsplugin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="um17" ref="r:f4bd718a-0e10-4b62-9f5d-6c915f7d4572(de.q60.mps.web.model.mpsplugin.history)" />
    <import index="4nil" ref="r:a50ac3a0-164c-48fd-b7af-208637427fd6(org.modelix.model.mpsplugin.projectview)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="w7di" ref="r:f1cc96fe-d6ef-4a58-b607-1b2e4d02e1de(org.modelix.model.runtimelang.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="ouht" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin.jvm.functions(org.modelix.model.client/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="69r2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.macro(MPS.IDEA/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="hvt5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model(org.modelix.model.client/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
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
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1">
        <child id="1227019158144" name="toStringFunction" index="2K2Cet" />
      </concept>
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1227019068586" name="jetbrains.mps.lang.plugin.structure.ToStringConceptFunction" flags="in" index="2K2imR" />
      <concept id="1227019310584" name="jetbrains.mps.lang.plugin.structure.ToStringParameter" flags="nn" index="2K3dj_" />
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
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
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
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
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224575136086" name="jetbrains.mps.baseLanguage.structure.EnumValueOfExpression" flags="nn" index="unr1b">
        <reference id="1224575174120" name="enumClass" index="un$jP" />
        <child id="1224575157853" name="value" index="unwt0" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265560" name="project" index="9lYEk" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="599357942184015200" name="jetbrains.mps.baseLanguage.collections.structure.AlsoSortOperation" flags="nn" index="1XvEQZ" />
    </language>
  </registry>
  <node concept="2DaZZR" id="26ispG7XkVU" />
  <node concept="2uRRBC" id="26ispG7XkVV">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="4rrX99okHlz" role="2uRRBG">
      <property role="TrG5h" value="bindAll" />
      <node concept="3Tm6S6" id="4rrX99okHl$" role="1B3o_S" />
      <node concept="3uibUv" id="4rrX99okHsP" role="1tU5fm">
        <ref role="3uigEE" node="4rrX99oiytR" resolve="BindAllModulesToTransient" />
      </node>
    </node>
    <node concept="2uRRBj" id="26ispG7ZZOJ" role="2uRRBE">
      <node concept="3clFbS" id="26ispG7ZZOK" role="2VODD2">
        <node concept="3J1_TO" id="4rrX99omHZy" role="3cqZAp">
          <node concept="3clFbS" id="4rrX99omHZ$" role="1zxBo7">
            <node concept="3cpWs8" id="5Le8ZRJdQ1a" role="3cqZAp">
              <node concept="3cpWsn" id="5Le8ZRJdQ1b" role="3cpWs9">
                <property role="TrG5h" value="executionModeString" />
                <node concept="17QB3L" id="5Le8ZRJdRdU" role="1tU5fm" />
                <node concept="2YIFZM" id="5Le8ZRJdQ1c" role="33vP2m">
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="Xl_RD" id="5Le8ZRJdQ1d" role="37wK5m">
                    <property role="Xl_RC" value="modelix.executionMode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Le8ZRJdYgs" role="3cqZAp">
              <node concept="3cpWsn" id="5Le8ZRJdYgt" role="3cpWs9">
                <property role="TrG5h" value="executionMode" />
                <node concept="3uibUv" id="5Le8ZRJdYgu" role="1tU5fm">
                  <ref role="3uigEE" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                </node>
                <node concept="Rm8GO" id="5Le8ZRJdYPq" role="33vP2m">
                  <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                  <ref role="Rm8GQ" node="5Le8ZRJdWMd" resolve="DEFAULT" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5Le8ZRJdRKn" role="3cqZAp">
              <node concept="3clFbS" id="5Le8ZRJdRKp" role="3clFbx">
                <node concept="3cpWs8" id="53_gmpoWTwi" role="3cqZAp">
                  <node concept="3cpWsn" id="53_gmpoWTwl" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="17QB3L" id="53_gmpoWTwg" role="1tU5fm" />
                    <node concept="2YIFZM" id="53_gmpoWU1U" role="33vP2m">
                      <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      <node concept="Xl_RD" id="53_gmpoWU1V" role="37wK5m">
                        <property role="Xl_RC" value="disable.autobinding" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="53_gmpoWUtZ" role="3cqZAp">
                  <node concept="3clFbS" id="53_gmpoWUu1" role="3clFbx">
                    <node concept="3clFbF" id="5Le8ZRJdVNi" role="3cqZAp">
                      <node concept="37vLTI" id="5Le8ZRJdWcU" role="3clFbG">
                        <node concept="Rm8GO" id="5Le8ZRJdYXp" role="37vLTx">
                          <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                          <ref role="Rm8GQ" node="5Le8ZRJdWrr" resolve="INTEGRATION_TESTS" />
                        </node>
                        <node concept="37vLTw" id="5Le8ZRJdZag" role="37vLTJ">
                          <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="53_gmpoWVdr" role="3clFbw">
                    <node concept="1eOMI4" id="53_gmpoWX3q" role="3uHU7w">
                      <node concept="17R0WA" id="53_gmpoWWye" role="1eOMHV">
                        <node concept="Xl_RD" id="53_gmpoWXc8" role="3uHU7w">
                          <property role="Xl_RC" value="true" />
                        </node>
                        <node concept="2OqwBi" id="53_gmpoWVmo" role="3uHU7B">
                          <node concept="37vLTw" id="53_gmpoWVgV" role="2Oq$k0">
                            <ref role="3cqZAo" node="53_gmpoWTwl" resolve="value" />
                          </node>
                          <node concept="liA8E" id="53_gmpoWWaQ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="53_gmpoWUUq" role="3uHU7B">
                      <node concept="37vLTw" id="53_gmpoWUMr" role="3uHU7B">
                        <ref role="3cqZAo" node="53_gmpoWTwl" resolve="value" />
                      </node>
                      <node concept="10Nm6u" id="53_gmpoWVad" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5Le8ZRJe1$z" role="3cqZAp" />
                <node concept="3clFbJ" id="5Le8ZRJe1M$" role="3cqZAp">
                  <node concept="3clFbS" id="5Le8ZRJe1MA" role="3clFbx">
                    <node concept="3clFbF" id="5Le8ZRJe3ak" role="3cqZAp">
                      <node concept="37vLTI" id="5Le8ZRJe3zN" role="3clFbG">
                        <node concept="Rm8GO" id="5Le8ZRJe3C7" role="37vLTx">
                          <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                          <ref role="Rm8GQ" node="5Le8ZRJe0YA" resolve="MODEL_EXPORT" />
                        </node>
                        <node concept="37vLTw" id="5Le8ZRJe3ai" role="37vLTJ">
                          <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5Le8ZRJe2j$" role="3clFbw">
                    <node concept="2YIFZM" id="5Le8ZRJe1RY" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                      <node concept="Xl_RD" id="5Le8ZRJe1RZ" role="37wK5m">
                        <property role="Xl_RC" value="modelix.export.path" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="5Le8ZRJe2XK" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbH" id="5Le8ZRJfMFr" role="3cqZAp" />
                <node concept="3clFbF" id="5Le8ZRJfMWP" role="3cqZAp">
                  <node concept="2YIFZM" id="5Le8ZRJfN4O" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <node concept="Xl_RD" id="5Le8ZRJfNb7" role="37wK5m">
                      <property role="Xl_RC" value="modelix.executionMode" />
                    </node>
                    <node concept="2OqwBi" id="5Le8ZRJfOe6" role="37wK5m">
                      <node concept="37vLTw" id="5Le8ZRJfNCx" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                      </node>
                      <node concept="liA8E" id="5Le8ZRJfOUg" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Enum.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5Le8ZRJdTCN" role="3clFbw">
                <node concept="37vLTw" id="5Le8ZRJdSgU" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Le8ZRJdQ1b" resolve="executionModeString" />
                </node>
                <node concept="17RlXB" id="5Le8ZRJdUEJ" role="2OqNvi" />
              </node>
              <node concept="9aQIb" id="5Le8ZRJe05L" role="9aQIa">
                <node concept="3clFbS" id="5Le8ZRJe05M" role="9aQI4">
                  <node concept="3J1_TO" id="5Le8ZRJeyPm" role="3cqZAp">
                    <node concept="3uVAMA" id="5Le8ZRJeyUk" role="1zxBo5">
                      <node concept="XOnhg" id="5Le8ZRJeyUl" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="5Le8ZRJeyUm" role="1tU5fm">
                          <node concept="3uibUv" id="5Le8ZRJez6N" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5Le8ZRJeyUn" role="1zc67A">
                        <node concept="RRSsy" id="5Le8ZRJezNX" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="3cpWs3" id="5Le8ZRJe$vV" role="RRSoy">
                            <node concept="37vLTw" id="5Le8ZRJe$_H" role="3uHU7w">
                              <ref role="3cqZAo" node="5Le8ZRJdQ1b" resolve="executionModeString" />
                            </node>
                            <node concept="Xl_RD" id="5Le8ZRJezNZ" role="3uHU7B">
                              <property role="Xl_RC" value="Unknown execution mode: " />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5Le8ZRJezUe" role="RRSow">
                            <ref role="3cqZAo" node="5Le8ZRJeyUl" resolve="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5Le8ZRJeyPo" role="1zxBo7">
                      <node concept="3clFbF" id="5Le8ZRJe0iE" role="3cqZAp">
                        <node concept="37vLTI" id="5Le8ZRJe0FX" role="3clFbG">
                          <node concept="unr1b" id="5Le8ZRJe0Ox" role="37vLTx">
                            <ref role="un$jP" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                            <node concept="37vLTw" id="5Le8ZRJe0SH" role="unwt0">
                              <ref role="3cqZAo" node="5Le8ZRJdQ1b" resolve="executionModeString" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5Le8ZRJe0iD" role="37vLTJ">
                            <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="nkanBut1bS" role="3cqZAp" />
            <node concept="3clFbF" id="5Le8ZRJeuvJ" role="3cqZAp">
              <node concept="2OqwBi" id="5Le8ZRJeuvG" role="3clFbG">
                <node concept="10M0yZ" id="5Le8ZRJeuvH" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5Le8ZRJeuvI" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="5Le8ZRJex9o" role="37wK5m">
                    <node concept="37vLTw" id="5Le8ZRJexB0" role="3uHU7w">
                      <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                    </node>
                    <node concept="Xl_RD" id="5Le8ZRJeuUE" role="3uHU7B">
                      <property role="Xl_RC" value="modelix execution mode: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Le8ZRJetLH" role="3cqZAp" />
            <node concept="3KaCP$" id="5Le8ZRJe5J3" role="3cqZAp">
              <node concept="37vLTw" id="5Le8ZRJe67f" role="3KbGdf">
                <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
              </node>
              <node concept="3KbdKl" id="5Le8ZRJe6bn" role="3KbHQx">
                <node concept="Rm8GO" id="5Le8ZRJe6fR" role="3Kbmr1">
                  <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                  <ref role="Rm8GQ" node="5Le8ZRJdWvX" resolve="CLUSTER" />
                </node>
                <node concept="3clFbS" id="5Le8ZRJe6kj" role="3Kbo56">
                  <node concept="3clFbH" id="5Le8ZRJe8OJ" role="3cqZAp" />
                  <node concept="3cpWs8" id="2dy3jLYpTzE" role="3cqZAp">
                    <node concept="3cpWsn" id="2dy3jLYpTzF" role="3cpWs9">
                      <property role="TrG5h" value="treeId" />
                      <node concept="17QB3L" id="2dy3jLYpXCP" role="1tU5fm" />
                      <node concept="2YIFZM" id="2dy3jLYpTzG" role="33vP2m">
                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <node concept="Xl_RD" id="2dy3jLYpTzH" role="37wK5m">
                          <property role="Xl_RC" value="TREE_ID" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2dy3jLYpT9i" role="3cqZAp">
                    <node concept="3clFbS" id="2dy3jLYpT9k" role="3clFbx">
                      <node concept="3clFbF" id="2dy3jLYrcPY" role="3cqZAp">
                        <node concept="37vLTI" id="2dy3jLYrcPZ" role="3clFbG">
                          <node concept="2ShNRf" id="2dy3jLYrcQ0" role="37vLTx">
                            <node concept="1pGfFk" id="2dy3jLYrcQ1" role="2ShVmc">
                              <ref role="37wK5l" node="4rrX99oiyDS" resolve="BindAllModulesToTransient" />
                              <node concept="2YIFZM" id="2dy3jLYrcQ2" role="37wK5m">
                                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                              </node>
                              <node concept="2ShNRf" id="2dy3jLYrlHH" role="37wK5m">
                                <node concept="2HTt$P" id="2dy3jLYrlHF" role="2ShVmc">
                                  <node concept="3uibUv" id="2dy3jLYrlHG" role="2HTBi0">
                                    <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
                                  </node>
                                  <node concept="2ShNRf" id="2dy3jLYrlMU" role="2HTEbv">
                                    <node concept="1pGfFk" id="2dy3jLYrmtW" role="2ShVmc">
                                      <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                                      <node concept="37vLTw" id="2dy3jLYrmv_" role="37wK5m">
                                        <ref role="3cqZAo" node="2dy3jLYpTzF" resolve="treeId" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2dy3jLYrcQ3" role="37vLTJ">
                            <node concept="2WthIp" id="2dy3jLYrcQ4" role="2Oq$k0" />
                            <node concept="2BZ7hE" id="2dy3jLYrcQ5" role="2OqNvi">
                              <ref role="2WH_rO" node="4rrX99okHlz" resolve="bindAll" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2dy3jLYpY8_" role="3clFbw">
                      <node concept="37vLTw" id="2dy3jLYpTzI" role="2Oq$k0">
                        <ref role="3cqZAo" node="2dy3jLYpTzF" resolve="treeId" />
                      </node>
                      <node concept="17RvpY" id="2dy3jLYpYAA" role="2OqNvi" />
                    </node>
                    <node concept="9aQIb" id="2dy3jLYpYEY" role="9aQIa">
                      <node concept="3clFbS" id="2dy3jLYpYEZ" role="9aQI4">
                        <node concept="3clFbF" id="4rrX99okHg3" role="3cqZAp">
                          <node concept="37vLTI" id="4rrX99okHg5" role="3clFbG">
                            <node concept="2ShNRf" id="4rrX99okHcZ" role="37vLTx">
                              <node concept="1pGfFk" id="4rrX99okHd0" role="2ShVmc">
                                <ref role="37wK5l" node="2dy3jLYrgKf" resolve="BindAllModulesToTransient" />
                                <node concept="2YIFZM" id="4rrX99okHd1" role="37wK5m">
                                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4rrX99okHxo" role="37vLTJ">
                              <node concept="2WthIp" id="4rrX99okHxr" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="4rrX99okHxt" role="2OqNvi">
                                <ref role="2WH_rO" node="4rrX99okHlz" resolve="bindAll" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5Le8ZRJe6wK" role="3cqZAp" />
                  <node concept="3zACq4" id="5Le8ZRJe6s$" role="3cqZAp" />
                </node>
              </node>
              <node concept="3KbdKl" id="5Le8ZRJe8VH" role="3KbHQx">
                <node concept="Rm8GO" id="5Le8ZRJe9uY" role="3Kbmr1">
                  <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                  <ref role="Rm8GQ" node="5Le8ZRJdWrr" resolve="INTEGRATION_TESTS" />
                </node>
                <node concept="3clFbS" id="5Le8ZRJe9zx" role="3Kbo56">
                  <node concept="3clFbH" id="5Le8ZRJe9Ko" role="3cqZAp" />
                  <node concept="3zACq4" id="5Le8ZRJe9G6" role="3cqZAp" />
                </node>
              </node>
              <node concept="3KbdKl" id="5Le8ZRJe9OE" role="3KbHQx">
                <node concept="Rm8GO" id="5Le8ZRJea9u" role="3Kbmr1">
                  <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                  <ref role="Rm8GQ" node="5Le8ZRJe0YA" resolve="MODEL_EXPORT" />
                </node>
                <node concept="3clFbS" id="5Le8ZRJebc9" role="3Kbo56">
                  <node concept="3cpWs8" id="29etMtbjEs4" role="3cqZAp">
                    <node concept="3cpWsn" id="29etMtbjEs5" role="3cpWs9">
                      <property role="TrG5h" value="exportPath" />
                      <node concept="17QB3L" id="29etMtbjEJy" role="1tU5fm" />
                      <node concept="2YIFZM" id="29etMtbjEs6" role="33vP2m">
                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <node concept="Xl_RD" id="29etMtbjEs7" role="37wK5m">
                          <property role="Xl_RC" value="modelix.export.path" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5Le8ZRJeoQZ" role="3cqZAp">
                    <node concept="3clFbS" id="5Le8ZRJeoR1" role="3clFbx">
                      <node concept="3clFbF" id="5Le8ZRJerV6" role="3cqZAp">
                        <node concept="2OqwBi" id="5Le8ZRJerV3" role="3clFbG">
                          <node concept="10M0yZ" id="5Le8ZRJesSD" role="2Oq$k0">
                            <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                            <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                          </node>
                          <node concept="liA8E" id="5Le8ZRJerV5" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                            <node concept="Xl_RD" id="5Le8ZRJesqG" role="37wK5m">
                              <property role="Xl_RC" value="modelix.export.path not provided" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5Le8ZRJerze" role="3cqZAp">
                        <node concept="2YIFZM" id="5Le8ZRJerzf" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <node concept="3cmrfG" id="5Le8ZRJerzg" role="37wK5m">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5Le8ZRJepwi" role="3clFbw">
                      <node concept="37vLTw" id="5Le8ZRJeoZU" role="2Oq$k0">
                        <ref role="3cqZAo" node="29etMtbjEs5" resolve="exportPath" />
                      </node>
                      <node concept="17RlXB" id="5Le8ZRJeq$L" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3J1_TO" id="5$aoTsovo1l" role="3cqZAp">
                    <node concept="3uVAMA" id="5$aoTsovoEu" role="1zxBo5">
                      <node concept="XOnhg" id="5$aoTsovoEv" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="5$aoTsovoEw" role="1tU5fm">
                          <node concept="3uibUv" id="5$aoTsovoSZ" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5$aoTsovoEx" role="1zc67A">
                        <node concept="RRSsy" id="5$aoTsovprY" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="5$aoTsovps0" role="RRSoy" />
                          <node concept="37vLTw" id="5$aoTsovpv3" role="RRSow">
                            <ref role="3cqZAo" node="5$aoTsovoEv" resolve="ex" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="5$aoTsovp2F" role="3cqZAp">
                          <node concept="2YIFZM" id="5$aoTsovp5d" role="3clFbG">
                            <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="3cmrfG" id="5$aoTsovp76" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5$aoTsovo1n" role="1zxBo7">
                      <node concept="3clFbF" id="27OZ2T4kTtp" role="3cqZAp">
                        <node concept="2OqwBi" id="27OZ2T4kU8m" role="3clFbG">
                          <node concept="2YIFZM" id="27OZ2T4kTPB" role="2Oq$k0">
                            <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                          </node>
                          <node concept="liA8E" id="27OZ2T4kV2W" role="2OqNvi">
                            <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                            <node concept="1bVj0M" id="27OZ2T4kV61" role="37wK5m">
                              <property role="3yWfEV" value="true" />
                              <node concept="3clFbS" id="27OZ2T4kV62" role="1bW5cS">
                                <node concept="3clFbF" id="27OZ2T4l9ms" role="3cqZAp">
                                  <node concept="2OqwBi" id="27OZ2T4lak0" role="3clFbG">
                                    <node concept="2YIFZM" id="27OZ2T4l9Fz" role="2Oq$k0">
                                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                    </node>
                                    <node concept="liA8E" id="27OZ2T4lbe$" role="2OqNvi">
                                      <ref role="37wK5l" to="bd8o:~Application.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                                      <node concept="1bVj0M" id="27OZ2T4lbyN" role="37wK5m">
                                        <node concept="3clFbS" id="27OZ2T4lbyO" role="1bW5cS">
                                          <node concept="3J1_TO" id="27OZ2T4lrvj" role="3cqZAp">
                                            <node concept="3uVAMA" id="27OZ2T4lrQh" role="1zxBo5">
                                              <node concept="XOnhg" id="27OZ2T4lrQi" role="1zc67B">
                                                <property role="TrG5h" value="ex" />
                                                <node concept="nSUau" id="27OZ2T4lrQj" role="1tU5fm">
                                                  <node concept="3uibUv" id="27OZ2T4lsj4" role="nSUat">
                                                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbS" id="27OZ2T4lrQk" role="1zc67A">
                                                <node concept="RRSsy" id="27OZ2T4ltTf" role="3cqZAp">
                                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                                  <node concept="Xl_RD" id="27OZ2T4ltTg" role="RRSoy" />
                                                  <node concept="37vLTw" id="27OZ2T4ltTh" role="RRSow">
                                                    <ref role="3cqZAo" node="27OZ2T4lrQi" resolve="ex" />
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="27OZ2T4ltTi" role="3cqZAp">
                                                  <node concept="2YIFZM" id="27OZ2T4ltTj" role="3clFbG">
                                                    <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                                                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                    <node concept="3cmrfG" id="27OZ2T4ltTk" role="37wK5m">
                                                      <property role="3cmrfH" value="1" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="27OZ2T4lrvl" role="1zxBo7">
                                              <node concept="3clFbF" id="rF2pzCbuFc" role="3cqZAp">
                                                <node concept="2OqwBi" id="rF2pzCbuFd" role="3clFbG">
                                                  <node concept="10M0yZ" id="rF2pzCbuFe" role="2Oq$k0">
                                                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                                                  </node>
                                                  <node concept="liA8E" id="rF2pzCbuFf" role="2OqNvi">
                                                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                                    <node concept="Xl_RD" id="rF2pzCbuFg" role="37wK5m">
                                                      <property role="Xl_RC" value="Starting model export ..." />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="5$aoTsoyl4W" role="3cqZAp">
                                                <node concept="2YIFZM" id="5$aoTsoylhD" role="3clFbG">
                                                  <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                                                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                  <node concept="Xl_RD" id="5$aoTsoylhE" role="37wK5m">
                                                    <property role="Xl_RC" value="modelix.export.started" />
                                                  </node>
                                                  <node concept="Xl_RD" id="5$aoTsoylqn" role="37wK5m">
                                                    <property role="Xl_RC" value="true" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="5$aoTsovmc3" role="3cqZAp">
                                                <node concept="2OqwBi" id="5$aoTsovnma" role="3clFbG">
                                                  <node concept="2ShNRf" id="5$aoTsovmbV" role="2Oq$k0">
                                                    <node concept="1pGfFk" id="rF2pzCbcti" role="2ShVmc">
                                                      <ref role="37wK5l" to="csg2:rF2pzCaPsq" resolve="ModelCloudExporter" />
                                                      <node concept="2YIFZM" id="rF2pzCbcAW" role="37wK5m">
                                                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                                                        <node concept="Xl_RD" id="rF2pzCbcAX" role="37wK5m">
                                                          <property role="Xl_RC" value="modelix.export.serverUrl" />
                                                        </node>
                                                      </node>
                                                      <node concept="2YIFZM" id="rF2pzCbcJ4" role="37wK5m">
                                                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                                                        <node concept="Xl_RD" id="rF2pzCbcJ5" role="37wK5m">
                                                          <property role="Xl_RC" value="modelix.export.treeId" />
                                                        </node>
                                                      </node>
                                                      <node concept="2YIFZM" id="rF2pzCbcQW" role="37wK5m">
                                                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                        <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                                                        <node concept="Xl_RD" id="rF2pzCbcQX" role="37wK5m">
                                                          <property role="Xl_RC" value="modelix.export.branchName" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="5$aoTsovnwB" role="2OqNvi">
                                                    <ref role="37wK5l" to="csg2:1OzsJtar7Ca" resolve="export" />
                                                    <node concept="37vLTw" id="5$aoTsovnC_" role="37wK5m">
                                                      <ref role="3cqZAo" node="29etMtbjEs5" resolve="exportPath" />
                                                    </node>
                                                    <node concept="10Nm6u" id="Aop38IgMwA" role="37wK5m" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="5$aoTsoyl$j" role="3cqZAp">
                                                <node concept="2YIFZM" id="5$aoTsoyl$k" role="3clFbG">
                                                  <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                                                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                                  <node concept="Xl_RD" id="5$aoTsoyl$l" role="37wK5m">
                                                    <property role="Xl_RC" value="modelix.export.done" />
                                                  </node>
                                                  <node concept="Xl_RD" id="5$aoTsoyl$m" role="37wK5m">
                                                    <property role="Xl_RC" value="true" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbF" id="27OZ2T4lcOp" role="3cqZAp">
                                                <node concept="2OqwBi" id="27OZ2T4ldKT" role="3clFbG">
                                                  <node concept="2YIFZM" id="27OZ2T4ldaZ" role="2Oq$k0">
                                                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                                  </node>
                                                  <node concept="liA8E" id="27OZ2T4lerB" role="2OqNvi">
                                                    <ref role="37wK5l" to="bd8o:~Application.exit(boolean,boolean,boolean)" resolve="exit" />
                                                    <node concept="3clFbT" id="27OZ2T4lCXy" role="37wK5m">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                    <node concept="3clFbT" id="27OZ2T4lDw4" role="37wK5m">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                    <node concept="3clFbT" id="27OZ2T4lEoa" role="37wK5m" />
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
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zACq4" id="5Le8ZRJebyi" role="3cqZAp" />
                </node>
              </node>
              <node concept="3KbdKl" id="5Le8ZRJebkS" role="3KbHQx">
                <node concept="Rm8GO" id="5Le8ZRJebtr" role="3Kbmr1">
                  <ref role="1Px2BO" node="5Le8ZRJdWor" resolve="EModelixExecutionMode" />
                  <ref role="Rm8GQ" node="5Le8ZRJdWMd" resolve="DEFAULT" />
                </node>
                <node concept="3clFbS" id="5Le8ZRJebIJ" role="3Kbo56">
                  <node concept="3zACq4" id="5Le8ZRJebSi" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="5Le8ZRJebAK" role="3Kb1Dw">
                <node concept="RRSsy" id="5Le8ZRJejeM" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fh_4/error" />
                  <node concept="3cpWs3" id="5Le8ZRJek0_" role="RRSoy">
                    <node concept="37vLTw" id="5Le8ZRJek5w" role="3uHU7w">
                      <ref role="3cqZAo" node="5Le8ZRJdYgt" resolve="executionMode" />
                    </node>
                    <node concept="Xl_RD" id="5Le8ZRJejeO" role="3uHU7B">
                      <property role="Xl_RC" value="Unknown execution mode: " />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="5Le8ZRJec0y" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4rrX99omHZ_" role="1zxBo5">
            <node concept="XOnhg" id="4rrX99omHZB" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4CjqwEpkJA8" role="1tU5fm">
                <node concept="3uibUv" id="4rrX99omI7_" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4rrX99omHZF" role="1zc67A">
              <node concept="RRSsy" id="4rrX99omN_z" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="4rrX99omN__" role="RRSoy" />
                <node concept="37vLTw" id="4rrX99omN_B" role="RRSow">
                  <ref role="3cqZAo" node="4rrX99omHZB" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="26ispG800pu" role="2uRRBF">
      <node concept="3clFbS" id="26ispG800pv" role="2VODD2">
        <node concept="3J1_TO" id="4rrX99okHHZ" role="3cqZAp">
          <node concept="3clFbS" id="4rrX99okHI1" role="1zxBo7">
            <node concept="3clFbJ" id="7PIbTorqxQh" role="3cqZAp">
              <node concept="3clFbS" id="7PIbTorqxQj" role="3clFbx">
                <node concept="3clFbF" id="4rrX99okI6d" role="3cqZAp">
                  <node concept="2OqwBi" id="4rrX99okIsS" role="3clFbG">
                    <node concept="2OqwBi" id="4rrX99okI67" role="2Oq$k0">
                      <node concept="2WthIp" id="4rrX99okI6a" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="4rrX99okI6c" role="2OqNvi">
                        <ref role="2WH_rO" node="4rrX99okHlz" resolve="bindAll" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4rrX99okJ1c" role="2OqNvi">
                      <ref role="37wK5l" node="4rrX99ojsxh" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7PIbTorqyML" role="3clFbw">
                <node concept="10Nm6u" id="7PIbTorqyU$" role="3uHU7w" />
                <node concept="2OqwBi" id="7PIbTorqy1b" role="3uHU7B">
                  <node concept="2WthIp" id="7PIbTorqxRh" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7PIbTorqyg9" role="2OqNvi">
                    <ref role="2WH_rO" node="4rrX99okHlz" resolve="bindAll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4rrX99okHI2" role="1zxBo5">
            <node concept="XOnhg" id="4rrX99okHI4" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4CjqwEpgJ5e" role="1tU5fm">
                <node concept="3uibUv" id="4rrX99okHQw" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4rrX99okHI8" role="1zc67A">
              <node concept="RRSsy" id="4rrX99okHYI" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="4rrX99okHYK" role="RRSoy" />
                <node concept="37vLTw" id="4rrX99okHYM" role="RRSow">
                  <ref role="3cqZAo" node="4rrX99okHI4" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5B0IH3nUMj4" role="3cqZAp" />
        <node concept="3J1_TO" id="5nE7Pe9db9y" role="3cqZAp">
          <node concept="3clFbS" id="5nE7Pe9db9z" role="1zxBo7">
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
          <node concept="3uVAMA" id="5nE7Pe9db9E" role="1zxBo5">
            <node concept="XOnhg" id="5nE7Pe9db9F" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="6LKJo$Vzyag" role="1tU5fm">
                <node concept="3uibUv" id="5nE7Pe9db9G" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5nE7Pe9db9H" role="1zc67A">
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
        <node concept="3clFbH" id="1PrMCQKDRay" role="3cqZAp" />
        <node concept="3clFbH" id="1PrMCQKEpki" role="3cqZAp" />
        <node concept="3J1_TO" id="49CIzaqqEiE" role="3cqZAp">
          <node concept="3clFbS" id="49CIzaqqEiF" role="1zxBo7">
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
          <node concept="3uVAMA" id="49CIzaqqEiK" role="1zxBo5">
            <node concept="XOnhg" id="49CIzaqqEiL" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4dPXOGtcwW$" role="1tU5fm">
                <node concept="3uibUv" id="49CIzaqqEiM" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="49CIzaqqEiN" role="1zc67A">
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
        <node concept="3clFbH" id="2a45eKoq25W" role="3cqZAp" />
        <node concept="3J1_TO" id="Onv88ZOCn1" role="3cqZAp">
          <node concept="3clFbS" id="Onv88ZOCn3" role="1zxBo7">
            <node concept="3clFbF" id="Onv88ZOCGs" role="3cqZAp">
              <node concept="2YIFZM" id="Onv88ZOCGZ" role="3clFbG">
                <ref role="37wK5l" to="csg2:Onv88ZOBPX" resolve="shutdownAll" />
                <ref role="1Pybhc" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="Onv88ZOCn4" role="1zxBo5">
            <node concept="XOnhg" id="Onv88ZOCn6" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="dQauyDmg$Rb" role="1tU5fm">
                <node concept="3uibUv" id="Onv88ZOCw$" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="Onv88ZOCna" role="1zc67A">
              <node concept="RRSsy" id="Onv88ZOCPg" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="Onv88ZOCPi" role="RRSoy" />
                <node concept="37vLTw" id="Onv88ZOCPk" role="RRSow">
                  <ref role="3cqZAo" node="Onv88ZOCn6" resolve="ex" />
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
        <node concept="abc8K" id="6h4an0SZKfY" role="3cqZAp">
          <node concept="Xl_RD" id="6h4an0SZKl7" role="abp_N">
            <property role="Xl_RC" value="APPLYING PROJECT PLUGIN - PERSISTED BINDING CONFIGURATION" />
          </node>
        </node>
        <node concept="3clFbF" id="1xehy3SpfNi" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3SpfNj" role="3clFbG">
            <node concept="2YIFZM" id="1xehy3SpfNk" role="2Oq$k0">
              <ref role="1Pybhc" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <ref role="37wK5l" node="1xehy3Sovth" resolve="getInstance" />
              <node concept="2YIFZM" id="1xehy3Spg5e" role="37wK5m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="1KvdUw" id="1xehy3Spg5f" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="1xehy3SpfNo" role="2OqNvi">
              <ref role="37wK5l" node="1xehy3SoPER" resolve="applyToProject" />
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
    <property role="3GE5qa" value="actions.root" />
    <node concept="ftmFs" id="6aRQr1WNZaH" role="ftER_">
      <node concept="tCFHf" id="6aRQr1WNZb5" role="ftvYc">
        <ref role="tCJdB" node="6aRQr1WNZaK" resolve="AddCloudRepository" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6aRQr1WNZaK">
    <property role="3GE5qa" value="actions.root" />
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
            <node concept="3clFbJ" id="2i9Xe7pKD3C" role="3cqZAp">
              <node concept="3clFbS" id="2i9Xe7pKD3E" role="3clFbx">
                <node concept="3cpWs8" id="2i9Xe7pKEs3" role="3cqZAp">
                  <node concept="3cpWsn" id="2i9Xe7pKEs6" role="3cpWs9">
                    <property role="TrG5h" value="originalUrl" />
                    <node concept="17QB3L" id="2i9Xe7pKEs1" role="1tU5fm" />
                    <node concept="37vLTw" id="2i9Xe7pKEtc" role="33vP2m">
                      <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2i9Xe7pKDTI" role="3cqZAp">
                  <node concept="37vLTI" id="2i9Xe7pKDUt" role="3clFbG">
                    <node concept="3cpWs3" id="2i9Xe7pKDVA" role="37vLTx">
                      <node concept="Xl_RD" id="2i9Xe7pKDWo" role="3uHU7w">
                        <property role="Xl_RC" value="/" />
                      </node>
                      <node concept="37vLTw" id="2i9Xe7pKDUO" role="3uHU7B">
                        <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2i9Xe7pKDTG" role="37vLTJ">
                      <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                    </node>
                  </node>
                </node>
                <node concept="2xdQw9" id="2i9Xe7pKE8T" role="3cqZAp">
                  <property role="2xdLsb" value="h1akgim/info" />
                  <node concept="3cpWs3" id="2i9Xe7pKFo6" role="9lYJi">
                    <node concept="Xl_RD" id="2i9Xe7pKFog" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="2i9Xe7pKFlK" role="3uHU7B">
                      <node concept="3cpWs3" id="2i9Xe7pKEWQ" role="3uHU7B">
                        <node concept="3cpWs3" id="2i9Xe7pKEVl" role="3uHU7B">
                          <node concept="Xl_RD" id="2i9Xe7pKE8V" role="3uHU7B">
                            <property role="Xl_RC" value="A Modelix Cloud Repository URL should end with a slash. URL modified from '" />
                          </node>
                          <node concept="37vLTw" id="2i9Xe7pKEW4" role="3uHU7w">
                            <ref role="3cqZAo" node="2i9Xe7pKEs6" resolve="originalUrl" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2i9Xe7pKEX0" role="3uHU7w">
                          <property role="Xl_RC" value="' to '" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2i9Xe7pKFmP" role="3uHU7w">
                        <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2i9Xe7pLA8C" role="9lYEk">
                    <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="2OqwBi" id="2i9Xe7pLAat" role="37wK5m">
                      <node concept="2WthIp" id="2i9Xe7pLAaw" role="2Oq$k0" />
                      <node concept="1DTwFV" id="2i9Xe7pLAay" role="2OqNvi">
                        <ref role="2WH_rO" node="6aRQr1WO_Ld" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2i9Xe7pKDOW" role="3clFbw">
                <node concept="2OqwBi" id="2i9Xe7pKDOY" role="3fr31v">
                  <node concept="37vLTw" id="2i9Xe7pKDOZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                  </node>
                  <node concept="liA8E" id="2i9Xe7pKDP0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="2i9Xe7pKDP1" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4bo3wpSgJtH" role="3cqZAp">
              <node concept="3clFbS" id="4bo3wpSgJtJ" role="3clFbx">
                <node concept="3clFbF" id="4bo3wpSgK8i" role="3cqZAp">
                  <node concept="2YIFZM" id="4bo3wpSgK8T" role="3clFbG">
                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                    <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                    <node concept="2OqwBi" id="4bo3wpSgM92" role="37wK5m">
                      <node concept="2WthIp" id="4bo3wpSgLRh" role="2Oq$k0" />
                      <node concept="1DTwFV" id="4bo3wpSgMC7" role="2OqNvi">
                        <ref role="2WH_rO" node="6aRQr1WO_Ld" resolve="project" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4bo3wpSgMDW" role="37wK5m">
                      <property role="Xl_RC" value="Already present!" />
                    </node>
                    <node concept="Xl_RD" id="4bo3wpSgMIP" role="37wK5m">
                      <property role="Xl_RC" value="Add Cloud Repository" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4bo3wpSgJS$" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="4bo3wpSgJCS" role="3clFbw">
                <node concept="2YIFZM" id="4bo3wpSgJxT" role="2Oq$k0">
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="4bo3wpSgJMe" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:6kjKmgaSdpS" resolve="existRepository" />
                  <node concept="37vLTw" id="4bo3wpSgJNC" role="37wK5m">
                    <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7f6Tb6n$mIE" role="3cqZAp">
              <node concept="3cpWsn" id="7f6Tb6n$mIF" role="3cpWs9">
                <property role="TrG5h" value="cloudRepository" />
                <node concept="3uibUv" id="7f6Tb6n$mZ0" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                </node>
                <node concept="2OqwBi" id="6aRQr1WPNy1" role="33vP2m">
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
            <node concept="3clFbF" id="1xehy3SpdXm" role="3cqZAp">
              <node concept="2OqwBi" id="1xehy3Spea8" role="3clFbG">
                <node concept="2YIFZM" id="1xehy3Spe1n" role="2Oq$k0">
                  <ref role="37wK5l" node="1xehy3Sovth" resolve="getInstance" />
                  <ref role="1Pybhc" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
                  <node concept="2OqwBi" id="1xehy3Spe2N" role="37wK5m">
                    <node concept="2WthIp" id="1xehy3Spe2Q" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1xehy3Spe2S" role="2OqNvi">
                      <ref role="2WH_rO" node="6aRQr1WO_Ld" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1xehy3Speun" role="2OqNvi">
                  <ref role="37wK5l" node="1xehy3SoXrB" resolve="addRepository" />
                  <node concept="37vLTw" id="1xehy3SpewJ" role="37wK5m">
                    <ref role="3cqZAo" node="7f6Tb6n$mIF" resolve="cloudRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2i9Xe7pKHxj" role="3clFbw">
            <node concept="2OqwBi" id="6aRQr1WPMwc" role="3uHU7w">
              <node concept="37vLTw" id="6aRQr1WPM8R" role="2Oq$k0">
                <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
              </node>
              <node concept="17RvpY" id="6aRQr1WPNkC" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="2i9Xe7pKGTr" role="3uHU7B">
              <node concept="10Nm6u" id="2i9Xe7pKH7b" role="3uHU7w" />
              <node concept="37vLTw" id="2i9Xe7pKG5a" role="3uHU7B">
                <ref role="3cqZAo" node="6aRQr1WODg4" resolve="url" />
              </node>
            </node>
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
    <property role="3GE5qa" value="actions.repo" />
    <property role="TrG5h" value="CloudRepositoryGroup" />
    <node concept="ftmFs" id="6aRQr1XbZf5" role="ftER_">
      <node concept="tCFHf" id="4yJY4budkJ" role="ftvYc">
        <ref role="tCJdB" node="4yJY4bt61T" resolve="RemoveCloudRepository" />
      </node>
      <node concept="tCFHf" id="6aRQr1XbZft" role="ftvYc">
        <ref role="tCJdB" node="6aRQr1XbZf8" resolve="AddTree" />
      </node>
      <node concept="tCFHf" id="7L9MJywfwHw" role="ftvYc">
        <ref role="tCJdB" node="7L9MJywexQg" resolve="GetAuthorizationToken" />
      </node>
      <node concept="tCFHf" id="2EzI5qKpw6u" role="ftvYc">
        <ref role="tCJdB" node="2EzI5qKnqcr" resolve="EnterAuthorizationToken" />
      </node>
      <node concept="tCFHf" id="1J2iDZz_x2h" role="ftvYc">
        <ref role="tCJdB" node="1J2iDZz_1Hs" resolve="Reconnect" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6aRQr1XbZf8">
    <property role="3GE5qa" value="actions.repo" />
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
    <property role="3GE5qa" value="actions.node" />
    <property role="TrG5h" value="CloudNodeGroup" />
    <node concept="ftmFs" id="49CIzaqqTEK" role="ftER_">
      <node concept="tCFHf" id="4mhRRpyDa82" role="ftvYc">
        <ref role="tCJdB" node="5qcCSpC9nvB" resolve="AddProjectNode" />
      </node>
      <node concept="tCFHf" id="49CIzaqsm5S" role="ftvYc">
        <ref role="tCJdB" node="49CIzaqr2TB" resolve="AddModuleNode" />
      </node>
      <node concept="tCFHf" id="EMWAvBlHXg" role="ftvYc">
        <ref role="tCJdB" node="EMWAvBfOFs" resolve="AddModelNode" />
      </node>
      <node concept="tCFHf" id="4eX7silbpGS" role="ftvYc">
        <ref role="tCJdB" node="4eX7sil7CCq" resolve="AddProjectBinding" />
      </node>
      <node concept="tCFHf" id="1J2iDZzAKvO" role="ftvYc">
        <ref role="tCJdB" node="1J2iDZzAC6g" resolve="DeleteProject" />
      </node>
      <node concept="tCFHf" id="lOVi2A9cRY" role="ftvYc">
        <ref role="tCJdB" node="lOVi2A8Hs3" resolve="DeleteModule" />
      </node>
      <node concept="tCFHf" id="EMWAvBfi7c" role="ftvYc">
        <ref role="tCJdB" node="EMWAvBdVtK" resolve="AddTransientModuleBinding" />
      </node>
      <node concept="tCFHf" id="729BXr3O5YA" role="ftvYc">
        <ref role="tCJdB" node="729BXr3NNGW" resolve="CheckoutModule" />
      </node>
      <node concept="tCFHf" id="729BXr3O6a0" role="ftvYc">
        <ref role="tCJdB" node="729BXr3O2Mp" resolve="CheckoutAndSyncModule" />
      </node>
      <node concept="tCFHf" id="Nm_qC27ip3" role="ftvYc">
        <ref role="tCJdB" node="5iCdLF2l4kT" resolve="NavigateToMpsNode" />
      </node>
      <node concept="tCFHf" id="3rVtQmckwj_" role="ftvYc">
        <ref role="tCJdB" node="3rVtQmcjXlI" resolve="ShowProperties" />
      </node>
      <node concept="tC5Ba" id="4mhRRpyD$1c" role="ftvYc">
        <property role="TrG5h" value="AddChild" />
        <property role="1XlLyE" value="true" />
        <property role="2f7twF" value="Add Child Node" />
        <node concept="2OiAzN" id="4mhRRpyEkSA" role="ftER_">
          <node concept="2OiTZ2" id="4mhRRpyEkSC" role="2Oj6PV">
            <node concept="3clFbS" id="4mhRRpyEkSE" role="2VODD2">
              <node concept="3cpWs8" id="4mhRRpyEJ3p" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyEJ3q" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="3uibUv" id="4mhRRpyEIUo" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                  </node>
                  <node concept="2OqwBi" id="4mhRRpyEJ3r" role="33vP2m">
                    <node concept="tl45R" id="4mhRRpyEJ3s" role="2Oq$k0" />
                    <node concept="liA8E" id="4mhRRpyEJ3t" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                      <node concept="10M0yZ" id="4mhRRpyEJ3u" role="37wK5m">
                        <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                        <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyEC1u" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyEC1v" role="3cpWs9">
                  <property role="TrG5h" value="treeNode" />
                  <node concept="3uibUv" id="4mhRRpyEFm9" role="1tU5fm">
                    <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
                  </node>
                  <node concept="0kSF2" id="4mhRRpyEDvK" role="33vP2m">
                    <node concept="3uibUv" id="4mhRRpyEE0r" role="0kSFW">
                      <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
                    </node>
                    <node concept="2OqwBi" id="4mhRRpyEC1w" role="0kSFX">
                      <node concept="tl45R" id="4mhRRpyEC1x" role="2Oq$k0" />
                      <node concept="liA8E" id="4mhRRpyEC1y" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                        <node concept="10M0yZ" id="4mhRRpyEC1z" role="37wK5m">
                          <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
                          <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4mhRRpyE_Ig" role="3cqZAp">
                <node concept="3clFbS" id="4mhRRpyE_Ih" role="3clFbx">
                  <node concept="3cpWs6" id="4mhRRpyE_Ii" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="4mhRRpyE_Ik" role="3clFbw">
                  <node concept="10Nm6u" id="4mhRRpyE_Il" role="3uHU7w" />
                  <node concept="37vLTw" id="4mhRRpyEEwo" role="3uHU7B">
                    <ref role="3cqZAo" node="4mhRRpyEC1v" resolve="treeNode" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyE_In" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyE_Io" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="4mhRRpyE_Ip" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                  </node>
                  <node concept="2OqwBi" id="4mhRRpyE_Iq" role="33vP2m">
                    <node concept="37vLTw" id="4mhRRpyEEZU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4mhRRpyEC1v" resolve="treeNode" />
                    </node>
                    <node concept="liA8E" id="4mhRRpyE_Is" role="2OqNvi">
                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4mhRRpyE_It" role="3cqZAp">
                <node concept="3clFbS" id="4mhRRpyE_Iu" role="3clFbx">
                  <node concept="3cpWs6" id="4mhRRpyE_Iv" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="4mhRRpyE_Ix" role="3clFbw">
                  <node concept="2ZW3vV" id="4mhRRpyE_Iy" role="3fr31v">
                    <node concept="3uibUv" id="4mhRRpyE_Iz" role="2ZW6by">
                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="4mhRRpyE_I$" role="2ZW6bz">
                      <ref role="3cqZAo" node="4mhRRpyE_Io" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyE_I_" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyE_IA" role="3cpWs9">
                  <property role="TrG5h" value="pnode" />
                  <node concept="3uibUv" id="4mhRRpyE_IB" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                  <node concept="1eOMI4" id="4mhRRpyE_IC" role="33vP2m">
                    <node concept="10QFUN" id="4mhRRpyE_ID" role="1eOMHV">
                      <node concept="3uibUv" id="4mhRRpyE_IE" role="10QFUM">
                        <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                      </node>
                      <node concept="37vLTw" id="4mhRRpyE_IF" role="10QFUP">
                        <ref role="3cqZAo" node="4mhRRpyE_Io" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyE_IG" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyE_IH" role="3cpWs9">
                  <property role="TrG5h" value="concept" />
                  <node concept="3uibUv" id="4mhRRpyE_II" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                  </node>
                  <node concept="2OqwBi" id="4mhRRpyE_IJ" role="33vP2m">
                    <node concept="37vLTw" id="4mhRRpyE_IK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4mhRRpyE_IA" resolve="pnode" />
                    </node>
                    <node concept="liA8E" id="4mhRRpyE_IL" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~PNodeAdapter.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4mhRRpyE_IM" role="3cqZAp">
                <node concept="3clFbS" id="4mhRRpyE_IN" role="3clFbx">
                  <node concept="3cpWs6" id="4mhRRpyE_IO" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="4mhRRpyE_IQ" role="3clFbw">
                  <node concept="10Nm6u" id="4mhRRpyE_IR" role="3uHU7w" />
                  <node concept="37vLTw" id="4mhRRpyE_IS" role="3uHU7B">
                    <ref role="3cqZAo" node="4mhRRpyE_IH" resolve="concept" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyE_IT" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyE_IU" role="3cpWs9">
                  <property role="TrG5h" value="sconcept" />
                  <node concept="3uibUv" id="4mhRRpyE_IV" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  </node>
                  <node concept="2YIFZM" id="4mhRRpyE_IW" role="33vP2m">
                    <ref role="37wK5l" to="xxte:3ECE8iPIttW" resolve="unwrap" />
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <node concept="37vLTw" id="4mhRRpyE_IX" role="37wK5m">
                      <ref role="3cqZAo" node="4mhRRpyE_IH" resolve="concept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4mhRRpyF3x6" role="3cqZAp" />
              <node concept="3cpWs8" id="4mhRRpyEN9V" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyEN9W" role="3cpWs9">
                  <property role="TrG5h" value="allLanguages_" />
                  <node concept="A3Dl8" id="4mhRRpyENDX" role="1tU5fm">
                    <node concept="3uibUv" id="4mhRRpyENDZ" role="A3Ik2">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4mhRRpyEN9X" role="33vP2m">
                    <node concept="2YIFZM" id="4mhRRpyEN9Y" role="2Oq$k0">
                      <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                      <node concept="2OqwBi" id="4mhRRpyEN9Z" role="37wK5m">
                        <node concept="37vLTw" id="4mhRRpyENa0" role="2Oq$k0">
                          <ref role="3cqZAo" node="4mhRRpyEJ3q" resolve="project" />
                        </node>
                        <node concept="liA8E" id="4mhRRpyENa1" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4mhRRpyENa2" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4mhRRpyF1GU" role="3cqZAp">
                <node concept="3cpWsn" id="4mhRRpyF1GV" role="3cpWs9">
                  <property role="TrG5h" value="allLanguages" />
                  <node concept="2hMVRd" id="4mhRRpyF1yp" role="1tU5fm">
                    <node concept="3uibUv" id="4mhRRpyF1ys" role="2hN53Y">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="4mhRRpyF1GW" role="33vP2m">
                    <node concept="2i4dXS" id="4mhRRpyF1GX" role="2ShVmc">
                      <node concept="3uibUv" id="4mhRRpyF1GY" role="HW$YZ">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="37vLTw" id="4mhRRpyF1GZ" role="I$8f6">
                        <ref role="3cqZAo" node="4mhRRpyEN9W" resolve="allLanguages_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4mhRRpyF3WB" role="3cqZAp" />
              <node concept="2Gpval" id="4mhRRpyEXPt" role="3cqZAp">
                <node concept="2GrKxI" id="4mhRRpyEXPv" role="2Gsz3X">
                  <property role="TrG5h" value="role" />
                </node>
                <node concept="2OqwBi" id="4mhRRpyEYRw" role="2GsD0m">
                  <node concept="37vLTw" id="4mhRRpyEYwv" role="2Oq$k0">
                    <ref role="3cqZAo" node="4mhRRpyE_IU" resolve="sconcept" />
                  </node>
                  <node concept="liA8E" id="4mhRRpyEZpu" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                  </node>
                </node>
                <node concept="3clFbS" id="4mhRRpyEXPz" role="2LFqv$">
                  <node concept="3clFbJ" id="4mhRRpyFAQe" role="3cqZAp">
                    <node concept="3clFbS" id="4mhRRpyFAQg" role="3clFbx">
                      <node concept="3N13vt" id="4mhRRpyFDii" role="3cqZAp" />
                    </node>
                    <node concept="17R0WA" id="4mhRRpyFBwU" role="3clFbw">
                      <node concept="359W_D" id="4mhRRpyFBP_" role="3uHU7w">
                        <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                      </node>
                      <node concept="2GrUjf" id="4mhRRpyFAZJ" role="3uHU7B">
                        <ref role="2Gs0qQ" node="4mhRRpyEXPv" resolve="role" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4mhRRpyEQKA" role="3cqZAp">
                    <node concept="3cpWsn" id="4mhRRpyEQKB" role="3cpWs9">
                      <property role="TrG5h" value="subConcepts" />
                      <node concept="A3Dl8" id="4eX7sil6cgO" role="1tU5fm">
                        <node concept="3uibUv" id="4eX7sil6cgQ" role="A3Ik2">
                          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="4mhRRpyEQKC" role="33vP2m">
                        <ref role="37wK5l" to="i8bi:1EtdPNufvop" resolve="getAllSubConcepts" />
                        <ref role="1Pybhc" to="i8bi:5IkW5anF8_6" resolve="SConceptOperations" />
                        <node concept="2OqwBi" id="4mhRRpyF5e2" role="37wK5m">
                          <node concept="2GrUjf" id="4mhRRpyF4Jf" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4mhRRpyEXPv" resolve="role" />
                          </node>
                          <node concept="liA8E" id="4mhRRpyF61n" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4mhRRpyF1H0" role="37wK5m">
                          <ref role="3cqZAo" node="4mhRRpyF1GV" resolve="allLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4eX7sil6axo" role="3cqZAp">
                    <node concept="37vLTI" id="4eX7sil6bt5" role="3clFbG">
                      <node concept="37vLTw" id="4eX7sil6axm" role="37vLTJ">
                        <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                      </node>
                      <node concept="2OqwBi" id="4eX7sil6bFl" role="37vLTx">
                        <node concept="37vLTw" id="4eX7sil6bFm" role="2Oq$k0">
                          <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                        </node>
                        <node concept="3zZkjj" id="4eX7sil6bFn" role="2OqNvi">
                          <node concept="1bVj0M" id="4eX7sil6bFo" role="23t8la">
                            <node concept="3clFbS" id="4eX7sil6bFp" role="1bW5cS">
                              <node concept="3clFbF" id="4eX7sil6bFq" role="3cqZAp">
                                <node concept="3fqX7Q" id="4eX7sil6bFr" role="3clFbG">
                                  <node concept="2OqwBi" id="4eX7sil6bFs" role="3fr31v">
                                    <node concept="37vLTw" id="4eX7sil6bFt" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4eX7sil6bFv" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="4eX7sil6bFu" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4eX7sil6bFv" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4eX7sil6bFw" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4eX7sil6dcu" role="3cqZAp">
                    <node concept="3clFbS" id="4eX7sil6dcw" role="3clFbx">
                      <node concept="3clFbF" id="4eX7sil6g5P" role="3cqZAp">
                        <node concept="37vLTI" id="4eX7sil6gti" role="3clFbG">
                          <node concept="2OqwBi" id="4eX7sil6D2$" role="37vLTx">
                            <node concept="2OqwBi" id="4eX7sil6lFl" role="2Oq$k0">
                              <node concept="2OqwBi" id="4eX7sil6jPX" role="2Oq$k0">
                                <node concept="37vLTw" id="4eX7sil6gEr" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                                </node>
                                <node concept="UnYns" id="4eX7sil6l8S" role="2OqNvi">
                                  <node concept="3uibUv" id="4eX7sil6lhZ" role="UnYnz">
                                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3zZkjj" id="4eX7sil6meT" role="2OqNvi">
                                <node concept="1bVj0M" id="4eX7sil6meV" role="23t8la">
                                  <node concept="3clFbS" id="4eX7sil6meW" role="1bW5cS">
                                    <node concept="3clFbF" id="4eX7sil6mmo" role="3cqZAp">
                                      <node concept="2OqwBi" id="4eX7sil6mHy" role="3clFbG">
                                        <node concept="37vLTw" id="4eX7sil6mmn" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4eX7sil6meX" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="4eX7sil6ng_" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SConcept.isRootable()" resolve="isRootable" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="4eX7sil6meX" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="4eX7sil6meY" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="UnYns" id="4eX7sil6DG$" role="2OqNvi">
                              <node concept="3uibUv" id="4eX7sil6DRs" role="UnYnz">
                                <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="4eX7sil6g5N" role="37vLTJ">
                            <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="4eX7sil6dWW" role="3clFbw">
                      <node concept="359W_D" id="4eX7sil6f3b" role="3uHU7w">
                        <ref role="359W_E" to="w7di:qmkA5fOskc" resolve="Model" />
                        <ref role="359W_F" to="w7di:qmkA5fOskk" resolve="rootNodes" />
                      </node>
                      <node concept="2GrUjf" id="4eX7sil6dnS" role="3uHU7B">
                        <ref role="2Gs0qQ" node="4mhRRpyEXPv" resolve="role" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4eX7sil6Hnx" role="3cqZAp">
                    <node concept="37vLTI" id="4eX7sil6HUO" role="3clFbG">
                      <node concept="37vLTw" id="4eX7sil6Hnv" role="37vLTJ">
                        <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                      </node>
                      <node concept="2OqwBi" id="4eX7sil6F3X" role="37vLTx">
                        <node concept="2OqwBi" id="4eX7sil77Cu" role="2Oq$k0">
                          <node concept="37vLTw" id="4eX7sil6EuX" role="2Oq$k0">
                            <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                          </node>
                          <node concept="2S7cBI" id="4eX7sil78ax" role="2OqNvi">
                            <node concept="1bVj0M" id="4eX7sil78az" role="23t8la">
                              <node concept="3clFbS" id="4eX7sil78a$" role="1bW5cS">
                                <node concept="3clFbF" id="4eX7sil78o$" role="3cqZAp">
                                  <node concept="2OqwBi" id="4eX7sil793q" role="3clFbG">
                                    <node concept="2OqwBi" id="4eX7sil78HZ" role="2Oq$k0">
                                      <node concept="37vLTw" id="4eX7sil78oz" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4eX7sil78a_" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="4eX7sil78Rn" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4eX7sil79l0" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="4eX7sil78a_" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4eX7sil78aA" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1nlBCl" id="4eX7sil78aB" role="2S7zOq">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="1XvEQZ" id="4eX7sil79QK" role="2OqNvi">
                          <node concept="1bVj0M" id="4eX7sil79QM" role="23t8la">
                            <node concept="3clFbS" id="4eX7sil79QN" role="1bW5cS">
                              <node concept="3clFbF" id="4eX7sil79QO" role="3cqZAp">
                                <node concept="2OqwBi" id="4eX7sil79QP" role="3clFbG">
                                  <node concept="37vLTw" id="4eX7sil79QQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4eX7sil79QS" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="4eX7sil7a4x" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4eX7sil79QS" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4eX7sil79QT" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="4eX7sil79QV" role="2S7zOq">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="4mhRRpyESbB" role="3cqZAp">
                    <node concept="2GrKxI" id="4mhRRpyESbD" role="2Gsz3X">
                      <property role="TrG5h" value="subconcept" />
                    </node>
                    <node concept="37vLTw" id="4eX7sil6cHT" role="2GsD0m">
                      <ref role="3cqZAo" node="4mhRRpyEQKB" resolve="subConcepts" />
                    </node>
                    <node concept="3clFbS" id="4mhRRpyESbH" role="2LFqv$">
                      <node concept="2JFkCU" id="4mhRRpyEW$D" role="3cqZAp">
                        <node concept="tCFHf" id="5$B3VX6_A48" role="2JFLmv">
                          <ref role="tCJdB" node="4mhRRpyGNVn" resolve="AddChildNode" />
                          <node concept="37vLTw" id="5$B3VX6_ARD" role="2J__8u">
                            <ref role="3cqZAo" node="4mhRRpyE_Io" resolve="node" />
                          </node>
                          <node concept="2GrUjf" id="5$B3VX6_BfP" role="2J__8u">
                            <ref role="2Gs0qQ" node="4mhRRpyESbD" resolve="subconcept" />
                          </node>
                          <node concept="2GrUjf" id="5$B3VX6_BgV" role="2J__8u">
                            <ref role="2Gs0qQ" node="4mhRRpyEXPv" resolve="role" />
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
      <node concept="tC5Ba" id="7fzD_A4tt6T" role="ftvYc">
        <property role="TrG5h" value="SetProperty" />
        <property role="1XlLyE" value="true" />
        <property role="2f7twF" value="Set Property" />
        <node concept="2OiAzN" id="7fzD_A4tt6U" role="ftER_">
          <node concept="2OiTZ2" id="7fzD_A4tt6V" role="2Oj6PV">
            <node concept="3clFbS" id="7fzD_A4tt6W" role="2VODD2">
              <node concept="3cpWs8" id="7fzD_A4tt6X" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt6Y" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="3uibUv" id="7fzD_A4tt6Z" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                  </node>
                  <node concept="2OqwBi" id="7fzD_A4tt70" role="33vP2m">
                    <node concept="tl45R" id="7fzD_A4tt71" role="2Oq$k0" />
                    <node concept="liA8E" id="7fzD_A4tt72" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                      <node concept="10M0yZ" id="7fzD_A4tt73" role="37wK5m">
                        <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                        <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7fzD_A4tt74" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt75" role="3cpWs9">
                  <property role="TrG5h" value="treeNode" />
                  <node concept="3uibUv" id="7fzD_A4tt76" role="1tU5fm">
                    <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
                  </node>
                  <node concept="0kSF2" id="7fzD_A4tt77" role="33vP2m">
                    <node concept="3uibUv" id="7fzD_A4tt78" role="0kSFW">
                      <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
                    </node>
                    <node concept="2OqwBi" id="7fzD_A4tt79" role="0kSFX">
                      <node concept="tl45R" id="7fzD_A4tt7a" role="2Oq$k0" />
                      <node concept="liA8E" id="7fzD_A4tt7b" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                        <node concept="10M0yZ" id="7fzD_A4tt7c" role="37wK5m">
                          <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
                          <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7fzD_A4tt7d" role="3cqZAp">
                <node concept="3clFbS" id="7fzD_A4tt7e" role="3clFbx">
                  <node concept="3cpWs6" id="7fzD_A4tt7f" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="7fzD_A4tt7g" role="3clFbw">
                  <node concept="10Nm6u" id="7fzD_A4tt7h" role="3uHU7w" />
                  <node concept="37vLTw" id="7fzD_A4tt7i" role="3uHU7B">
                    <ref role="3cqZAo" node="7fzD_A4tt75" resolve="treeNode" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7fzD_A4tt7j" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt7k" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="7fzD_A4tt7l" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                  </node>
                  <node concept="2OqwBi" id="7fzD_A4tt7m" role="33vP2m">
                    <node concept="37vLTw" id="7fzD_A4tt7n" role="2Oq$k0">
                      <ref role="3cqZAo" node="7fzD_A4tt75" resolve="treeNode" />
                    </node>
                    <node concept="liA8E" id="7fzD_A4tt7o" role="2OqNvi">
                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7fzD_A4tt7p" role="3cqZAp">
                <node concept="3clFbS" id="7fzD_A4tt7q" role="3clFbx">
                  <node concept="3cpWs6" id="7fzD_A4tt7r" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="7fzD_A4tt7s" role="3clFbw">
                  <node concept="2ZW3vV" id="7fzD_A4tt7t" role="3fr31v">
                    <node concept="3uibUv" id="7fzD_A4tt7u" role="2ZW6by">
                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="7fzD_A4tt7v" role="2ZW6bz">
                      <ref role="3cqZAo" node="7fzD_A4tt7k" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7fzD_A4tt7w" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt7x" role="3cpWs9">
                  <property role="TrG5h" value="pnode" />
                  <node concept="3uibUv" id="7fzD_A4tt7y" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                  <node concept="1eOMI4" id="7fzD_A4tt7z" role="33vP2m">
                    <node concept="10QFUN" id="7fzD_A4tt7$" role="1eOMHV">
                      <node concept="3uibUv" id="7fzD_A4tt7_" role="10QFUM">
                        <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                      </node>
                      <node concept="37vLTw" id="7fzD_A4tt7A" role="10QFUP">
                        <ref role="3cqZAo" node="7fzD_A4tt7k" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7fzD_A4tt7B" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt7C" role="3cpWs9">
                  <property role="TrG5h" value="concept" />
                  <node concept="3uibUv" id="7fzD_A4tt7D" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                  </node>
                  <node concept="2OqwBi" id="7fzD_A4tt7E" role="33vP2m">
                    <node concept="37vLTw" id="7fzD_A4tt7F" role="2Oq$k0">
                      <ref role="3cqZAo" node="7fzD_A4tt7x" resolve="pnode" />
                    </node>
                    <node concept="liA8E" id="7fzD_A4tt7G" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~PNodeAdapter.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7fzD_A4tt7H" role="3cqZAp">
                <node concept="3clFbS" id="7fzD_A4tt7I" role="3clFbx">
                  <node concept="3cpWs6" id="7fzD_A4tt7J" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="7fzD_A4tt7K" role="3clFbw">
                  <node concept="10Nm6u" id="7fzD_A4tt7L" role="3uHU7w" />
                  <node concept="37vLTw" id="7fzD_A4tt7M" role="3uHU7B">
                    <ref role="3cqZAo" node="7fzD_A4tt7C" resolve="concept" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7fzD_A4tt7N" role="3cqZAp">
                <node concept="3cpWsn" id="7fzD_A4tt7O" role="3cpWs9">
                  <property role="TrG5h" value="sconcept" />
                  <node concept="3uibUv" id="7fzD_A4tt7P" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
                  </node>
                  <node concept="2YIFZM" id="7fzD_A4tt7Q" role="33vP2m">
                    <ref role="37wK5l" to="xxte:3ECE8iPIttW" resolve="unwrap" />
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <node concept="37vLTw" id="7fzD_A4tt7R" role="37wK5m">
                      <ref role="3cqZAo" node="7fzD_A4tt7C" resolve="concept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7fzD_A4tt8b" role="3cqZAp" />
              <node concept="3cpWs8" id="2hbxkgeRRLE" role="3cqZAp">
                <node concept="3cpWsn" id="2hbxkgeRRLF" role="3cpWs9">
                  <property role="TrG5h" value="properties" />
                  <node concept="A3Dl8" id="2hbxkgeRSQB" role="1tU5fm">
                    <node concept="3uibUv" id="2hbxkgeRSQD" role="A3Ik2">
                      <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2hbxkgeRRLG" role="33vP2m">
                    <node concept="37vLTw" id="2hbxkgeRRLH" role="2Oq$k0">
                      <ref role="3cqZAo" node="7fzD_A4tt7O" resolve="sconcept" />
                    </node>
                    <node concept="liA8E" id="2hbxkgeRRLI" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="7fzD_A4tt8c" role="3cqZAp">
                <node concept="2GrKxI" id="7fzD_A4tt8d" role="2Gsz3X">
                  <property role="TrG5h" value="role" />
                </node>
                <node concept="2OqwBi" id="2hbxkgeRTcF" role="2GsD0m">
                  <node concept="37vLTw" id="2hbxkgeRRLJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2hbxkgeRRLF" resolve="properties" />
                  </node>
                  <node concept="2S7cBI" id="2hbxkgeRTzb" role="2OqNvi">
                    <node concept="1bVj0M" id="2hbxkgeRTzd" role="23t8la">
                      <node concept="3clFbS" id="2hbxkgeRTze" role="1bW5cS">
                        <node concept="3clFbF" id="2hbxkgeRTFL" role="3cqZAp">
                          <node concept="2OqwBi" id="2hbxkgeRTXQ" role="3clFbG">
                            <node concept="37vLTw" id="2hbxkgeRTFK" role="2Oq$k0">
                              <ref role="3cqZAo" node="2hbxkgeRTzf" resolve="it" />
                            </node>
                            <node concept="liA8E" id="2hbxkgeRUja" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2hbxkgeRTzf" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2hbxkgeRTzg" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="1nlBCl" id="2hbxkgeRTzh" role="2S7zOq">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7fzD_A4tt8h" role="2LFqv$">
                  <node concept="2JFkCU" id="7fzD_A4tt9D" role="3cqZAp">
                    <node concept="tCFHf" id="7fzD_A4tt9E" role="2JFLmv">
                      <ref role="tCJdB" node="7fzD_A4sSsN" resolve="SetProperty" />
                      <node concept="37vLTw" id="7fzD_A4tt9F" role="2J__8u">
                        <ref role="3cqZAo" node="7fzD_A4tt7k" resolve="node" />
                      </node>
                      <node concept="2GrUjf" id="7fzD_A4tt9H" role="2J__8u">
                        <ref role="2Gs0qQ" node="7fzD_A4tt8d" resolve="role" />
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
  <node concept="sE7Ow" id="49CIzaqr2TB">
    <property role="3GE5qa" value="actions.dataroot" />
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
        <node concept="3clFbF" id="aVVeoQvV_3" role="3cqZAp">
          <node concept="2OqwBi" id="aVVeoQvWbU" role="3clFbG">
            <node concept="37vLTw" id="aVVeoQvV_1" role="2Oq$k0">
              <ref role="3cqZAo" node="49CIzaqra5O" resolve="nodeTreeNode" />
            </node>
            <node concept="AQDAd" id="aVVeoQvX3n" role="2OqNvi">
              <ref role="37wK5l" to="csg2:aVVeoQvUBj" resolve="createModule" />
              <node concept="37vLTw" id="aVVeoQvXb7" role="37wK5m">
                <ref role="3cqZAo" node="49CIzaqrkpr" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="49CIzaqr2TW" role="tmbBb">
      <node concept="3clFbS" id="49CIzaqr2TX" role="2VODD2">
        <node concept="3cpWs6" id="1xehy3Sh9JI" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3Shbf4" role="3cqZAk">
            <node concept="2OqwBi" id="1xehy3ShaBR" role="2Oq$k0">
              <node concept="2WthIp" id="1xehy3Sh9Np" role="2Oq$k0" />
              <node concept="1DTwFV" id="1xehy3ShaY9" role="2OqNvi">
                <ref role="2WH_rO" node="49CIzaqr3z7" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="1xehy3ShbtV" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Sh5cz" resolve="isRootNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="EMWAvBdVtK">
    <property role="3GE5qa" value="actions.node.module" />
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
        <node concept="3clFbF" id="7jRNnvCbED2" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvCbEQc" role="3clFbG">
            <node concept="2ShNRf" id="7jRNnvCbED4" role="2Oq$k0">
              <node concept="HV5vD" id="7jRNnvCbED5" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="7jRNnvCbF4O" role="2OqNvi">
              <ref role="37wK5l" to="csg2:7jRNnvCbyvH" resolve="addTransientModuleBinding" />
              <node concept="2OqwBi" id="7jRNnvCbF5M" role="37wK5m">
                <node concept="2WthIp" id="7jRNnvCbF5P" role="2Oq$k0" />
                <node concept="1DTwFV" id="7jRNnvCbF5R" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBdVtN" resolve="treeNode" />
                </node>
              </node>
              <node concept="2OqwBi" id="7jRNnvCbHEY" role="37wK5m">
                <node concept="2WthIp" id="7jRNnvCbHm1" role="2Oq$k0" />
                <node concept="1DTwFV" id="7jRNnvCbIb4" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBdVtL" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="EMWAvBdVuH" role="tmbBb">
      <node concept="3clFbS" id="EMWAvBdVuI" role="2VODD2">
        <node concept="3cpWs6" id="1xehy3Sk06R" role="3cqZAp">
          <node concept="1Wc70l" id="1xehy3Sk0Lq" role="3cqZAk">
            <node concept="3fqX7Q" id="1xehy3Sk2gF" role="3uHU7w">
              <node concept="2OqwBi" id="1xehy3Sk2gH" role="3fr31v">
                <node concept="2OqwBi" id="1xehy3Sk2gI" role="2Oq$k0">
                  <node concept="2WthIp" id="1xehy3Sk2gJ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1xehy3Sk2gK" role="2OqNvi">
                    <ref role="2WH_rO" node="EMWAvBdVtN" resolve="treeNode" />
                  </node>
                </node>
                <node concept="AQDAd" id="1xehy3Sk2gL" role="2OqNvi">
                  <ref role="37wK5l" to="um17:1xehy3SjXuA" resolve="isBoundAsModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1xehy3Sk0cQ" role="3uHU7B">
              <node concept="2OqwBi" id="1xehy3Sk0cR" role="2Oq$k0">
                <node concept="2WthIp" id="1xehy3Sk0cS" role="2Oq$k0" />
                <node concept="1DTwFV" id="1xehy3Sk0cT" role="2OqNvi">
                  <ref role="2WH_rO" node="EMWAvBdVtN" resolve="treeNode" />
                </node>
              </node>
              <node concept="AQDAd" id="1xehy3Sk0cU" role="2OqNvi">
                <ref role="37wK5l" to="um17:1xehy3Shl61" resolve="isModuleNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="EMWAvBfOFs">
    <property role="3GE5qa" value="actions.node.module" />
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
        <node concept="3clFbF" id="aVVeoQw0XW" role="3cqZAp">
          <node concept="2OqwBi" id="aVVeoQw1zC" role="3clFbG">
            <node concept="37vLTw" id="aVVeoQw0XU" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfOF$" resolve="nodeTreeNode" />
            </node>
            <node concept="AQDAd" id="aVVeoQw2vy" role="2OqNvi">
              <ref role="37wK5l" to="csg2:aVVeoQvYRn" resolve="createModel" />
              <node concept="37vLTw" id="aVVeoQw2Bi" role="37wK5m">
                <ref role="3cqZAo" node="EMWAvBfOFH" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="EMWAvBfOGp" role="tmbBb">
      <node concept="3clFbS" id="EMWAvBfOGq" role="2VODD2">
        <node concept="3cpWs6" id="1xehy3ShlvF" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3Shm6F" role="3cqZAk">
            <node concept="2OqwBi" id="1xehy3Shl_g" role="2Oq$k0">
              <node concept="2WthIp" id="1xehy3Shl_j" role="2Oq$k0" />
              <node concept="1DTwFV" id="1xehy3Shl_l" role="2OqNvi">
                <ref role="2WH_rO" node="EMWAvBfOFv" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="1xehy3ShmgV" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Shl61" resolve="isModuleNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2n9Wvfbm8JC">
    <property role="3GE5qa" value="actions.tree" />
    <property role="TrG5h" value="CloudTreeGroup" />
    <node concept="ftmFs" id="2n9Wvfbm8JE" role="ftER_">
      <node concept="tCFHf" id="7UL57Peu2TG" role="ftvYc">
        <ref role="tCJdB" node="7UL57PetoVd" resolve="LoadHistoryForTree" />
      </node>
      <node concept="tCFHf" id="7ardNfhN5bk" role="ftvYc">
        <ref role="tCJdB" node="7ardNfhN4SF" resolve="RemoveTree" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2n9Wvfbmd$q">
    <property role="3GE5qa" value="actions.branch" />
    <property role="TrG5h" value="AddBranch" />
    <property role="2uzpH1" value="New Branch" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="2n9WvfbmmE4" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2n9WvfbmmE5" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2n9WvfbmmYp" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="2n9WvfbmmYq" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2n9Wvfbmd$r" role="tncku">
      <node concept="3clFbS" id="2n9Wvfbmd$s" role="2VODD2">
        <node concept="3cpWs8" id="2n9WvfbmrBc" role="3cqZAp">
          <node concept="3cpWsn" id="2n9WvfbmrBd" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="2n9WvfbmrBe" role="1tU5fm" />
            <node concept="2YIFZM" id="2n9WvfbmrBf" role="33vP2m">
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <node concept="2OqwBi" id="2n9WvfbmrBg" role="37wK5m">
                <node concept="2WthIp" id="2n9WvfbmrBh" role="2Oq$k0" />
                <node concept="1DTwFV" id="2n9WvfbmrBi" role="2OqNvi">
                  <ref role="2WH_rO" node="2n9WvfbmmE4" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="2n9WvfbmrBj" role="37wK5m">
                <property role="Xl_RC" value="Name" />
              </node>
              <node concept="Xl_RD" id="2n9WvfbmrBk" role="37wK5m">
                <property role="Xl_RC" value="Add Branch" />
              </node>
              <node concept="10Nm6u" id="2n9WvfbmrBl" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2n9WvfbmrOD" role="3cqZAp">
          <node concept="3clFbS" id="2n9WvfbmrOF" role="3clFbx">
            <node concept="3cpWs6" id="2n9Wvfbmt3j" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2n9Wvfbmsf4" role="3clFbw">
            <node concept="37vLTw" id="2n9WvfbmrPx" role="2Oq$k0">
              <ref role="3cqZAo" node="2n9WvfbmrBd" resolve="name" />
            </node>
            <node concept="17RlXB" id="2n9WvfbmsZl" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="2n9Wvfbne$7" role="3cqZAp">
          <node concept="3cpWsn" id="2n9Wvfbne$8" role="3cpWs9">
            <property role="TrG5h" value="branchTreeNode" />
            <node concept="3uibUv" id="2n9WvfbneyR" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
            </node>
            <node concept="1eOMI4" id="2n9Wvfbne$9" role="33vP2m">
              <node concept="10QFUN" id="2n9Wvfbne$a" role="1eOMHV">
                <node concept="3uibUv" id="2n9Wvfbne$b" role="10QFUM">
                  <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
                </node>
                <node concept="2OqwBi" id="2n9Wvfbne$c" role="10QFUP">
                  <node concept="2WthIp" id="2n9Wvfbne$d" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2n9Wvfbne$e" role="2OqNvi">
                    <ref role="2WH_rO" node="2n9WvfbmmYp" resolve="treeNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2n9WvfbncXh" role="3cqZAp">
          <node concept="3cpWsn" id="2n9WvfbncXi" role="3cpWs9">
            <property role="TrG5h" value="treeTreeNode" />
            <node concept="3uibUv" id="2n9Wvfbn9SO" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
            </node>
            <node concept="2OqwBi" id="2n9Wvfbnjzv" role="33vP2m">
              <node concept="37vLTw" id="2n9Wvfbnjzw" role="2Oq$k0">
                <ref role="3cqZAo" node="2n9Wvfbne$8" resolve="branchTreeNode" />
              </node>
              <node concept="liA8E" id="2n9Wvfbnjzx" role="2OqNvi">
                <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                <node concept="3VsKOn" id="2n9Wvfbnjzy" role="37wK5m">
                  <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2n9WvfbnzN1" role="3cqZAp">
          <node concept="3cpWsn" id="2n9WvfbnzN2" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="1m9roGB_LZn" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="2n9WvfbnzN3" role="33vP2m">
              <node concept="37vLTw" id="2n9WvfbnzN4" role="2Oq$k0">
                <ref role="3cqZAo" node="2n9WvfbncXi" resolve="treeTreeNode" />
              </node>
              <node concept="liA8E" id="2n9WvfbnzN5" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2n9Wvfbnwks" role="3cqZAp">
          <node concept="3cpWsn" id="2n9Wvfbnwkt" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="2n9Wvfbnwbe" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="2n9Wvfbnwku" role="33vP2m">
              <node concept="37vLTw" id="2n9Wvfbnwkv" role="2Oq$k0">
                <ref role="3cqZAo" node="2n9WvfbncXi" resolve="treeTreeNode" />
              </node>
              <node concept="liA8E" id="2n9Wvfbnwkw" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2n9Wvfbmrme" role="3cqZAp">
          <node concept="3cpWsn" id="2n9Wvfbmrmf" role="3cpWs9">
            <property role="TrG5h" value="infoBranch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1m9roGBHiiJ" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="2n9Wvfbmrmg" role="33vP2m">
              <node concept="37vLTw" id="2n9Wvfbnwkx" role="2Oq$k0">
                <ref role="3cqZAo" node="2n9Wvfbnwkt" resolve="cloudRepository" />
              </node>
              <node concept="liA8E" id="2n9Wvfbmrmp" role="2OqNvi">
                <ref role="37wK5l" to="csg2:6aRQr1X1RCt" resolve="getInfoBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n9WvfbmteV" role="3cqZAp">
          <node concept="2OqwBi" id="2n9Wvfbmtob" role="3clFbG">
            <node concept="37vLTw" id="2n9WvfbmteT" role="2Oq$k0">
              <ref role="3cqZAo" node="2n9Wvfbmrmf" resolve="infoBranch" />
            </node>
            <node concept="liA8E" id="2n9WvfbmtB9" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="2n9WvfbmtC6" role="37wK5m">
                <node concept="3clFbS" id="2n9WvfbmtC7" role="1bW5cS">
                  <node concept="3cpWs8" id="2n9Wvfbmpza" role="3cqZAp">
                    <node concept="3cpWsn" id="2n9Wvfbmpzb" role="3cpWs9">
                      <property role="TrG5h" value="treeInfo" />
                      <node concept="3Tqbb2" id="2n9Wvfbmpyp" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
                      </node>
                      <node concept="2OqwBi" id="2n9Wvfbmpzc" role="33vP2m">
                        <node concept="37vLTw" id="2n9WvfbncXq" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n9WvfbncXi" resolve="treeTreeNode" />
                        </node>
                        <node concept="liA8E" id="2n9Wvfbmpzj" role="2OqNvi">
                          <ref role="37wK5l" to="um17:6aRQr1X7l0y" resolve="getTreeInfo" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2n9Wvfbm_jX" role="3cqZAp">
                    <node concept="3clFbS" id="2n9Wvfbm_jZ" role="3clFbx">
                      <node concept="3clFbF" id="2n9WvfbnajF" role="3cqZAp">
                        <node concept="2YIFZM" id="2n9WvfbnatW" role="3clFbG">
                          <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <node concept="2OqwBi" id="2n9Wvfbnaz_" role="37wK5m">
                            <node concept="2WthIp" id="2n9WvfbnazC" role="2Oq$k0" />
                            <node concept="1DTwFV" id="2n9WvfbnazE" role="2OqNvi">
                              <ref role="2WH_rO" node="2n9WvfbmmE4" resolve="project" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="2n9WvfbncGu" role="37wK5m">
                            <node concept="Xl_RD" id="2n9Wvfbncxt" role="3uHU7w">
                              <property role="Xl_RC" value="' already exists" />
                            </node>
                            <node concept="3cpWs3" id="2n9Wvfbncxl" role="3uHU7B">
                              <node concept="Xl_RD" id="2n9Wvfbncxr" role="3uHU7B">
                                <property role="Xl_RC" value="Branch '" />
                              </node>
                              <node concept="37vLTw" id="2n9WvfbncMN" role="3uHU7w">
                                <ref role="3cqZAo" node="2n9WvfbmrBd" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2n9Wvfbnb2e" role="37wK5m">
                            <property role="Xl_RC" value="Add Branch" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1yReInPsiI" role="3cqZAp">
                        <node concept="10M0yZ" id="1yReInPsiJ" role="3cqZAk">
                          <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                          <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2n9Wvfbmx28" role="3clFbw">
                      <node concept="2OqwBi" id="2n9WvfbmuT6" role="2Oq$k0">
                        <node concept="37vLTw" id="2n9WvfbmuHB" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n9Wvfbmpzb" resolve="treeInfo" />
                        </node>
                        <node concept="3Tsc0h" id="2n9Wvfbmv9X" role="2OqNvi">
                          <ref role="3TtcxE" to="w7di:6aRQr1WVbN4" resolve="branches" />
                        </node>
                      </node>
                      <node concept="2HwmR7" id="2n9Wvfbmzi3" role="2OqNvi">
                        <node concept="1bVj0M" id="2n9Wvfbmzi5" role="23t8la">
                          <node concept="3clFbS" id="2n9Wvfbmzi6" role="1bW5cS">
                            <node concept="3clFbF" id="2n9Wvfbmzvb" role="3cqZAp">
                              <node concept="17R0WA" id="2n9Wvfbm$L2" role="3clFbG">
                                <node concept="37vLTw" id="2n9Wvfbm$TK" role="3uHU7w">
                                  <ref role="3cqZAo" node="2n9WvfbmrBd" resolve="name" />
                                </node>
                                <node concept="2OqwBi" id="2n9WvfbmzIj" role="3uHU7B">
                                  <node concept="37vLTw" id="2n9Wvfbmzva" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2n9Wvfbmzi7" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2n9Wvfbm$4k" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="2n9Wvfbmzi7" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="2n9Wvfbmzi8" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2n9WvfbnBzn" role="3cqZAp">
                    <node concept="3cpWsn" id="2n9WvfbnBzo" role="3cpWs9">
                      <property role="TrG5h" value="versionHash" />
                      <node concept="17QB3L" id="2n9WvfbnBs_" role="1tU5fm" />
                      <node concept="2OqwBi" id="2n9WvfbnBzu" role="33vP2m">
                        <node concept="2OqwBi" id="2n9WvfbnBzv" role="2Oq$k0">
                          <node concept="37vLTw" id="2n9WvfbnBzw" role="2Oq$k0">
                            <ref role="3cqZAo" node="2n9Wvfbnwkt" resolve="cloudRepository" />
                          </node>
                          <node concept="liA8E" id="2n9WvfbnBzx" role="2OqNvi">
                            <ref role="37wK5l" to="csg2:2n9Wvfbnqym" resolve="getClient" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2n9WvfbnBzy" role="2OqNvi">
                          <ref role="37wK5l" to="hvt5:~IKeyValueStore.get(java.lang.String)" resolve="get" />
                          <node concept="2OqwBi" id="2n9WvfbnBzz" role="37wK5m">
                            <node concept="37vLTw" id="2n9WvfbnBz$" role="2Oq$k0">
                              <ref role="3cqZAo" node="2n9WvfbnzN2" resolve="treeId" />
                            </node>
                            <node concept="liA8E" id="2n9WvfbnBz_" role="2OqNvi">
                              <ref role="37wK5l" to="xkhl:~TreeId.getBranchKey(java.lang.String)" resolve="getBranchKey" />
                              <node concept="2OqwBi" id="2n9WvfbnBzA" role="37wK5m">
                                <node concept="2OqwBi" id="2n9WvfbnBzB" role="2Oq$k0">
                                  <node concept="37vLTw" id="2n9WvfbnBzC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2n9Wvfbne$8" resolve="branchTreeNode" />
                                  </node>
                                  <node concept="liA8E" id="2n9WvfbnBzD" role="2OqNvi">
                                    <ref role="37wK5l" to="um17:6aRQr1X7JDh" resolve="getBranchInfo" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="2n9WvfbnBzE" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2n9WvfbnCBk" role="3cqZAp">
                    <node concept="2OqwBi" id="2n9WvfbnDZN" role="3clFbG">
                      <node concept="2OqwBi" id="2n9WvfbnCU4" role="2Oq$k0">
                        <node concept="37vLTw" id="2n9WvfbnCBi" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n9Wvfbnwkt" resolve="cloudRepository" />
                        </node>
                        <node concept="liA8E" id="2n9WvfbnDbJ" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2n9Wvfbnqym" resolve="getClient" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2n9WvfbnEC4" role="2OqNvi">
                        <ref role="37wK5l" to="hvt5:~IKeyValueStore.put(java.lang.String,java.lang.String)" resolve="put" />
                        <node concept="2OqwBi" id="2n9WvfbnF7A" role="37wK5m">
                          <node concept="37vLTw" id="2n9WvfbnEKp" role="2Oq$k0">
                            <ref role="3cqZAo" node="2n9WvfbnzN2" resolve="treeId" />
                          </node>
                          <node concept="liA8E" id="2n9WvfbnFvL" role="2OqNvi">
                            <ref role="37wK5l" to="xkhl:~TreeId.getBranchKey(java.lang.String)" resolve="getBranchKey" />
                            <node concept="37vLTw" id="2n9WvfbnFCx" role="37wK5m">
                              <ref role="3cqZAo" node="2n9WvfbmrBd" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2n9WvfbnG4y" role="37wK5m">
                          <ref role="3cqZAo" node="2n9WvfbnBzo" resolve="versionHash" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2n9WvfbnH8C" role="3cqZAp" />
                  <node concept="3cpWs8" id="2n9WvfbmB37" role="3cqZAp">
                    <node concept="3cpWsn" id="2n9WvfbmB38" role="3cpWs9">
                      <property role="TrG5h" value="branchInfo" />
                      <node concept="3Tqbb2" id="2n9WvfbmB1d" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbN1" resolve="BranchInfo" />
                      </node>
                      <node concept="1PxgMI" id="2n9WvfbmB39" role="33vP2m">
                        <node concept="chp4Y" id="2n9WvfbmB3a" role="3oSUPX">
                          <ref role="cht4Q" to="w7di:6aRQr1WVbN1" resolve="BranchInfo" />
                        </node>
                        <node concept="2YIFZM" id="2n9WvfbmB3b" role="1m5AlR">
                          <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                          <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                          <node concept="37vLTw" id="2n9WvfbmB3c" role="37wK5m">
                            <ref role="3cqZAo" node="2n9Wvfbmpzb" resolve="treeInfo" />
                          </node>
                          <node concept="359W_D" id="2n9WvfbmB3d" role="37wK5m">
                            <ref role="359W_E" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
                            <ref role="359W_F" to="w7di:6aRQr1WVbN4" resolve="branches" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2n9Wvfbm_Xj" role="3cqZAp">
                    <node concept="37vLTI" id="2n9WvfbmCrc" role="3clFbG">
                      <node concept="37vLTw" id="2n9WvfbmCvi" role="37vLTx">
                        <ref role="3cqZAo" node="2n9WvfbmrBd" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="2n9WvfbmBwN" role="37vLTJ">
                        <node concept="37vLTw" id="2n9WvfbmB3e" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n9WvfbmB38" resolve="branchInfo" />
                        </node>
                        <node concept="3TrcHB" id="2n9WvfbmBOZ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInPrwb" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInPs3N" role="3cqZAk">
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
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
  <node concept="tC5Ba" id="2n9WvfbmT9N">
    <property role="3GE5qa" value="actions.branch" />
    <property role="TrG5h" value="CloudBranchGroup" />
    <node concept="ftmFs" id="2n9WvfbmT9P" role="ftER_">
      <node concept="tCFHf" id="2n9WvfbmT9S" role="ftvYc">
        <ref role="tCJdB" node="2n9Wvfbmd$q" resolve="AddBranch" />
      </node>
      <node concept="tCFHf" id="2n9WvfbobI8" role="ftvYc">
        <ref role="tCJdB" node="2n9Wvfboby_" resolve="SwitchBranch" />
      </node>
      <node concept="tCFHf" id="2i1MHcnqs4M" role="ftvYc">
        <ref role="tCJdB" node="1me6UesGtnA" resolve="LoadHistoryForBranch" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2n9Wvfboby_">
    <property role="3GE5qa" value="actions.branch" />
    <property role="TrG5h" value="SwitchBranch" />
    <property role="2uzpH1" value="Switch to This Branch" />
    <node concept="1DS2jV" id="2n9WvfbokkE" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2n9WvfbokkF" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2n9WvfbokPa" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="2n9WvfbokPb" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2n9WvfbobyA" role="tncku">
      <node concept="3clFbS" id="2n9WvfbobyB" role="2VODD2">
        <node concept="3cpWs8" id="2n9Wvfbocc_" role="3cqZAp">
          <node concept="3cpWsn" id="2n9WvfboccA" role="3cpWs9">
            <property role="TrG5h" value="branchTreeNode" />
            <node concept="3uibUv" id="2n9WvfboccB" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
            </node>
            <node concept="1eOMI4" id="2n9WvfboccC" role="33vP2m">
              <node concept="10QFUN" id="2n9WvfboccD" role="1eOMHV">
                <node concept="3uibUv" id="2n9WvfboccE" role="10QFUM">
                  <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
                </node>
                <node concept="2OqwBi" id="2n9WvfboccF" role="10QFUP">
                  <node concept="2WthIp" id="2n9WvfboccG" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2n9WvfboccH" role="2OqNvi">
                    <ref role="2WH_rO" node="2n9WvfbokPa" resolve="treeNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobdl9e" role="3cqZAp">
          <node concept="2OqwBi" id="1JFLVobdlQw" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobdl9c" role="2Oq$k0">
              <ref role="3cqZAo" node="2n9WvfboccA" resolve="branchTreeNode" />
            </node>
            <node concept="liA8E" id="1JFLVobdn83" role="2OqNvi">
              <ref role="37wK5l" to="um17:1JFLVobcRa7" resolve="switchBranch" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4rrX99oiytR">
    <property role="TrG5h" value="BindAllModulesToTransient" />
    <node concept="2tJIrI" id="4rrX99oiyv9" role="jymVt" />
    <node concept="312cEg" id="4rrX99oiAjp" role="jymVt">
      <property role="TrG5h" value="repositories" />
      <node concept="3Tm6S6" id="4rrX99oiAjq" role="1B3o_S" />
      <node concept="3uibUv" id="4rrX99oiABY" role="1tU5fm">
        <ref role="3uigEE" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
      </node>
    </node>
    <node concept="312cEg" id="4rrX99oiFVF" role="jymVt">
      <property role="TrG5h" value="subscribedRepositories" />
      <node concept="3Tm6S6" id="4rrX99oiFVG" role="1B3o_S" />
      <node concept="2hMVRd" id="4rrX99oiGbm" role="1tU5fm">
        <node concept="3uibUv" id="4rrX99oiGuO" role="2hN53Y">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="2ShNRf" id="4rrX99oiHRM" role="33vP2m">
        <node concept="2i4dXS" id="4rrX99oiHBN" role="2ShVmc">
          <node concept="3uibUv" id="4rrX99oiHBO" role="HW$YZ">
            <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4rrX99oiUA6" role="jymVt">
      <property role="TrG5h" value="subscribedInfoBranches" />
      <node concept="3Tm6S6" id="4rrX99oiUA7" role="1B3o_S" />
      <node concept="2hMVRd" id="4rrX99oiUA8" role="1tU5fm">
        <node concept="3uibUv" id="4rrX99oiUA9" role="2hN53Y">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="2ShNRf" id="4rrX99oiUAa" role="33vP2m">
        <node concept="2i4dXS" id="4rrX99oiUAb" role="2ShVmc">
          <node concept="3uibUv" id="4rrX99oiUAc" role="HW$YZ">
            <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7PIbTornd2U" role="jymVt">
      <property role="TrG5h" value="subscribedActiveBranches" />
      <node concept="3Tm6S6" id="7PIbTornd2V" role="1B3o_S" />
      <node concept="2hMVRd" id="7PIbTorndNh" role="1tU5fm">
        <node concept="3uibUv" id="1m9roGBTEgN" role="2hN53Y">
          <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
        </node>
      </node>
      <node concept="2ShNRf" id="7PIbTornfp7" role="33vP2m">
        <node concept="2i4dXS" id="7PIbTorneZk" role="2ShVmc">
          <node concept="3uibUv" id="7PIbTorneZl" role="HW$YZ">
            <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3qO8C$8ox6o" role="jymVt">
      <property role="34CwA1" value="true" />
      <property role="TrG5h" value="requiresUpdate" />
      <node concept="3Tm6S6" id="3qO8C$8ox6p" role="1B3o_S" />
      <node concept="10P_77" id="3qO8C$8ozks" role="1tU5fm" />
      <node concept="3clFbT" id="3qO8C$8o$43" role="33vP2m" />
    </node>
    <node concept="312cEg" id="2dy3jLYqoYC" role="jymVt">
      <property role="TrG5h" value="fixedTreeIds" />
      <node concept="3Tm6S6" id="2dy3jLYqoYD" role="1B3o_S" />
      <node concept="_YKpA" id="2dy3jLYqs1G" role="1tU5fm">
        <node concept="3uibUv" id="2dy3jLYqs1I" role="_ZDj9">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99oiFE5" role="jymVt" />
    <node concept="3clFbW" id="2dy3jLYrgKf" role="jymVt">
      <node concept="37vLTG" id="2dy3jLYrjrT" role="3clF46">
        <property role="TrG5h" value="repositories" />
        <node concept="3uibUv" id="2dy3jLYrjrU" role="1tU5fm">
          <ref role="3uigEE" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
        </node>
      </node>
      <node concept="3cqZAl" id="2dy3jLYrgKh" role="3clF45" />
      <node concept="3Tm1VV" id="2dy3jLYrgKi" role="1B3o_S" />
      <node concept="3clFbS" id="2dy3jLYrgKj" role="3clF47">
        <node concept="1VxSAg" id="2dy3jLYrkjk" role="3cqZAp">
          <ref role="37wK5l" node="4rrX99oiyDS" resolve="BindAllModulesToTransient" />
          <node concept="37vLTw" id="2dy3jLYrl2Q" role="37wK5m">
            <ref role="3cqZAo" node="2dy3jLYrjrT" resolve="repositories" />
          </node>
          <node concept="10Nm6u" id="2dy3jLYrlrG" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2dy3jLYrdXn" role="jymVt" />
    <node concept="3clFbW" id="4rrX99oiyDS" role="jymVt">
      <node concept="37vLTG" id="4rrX99oiyEk" role="3clF46">
        <property role="TrG5h" value="repositories" />
        <node concept="3uibUv" id="4rrX99oiyOV" role="1tU5fm">
          <ref role="3uigEE" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
        </node>
      </node>
      <node concept="37vLTG" id="2dy3jLYqm0V" role="3clF46">
        <property role="TrG5h" value="fixedTreeIds" />
        <node concept="A3Dl8" id="2dy3jLYqmvF" role="1tU5fm">
          <node concept="3uibUv" id="2dy3jLYqmEB" role="A3Ik2">
            <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4rrX99oiyDU" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99oiyDV" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99oiyDW" role="3clF47">
        <node concept="3clFbF" id="4rrX99oiB3B" role="3cqZAp">
          <node concept="37vLTI" id="4rrX99oiC6y" role="3clFbG">
            <node concept="37vLTw" id="4rrX99oiCFJ" role="37vLTx">
              <ref role="3cqZAo" node="4rrX99oiyEk" resolve="repositories" />
            </node>
            <node concept="2OqwBi" id="4rrX99oiBg3" role="37vLTJ">
              <node concept="Xjq3P" id="4rrX99oiB3_" role="2Oq$k0" />
              <node concept="2OwXpG" id="4rrX99oiBI1" role="2OqNvi">
                <ref role="2Oxat5" node="4rrX99oiAjp" resolve="repositories" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2dy3jLYqsSI" role="3cqZAp">
          <node concept="37vLTI" id="2dy3jLYquCl" role="3clFbG">
            <node concept="3K4zz7" id="2dy3jLYr1Hl" role="37vLTx">
              <node concept="10Nm6u" id="2dy3jLYr28Q" role="3K4E3e" />
              <node concept="3clFbC" id="2dy3jLYqBqU" role="3K4Cdx">
                <node concept="10Nm6u" id="2dy3jLYqBVs" role="3uHU7w" />
                <node concept="37vLTw" id="2dy3jLYqAM9" role="3uHU7B">
                  <ref role="3cqZAo" node="2dy3jLYqm0V" resolve="fixedTreeIds" />
                </node>
              </node>
              <node concept="2OqwBi" id="2dy3jLYqwbl" role="3K4GZi">
                <node concept="37vLTw" id="2dy3jLYqvxq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2dy3jLYqm0V" resolve="fixedTreeIds" />
                </node>
                <node concept="ANE8D" id="2dy3jLYqwzI" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="2dy3jLYqtbF" role="37vLTJ">
              <node concept="Xjq3P" id="2dy3jLYqsSG" role="2Oq$k0" />
              <node concept="2OwXpG" id="2dy3jLYqty4" role="2OqNvi">
                <ref role="2Oxat5" node="2dy3jLYqoYC" resolve="fixedTreeIds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99oiz7c" role="3cqZAp">
          <node concept="2OqwBi" id="4rrX99oizi9" role="3clFbG">
            <node concept="37vLTw" id="4rrX99oiz7b" role="2Oq$k0">
              <ref role="3cqZAo" node="4rrX99oiyEk" resolve="repositories" />
            </node>
            <node concept="liA8E" id="4rrX99oizps" role="2OqNvi">
              <ref role="37wK5l" to="csg2:6aRQr1WPTla" resolve="addListener" />
              <node concept="Xjq3P" id="4rrX99oi_Kj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99olBkV" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99om7g5" role="3clFbG">
            <ref role="37wK5l" node="4rrX99olJcE" resolve="subscribeToRepositories" />
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99om8aE" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99om8aC" role="3clFbG">
            <ref role="37wK5l" node="4rrX99olUMW" resolve="subscribeToInfoBranches" />
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99olp7n" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99olp7l" role="3clFbG">
            <ref role="37wK5l" node="4rrX99okXWz" resolve="updateBindingsLater" />
          </node>
        </node>
        <node concept="3clFbF" id="3qO8C$8o_i0" role="3cqZAp">
          <node concept="2YIFZM" id="3qO8C$8o_lB" role="3clFbG">
            <ref role="37wK5l" to="csg2:4qNw5QU$ess" resolve="fixDelay" />
            <ref role="1Pybhc" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
            <node concept="3cmrfG" id="3qO8C$8o_GB" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
            <node concept="1bVj0M" id="3qO8C$8oANo" role="37wK5m">
              <node concept="3clFbS" id="3qO8C$8oANq" role="1bW5cS">
                <node concept="3clFbJ" id="3qO8C$8oBlk" role="3cqZAp">
                  <node concept="3clFbS" id="3qO8C$8oBlm" role="3clFbx">
                    <node concept="3clFbF" id="3qO8C$8oD_C" role="3cqZAp">
                      <node concept="37vLTI" id="3qO8C$8oEiA" role="3clFbG">
                        <node concept="3clFbT" id="3qO8C$8oEDO" role="37vLTx" />
                        <node concept="37vLTw" id="3qO8C$8oD_A" role="37vLTJ">
                          <ref role="3cqZAo" node="3qO8C$8ox6o" resolve="requiresUpdate" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3qO8C$8oFCx" role="3cqZAp">
                      <node concept="1rXfSq" id="3qO8C$8oFCv" role="3clFbG">
                        <ref role="37wK5l" node="4rrX99ojhAZ" resolve="updateBindings" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3qO8C$8oCHS" role="3clFbw">
                    <ref role="3cqZAo" node="3qO8C$8ox6o" resolve="requiresUpdate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99oiyvo" role="jymVt" />
    <node concept="3Tm1VV" id="4rrX99oiytS" role="1B3o_S" />
    <node concept="3uibUv" id="4rrX99oi_v_" role="EKbjA">
      <ref role="3uigEE" to="csg2:6aRQr1WPO$S" resolve="CloudRepositories.IListener" />
    </node>
    <node concept="3uibUv" id="4rrX99oi_WX" role="EKbjA">
      <ref role="3uigEE" to="csg2:1JFLVobh0lR" resolve="CloudRepository.IListener" />
    </node>
    <node concept="3uibUv" id="1m9roGBTuSp" role="EKbjA">
      <ref role="3uigEE" to="jks5:~IBranchListener" resolve="IBranchListener" />
    </node>
    <node concept="3clFb_" id="4rrX99oi_Md" role="jymVt">
      <property role="TrG5h" value="repositoriesChanged" />
      <node concept="3cqZAl" id="4rrX99oi_Me" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99oi_Mf" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99oi_Mh" role="3clF47">
        <node concept="3clFbF" id="4rrX99olUox" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99olUov" role="3clFbG">
            <ref role="37wK5l" node="4rrX99olJcE" resolve="subscribeToRepositories" />
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99om97n" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99om97l" role="3clFbG">
            <ref role="37wK5l" node="4rrX99olUMW" resolve="subscribeToInfoBranches" />
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99okVzN" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99ol4lc" role="3clFbG">
            <ref role="37wK5l" node="4rrX99okXWz" resolve="updateBindingsLater" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4rrX99oi_Mi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99olHGf" role="jymVt" />
    <node concept="3clFb_" id="4rrX99olJcE" role="jymVt">
      <property role="TrG5h" value="subscribeToRepositories" />
      <node concept="3cqZAl" id="4rrX99olJcG" role="3clF45" />
      <node concept="3Tmbuc" id="4rrX99olSJC" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99olJcI" role="3clF47">
        <node concept="2Gpval" id="4rrX99olSra" role="3cqZAp">
          <node concept="2GrKxI" id="4rrX99olSrb" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="3clFbS" id="4rrX99olSrc" role="2LFqv$">
            <node concept="3clFbF" id="4rrX99olSrd" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99olSre" role="3clFbG">
                <node concept="2GrUjf" id="4rrX99olSrf" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4rrX99olSrb" resolve="repo" />
                </node>
                <node concept="liA8E" id="4rrX99olSrg" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1JFLVobh32Z" resolve="addListener" />
                  <node concept="Xjq3P" id="4rrX99olSrh" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rrX99olSri" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99olSrj" role="3clFbG">
                <node concept="37vLTw" id="4rrX99olSrk" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rrX99oiFVF" resolve="subscribedRepositories" />
                </node>
                <node concept="TSZUe" id="4rrX99olSrl" role="2OqNvi">
                  <node concept="2GrUjf" id="4rrX99olSrm" role="25WWJ7">
                    <ref role="2Gs0qQ" node="4rrX99olSrb" resolve="repo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4rrX99olSrn" role="2GsD0m">
            <node concept="2OqwBi" id="4rrX99olSro" role="2Oq$k0">
              <node concept="37vLTw" id="4rrX99olSrp" role="2Oq$k0">
                <ref role="3cqZAo" node="4rrX99oiAjp" resolve="repositories" />
              </node>
              <node concept="liA8E" id="4rrX99olSrq" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="3zZkjj" id="4rrX99olSrr" role="2OqNvi">
              <node concept="1bVj0M" id="4rrX99olSrs" role="23t8la">
                <node concept="3clFbS" id="4rrX99olSrt" role="1bW5cS">
                  <node concept="3clFbF" id="4rrX99olSru" role="3cqZAp">
                    <node concept="3fqX7Q" id="4rrX99olSrv" role="3clFbG">
                      <node concept="2OqwBi" id="4rrX99olSrw" role="3fr31v">
                        <node concept="37vLTw" id="4rrX99olSrx" role="2Oq$k0">
                          <ref role="3cqZAo" node="4rrX99oiFVF" resolve="subscribedRepositories" />
                        </node>
                        <node concept="3JPx81" id="4rrX99olSry" role="2OqNvi">
                          <node concept="37vLTw" id="4rrX99olSrz" role="25WWJ7">
                            <ref role="3cqZAo" node="4rrX99olSr$" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4rrX99olSr$" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4rrX99olSr_" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99oiA3G" role="jymVt" />
    <node concept="3clFb_" id="4rrX99oi_Zi" role="jymVt">
      <property role="TrG5h" value="connectionStatusChanged" />
      <node concept="37vLTG" id="4rrX99oi_Zj" role="3clF46">
        <property role="TrG5h" value="connected" />
        <node concept="10P_77" id="4rrX99oi_Zk" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4rrX99oi_Zl" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99oi_Zm" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99oi_Zo" role="3clF47">
        <node concept="3clFbF" id="4rrX99om5rb" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99om5r9" role="3clFbG">
            <ref role="37wK5l" node="4rrX99olUMW" resolve="subscribeToInfoBranches" />
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99okVZM" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99ol3re" role="3clFbG">
            <ref role="37wK5l" node="4rrX99okXWz" resolve="updateBindingsLater" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4rrX99oi_Zp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99olUvm" role="jymVt" />
    <node concept="3clFb_" id="4rrX99olUMW" role="jymVt">
      <property role="TrG5h" value="subscribeToInfoBranches" />
      <node concept="3cqZAl" id="4rrX99olUMY" role="3clF45" />
      <node concept="3Tmbuc" id="4rrX99om3b4" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99olUN0" role="3clF47">
        <node concept="2Gpval" id="4rrX99om2BR" role="3cqZAp">
          <node concept="2GrKxI" id="4rrX99om2BS" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="3clFbS" id="4rrX99om2BT" role="2LFqv$">
            <node concept="3cpWs8" id="4rrX99om2BU" role="3cqZAp">
              <node concept="3cpWsn" id="4rrX99om2BV" role="3cpWs9">
                <property role="TrG5h" value="infoBranch" />
                <node concept="3uibUv" id="1m9roGBTxQi" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                </node>
                <node concept="2OqwBi" id="4rrX99om2BX" role="33vP2m">
                  <node concept="2GrUjf" id="4rrX99om2BY" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4rrX99om2BS" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="4rrX99om2BZ" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:6aRQr1X1RCt" resolve="getInfoBranch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rrX99om2C0" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99om2C1" role="3clFbG">
                <node concept="37vLTw" id="4rrX99om2C2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rrX99om2BV" resolve="infoBranch" />
                </node>
                <node concept="liA8E" id="4rrX99om2C3" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IBranch.addListener(org.modelix.model.api.IBranchListener)" resolve="addListener" />
                  <node concept="Xjq3P" id="4rrX99om2C4" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rrX99om2C5" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99om2C6" role="3clFbG">
                <node concept="37vLTw" id="4rrX99om2C7" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rrX99oiUA6" resolve="subscribedInfoBranches" />
                </node>
                <node concept="TSZUe" id="4rrX99om2C8" role="2OqNvi">
                  <node concept="2GrUjf" id="4rrX99om2C9" role="25WWJ7">
                    <ref role="2Gs0qQ" node="4rrX99om2BS" resolve="repo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4rrX99omUDg" role="2GsD0m">
            <node concept="2OqwBi" id="4rrX99om2Ca" role="2Oq$k0">
              <node concept="37vLTw" id="4rrX99om2Cb" role="2Oq$k0">
                <ref role="3cqZAo" node="4rrX99oiFVF" resolve="subscribedRepositories" />
              </node>
              <node concept="66VNe" id="4rrX99om2Cc" role="2OqNvi">
                <node concept="37vLTw" id="4rrX99om2Cd" role="576Qk">
                  <ref role="3cqZAo" node="4rrX99oiUA6" resolve="subscribedInfoBranches" />
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="4rrX99omVAR" role="2OqNvi">
              <node concept="1bVj0M" id="4rrX99omVAT" role="23t8la">
                <node concept="3clFbS" id="4rrX99omVAU" role="1bW5cS">
                  <node concept="3clFbF" id="4rrX99omWn2" role="3cqZAp">
                    <node concept="2OqwBi" id="4rrX99omWJm" role="3clFbG">
                      <node concept="37vLTw" id="4rrX99omWn1" role="2Oq$k0">
                        <ref role="3cqZAo" node="4rrX99omVAV" resolve="it" />
                      </node>
                      <node concept="liA8E" id="4rrX99omXgE" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4rrX99omVAV" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4rrX99omVAW" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99ojfco" role="jymVt" />
    <node concept="3clFb_" id="4rrX99ojedH" role="jymVt">
      <property role="TrG5h" value="treeChanged" />
      <node concept="37vLTG" id="4rrX99ojedI" role="3clF46">
        <property role="TrG5h" value="oldTree" />
        <node concept="3uibUv" id="1m9roGBTy4s" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4rrX99ojedK" role="3clF46">
        <property role="TrG5h" value="newTree" />
        <node concept="3uibUv" id="1m9roGBTykp" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="4rrX99ojedM" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99ojedN" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99ojedP" role="3clF47">
        <node concept="3clFbF" id="4rrX99ol2CJ" role="3cqZAp">
          <node concept="1rXfSq" id="4rrX99ol2CI" role="3clFbG">
            <ref role="37wK5l" node="4rrX99okXWz" resolve="updateBindingsLater" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4rrX99ojedQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99ojg9Z" role="jymVt" />
    <node concept="3clFb_" id="4rrX99okXWz" role="jymVt">
      <property role="TrG5h" value="updateBindingsLater" />
      <node concept="3cqZAl" id="4rrX99okXW_" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99okXWA" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99okXWB" role="3clF47">
        <node concept="3clFbF" id="3qO8C$8oHUu" role="3cqZAp">
          <node concept="37vLTI" id="3qO8C$8oIDk" role="3clFbG">
            <node concept="3clFbT" id="3qO8C$8oJeT" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="3qO8C$8oHUs" role="37vLTJ">
              <ref role="3cqZAo" node="3qO8C$8ox6o" resolve="requiresUpdate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99okWFP" role="jymVt" />
    <node concept="3clFb_" id="4rrX99ojhAZ" role="jymVt">
      <property role="TrG5h" value="updateBindings" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="4rrX99ojhB1" role="3clF45" />
      <node concept="3Tmbuc" id="4rrX99ojpC5" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99ojhB3" role="3clF47">
        <node concept="3cpWs8" id="7PIbTorpEjh" role="3cqZAp">
          <node concept="3cpWsn" id="7PIbTorpEjk" role="3cpWs9">
            <property role="TrG5h" value="allActiveBranches" />
            <node concept="_YKpA" id="7PIbTorpEjd" role="1tU5fm">
              <node concept="3uibUv" id="1m9roGBTy_6" role="_ZDj9">
                <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
              </node>
            </node>
            <node concept="2ShNRf" id="7PIbTorpFKq" role="33vP2m">
              <node concept="Tc6Ow" id="7PIbTorpFrb" role="2ShVmc">
                <node concept="3uibUv" id="7PIbTorpFrc" role="HW$YZ">
                  <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7PIbTorpDB9" role="3cqZAp" />
        <node concept="2Gpval" id="7PIbTorpehl" role="3cqZAp">
          <node concept="2GrKxI" id="7PIbTorpehn" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="3clFbS" id="7PIbTorpehr" role="2LFqv$">
            <node concept="3cpWs8" id="7PIbTorpryy" role="3cqZAp">
              <node concept="3cpWsn" id="7PIbTorpryz" role="3cpWs9">
                <property role="TrG5h" value="trees" />
                <node concept="_YKpA" id="7PIbTorprmR" role="1tU5fm">
                  <node concept="3uibUv" id="7PIbTorprmU" role="_ZDj9">
                    <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2dy3jLYqyvG" role="3cqZAp">
              <node concept="3clFbS" id="2dy3jLYqyvI" role="3clFbx">
                <node concept="3cpWs8" id="6HlxtAUU_KA" role="3cqZAp">
                  <node concept="3cpWsn" id="6HlxtAUU_KB" role="3cpWs9">
                    <property role="TrG5h" value="info" />
                    <node concept="3Tqbb2" id="6HlxtAUUx4Z" role="1tU5fm">
                      <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                    </node>
                    <node concept="2OqwBi" id="6HlxtAUU_KC" role="33vP2m">
                      <node concept="2GrUjf" id="6HlxtAUU_KD" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7PIbTorpehn" resolve="repo" />
                      </node>
                      <node concept="liA8E" id="6HlxtAUU_KE" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:6aRQr1WVmiT" resolve="getInfo" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2dy3jLYqwFZ" role="3cqZAp">
                  <node concept="37vLTI" id="2dy3jLYqwG1" role="3clFbG">
                    <node concept="2OqwBi" id="7PIbTorpry$" role="37vLTx">
                      <node concept="2OqwBi" id="7PIbTorpry_" role="2Oq$k0">
                        <node concept="2GrUjf" id="7PIbTorpryA" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7PIbTorpehn" resolve="repo" />
                        </node>
                        <node concept="liA8E" id="7PIbTorpryB" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:6aRQr1X1RCt" resolve="getInfoBranch" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7PIbTorpryC" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                        <node concept="1bVj0M" id="7PIbTorpryD" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="7PIbTorpryE" role="1bW5cS">
                            <node concept="3cpWs6" id="7PIbTorpryF" role="3cqZAp">
                              <node concept="2OqwBi" id="7PIbTorpryG" role="3cqZAk">
                                <node concept="2OqwBi" id="7PIbTorpryH" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7PIbTorpryI" role="2Oq$k0">
                                    <node concept="37vLTw" id="6HlxtAUU_KF" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6HlxtAUU_KB" resolve="info" />
                                    </node>
                                    <node concept="3Tsc0h" id="7PIbTorpryM" role="2OqNvi">
                                      <ref role="3TtcxE" to="w7di:6aRQr1WVbN2" resolve="trees" />
                                    </node>
                                  </node>
                                  <node concept="3$u5V9" id="7PIbTorpryN" role="2OqNvi">
                                    <node concept="1bVj0M" id="7PIbTorpryO" role="23t8la">
                                      <node concept="3clFbS" id="7PIbTorpryP" role="1bW5cS">
                                        <node concept="3clFbF" id="7PIbTorpryQ" role="3cqZAp">
                                          <node concept="2ShNRf" id="7PIbTorpryR" role="3clFbG">
                                            <node concept="1pGfFk" id="7PIbTorpryS" role="2ShVmc">
                                              <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                                              <node concept="2OqwBi" id="7PIbTorpryT" role="37wK5m">
                                                <node concept="37vLTw" id="7PIbTorpryU" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7PIbTorpryW" resolve="it" />
                                                </node>
                                                <node concept="3TrcHB" id="7PIbTorpryV" role="2OqNvi">
                                                  <ref role="3TsBF5" to="w7di:6aRQr1WVbN6" resolve="id" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="7PIbTorpryW" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="7PIbTorpryX" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="7PIbTorpryY" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2dy3jLYqwG5" role="37vLTJ">
                      <ref role="3cqZAo" node="7PIbTorpryz" resolve="trees" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2dy3jLYr3Iz" role="3clFbw">
                <node concept="10Nm6u" id="2dy3jLYr4Af" role="3uHU7w" />
                <node concept="37vLTw" id="2dy3jLYqzi6" role="3uHU7B">
                  <ref role="3cqZAo" node="2dy3jLYqoYC" resolve="fixedTreeIds" />
                </node>
              </node>
              <node concept="9aQIb" id="2dy3jLYr6zw" role="9aQIa">
                <node concept="3clFbS" id="2dy3jLYr6zx" role="9aQI4">
                  <node concept="3clFbF" id="2dy3jLYr72Q" role="3cqZAp">
                    <node concept="37vLTI" id="2dy3jLYr7xi" role="3clFbG">
                      <node concept="37vLTw" id="2dy3jLYr8cf" role="37vLTx">
                        <ref role="3cqZAo" node="2dy3jLYqoYC" resolve="fixedTreeIds" />
                      </node>
                      <node concept="37vLTw" id="2dy3jLYr72P" role="37vLTJ">
                        <ref role="3cqZAo" node="7PIbTorpryz" resolve="trees" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7PIbTorptgT" role="3cqZAp">
              <node concept="2GrKxI" id="7PIbTorptgV" role="2Gsz3X">
                <property role="TrG5h" value="treeId" />
              </node>
              <node concept="37vLTw" id="7PIbTorptCj" role="2GsD0m">
                <ref role="3cqZAo" node="7PIbTorpryz" resolve="trees" />
              </node>
              <node concept="3clFbS" id="7PIbTorptgZ" role="2LFqv$">
                <node concept="3cpWs8" id="7PIbTorpv$c" role="3cqZAp">
                  <node concept="3cpWsn" id="7PIbTorpv$d" role="3cpWs9">
                    <property role="TrG5h" value="activeBranch" />
                    <node concept="3uibUv" id="7PIbTorpvvS" role="1tU5fm">
                      <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
                    </node>
                    <node concept="2OqwBi" id="7PIbTorpv$e" role="33vP2m">
                      <node concept="2GrUjf" id="7PIbTorpv$f" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7PIbTorpehn" resolve="repo" />
                      </node>
                      <node concept="liA8E" id="7PIbTorpv$g" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                        <node concept="2GrUjf" id="7PIbTorpv$h" role="37wK5m">
                          <ref role="2Gs0qQ" node="7PIbTorptgV" resolve="treeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7PIbTorpGRs" role="3cqZAp">
                  <node concept="2OqwBi" id="7PIbTorpI3y" role="3clFbG">
                    <node concept="37vLTw" id="7PIbTorpGRq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7PIbTorpEjk" resolve="allActiveBranches" />
                    </node>
                    <node concept="TSZUe" id="7PIbTorpJH6" role="2OqNvi">
                      <node concept="37vLTw" id="7PIbTorpKrl" role="25WWJ7">
                        <ref role="3cqZAo" node="7PIbTorpv$d" resolve="activeBranch" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7PIbTorpwv5" role="3cqZAp">
                  <node concept="2OqwBi" id="7PIbTorpwv6" role="3clFbG">
                    <node concept="2OqwBi" id="7PIbTorpwv7" role="2Oq$k0">
                      <node concept="37vLTw" id="7PIbTorpykL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7PIbTorpv$d" resolve="activeBranch" />
                      </node>
                      <node concept="liA8E" id="7PIbTorpwv9" role="2OqNvi">
                        <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7PIbTorpwva" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                      <node concept="1bVj0M" id="7PIbTorpwvb" role="37wK5m">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="7PIbTorpwvc" role="1bW5cS">
                          <node concept="3cpWs8" id="1yReInPwQp" role="3cqZAp">
                            <node concept="3cpWsn" id="1yReInPwQq" role="3cpWs9">
                              <property role="TrG5h" value="allChildren_" />
                              <node concept="A3Dl8" id="1yReInPysq" role="1tU5fm">
                                <node concept="3uibUv" id="1yReInPyss" role="A3Ik2">
                                  <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1yReInPwQr" role="33vP2m">
                                <node concept="2OqwBi" id="1yReInPwQs" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1yReInPwQt" role="2Oq$k0">
                                    <node concept="37vLTw" id="1yReInPwQu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7PIbTorpv$d" resolve="activeBranch" />
                                    </node>
                                    <node concept="liA8E" id="1yReInPwQv" role="2OqNvi">
                                      <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1yReInPwQw" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1yReInPwQx" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
                                  <node concept="10M0yZ" id="1yReInPwQy" role="37wK5m">
                                    <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                                    <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="1m9roGBAvs8" role="3cqZAp">
                            <node concept="3cpWsn" id="1m9roGBAvs9" role="3cpWs9">
                              <property role="TrG5h" value="allChildren" />
                              <node concept="A3Dl8" id="1m9roGBAwCg" role="1tU5fm">
                                <node concept="3Tqbb2" id="1m9roGBAwCi" role="A3Ik2" />
                              </node>
                              <node concept="2OqwBi" id="1yReInPzjt" role="33vP2m">
                                <node concept="37vLTw" id="1yReInPwQz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1yReInPwQq" resolve="allChildren_" />
                                </node>
                                <node concept="3$u5V9" id="1yReInPzWQ" role="2OqNvi">
                                  <node concept="1bVj0M" id="1yReInPzWS" role="23t8la">
                                    <node concept="3clFbS" id="1yReInPzWT" role="1bW5cS">
                                      <node concept="3cpWs8" id="1yReInP$mP" role="3cqZAp">
                                        <node concept="3cpWsn" id="1yReInP$mQ" role="3cpWs9">
                                          <property role="TrG5h" value="n" />
                                          <node concept="3Tqbb2" id="1yReInP$mR" role="1tU5fm" />
                                          <node concept="2YIFZM" id="1yReInP$mS" role="33vP2m">
                                            <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                            <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                            <node concept="2OqwBi" id="1yReInP$mT" role="37wK5m">
                                              <node concept="10M0yZ" id="1yReInP$mU" role="2Oq$k0">
                                                <ref role="3cqZAo" to="jks5:~PNodeAdapter.Companion" resolve="Companion" />
                                                <ref role="1PxDUh" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                              </node>
                                              <node concept="liA8E" id="1yReInP$mV" role="2OqNvi">
                                                <ref role="37wK5l" to="jks5:~PNodeAdapter$Companion.wrap(long,org.modelix.model.api.IBranch)" resolve="wrap" />
                                                <node concept="37vLTw" id="1yReInP$mW" role="37wK5m">
                                                  <ref role="3cqZAo" node="1yReInPzWU" resolve="it" />
                                                </node>
                                                <node concept="2OqwBi" id="1yReInP$mX" role="37wK5m">
                                                  <node concept="37vLTw" id="1yReInP$mY" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7PIbTorpv$d" resolve="activeBranch" />
                                                  </node>
                                                  <node concept="liA8E" id="1yReInP$mZ" role="2OqNvi">
                                                    <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="1yReInP$n2" role="3cqZAp">
                                        <node concept="37vLTw" id="1yReInP$n3" role="3clFbG">
                                          <ref role="3cqZAo" node="1yReInP$mQ" resolve="n" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="1yReInPzWU" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="1yReInPzWV" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="1m9roGBAguq" role="3cqZAp" />
                          <node concept="3cpWs8" id="7PIbTorpwvd" role="3cqZAp">
                            <node concept="3cpWsn" id="7PIbTorpwve" role="3cpWs9">
                              <property role="TrG5h" value="modules" />
                              <node concept="A3Dl8" id="7PIbTorpwvf" role="1tU5fm">
                                <node concept="3Tqbb2" id="7PIbTorpwvg" role="A3Ik2">
                                  <ref role="ehGHo" to="w7di:qmkA5fOskf" resolve="Module" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7PIbTorpwvh" role="33vP2m">
                                <node concept="37vLTw" id="1m9roGBA$t5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1m9roGBAvs9" resolve="allChildren" />
                                </node>
                                <node concept="v3k3i" id="7PIbTorpwvF" role="2OqNvi">
                                  <node concept="chp4Y" id="3uw$nPCCQRh" role="v3oSu">
                                    <ref role="cht4Q" to="w7di:qmkA5fOskf" resolve="Module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2Gpval" id="7PIbTorpwvH" role="3cqZAp">
                            <node concept="2GrKxI" id="7PIbTorpwvI" role="2Gsz3X">
                              <property role="TrG5h" value="module" />
                            </node>
                            <node concept="37vLTw" id="7PIbTorpwvJ" role="2GsD0m">
                              <ref role="3cqZAo" node="7PIbTorpwve" resolve="modules" />
                            </node>
                            <node concept="3clFbS" id="7PIbTorpwvK" role="2LFqv$">
                              <node concept="3cpWs8" id="7PIbTorpwvL" role="3cqZAp">
                                <node concept="3cpWsn" id="7PIbTorpwvM" role="3cpWs9">
                                  <property role="TrG5h" value="moduleNodeId" />
                                  <node concept="3cpWsb" id="7PIbTorpwvN" role="1tU5fm" />
                                  <node concept="2OqwBi" id="7PIbTorpwvO" role="33vP2m">
                                    <node concept="1eOMI4" id="7PIbTorpwvP" role="2Oq$k0">
                                      <node concept="10QFUN" id="7PIbTorpwvQ" role="1eOMHV">
                                        <node concept="2YIFZM" id="7PIbTorpwvR" role="10QFUP">
                                          <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                          <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                          <node concept="2GrUjf" id="7PIbTorpwvS" role="37wK5m">
                                            <ref role="2Gs0qQ" node="7PIbTorpwvI" resolve="module" />
                                          </node>
                                        </node>
                                        <node concept="3uibUv" id="7PIbTorpwvT" role="10QFUM">
                                          <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7PIbTorpwvU" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7PIbTorpwvV" role="3cqZAp">
                                <node concept="3clFbS" id="7PIbTorpwvW" role="3clFbx">
                                  <node concept="3N13vt" id="7PIbTorpwvX" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="7PIbTorpwvY" role="3clFbw">
                                  <node concept="2GrUjf" id="7PIbTorp_nz" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7PIbTorpehn" resolve="repo" />
                                  </node>
                                  <node concept="liA8E" id="7PIbTorpww2" role="2OqNvi">
                                    <ref role="37wK5l" to="csg2:5D5xac1qIoP" resolve="hasModuleBinding" />
                                    <node concept="2GrUjf" id="7PIbTorpAdj" role="37wK5m">
                                      <ref role="2Gs0qQ" node="7PIbTorptgV" resolve="treeId" />
                                    </node>
                                    <node concept="37vLTw" id="7PIbTorpww4" role="37wK5m">
                                      <ref role="3cqZAo" node="7PIbTorpwvM" resolve="moduleNodeId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7PIbTorpww5" role="3cqZAp">
                                <node concept="2OqwBi" id="7PIbTorpww6" role="3clFbG">
                                  <node concept="2GrUjf" id="7PIbTorpww7" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7PIbTorpehn" resolve="repo" />
                                  </node>
                                  <node concept="liA8E" id="7PIbTorpww8" role="2OqNvi">
                                    <ref role="37wK5l" to="csg2:EMWAvBf_zL" resolve="addModuleBinding" />
                                    <node concept="2ShNRf" id="7PIbTorpww9" role="37wK5m">
                                      <node concept="1pGfFk" id="7PIbTorpwwa" role="2ShVmc">
                                        <ref role="37wK5l" to="csg2:EMWAvBfuHL" resolve="TransientModuleBinding" />
                                        <node concept="2GrUjf" id="7PIbTorpAM9" role="37wK5m">
                                          <ref role="2Gs0qQ" node="7PIbTorptgV" resolve="treeId" />
                                        </node>
                                        <node concept="37vLTw" id="7PIbTorpwwc" role="37wK5m">
                                          <ref role="3cqZAo" node="7PIbTorpwvM" resolve="moduleNodeId" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1yReInPwv5" role="3cqZAp">
                            <node concept="10M0yZ" id="1yReInPwv6" role="3cqZAk">
                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
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
          <node concept="2OqwBi" id="7PIbTorpk0A" role="2GsD0m">
            <node concept="2OqwBi" id="7PIbTorpfwe" role="2Oq$k0">
              <node concept="37vLTw" id="7PIbTorpfwf" role="2Oq$k0">
                <ref role="3cqZAo" node="4rrX99oiAjp" resolve="repositories" />
              </node>
              <node concept="liA8E" id="7PIbTorpfwg" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="3zZkjj" id="7PIbTorplcO" role="2OqNvi">
              <node concept="1bVj0M" id="7PIbTorplcQ" role="23t8la">
                <node concept="3clFbS" id="7PIbTorplcR" role="1bW5cS">
                  <node concept="3clFbF" id="7PIbTorplEw" role="3cqZAp">
                    <node concept="2OqwBi" id="7PIbTorplPP" role="3clFbG">
                      <node concept="37vLTw" id="7PIbTorplEv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7PIbTorplcS" resolve="it" />
                      </node>
                      <node concept="liA8E" id="7PIbTorpm9z" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7PIbTorplcS" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7PIbTorplcT" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7PIbTorpKQb" role="3cqZAp" />
        <node concept="2Gpval" id="7PIbTorpLdO" role="3cqZAp">
          <node concept="2GrKxI" id="7PIbTorpLdP" role="2Gsz3X">
            <property role="TrG5h" value="newBranch" />
          </node>
          <node concept="3clFbS" id="7PIbTorpLdQ" role="2LFqv$">
            <node concept="3clFbF" id="7PIbTorpLdR" role="3cqZAp">
              <node concept="2OqwBi" id="7PIbTorpLdS" role="3clFbG">
                <node concept="2GrUjf" id="7PIbTorpLdT" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7PIbTorpLdP" resolve="newBranch" />
                </node>
                <node concept="liA8E" id="7PIbTorpLdU" role="2OqNvi">
                  <ref role="37wK5l" to="5440:~ActiveBranch.addListener(org.modelix.model.api.IBranchListener)" resolve="addListener" />
                  <node concept="Xjq3P" id="7PIbTorpLdV" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7PIbTorpLdW" role="2GsD0m">
            <node concept="2OqwBi" id="7PIbTorpLdX" role="2Oq$k0">
              <node concept="37vLTw" id="7PIbTorpMOa" role="2Oq$k0">
                <ref role="3cqZAo" node="7PIbTorpEjk" resolve="allActiveBranches" />
              </node>
              <node concept="66VNe" id="7PIbTorpLdZ" role="2OqNvi">
                <node concept="37vLTw" id="7PIbTorpLe0" role="576Qk">
                  <ref role="3cqZAo" node="7PIbTornd2U" resolve="subscribedActiveBranches" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7PIbTorpLe1" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7PIbTorpLe2" role="3cqZAp" />
        <node concept="2Gpval" id="7PIbTorpLe3" role="3cqZAp">
          <node concept="2GrKxI" id="7PIbTorpLe4" role="2Gsz3X">
            <property role="TrG5h" value="removedBranch" />
          </node>
          <node concept="2OqwBi" id="7PIbTorpLe5" role="2GsD0m">
            <node concept="2OqwBi" id="7PIbTorpLe6" role="2Oq$k0">
              <node concept="37vLTw" id="7PIbTorpLe7" role="2Oq$k0">
                <ref role="3cqZAo" node="7PIbTornd2U" resolve="subscribedActiveBranches" />
              </node>
              <node concept="66VNe" id="7PIbTorpLe8" role="2OqNvi">
                <node concept="37vLTw" id="7PIbTorpNeZ" role="576Qk">
                  <ref role="3cqZAo" node="7PIbTorpEjk" resolve="allActiveBranches" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7PIbTorpLea" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="7PIbTorpLeb" role="2LFqv$">
            <node concept="3clFbF" id="7PIbTorpLec" role="3cqZAp">
              <node concept="2OqwBi" id="7PIbTorpLed" role="3clFbG">
                <node concept="2GrUjf" id="7PIbTorpLee" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7PIbTorpLe4" resolve="removedBranch" />
                </node>
                <node concept="liA8E" id="7PIbTorpLef" role="2OqNvi">
                  <ref role="37wK5l" to="5440:~ActiveBranch.removeListener(org.modelix.model.api.IBranchListener)" resolve="removeListener" />
                  <node concept="Xjq3P" id="7PIbTorpLeg" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7PIbTorpLeh" role="3cqZAp">
              <node concept="2OqwBi" id="7PIbTorpLei" role="3clFbG">
                <node concept="37vLTw" id="7PIbTorpLej" role="2Oq$k0">
                  <ref role="3cqZAo" node="7PIbTornd2U" resolve="subscribedActiveBranches" />
                </node>
                <node concept="3dhRuq" id="7PIbTorpLek" role="2OqNvi">
                  <node concept="2GrUjf" id="7PIbTorpLel" role="25WWJ7">
                    <ref role="2Gs0qQ" node="7PIbTorpLe4" resolve="removedBranch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99ojrk5" role="jymVt" />
    <node concept="3clFb_" id="4rrX99ojsxh" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4rrX99ojsxj" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99ojsxk" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99ojsxl" role="3clF47">
        <node concept="2Gpval" id="4rrX99ojwbX" role="3cqZAp">
          <node concept="2GrKxI" id="4rrX99ojwbY" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="37vLTw" id="4rrX99ojwQR" role="2GsD0m">
            <ref role="3cqZAo" node="4rrX99oiUA6" resolve="subscribedInfoBranches" />
          </node>
          <node concept="3clFbS" id="4rrX99ojwc0" role="2LFqv$">
            <node concept="3clFbF" id="4rrX99ojxps" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99ojxX1" role="3clFbG">
                <node concept="2OqwBi" id="4rrX99ojxuZ" role="2Oq$k0">
                  <node concept="2GrUjf" id="4rrX99ojxpr" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4rrX99ojwbY" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="4rrX99ojxOD" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:6aRQr1X1RCt" resolve="getInfoBranch" />
                  </node>
                </node>
                <node concept="liA8E" id="4rrX99ojyqd" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IBranch.removeListener(org.modelix.model.api.IBranchListener)" resolve="removeListener" />
                  <node concept="Xjq3P" id="4rrX99ojyMa" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4rrX99ojzLW" role="3cqZAp">
          <node concept="2GrKxI" id="4rrX99ojzLY" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="37vLTw" id="4rrX99oj$Bi" role="2GsD0m">
            <ref role="3cqZAo" node="4rrX99oiFVF" resolve="subscribedRepositories" />
          </node>
          <node concept="3clFbS" id="4rrX99ojzM2" role="2LFqv$">
            <node concept="3clFbF" id="4rrX99oj_68" role="3cqZAp">
              <node concept="2OqwBi" id="4rrX99oj_bF" role="3clFbG">
                <node concept="2GrUjf" id="4rrX99oj_67" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4rrX99ojzLY" resolve="repo" />
                </node>
                <node concept="liA8E" id="4rrX99oj_CW" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1JFLVobhilq" resolve="removeListener" />
                  <node concept="Xjq3P" id="4rrX99ojA18" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rrX99ojAWE" role="3cqZAp">
          <node concept="2OqwBi" id="4rrX99ojB$H" role="3clFbG">
            <node concept="37vLTw" id="4rrX99ojAWC" role="2Oq$k0">
              <ref role="3cqZAo" node="4rrX99oiAjp" resolve="repositories" />
            </node>
            <node concept="liA8E" id="4rrX99ojBJZ" role="2OqNvi">
              <ref role="37wK5l" to="csg2:6aRQr1WPZML" resolve="removeListener" />
              <node concept="Xjq3P" id="4rrX99ojC7F" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sEfby" id="7UL57PeskT5">
    <property role="TrG5h" value="CloudHistoryTool" />
    <property role="2XNbzY" value="Cloud History" />
    <node concept="2XrIbr" id="7UL57PetjBV" role="2XNbBy">
      <property role="TrG5h" value="load" />
      <node concept="37vLTG" id="1me6UesAsHR" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <node concept="3uibUv" id="1me6UesAvk_" role="1tU5fm">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="1me6UesAJSZ" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="1me6UesAMzw" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7UL57PetjO0" role="3clF46">
        <property role="TrG5h" value="headVersion" />
        <node concept="3uibUv" id="7UL57PetjV2" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~CLVersion" resolve="CLVersion" />
        </node>
      </node>
      <node concept="3cqZAl" id="7UL57PetjNH" role="3clF45" />
      <node concept="3clFbS" id="7UL57PetjBX" role="3clF47">
        <node concept="3clFbF" id="7UL57PetluA" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57PetmjO" role="3clFbG">
            <node concept="1eOMI4" id="7UL57PetmTG" role="2Oq$k0">
              <node concept="10QFUN" id="7UL57PetmTF" role="1eOMHV">
                <node concept="2OqwBi" id="7UL57PetmTC" role="10QFUP">
                  <node concept="2WthIp" id="7UL57PetmTD" role="2Oq$k0" />
                  <node concept="liA8E" id="7UL57PetmTE" role="2OqNvi">
                    <ref role="37wK5l" to="71xd:~BaseTool.getComponent()" resolve="getComponent" />
                  </node>
                </node>
                <node concept="3uibUv" id="7UL57Petn1g" role="10QFUM">
                  <ref role="3uigEE" to="um17:2D0HTQh99kz" resolve="HistoryView" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7UL57PetnAR" role="2OqNvi">
              <ref role="37wK5l" to="um17:2D0HTQh9kjZ" resolve="loadHistory" />
              <node concept="37vLTw" id="1me6UesCHNV" role="37wK5m">
                <ref role="3cqZAo" node="1me6UesAsHR" resolve="cloudRepository" />
              </node>
              <node concept="37vLTw" id="1me6UesCHTW" role="37wK5m">
                <ref role="3cqZAo" node="1me6UesAJSZ" resolve="treeId" />
              </node>
              <node concept="37vLTw" id="7UL57PetnBR" role="37wK5m">
                <ref role="3cqZAo" node="7UL57PetjO0" resolve="headVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7UL57Pev$4F" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57Pev$dy" role="3clFbG">
            <node concept="2WthIp" id="7UL57Pev$4D" role="2Oq$k0" />
            <node concept="liA8E" id="7UL57Pev$tY" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="7UL57Pev$uC" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7UL57PetjK9" role="1B3o_S" />
    </node>
    <node concept="2BZ0e9" id="7UL57PeskT6" role="2XNbBz">
      <property role="TrG5h" value="component" />
      <node concept="3Tm6S6" id="7UL57PeskT7" role="1B3o_S" />
      <node concept="3uibUv" id="7UL57PeslxI" role="1tU5fm">
        <ref role="3uigEE" to="um17:2D0HTQh99kz" resolve="HistoryView" />
      </node>
    </node>
    <node concept="2UmK3q" id="7UL57PeskT9" role="2Um5zG">
      <node concept="3clFbS" id="7UL57PeskTa" role="2VODD2">
        <node concept="3clFbJ" id="7UL57PeskTb" role="3cqZAp">
          <node concept="3clFbC" id="7UL57PeskTc" role="3clFbw">
            <node concept="10Nm6u" id="7UL57PeskTd" role="3uHU7w" />
            <node concept="2OqwBi" id="7UL57PeskTe" role="3uHU7B">
              <node concept="2WthIp" id="7UL57PeskTf" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7UL57PeskTg" role="2OqNvi">
                <ref role="2WH_rO" node="7UL57PeskT6" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7UL57PeskTh" role="3clFbx">
            <node concept="3clFbF" id="7UL57PeskTi" role="3cqZAp">
              <node concept="37vLTI" id="7UL57PeskTj" role="3clFbG">
                <node concept="2ShNRf" id="7UL57PeskTk" role="37vLTx">
                  <node concept="1pGfFk" id="7UL57PeskTl" role="2ShVmc">
                    <ref role="37wK5l" to="um17:2D0HTQh9ha4" resolve="HistoryView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7UL57PeskTm" role="37vLTJ">
                  <node concept="2WthIp" id="7UL57PeskTn" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7UL57PeskTo" role="2OqNvi">
                    <ref role="2WH_rO" node="7UL57PeskT6" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7UL57PeskTp" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57PeskTq" role="3cqZAk">
            <node concept="2WthIp" id="7UL57PeskTr" role="2Oq$k0" />
            <node concept="2BZ7hE" id="7UL57PeskTs" role="2OqNvi">
              <ref role="2WH_rO" node="7UL57PeskT6" resolve="component" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="7UL57PeskTt" role="uR5cp">
      <node concept="3clFbS" id="7UL57PeskTu" role="2VODD2" />
    </node>
    <node concept="1irR5M" id="7UL57PeskTz" role="1nVCmq">
      <property role="2$rrk2" value="13262" />
      <node concept="1irR9m" id="7UL57PeskT$" role="1irR9h">
        <node concept="3PKj8D" id="7UL57PeskT_" role="3PKjn_">
          <property role="3PKj8l" value="ffff00" />
        </node>
      </node>
      <node concept="1irPie" id="7UL57PeskTA" role="1irR9h">
        <property role="1irPi9" value="H" />
        <node concept="3PKj8D" id="7UL57PeskTB" role="3PKjny">
          <property role="3PKj8l" value="000000" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7UL57PetoVd">
    <property role="3GE5qa" value="actions.tree" />
    <property role="TrG5h" value="LoadHistoryForTree" />
    <property role="2uzpH1" value="Show History" />
    <node concept="1DS2jV" id="7UL57PetoX1" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7UL57PetoX2" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7UL57PetoX3" role="1NuT2Z">
      <property role="TrG5h" value="treeNode_" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="7UL57PetoX4" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7UL57PetoVe" role="tncku">
      <node concept="3clFbS" id="7UL57PetoVf" role="2VODD2">
        <node concept="3cpWs8" id="7UL57PetwsF" role="3cqZAp">
          <node concept="3cpWsn" id="7UL57PetwsG" role="3cpWs9">
            <property role="TrG5h" value="treeNode" />
            <node concept="3uibUv" id="7UL57Petwqf" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
            </node>
            <node concept="10QFUN" id="7UL57PetwsH" role="33vP2m">
              <node concept="2OqwBi" id="7UL57PetwsI" role="10QFUP">
                <node concept="2WthIp" id="7UL57PetwsJ" role="2Oq$k0" />
                <node concept="1DTwFV" id="7UL57PetwsK" role="2OqNvi">
                  <ref role="2WH_rO" node="7UL57PetoX3" resolve="treeNode_" />
                </node>
              </node>
              <node concept="3uibUv" id="7UL57PetwsL" role="10QFUM">
                <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7UL57Petz1j" role="3cqZAp">
          <node concept="3cpWsn" id="7UL57Petz1k" role="3cpWs9">
            <property role="TrG5h" value="activeBranch" />
            <node concept="3uibUv" id="7UL57Petytq" role="1tU5fm">
              <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
            </node>
            <node concept="2OqwBi" id="7UL57Petz1l" role="33vP2m">
              <node concept="2OqwBi" id="7UL57Petz1m" role="2Oq$k0">
                <node concept="37vLTw" id="7UL57Petz1n" role="2Oq$k0">
                  <ref role="3cqZAo" node="7UL57PetwsG" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="7UL57Petz1o" role="2OqNvi">
                  <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
                </node>
              </node>
              <node concept="liA8E" id="7UL57Petz1p" role="2OqNvi">
                <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                <node concept="2OqwBi" id="7UL57Petz1q" role="37wK5m">
                  <node concept="37vLTw" id="7UL57Petz1r" role="2Oq$k0">
                    <ref role="3cqZAo" node="7UL57PetwsG" resolve="treeNode" />
                  </node>
                  <node concept="liA8E" id="7UL57Petz1s" role="2OqNvi">
                    <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7UL57Peu1kX" role="3cqZAp">
          <node concept="3cpWsn" id="7UL57Peu1kY" role="3cpWs9">
            <property role="TrG5h" value="version" />
            <node concept="3uibUv" id="7UL57Peu1jz" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~CLVersion" resolve="CLVersion" />
            </node>
            <node concept="2OqwBi" id="7UL57Peu1kZ" role="33vP2m">
              <node concept="37vLTw" id="7UL57Peu1l0" role="2Oq$k0">
                <ref role="3cqZAo" node="7UL57Petz1k" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="7UL57Peu1l1" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getVersion()" resolve="getVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7UL57Peu1vJ" role="3cqZAp">
          <node concept="2OqwBi" id="7UL57Peu2FG" role="3clFbG">
            <node concept="2OqwBi" id="7UL57Peu2cP" role="2Oq$k0">
              <node concept="2OqwBi" id="7UL57Peu1vD" role="2Oq$k0">
                <node concept="2WthIp" id="7UL57Peu1vG" role="2Oq$k0" />
                <node concept="1DTwFV" id="7UL57Peu1vI" role="2OqNvi">
                  <ref role="2WH_rO" node="7UL57PetoX1" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="7UL57Peu2zQ" role="2OqNvi">
                <ref role="LR4U5" node="7UL57PeskT5" resolve="CloudHistoryTool" />
              </node>
            </node>
            <node concept="2XshWL" id="7UL57Peu2Pv" role="2OqNvi">
              <ref role="2WH_rO" node="7UL57PetjBV" resolve="load" />
              <node concept="2OqwBi" id="1me6UesCOlv" role="2XxRq1">
                <node concept="37vLTw" id="1me6UesCNP1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7UL57PetwsG" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="1me6UesCOXS" role="2OqNvi">
                  <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
                </node>
              </node>
              <node concept="2OqwBi" id="1me6UesCPAH" role="2XxRq1">
                <node concept="37vLTw" id="1me6UesCP24" role="2Oq$k0">
                  <ref role="3cqZAo" node="7UL57PetwsG" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="1me6UesCQTI" role="2OqNvi">
                  <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
                </node>
              </node>
              <node concept="37vLTw" id="7UL57Peu2RC" role="2XxRq1">
                <ref role="3cqZAo" node="7UL57Peu1kY" resolve="version" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1me6UesGtnA">
    <property role="3GE5qa" value="actions.branch" />
    <property role="TrG5h" value="LoadHistoryForBranch" />
    <property role="2uzpH1" value="Show History" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="1me6UesGtnB" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="1me6UesGtnC" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1me6UesGtnD" role="1NuT2Z">
      <property role="TrG5h" value="tNode_" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="1me6UesGtnE" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1me6UesGtnF" role="tncku">
      <node concept="3clFbS" id="1me6UesGtnG" role="2VODD2">
        <node concept="3cpWs8" id="1me6UesGtnH" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGtnI" role="3cpWs9">
            <property role="TrG5h" value="branchTNode" />
            <node concept="3uibUv" id="1me6UesGtTf" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
            </node>
            <node concept="10QFUN" id="1me6UesGtnK" role="33vP2m">
              <node concept="2OqwBi" id="1me6UesGtnL" role="10QFUP">
                <node concept="2WthIp" id="1me6UesGtnM" role="2Oq$k0" />
                <node concept="1DTwFV" id="1me6UesGtnN" role="2OqNvi">
                  <ref role="2WH_rO" node="1me6UesGtnD" resolve="tNode_" />
                </node>
              </node>
              <node concept="3uibUv" id="1me6UesGtJs" role="10QFUM">
                <ref role="3uigEE" to="um17:6aRQr1X74db" resolve="CloudBranchTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGza9" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGzaa" role="3cpWs9">
            <property role="TrG5h" value="treeTNode" />
            <node concept="3uibUv" id="1me6UesGz97" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
            </node>
            <node concept="2OqwBi" id="1me6UesGzab" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGzac" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesGtnI" resolve="branchTNode" />
              </node>
              <node concept="liA8E" id="1me6UesGzad" role="2OqNvi">
                <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                <node concept="3VsKOn" id="1me6UesGzae" role="37wK5m">
                  <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesG_yc" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesG_yd" role="3cpWs9">
            <property role="TrG5h" value="infoBranch" />
            <node concept="3uibUv" id="1m9roGBTFKQ" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="1me6UesG_ye" role="33vP2m">
              <node concept="2OqwBi" id="1me6UesG_yf" role="2Oq$k0">
                <node concept="37vLTw" id="1me6UesG_yg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1me6UesGzaa" resolve="treeTNode" />
                </node>
                <node concept="liA8E" id="1me6UesG_yh" role="2OqNvi">
                  <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
                </node>
              </node>
              <node concept="liA8E" id="1me6UesG_yi" role="2OqNvi">
                <ref role="37wK5l" to="csg2:6aRQr1X1RCt" resolve="getInfoBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGCgk" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGCgl" role="3cpWs9">
            <property role="TrG5h" value="branchName" />
            <node concept="17QB3L" id="1me6UesGC58" role="1tU5fm" />
            <node concept="2OqwBi" id="1me6UesGCgm" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGCgn" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesG_yd" resolve="infoBranch" />
              </node>
              <node concept="liA8E" id="1me6UesGCgo" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="1me6UesGCgp" role="37wK5m">
                  <node concept="3clFbS" id="1me6UesGCgq" role="1bW5cS">
                    <node concept="3clFbF" id="1me6UesGCgr" role="3cqZAp">
                      <node concept="2OqwBi" id="1me6UesGCgs" role="3clFbG">
                        <node concept="2OqwBi" id="1me6UesGCgt" role="2Oq$k0">
                          <node concept="37vLTw" id="1me6UesGCgu" role="2Oq$k0">
                            <ref role="3cqZAo" node="1me6UesGtnI" resolve="branchTNode" />
                          </node>
                          <node concept="liA8E" id="1me6UesGCgv" role="2OqNvi">
                            <ref role="37wK5l" to="um17:6aRQr1X7JDh" resolve="getBranchInfo" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="1me6UesGCgw" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGMex" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGMey" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="1me6UesGM3e" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="1me6UesGMez" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGMe$" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesGzaa" resolve="treeTNode" />
              </node>
              <node concept="liA8E" id="1me6UesGMe_" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGHCx" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGHCy" role="3cpWs9">
            <property role="TrG5h" value="branchKey" />
            <node concept="17QB3L" id="1me6UesGHzq" role="1tU5fm" />
            <node concept="2OqwBi" id="1me6UesGHCz" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGMeA" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesGMey" resolve="treeId" />
              </node>
              <node concept="liA8E" id="1me6UesGHCB" role="2OqNvi">
                <ref role="37wK5l" to="xkhl:~TreeId.getBranchKey(java.lang.String)" resolve="getBranchKey" />
                <node concept="37vLTw" id="1me6UesGHCC" role="37wK5m">
                  <ref role="3cqZAo" node="1me6UesGCgl" resolve="branchName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGLUt" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGLUu" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="1me6UesGLM4" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="1me6UesGLUv" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGLUw" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesGzaa" resolve="treeTNode" />
              </node>
              <node concept="liA8E" id="1me6UesGLUx" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesGKJ1" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesGKJ2" role="3cpWs9">
            <property role="TrG5h" value="client" />
            <node concept="3uibUv" id="1m9roGB_NiI" role="1tU5fm">
              <ref role="3uigEE" to="5440:~IModelClient" resolve="IModelClient" />
            </node>
            <node concept="2OqwBi" id="1me6UesGKJ3" role="33vP2m">
              <node concept="37vLTw" id="1me6UesGLUy" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6UesGLUu" resolve="cloudRepository" />
              </node>
              <node concept="liA8E" id="1me6UesGKJ7" role="2OqNvi">
                <ref role="37wK5l" to="csg2:2n9Wvfbnqym" resolve="getClient" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6UesGMWq" role="3cqZAp">
          <node concept="2OqwBi" id="1me6UesGNAh" role="3clFbG">
            <node concept="10M0yZ" id="1me6UesGN72" role="2Oq$k0">
              <ref role="3cqZAo" to="csg2:Onv88ZOFFp" resolve="FIXED" />
              <ref role="1PxDUh" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
            </node>
            <node concept="liA8E" id="1me6UesGNOy" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="1me6UesGNPA" role="37wK5m">
                <node concept="3clFbS" id="1me6UesGNPB" role="1bW5cS">
                  <node concept="3cpWs8" id="1me6UesGJMY" role="3cqZAp">
                    <node concept="3cpWsn" id="1me6UesGJMZ" role="3cpWs9">
                      <property role="TrG5h" value="versionHash" />
                      <node concept="17QB3L" id="1me6UesGJLL" role="1tU5fm" />
                      <node concept="2OqwBi" id="1me6UesGJN0" role="33vP2m">
                        <node concept="37vLTw" id="1me6UesGKJ8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1me6UesGKJ2" resolve="client" />
                        </node>
                        <node concept="liA8E" id="1me6UesGJN6" role="2OqNvi">
                          <ref role="37wK5l" to="hvt5:~IKeyValueStore.get(java.lang.String)" resolve="get" />
                          <node concept="37vLTw" id="1me6UesGJN7" role="37wK5m">
                            <ref role="3cqZAo" node="1me6UesGHCy" resolve="branchKey" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1me6UesGLDI" role="3cqZAp">
                    <node concept="3cpWsn" id="1me6UesGLDJ" role="3cpWs9">
                      <property role="TrG5h" value="version" />
                      <node concept="3uibUv" id="1me6UesGLCX" role="1tU5fm">
                        <ref role="3uigEE" to="xkhl:~CLVersion" resolve="CLVersion" />
                      </node>
                      <node concept="2OqwBi" id="1ZljNrEqerX" role="33vP2m">
                        <node concept="10M0yZ" id="1ZljNrEqeiX" role="2Oq$k0">
                          <ref role="1PxDUh" to="xkhl:~CLVersion" resolve="CLVersion" />
                          <ref role="3cqZAo" to="xkhl:~CLVersion.Companion" resolve="Companion" />
                        </node>
                        <node concept="liA8E" id="1ZljNrEqeAx" role="2OqNvi">
                          <ref role="37wK5l" to="xkhl:~CLVersion$Companion.loadFromHash(java.lang.String,org.modelix.model.lazy.IDeserializingKeyValueStore)" resolve="loadFromHash" />
                          <node concept="37vLTw" id="1ZljNrEqeEg" role="37wK5m">
                            <ref role="3cqZAo" node="1me6UesGJMZ" resolve="versionHash" />
                          </node>
                          <node concept="2OqwBi" id="1ZljNrEqeEh" role="37wK5m">
                            <node concept="37vLTw" id="1ZljNrEqeEi" role="2Oq$k0">
                              <ref role="3cqZAo" node="1me6UesGKJ2" resolve="client" />
                            </node>
                            <node concept="liA8E" id="1ZljNrEqeEj" role="2OqNvi">
                              <ref role="37wK5l" to="5440:~IModelClient.getStoreCache()" resolve="getStoreCache" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1me6UesGQ5v" role="3cqZAp">
                    <node concept="2YIFZM" id="1me6UesGQ8L" role="3clFbG">
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <node concept="1bVj0M" id="1me6UesGQbT" role="37wK5m">
                        <property role="3yWfEV" value="true" />
                        <node concept="3clFbS" id="1me6UesGQbU" role="1bW5cS">
                          <node concept="3clFbF" id="1me6UesGto6" role="3cqZAp">
                            <node concept="2OqwBi" id="1me6UesGto7" role="3clFbG">
                              <node concept="2OqwBi" id="1me6UesGto8" role="2Oq$k0">
                                <node concept="2OqwBi" id="1me6UesGto9" role="2Oq$k0">
                                  <node concept="2WthIp" id="1me6UesGtoa" role="2Oq$k0" />
                                  <node concept="1DTwFV" id="1me6UesGtob" role="2OqNvi">
                                    <ref role="2WH_rO" node="1me6UesGtnB" resolve="project" />
                                  </node>
                                </node>
                                <node concept="LR4U6" id="1me6UesGtoc" role="2OqNvi">
                                  <ref role="LR4U5" node="7UL57PeskT5" resolve="CloudHistoryTool" />
                                </node>
                              </node>
                              <node concept="2XshWL" id="1me6UesGtod" role="2OqNvi">
                                <ref role="2WH_rO" node="7UL57PetjBV" resolve="load" />
                                <node concept="37vLTw" id="1me6UesGMa$" role="2XxRq1">
                                  <ref role="3cqZAo" node="1me6UesGLUu" resolve="cloudRepository" />
                                </node>
                                <node concept="37vLTw" id="1me6UesGMu4" role="2XxRq1">
                                  <ref role="3cqZAo" node="1me6UesGMey" resolve="treeId" />
                                </node>
                                <node concept="37vLTw" id="1me6UesGNT1" role="2XxRq1">
                                  <ref role="3cqZAo" node="1me6UesGLDJ" resolve="version" />
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
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2EzI5qKnqcr">
    <property role="3GE5qa" value="actions.repo" />
    <property role="TrG5h" value="EnterAuthorizationToken" />
    <property role="2uzpH1" value="Enter Authorization Token" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="2EzI5qKnqcs" role="tncku">
      <node concept="3clFbS" id="2EzI5qKnqct" role="2VODD2">
        <node concept="3cpWs8" id="2EzI5qKnqcu" role="3cqZAp">
          <node concept="3cpWsn" id="2EzI5qKnqcv" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="2EzI5qKnqcw" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="2EzI5qKnqcx" role="33vP2m">
              <node concept="1eOMI4" id="2EzI5qKnqcy" role="2Oq$k0">
                <node concept="10QFUN" id="2EzI5qKnqcz" role="1eOMHV">
                  <node concept="2OqwBi" id="2EzI5qKnqc$" role="10QFUP">
                    <node concept="2WthIp" id="2EzI5qKnqc_" role="2Oq$k0" />
                    <node concept="1DTwFV" id="2EzI5qKnqcA" role="2OqNvi">
                      <ref role="2WH_rO" node="2EzI5qKnqdi" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="2EzI5qKnqcB" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2EzI5qKnqcC" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2EzI5qKnqcD" role="3cqZAp" />
        <node concept="3cpWs8" id="2EzI5qKnqcE" role="3cqZAp">
          <node concept="3cpWsn" id="2EzI5qKnqcF" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="17QB3L" id="2EzI5qKnqcG" role="1tU5fm" />
            <node concept="2YIFZM" id="2EzI5qKnqcH" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="2EzI5qKnqcI" role="37wK5m">
                <node concept="2WthIp" id="2EzI5qKnqcJ" role="2Oq$k0" />
                <node concept="1DTwFV" id="2EzI5qKnqcK" role="2OqNvi">
                  <ref role="2WH_rO" node="2EzI5qKnqdg" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="2EzI5qKnqcL" role="37wK5m">
                <property role="Xl_RC" value="Token" />
              </node>
              <node concept="Xl_RD" id="2EzI5qKnqcM" role="37wK5m">
                <property role="Xl_RC" value="Set Authorization Token" />
              </node>
              <node concept="10M0yZ" id="2EzI5qKnqcN" role="37wK5m">
                <ref role="3cqZAo" to="csg2:6aRQr1WUw7m" resolve="TREE_ICON" />
                <ref role="1PxDUh" to="csg2:6aRQr1WMwO8" resolve="CloudIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2EzI5qKnqcO" role="3cqZAp">
          <node concept="3clFbS" id="2EzI5qKnqcP" role="3clFbx">
            <node concept="3cpWs6" id="2EzI5qKnqcQ" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2EzI5qKnqcR" role="3clFbw">
            <node concept="37vLTw" id="2EzI5qKnqcS" role="2Oq$k0">
              <ref role="3cqZAo" node="2EzI5qKnqcF" resolve="token" />
            </node>
            <node concept="17RlXB" id="2EzI5qKnqcT" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="2EzI5qKnqda" role="3cqZAp">
          <node concept="2OqwBi" id="2EzI5qKnqdb" role="3clFbG">
            <node concept="37vLTw" id="2EzI5qKnqdc" role="2Oq$k0">
              <ref role="3cqZAo" node="2EzI5qKnqcv" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="2EzI5qKnqdd" role="2OqNvi">
              <ref role="37wK5l" to="csg2:2EzI5qKmtmw" resolve="setAuthToken" />
              <node concept="37vLTw" id="2EzI5qKnqde" role="37wK5m">
                <ref role="3cqZAo" node="2EzI5qKnqcF" resolve="token" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="2EzI5qKnqdg" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2EzI5qKnqdh" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2EzI5qKnqdi" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="2EzI5qKnqdj" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="2EzI5qKnqdk" role="tmbBb">
      <node concept="3clFbS" id="2EzI5qKnqdl" role="2VODD2">
        <node concept="3clFbF" id="2EzI5qKnqdm" role="3cqZAp">
          <node concept="2ZW3vV" id="2EzI5qKnqdn" role="3clFbG">
            <node concept="3uibUv" id="2EzI5qKnqdo" role="2ZW6by">
              <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
            </node>
            <node concept="2OqwBi" id="2EzI5qKnqdp" role="2ZW6bz">
              <node concept="2WthIp" id="2EzI5qKnqdq" role="2Oq$k0" />
              <node concept="1DTwFV" id="2EzI5qKnqdr" role="2OqNvi">
                <ref role="2WH_rO" node="2EzI5qKnqdi" resolve="treeNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7L9MJywexQg">
    <property role="3GE5qa" value="actions.repo" />
    <property role="TrG5h" value="GetAuthorizationToken" />
    <property role="2uzpH1" value="Get Authorization Token" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="7L9MJywexQh" role="tncku">
      <node concept="3clFbS" id="7L9MJywexQi" role="2VODD2">
        <node concept="3cpWs8" id="7L9MJywexQj" role="3cqZAp">
          <node concept="3cpWsn" id="7L9MJywexQk" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="7L9MJywexQl" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="7L9MJywexQm" role="33vP2m">
              <node concept="1eOMI4" id="7L9MJywexQn" role="2Oq$k0">
                <node concept="10QFUN" id="7L9MJywexQo" role="1eOMHV">
                  <node concept="2OqwBi" id="7L9MJywexQp" role="10QFUP">
                    <node concept="2WthIp" id="7L9MJywexQq" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7L9MJywexQr" role="2OqNvi">
                      <ref role="2WH_rO" node="7L9MJywexQQ" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7L9MJywexQs" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7L9MJywexQt" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L9MJywexQu" role="3cqZAp" />
        <node concept="3cpWs8" id="7L9MJyweEOO" role="3cqZAp">
          <node concept="3cpWsn" id="7L9MJyweEOP" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="7L9MJyweEOt" role="1tU5fm" />
            <node concept="3cpWs3" id="7L9MJyweEOQ" role="33vP2m">
              <node concept="Xl_RD" id="7L9MJyweEOR" role="3uHU7w">
                <property role="Xl_RC" value="generateToken" />
              </node>
              <node concept="2OqwBi" id="7L9MJyweEOS" role="3uHU7B">
                <node concept="37vLTw" id="7L9MJyweEOT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7L9MJywexQk" resolve="cloudRepository" />
                </node>
                <node concept="liA8E" id="7L9MJyweEOU" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7L9MJyweFRv" role="3cqZAp">
          <node concept="3clFbS" id="7L9MJyweFRx" role="1zxBo7">
            <node concept="3clFbF" id="7L9MJyweF4W" role="3cqZAp">
              <node concept="2OqwBi" id="7L9MJyweFdb" role="3clFbG">
                <node concept="2YIFZM" id="7L9MJyweF6O" role="2Oq$k0">
                  <ref role="37wK5l" to="z60i:~Desktop.getDesktop()" resolve="getDesktop" />
                  <ref role="1Pybhc" to="z60i:~Desktop" resolve="Desktop" />
                </node>
                <node concept="liA8E" id="7L9MJyweFl9" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Desktop.browse(java.net.URI)" resolve="browse" />
                  <node concept="2ShNRf" id="7L9MJyweFzM" role="37wK5m">
                    <node concept="1pGfFk" id="7L9MJyweFzB" role="2ShVmc">
                      <ref role="37wK5l" to="zf81:~URI.&lt;init&gt;(java.lang.String)" resolve="URI" />
                      <node concept="37vLTw" id="7L9MJyweF$U" role="37wK5m">
                        <ref role="3cqZAo" node="7L9MJyweEOP" resolve="url" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7L9MJyweFRy" role="1zxBo5">
            <node concept="XOnhg" id="7L9MJyweFR$" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="3WR5HXD$zQe" role="1tU5fm">
                <node concept="3uibUv" id="7L9MJyweGaT" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7L9MJyweFRC" role="1zc67A">
              <node concept="RRSsy" id="7L9MJywferf" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7L9MJywferh" role="RRSoy" />
                <node concept="37vLTw" id="7L9MJywferj" role="RRSow">
                  <ref role="3cqZAo" node="7L9MJyweFR$" resolve="ex" />
                </node>
              </node>
              <node concept="3clFbF" id="7L9MJywfdEB" role="3cqZAp">
                <node concept="2YIFZM" id="7L9MJywfdF9" role="3clFbG">
                  <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <node concept="2OqwBi" id="7L9MJywfdFM" role="37wK5m">
                    <node concept="2WthIp" id="7L9MJywfdFP" role="2Oq$k0" />
                    <node concept="1DTwFV" id="7L9MJywfdFR" role="2OqNvi">
                      <ref role="2WH_rO" node="7L9MJywexQO" resolve="project" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="7L9MJywfezK" role="37wK5m">
                    <node concept="3cpWs3" id="7L9MJywffkN" role="3uHU7B">
                      <node concept="Xl_RD" id="7L9MJywffl3" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                      <node concept="3cpWs3" id="7L9MJywfeZD" role="3uHU7B">
                        <node concept="Xl_RD" id="7L9MJywfe_H" role="3uHU7B">
                          <property role="Xl_RC" value="Failed to open " />
                        </node>
                        <node concept="37vLTw" id="7L9MJywfeZX" role="3uHU7w">
                          <ref role="3cqZAo" node="7L9MJyweEOP" resolve="url" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7L9MJywfe06" role="3uHU7w">
                      <node concept="37vLTw" id="7L9MJywfdLK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7L9MJyweFR$" resolve="ex" />
                      </node>
                      <node concept="liA8E" id="7L9MJywfeh9" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7L9MJywffuK" role="37wK5m">
                    <property role="Xl_RC" value="Get Authorization Token" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7L9MJywexQO" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7L9MJywexQP" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7L9MJywexQQ" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="7L9MJywexQR" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="7L9MJywexQS" role="tmbBb">
      <node concept="3clFbS" id="7L9MJywexQT" role="2VODD2">
        <node concept="3clFbF" id="7L9MJywexQU" role="3cqZAp">
          <node concept="2ZW3vV" id="7L9MJywexQV" role="3clFbG">
            <node concept="3uibUv" id="7L9MJywexQW" role="2ZW6by">
              <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
            </node>
            <node concept="2OqwBi" id="7L9MJywexQX" role="2ZW6bz">
              <node concept="2WthIp" id="7L9MJywexQY" role="2Oq$k0" />
              <node concept="1DTwFV" id="7L9MJywexQZ" role="2OqNvi">
                <ref role="2WH_rO" node="7L9MJywexQQ" resolve="treeNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4yJY4bt61T">
    <property role="3GE5qa" value="actions.repo" />
    <property role="TrG5h" value="RemoveCloudRepository" />
    <property role="2uzpH1" value="Remove Repository" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="4yJY4bt61U" role="tncku">
      <node concept="3clFbS" id="4yJY4bt61V" role="2VODD2">
        <node concept="3cpWs8" id="4yJY4bt61W" role="3cqZAp">
          <node concept="3cpWsn" id="4yJY4bt61X" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="4yJY4bt61Y" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="4yJY4bt61Z" role="33vP2m">
              <node concept="1eOMI4" id="4yJY4bt620" role="2Oq$k0">
                <node concept="10QFUN" id="4yJY4bt621" role="1eOMHV">
                  <node concept="2OqwBi" id="4yJY4bt622" role="10QFUP">
                    <node concept="2WthIp" id="4yJY4bt623" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4yJY4bt624" role="2OqNvi">
                      <ref role="2WH_rO" node="4yJY4bt62K" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4yJY4bt625" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4yJY4bt626" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4yJY4bt627" role="3cqZAp" />
        <node concept="3cpWs8" id="4yJY4bt8_n" role="3cqZAp">
          <node concept="3cpWsn" id="4yJY4bt8_o" role="3cpWs9">
            <property role="TrG5h" value="answer" />
            <node concept="10Oyi0" id="4yJY4bt8uo" role="1tU5fm" />
            <node concept="2YIFZM" id="4yJY4bt8_p" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
              <node concept="2OqwBi" id="4yJY4bt8_q" role="37wK5m">
                <node concept="2WthIp" id="4yJY4bt8_r" role="2Oq$k0" />
                <node concept="1DTwFV" id="4yJY4bt8_s" role="2OqNvi">
                  <ref role="2WH_rO" node="4yJY4bt62I" resolve="project" />
                </node>
              </node>
              <node concept="3cpWs3" id="4yJY4bthsI" role="37wK5m">
                <node concept="Xl_RD" id="4yJY4bthsY" role="3uHU7w">
                  <property role="Xl_RC" value="?" />
                </node>
                <node concept="3cpWs3" id="4yJY4btg2B" role="3uHU7B">
                  <node concept="Xl_RD" id="4yJY4btgvn" role="3uHU7B">
                    <property role="Xl_RC" value="Remove " />
                  </node>
                  <node concept="2OqwBi" id="4yJY4btfth" role="3uHU7w">
                    <node concept="37vLTw" id="4yJY4btflI" role="2Oq$k0">
                      <ref role="3cqZAo" node="4yJY4bt61X" resolve="cloudRepository" />
                    </node>
                    <node concept="liA8E" id="4yJY4btg0g" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4yJY4bt8_u" role="37wK5m">
                <property role="Xl_RC" value="Remove Repository" />
              </node>
              <node concept="Xl_RD" id="4yJY4btdmz" role="37wK5m">
                <property role="Xl_RC" value="Remove" />
              </node>
              <node concept="Xl_RD" id="4yJY4btdqj" role="37wK5m">
                <property role="Xl_RC" value="Keep" />
              </node>
              <node concept="10M0yZ" id="4yJY4bt8_v" role="37wK5m">
                <ref role="3cqZAo" to="csg2:6aRQr1WUw7m" resolve="TREE_ICON" />
                <ref role="1PxDUh" to="csg2:6aRQr1WMwO8" resolve="CloudIcons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4yJY4bt62i" role="3cqZAp">
          <node concept="3clFbS" id="4yJY4bt62j" role="3clFbx">
            <node concept="3clFbF" id="4yJY4btc0o" role="3cqZAp">
              <node concept="2OqwBi" id="4yJY4btc7_" role="3clFbG">
                <node concept="2YIFZM" id="4yJY4btc1z" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="4yJY4btcfc" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:4yJY4bssA5" resolve="removeRepository" />
                  <node concept="37vLTw" id="4yJY4btcgu" role="37wK5m">
                    <ref role="3cqZAo" node="4yJY4bt61X" resolve="cloudRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xehy3SpgYY" role="3cqZAp">
              <node concept="2OqwBi" id="1xehy3SphdX" role="3clFbG">
                <node concept="2YIFZM" id="1xehy3Sph2S" role="2Oq$k0">
                  <ref role="37wK5l" node="1xehy3Sovth" resolve="getInstance" />
                  <ref role="1Pybhc" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
                  <node concept="2OqwBi" id="1xehy3Sph4s" role="37wK5m">
                    <node concept="2WthIp" id="1xehy3Sph4t" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1xehy3Sph4u" role="2OqNvi">
                      <ref role="2WH_rO" node="4yJY4bt62I" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1xehy3SphvA" role="2OqNvi">
                  <ref role="37wK5l" node="1xehy3SoZM5" resolve="removeRepository" />
                  <node concept="37vLTw" id="1xehy3Sphya" role="37wK5m">
                    <ref role="3cqZAo" node="4yJY4bt61X" resolve="cloudRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4yJY4bt9LC" role="3clFbw">
            <node concept="10M0yZ" id="4yJY4btaKH" role="3uHU7w">
              <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
              <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
            </node>
            <node concept="37vLTw" id="4yJY4bt8VQ" role="3uHU7B">
              <ref role="3cqZAo" node="4yJY4bt8_o" resolve="answer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="4yJY4bt62I" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4yJY4bt62J" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4yJY4bt62K" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="4yJY4bt62L" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="4yJY4bt62M" role="tmbBb">
      <node concept="3clFbS" id="4yJY4bt62N" role="2VODD2">
        <node concept="3clFbF" id="4yJY4bt62O" role="3cqZAp">
          <node concept="2ZW3vV" id="4yJY4bt62P" role="3clFbG">
            <node concept="3uibUv" id="4yJY4bt62Q" role="2ZW6by">
              <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
            </node>
            <node concept="2OqwBi" id="4yJY4bt62R" role="2ZW6bz">
              <node concept="2WthIp" id="4yJY4bt62S" role="2Oq$k0" />
              <node concept="1DTwFV" id="4yJY4bt62T" role="2OqNvi">
                <ref role="2WH_rO" node="4yJY4bt62K" resolve="treeNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7ardNfhN4SF">
    <property role="3GE5qa" value="actions.tree" />
    <property role="TrG5h" value="RemoveTree" />
    <property role="2uzpH1" value="Remove Tree" />
    <node concept="1DS2jV" id="7ardNfhN4SI" role="1NuT2Z">
      <property role="TrG5h" value="treeNode_" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="7ardNfhN4SJ" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7ardNfhN4SK" role="tncku">
      <node concept="3clFbS" id="7ardNfhN4SL" role="2VODD2">
        <node concept="3cpWs8" id="7ardNfhN4SM" role="3cqZAp">
          <node concept="3cpWsn" id="7ardNfhN4SN" role="3cpWs9">
            <property role="TrG5h" value="treeNode" />
            <node concept="3uibUv" id="7ardNfhN4SO" role="1tU5fm">
              <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
            </node>
            <node concept="10QFUN" id="7ardNfhN4SP" role="33vP2m">
              <node concept="2OqwBi" id="7ardNfhN4SQ" role="10QFUP">
                <node concept="2WthIp" id="7ardNfhN4SR" role="2Oq$k0" />
                <node concept="1DTwFV" id="7ardNfhN4SS" role="2OqNvi">
                  <ref role="2WH_rO" node="7ardNfhN4SI" resolve="treeNode_" />
                </node>
              </node>
              <node concept="3uibUv" id="7ardNfhN4ST" role="10QFUM">
                <ref role="3uigEE" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ardNfhN5h3" role="3cqZAp">
          <node concept="3cpWsn" id="7ardNfhN5h4" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="7ardNfhN5ga" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="7ardNfhN5h5" role="33vP2m">
              <node concept="37vLTw" id="7ardNfhN5h6" role="2Oq$k0">
                <ref role="3cqZAo" node="7ardNfhN4SN" resolve="treeNode" />
              </node>
              <node concept="liA8E" id="7ardNfhN5h7" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBfYQJ" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ardNfhN8yJ" role="3cqZAp">
          <node concept="2OqwBi" id="7ardNfhN8EV" role="3clFbG">
            <node concept="37vLTw" id="7ardNfhN8yH" role="2Oq$k0">
              <ref role="3cqZAo" node="7ardNfhN5h4" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="7ardNfhNGIl" role="2OqNvi">
              <ref role="37wK5l" to="csg2:7ardNfhNg14" resolve="removeTree" />
              <node concept="2OqwBi" id="7ardNfhNI35" role="37wK5m">
                <node concept="2OqwBi" id="7ardNfhNHfz" role="2Oq$k0">
                  <node concept="37vLTw" id="7ardNfhNGJA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ardNfhN4SN" resolve="treeNode" />
                  </node>
                  <node concept="liA8E" id="7ardNfhNHT$" role="2OqNvi">
                    <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
                  </node>
                </node>
                <node concept="liA8E" id="7ardNfhNIdy" role="2OqNvi">
                  <ref role="37wK5l" to="xkhl:~TreeId.getId()" resolve="getId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4mhRRpyGNVn">
    <property role="3GE5qa" value="actions.node" />
    <property role="TrG5h" value="AddChildNode" />
    <property role="2uzpH1" value="Add new child of concept ... in role ..." />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="1DS2jV" id="4mhRRpyGNVo" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4mhRRpyGNVp" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4mhRRpyGNVq" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="4mhRRpyGNVr" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="4mhRRpyGNVs" role="2JrayB">
      <property role="TrG5h" value="parentNode" />
      <node concept="3Tm6S6" id="4mhRRpyGNVt" role="1B3o_S" />
      <node concept="3uibUv" id="4mhRRpyGNVu" role="1tU5fm">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="2K2imR" id="4mhRRpyGNVv" role="2K2Cet">
        <node concept="3clFbS" id="4mhRRpyGNVw" role="2VODD2">
          <node concept="3clFbF" id="4mhRRpyGNVx" role="3cqZAp">
            <node concept="2OqwBi" id="4mhRRpyGNVy" role="3clFbG">
              <node concept="2K3dj_" id="4mhRRpyGNVz" role="2Oq$k0" />
              <node concept="liA8E" id="4mhRRpyGNV$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="4mhRRpyGNV_" role="2JrayB">
      <property role="TrG5h" value="childConcept" />
      <node concept="3Tm6S6" id="4mhRRpyGNVA" role="1B3o_S" />
      <node concept="3bZ5Sz" id="4mhRRpyGNVB" role="1tU5fm" />
      <node concept="2K2imR" id="4mhRRpyGNVC" role="2K2Cet">
        <node concept="3clFbS" id="4mhRRpyGNVD" role="2VODD2">
          <node concept="3clFbJ" id="4mhRRpyGS4b" role="3cqZAp">
            <node concept="3clFbS" id="4mhRRpyGS4d" role="3clFbx">
              <node concept="3cpWs6" id="4mhRRpyGTHy" role="3cqZAp">
                <node concept="Xl_RD" id="4mhRRpyGU76" role="3cqZAk">
                  <property role="Xl_RC" value="null" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="4mhRRpyGT52" role="3clFbw">
              <node concept="10Nm6u" id="4mhRRpyGTtS" role="3uHU7w" />
              <node concept="2K3dj_" id="4mhRRpyGSt$" role="3uHU7B" />
            </node>
          </node>
          <node concept="3clFbF" id="4mhRRpyGNVE" role="3cqZAp">
            <node concept="2OqwBi" id="4mhRRpyGNVF" role="3clFbG">
              <node concept="2K3dj_" id="4mhRRpyGNVG" role="2Oq$k0" />
              <node concept="liA8E" id="4mhRRpyGNVH" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="4mhRRpyGNVI" role="2JrayB">
      <property role="TrG5h" value="role" />
      <node concept="3Tm6S6" id="4mhRRpyGNVJ" role="1B3o_S" />
      <node concept="3uibUv" id="4mhRRpyGNVK" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="2K2imR" id="4mhRRpyGNVL" role="2K2Cet">
        <node concept="3clFbS" id="4mhRRpyGNVM" role="2VODD2">
          <node concept="3clFbF" id="4mhRRpyGNVN" role="3cqZAp">
            <node concept="2OqwBi" id="4mhRRpyGNVO" role="3clFbG">
              <node concept="2K3dj_" id="4mhRRpyGNVP" role="2Oq$k0" />
              <node concept="liA8E" id="4mhRRpyGNVQ" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="4mhRRpyGNVR" role="tncku">
      <node concept="3clFbS" id="4mhRRpyGNVS" role="2VODD2">
        <node concept="3cpWs8" id="4mhRRpyGNVT" role="3cqZAp">
          <node concept="3cpWsn" id="4mhRRpyGNVU" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="4mhRRpyGNVV" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="4mhRRpyGNVW" role="33vP2m">
              <node concept="2OqwBi" id="4mhRRpyGNVX" role="10QFUP">
                <node concept="2WthIp" id="4mhRRpyGNVY" role="2Oq$k0" />
                <node concept="1DTwFV" id="4mhRRpyGNVZ" role="2OqNvi">
                  <ref role="2WH_rO" node="4mhRRpyGNVq" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="4mhRRpyGNW0" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mhRRpyGNW1" role="3cqZAp" />
        <node concept="3cpWs8" id="4mhRRpyGNW2" role="3cqZAp">
          <node concept="3cpWsn" id="4mhRRpyGNW3" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="4mhRRpyGNW4" role="1tU5fm" />
            <node concept="10Nm6u" id="4mhRRpyGNW5" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="4mhRRpyGNW6" role="3cqZAp">
          <node concept="3clFbS" id="4mhRRpyGNW7" role="3clFbx">
            <node concept="3clFbF" id="4mhRRpyGNW8" role="3cqZAp">
              <node concept="37vLTI" id="4mhRRpyGNW9" role="3clFbG">
                <node concept="2YIFZM" id="4mhRRpyGNWa" role="37vLTx">
                  <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <node concept="2OqwBi" id="4mhRRpyGNWb" role="37wK5m">
                    <node concept="2WthIp" id="4mhRRpyGNWc" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4mhRRpyGNWd" role="2OqNvi">
                      <ref role="2WH_rO" node="4mhRRpyGNVo" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4mhRRpyGNWe" role="37wK5m">
                    <property role="Xl_RC" value="Name" />
                  </node>
                  <node concept="3cpWs3" id="4mhRRpyGNWf" role="37wK5m">
                    <node concept="2OqwBi" id="4mhRRpyGNWg" role="3uHU7w">
                      <node concept="2OqwBi" id="4mhRRpyGNWh" role="2Oq$k0">
                        <node concept="2WthIp" id="4mhRRpyGNWi" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="4mhRRpyGNWj" role="2OqNvi">
                          <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4mhRRpyGNWk" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4mhRRpyGNWl" role="3uHU7B">
                      <property role="Xl_RC" value="Add " />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="4mhRRpyGNWm" role="37wK5m" />
                </node>
                <node concept="37vLTw" id="4mhRRpyGNWn" role="37vLTJ">
                  <ref role="3cqZAo" node="4mhRRpyGNW3" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4mhRRpyGNWo" role="3cqZAp">
              <node concept="3clFbS" id="4mhRRpyGNWp" role="3clFbx">
                <node concept="3cpWs6" id="4mhRRpyGNWq" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="4mhRRpyGNWr" role="3clFbw">
                <node concept="37vLTw" id="4mhRRpyGNWs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4mhRRpyGNW3" resolve="name" />
                </node>
                <node concept="17RlXB" id="4mhRRpyGNWt" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4mhRRpyGNWu" role="3clFbw">
            <node concept="2OqwBi" id="4mhRRpyGNWv" role="2Oq$k0">
              <node concept="2OqwBi" id="4mhRRpyGNWw" role="2Oq$k0">
                <node concept="2WthIp" id="4mhRRpyGNWx" role="2Oq$k0" />
                <node concept="2BZ7hE" id="4mhRRpyGNWy" role="2OqNvi">
                  <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
                </node>
              </node>
              <node concept="liA8E" id="4mhRRpyGNWz" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
            <node concept="liA8E" id="4mhRRpyGNW$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
              <node concept="355D3s" id="4mhRRpyGNW_" role="37wK5m">
                <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mhRRpyGNWA" role="3cqZAp" />
        <node concept="3clFbF" id="4mhRRpyGNWB" role="3cqZAp">
          <node concept="2OqwBi" id="4mhRRpyGNWC" role="3clFbG">
            <node concept="2OqwBi" id="4mhRRpyGNWD" role="2Oq$k0">
              <node concept="37vLTw" id="4mhRRpyGNWE" role="2Oq$k0">
                <ref role="3cqZAo" node="4mhRRpyGNVU" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="4mhRRpyGNWF" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="4mhRRpyGNWG" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="4mhRRpyGNWH" role="37wK5m">
                <node concept="3clFbS" id="4mhRRpyGNWI" role="1bW5cS">
                  <node concept="3cpWs8" id="4mhRRpyGNWJ" role="3cqZAp">
                    <node concept="3cpWsn" id="4mhRRpyGNWK" role="3cpWs9">
                      <property role="TrG5h" value="newModule" />
                      <node concept="3uibUv" id="4mhRRpyGNWL" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="4mhRRpyGNWM" role="33vP2m">
                        <node concept="2OqwBi" id="4mhRRpyGNWN" role="2Oq$k0">
                          <node concept="2WthIp" id="4mhRRpyGNWO" role="2Oq$k0" />
                          <node concept="2BZ7hE" id="4mhRRpyGNWP" role="2OqNvi">
                            <ref role="2WH_rO" node="4mhRRpyGNVs" resolve="parentNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4mhRRpyGNWQ" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                          <node concept="2OqwBi" id="4mhRRpyGNWR" role="37wK5m">
                            <node concept="2OqwBi" id="4mhRRpyGNWS" role="2Oq$k0">
                              <node concept="2WthIp" id="4mhRRpyGNWT" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="4mhRRpyGNWU" role="2OqNvi">
                                <ref role="2WH_rO" node="4mhRRpyGNVI" resolve="role" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4mhRRpyGNWV" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="4mhRRpyGNWW" role="37wK5m">
                            <property role="3cmrfH" value="-1" />
                          </node>
                          <node concept="2YIFZM" id="4mhRRpyGNWX" role="37wK5m">
                            <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                            <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                            <node concept="2OqwBi" id="4mhRRpyGNWY" role="37wK5m">
                              <node concept="2WthIp" id="4mhRRpyGNWZ" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="4mhRRpyGNX0" role="2OqNvi">
                                <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4mhRRpyGNX1" role="3cqZAp">
                    <node concept="3clFbS" id="4mhRRpyGNX2" role="3clFbx">
                      <node concept="3clFbF" id="4mhRRpyGNX3" role="3cqZAp">
                        <node concept="2OqwBi" id="4mhRRpyGNX4" role="3clFbG">
                          <node concept="37vLTw" id="4mhRRpyGNX5" role="2Oq$k0">
                            <ref role="3cqZAo" node="4mhRRpyGNWK" resolve="newModule" />
                          </node>
                          <node concept="liA8E" id="4mhRRpyGNX6" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                            <node concept="2OqwBi" id="4mhRRpyGNX7" role="37wK5m">
                              <node concept="355D3s" id="4mhRRpyGNX8" role="2Oq$k0">
                                <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              </node>
                              <node concept="liA8E" id="4mhRRpyGNX9" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4mhRRpyGNXa" role="37wK5m">
                              <ref role="3cqZAo" node="4mhRRpyGNW3" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4mhRRpyGNXb" role="3clFbw">
                      <node concept="37vLTw" id="4mhRRpyGNXc" role="2Oq$k0">
                        <ref role="3cqZAo" node="4mhRRpyGNW3" resolve="name" />
                      </node>
                      <node concept="17RvpY" id="4mhRRpyGNXd" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4mhRRpyGNXe" role="3cqZAp">
                    <node concept="10M0yZ" id="4mhRRpyGNXf" role="3cqZAk">
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="4mhRRpyGNXg" role="tmbBb">
      <node concept="3clFbS" id="4mhRRpyGNXh" role="2VODD2">
        <node concept="3clFbJ" id="4mhRRpyGUOp" role="3cqZAp">
          <node concept="3clFbS" id="4mhRRpyGUOr" role="3clFbx">
            <node concept="3clFbF" id="4mhRRpyGWyI" role="3cqZAp">
              <node concept="2OqwBi" id="4mhRRpyGWyJ" role="3clFbG">
                <node concept="2OqwBi" id="4mhRRpyGWyK" role="2Oq$k0">
                  <node concept="tl45R" id="4mhRRpyGWyL" role="2Oq$k0" />
                  <node concept="liA8E" id="4mhRRpyGWyM" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="4mhRRpyGWyN" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="4mhRRpyGWyS" role="37wK5m">
                    <node concept="Xl_RD" id="4mhRRpyGWyT" role="3uHU7B">
                      <property role="Xl_RC" value="To '" />
                    </node>
                    <node concept="2OqwBi" id="4mhRRpyGWyU" role="3uHU7w">
                      <node concept="2OqwBi" id="4mhRRpyGWyV" role="2Oq$k0">
                        <node concept="2WthIp" id="4mhRRpyGWyW" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="4mhRRpyGWyX" role="2OqNvi">
                          <ref role="2WH_rO" node="4mhRRpyGNVI" resolve="role" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4mhRRpyGWyY" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4mhRRpyGVH$" role="3clFbw">
            <node concept="10Nm6u" id="4mhRRpyGVUF" role="3uHU7w" />
            <node concept="2OqwBi" id="4mhRRpyGV26" role="3uHU7B">
              <node concept="2WthIp" id="4mhRRpyGV29" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4mhRRpyGV2b" role="2OqNvi">
                <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4mhRRpyGW46" role="9aQIa">
            <node concept="3clFbS" id="4mhRRpyGW47" role="9aQI4">
              <node concept="3clFbF" id="4mhRRpyGNXi" role="3cqZAp">
                <node concept="2OqwBi" id="4mhRRpyGNXj" role="3clFbG">
                  <node concept="2OqwBi" id="4mhRRpyGNXk" role="2Oq$k0">
                    <node concept="tl45R" id="4mhRRpyGNXl" role="2Oq$k0" />
                    <node concept="liA8E" id="4mhRRpyGNXm" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4mhRRpyGNXn" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                    <node concept="3cpWs3" id="4mhRRpyGNXo" role="37wK5m">
                      <node concept="3cpWs3" id="4mhRRpyGNXp" role="3uHU7B">
                        <node concept="3cpWs3" id="4eX7sil7eeu" role="3uHU7B">
                          <node concept="Xl_RD" id="4eX7sil7eeG" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="3cpWs3" id="4eX7sil7biS" role="3uHU7B">
                            <node concept="3cpWs3" id="4mhRRpyGNXq" role="3uHU7B">
                              <node concept="3cpWs3" id="4mhRRpyGNXs" role="3uHU7B">
                                <node concept="Xl_RD" id="4mhRRpyGNXt" role="3uHU7B">
                                  <property role="Xl_RC" value="To '" />
                                </node>
                                <node concept="2OqwBi" id="4mhRRpyGNXu" role="3uHU7w">
                                  <node concept="2OqwBi" id="4mhRRpyGNXv" role="2Oq$k0">
                                    <node concept="2WthIp" id="4mhRRpyGNXw" role="2Oq$k0" />
                                    <node concept="2BZ7hE" id="4mhRRpyGNXx" role="2OqNvi">
                                      <ref role="2WH_rO" node="4mhRRpyGNVI" resolve="role" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4mhRRpyGNXy" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4mhRRpyGNXr" role="3uHU7w">
                                <property role="Xl_RC" value="' add '" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4eX7sil7dw1" role="3uHU7w">
                              <node concept="2OqwBi" id="4eX7sil7cTw" role="2Oq$k0">
                                <node concept="2OqwBi" id="4eX7sil7c0G" role="2Oq$k0">
                                  <node concept="2WthIp" id="4eX7sil7bzY" role="2Oq$k0" />
                                  <node concept="2BZ7hE" id="4eX7sil7cD7" role="2OqNvi">
                                    <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4eX7sil7dba" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4eX7sil7dKy" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4mhRRpyGNXz" role="3uHU7w">
                          <node concept="2OqwBi" id="4mhRRpyGNX$" role="2Oq$k0">
                            <node concept="2WthIp" id="4mhRRpyGNX_" role="2Oq$k0" />
                            <node concept="2BZ7hE" id="4mhRRpyGNXA" role="2OqNvi">
                              <ref role="2WH_rO" node="4mhRRpyGNV_" resolve="childConcept" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4mhRRpyGNXB" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4mhRRpyGNXC" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mhRRpyGNXD" role="3cqZAp">
          <node concept="3clFbT" id="4mhRRpyGNXE" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7f6Tb6nxCKP">
    <property role="TrG5h" value="PersistedBindingConfiguration" />
    <node concept="2tJIrI" id="1xehy3SolI2" role="jymVt" />
    <node concept="Wx3nA" id="1xehy3Sot0S" role="jymVt">
      <property role="TrG5h" value="instances" />
      <node concept="3rvAFt" id="1xehy3Sot0V" role="1tU5fm">
        <node concept="3uibUv" id="1xehy3Sot0W" role="3rvQeY">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="1xehy3Sot0X" role="3rvSg0">
          <ref role="3uigEE" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
        </node>
      </node>
      <node concept="2ShNRf" id="1xehy3Sot0Y" role="33vP2m">
        <node concept="3rGOSV" id="1xehy3Sot0Z" role="2ShVmc">
          <node concept="3uibUv" id="1xehy3Sot10" role="3rHrn6">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="1xehy3Sot11" role="3rHtpV">
            <ref role="3uigEE" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xehy3Sot0U" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1xehy3SotEE" role="jymVt" />
    <node concept="2YIFZL" id="1xehy3Sovth" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="37vLTG" id="1xehy3SowK_" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1xehy3SowKA" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1xehy3Sovtk" role="3clF47">
        <node concept="3clFbJ" id="1xehy3Sox6n" role="3cqZAp">
          <node concept="3fqX7Q" id="1xehy3SoxcE" role="3clFbw">
            <node concept="2OqwBi" id="1xehy3Soy2y" role="3fr31v">
              <node concept="37vLTw" id="1xehy3Soxp0" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3Sot0S" resolve="instances" />
              </node>
              <node concept="2Nt0df" id="1xehy3SoyQm" role="2OqNvi">
                <node concept="37vLTw" id="1xehy3Soz3F" role="38cxEo">
                  <ref role="3cqZAo" node="1xehy3SowK_" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1xehy3Sox6p" role="3clFbx">
            <node concept="3clFbF" id="1xehy3SozzE" role="3cqZAp">
              <node concept="37vLTI" id="1xehy3So_GH" role="3clFbG">
                <node concept="2ShNRf" id="1xehy3SoA6r" role="37vLTx">
                  <node concept="1pGfFk" id="1xehy3SoJSl" role="2ShVmc">
                    <ref role="37wK5l" node="1xehy3SoJcC" resolve="PersistedBindingConfiguration" />
                    <node concept="37vLTw" id="1xehy3SoPte" role="37wK5m">
                      <ref role="3cqZAo" node="1xehy3SowK_" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="1xehy3So_1m" role="37vLTJ">
                  <node concept="37vLTw" id="1xehy3So_qV" role="3ElVtu">
                    <ref role="3cqZAo" node="1xehy3SowK_" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="1xehy3SozzD" role="3ElQJh">
                    <ref role="3cqZAo" node="1xehy3Sot0S" resolve="instances" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xehy3SoOzK" role="3cqZAp">
          <node concept="3EllGN" id="1xehy3SoOEO" role="3cqZAk">
            <node concept="37vLTw" id="1xehy3SoOEP" role="3ElVtu">
              <ref role="3cqZAo" node="1xehy3SowK_" resolve="project" />
            </node>
            <node concept="37vLTw" id="1xehy3SoOF6" role="3ElQJh">
              <ref role="3cqZAo" node="1xehy3Sot0S" resolve="instances" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1xehy3Souzc" role="1B3o_S" />
      <node concept="3uibUv" id="1xehy3Sowh$" role="3clF45">
        <ref role="3uigEE" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
      </node>
    </node>
    <node concept="2tJIrI" id="6JwgQ7UVUQG" role="jymVt" />
    <node concept="2YIFZL" id="6JwgQ7URldI" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="37vLTG" id="6JwgQ7URldJ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6JwgQ7URswv" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6JwgQ7URldL" role="3clF47">
        <node concept="3cpWs6" id="6JwgQ7URtcy" role="3cqZAp">
          <node concept="1rXfSq" id="6JwgQ7URtOD" role="3cqZAk">
            <ref role="37wK5l" node="1xehy3Sovth" resolve="getInstance" />
            <node concept="2YIFZM" id="6JwgQ7URuzv" role="37wK5m">
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="6JwgQ7URvcI" role="37wK5m">
                <ref role="3cqZAo" node="6JwgQ7URldJ" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6JwgQ7URle2" role="1B3o_S" />
      <node concept="3uibUv" id="6JwgQ7URle3" role="3clF45">
        <ref role="3uigEE" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xehy3SoLpF" role="jymVt" />
    <node concept="312cEg" id="1xehy3SoLI0" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="1xehy3SoLI1" role="1B3o_S" />
      <node concept="3uibUv" id="1xehy3SoLI3" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xehy3SoLzP" role="jymVt" />
    <node concept="3clFbW" id="1xehy3SoJcC" role="jymVt">
      <node concept="37vLTG" id="1xehy3SoKAr" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1xehy3SoKAs" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="1xehy3SoJcF" role="3clF45" />
      <node concept="3Tm6S6" id="1xehy3SoJTr" role="1B3o_S" />
      <node concept="3clFbS" id="1xehy3SoJcH" role="3clF47">
        <node concept="3clFbF" id="1xehy3SoL9G" role="3cqZAp">
          <node concept="37vLTI" id="1xehy3SoNTO" role="3clFbG">
            <node concept="37vLTw" id="1xehy3SoOlm" role="37vLTx">
              <ref role="3cqZAo" node="1xehy3SoKAr" resolve="project" />
            </node>
            <node concept="2OqwBi" id="1xehy3SoLfg" role="37vLTJ">
              <node concept="Xjq3P" id="1xehy3SoL9F" role="2Oq$k0" />
              <node concept="2OwXpG" id="1xehy3SoNo7" role="2OqNvi">
                <ref role="2Oxat5" node="1xehy3SoLI0" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6JwgQ7UVYkn" role="jymVt" />
    <node concept="3clFb_" id="6JwgQ7UW22M" role="jymVt">
      <property role="TrG5h" value="describeState" />
      <node concept="3clFbS" id="6JwgQ7UW22P" role="3clF47">
        <node concept="3cpWs6" id="6JwgQ7UW7fC" role="3cqZAp">
          <node concept="2OqwBi" id="6JwgQ7UWa8i" role="3cqZAk">
            <node concept="1rXfSq" id="6JwgQ7UW8q$" role="2Oq$k0">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
            <node concept="liA8E" id="6JwgQ7UWhec" role="2OqNvi">
              <ref role="37wK5l" node="cJDksuusD8" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6JwgQ7UW0gL" role="1B3o_S" />
      <node concept="17QB3L" id="6JwgQ7UW1YL" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6ny$4s" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SoPER" role="jymVt">
      <property role="TrG5h" value="applyToProject" />
      <node concept="3clFbS" id="1xehy3SoPEV" role="3clF47">
        <node concept="3clFbF" id="1xehy3SoPEW" role="3cqZAp">
          <node concept="1rXfSq" id="1xehy3SoPEX" role="3clFbG">
            <ref role="37wK5l" node="1xehy3SoR1E" resolve="addRepositoriesAsSpecifiedInPersistedBindingConfiguration" />
          </node>
        </node>
        <node concept="3clFbF" id="1xehy3SoPEZ" role="3cqZAp">
          <node concept="1rXfSq" id="1xehy3SoPF0" role="3clFbG">
            <ref role="37wK5l" node="1xehy3SoS8F" resolve="bindTransientModulesAsSpecifiedInPersistedConfiguration" />
          </node>
        </node>
        <node concept="3clFbF" id="nzqvuXQXj0" role="3cqZAp">
          <node concept="1rXfSq" id="nzqvuXQXiY" role="3clFbG">
            <ref role="37wK5l" node="nzqvuXQQOY" resolve="bindMappedModulesAsSpecifiedInPersistedConfiguration" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1xehy3SoPF3" role="3clF45" />
      <node concept="3Tm1VV" id="1xehy3SoPF2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6JwgQ7URwPg" role="jymVt" />
    <node concept="3clFb_" id="6JwgQ7URCLz" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="3clFbS" id="6JwgQ7URCLA" role="3clF47">
        <node concept="3cpWs8" id="6JwgQ7UREN2" role="3cqZAp">
          <node concept="3cpWsn" id="6JwgQ7UREN5" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="6JwgQ7UREN6" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="6JwgQ7URGrA" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6JwgQ7URKmL" role="3cqZAp">
          <node concept="3clFbS" id="6JwgQ7URKmN" role="3clFbx">
            <node concept="3cpWs6" id="6JwgQ7URQEb" role="3cqZAp">
              <node concept="3clFbT" id="6JwgQ7URQKX" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="6JwgQ7URQ8r" role="3clFbw">
            <node concept="2OqwBi" id="6JwgQ7URQ8t" role="3fr31v">
              <node concept="2OqwBi" id="6JwgQ7URQ8u" role="2Oq$k0">
                <node concept="37vLTw" id="6JwgQ7URQ8v" role="2Oq$k0">
                  <ref role="3cqZAo" node="6JwgQ7UREN5" resolve="state" />
                </node>
                <node concept="2OwXpG" id="6JwgQ7URQ8w" role="2OqNvi">
                  <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
                </node>
              </node>
              <node concept="liA8E" id="6JwgQ7URQ8x" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6JwgQ7URU1D" role="3cqZAp">
          <node concept="3clFbS" id="6JwgQ7URU1E" role="3clFbx">
            <node concept="3cpWs6" id="6JwgQ7URU1F" role="3cqZAp">
              <node concept="3clFbT" id="6JwgQ7URU1G" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="6JwgQ7URU1H" role="3clFbw">
            <node concept="2OqwBi" id="6JwgQ7URU1I" role="3fr31v">
              <node concept="2OqwBi" id="6JwgQ7URU1J" role="2Oq$k0">
                <node concept="37vLTw" id="6JwgQ7URU1K" role="2Oq$k0">
                  <ref role="3cqZAo" node="6JwgQ7UREN5" resolve="state" />
                </node>
                <node concept="2OwXpG" id="6JwgQ7URWC2" role="2OqNvi">
                  <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
                </node>
              </node>
              <node concept="liA8E" id="6JwgQ7URU1M" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6JwgQ7URWTB" role="3cqZAp">
          <node concept="3clFbS" id="6JwgQ7URWTC" role="3clFbx">
            <node concept="3cpWs6" id="6JwgQ7URWTD" role="3cqZAp">
              <node concept="3clFbT" id="6JwgQ7URWTE" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="6JwgQ7URWTF" role="3clFbw">
            <node concept="2OqwBi" id="6JwgQ7URWTG" role="3fr31v">
              <node concept="2OqwBi" id="6JwgQ7URWTH" role="2Oq$k0">
                <node concept="37vLTw" id="6JwgQ7URWTI" role="2Oq$k0">
                  <ref role="3cqZAo" node="6JwgQ7UREN5" resolve="state" />
                </node>
                <node concept="2OwXpG" id="6JwgQ7URYvU" role="2OqNvi">
                  <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                </node>
              </node>
              <node concept="liA8E" id="6JwgQ7URWTK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6JwgQ7US056" role="3cqZAp">
          <node concept="3clFbS" id="6JwgQ7US057" role="3clFbx">
            <node concept="3cpWs6" id="6JwgQ7US058" role="3cqZAp">
              <node concept="3clFbT" id="6JwgQ7US059" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="6JwgQ7US05a" role="3clFbw">
            <node concept="2OqwBi" id="6JwgQ7US05b" role="3fr31v">
              <node concept="2OqwBi" id="6JwgQ7US05c" role="2Oq$k0">
                <node concept="37vLTw" id="6JwgQ7US05d" role="2Oq$k0">
                  <ref role="3cqZAo" node="6JwgQ7UREN5" resolve="state" />
                </node>
                <node concept="2OwXpG" id="6JwgQ7US2_l" role="2OqNvi">
                  <ref role="2Oxat5" node="7xblg8lmp1Z" resolve="transientProjects" />
                </node>
              </node>
              <node concept="liA8E" id="6JwgQ7US05f" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6JwgQ7URQZl" role="3cqZAp">
          <node concept="3clFbT" id="6JwgQ7URR6l" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6JwgQ7UR$da" role="1B3o_S" />
      <node concept="10P_77" id="6JwgQ7URCmI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6JwgQ7USkAZ" role="jymVt" />
    <node concept="3clFb_" id="6JwgQ7USq0G" role="jymVt">
      <property role="TrG5h" value="hasMappedModule" />
      <node concept="3clFbS" id="6JwgQ7USq0J" role="3clF47">
        <node concept="3cpWs8" id="6JwgQ7USwUM" role="3cqZAp">
          <node concept="3cpWsn" id="6JwgQ7USwUN" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="6JwgQ7USwUO" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="6JwgQ7USwUP" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6p3SZI_2pEA" role="3cqZAp">
          <node concept="2GrKxI" id="6p3SZI_2pEC" role="2Gsz3X">
            <property role="TrG5h" value="mm" />
          </node>
          <node concept="2OqwBi" id="6p3SZI_2qil" role="2GsD0m">
            <node concept="37vLTw" id="6p3SZI_2pXF" role="2Oq$k0">
              <ref role="3cqZAo" node="6JwgQ7USwUN" resolve="state" />
            </node>
            <node concept="2OwXpG" id="6p3SZI_2qvP" role="2OqNvi">
              <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
            </node>
          </node>
          <node concept="3clFbS" id="6p3SZI_2pEG" role="2LFqv$">
            <node concept="3clFbJ" id="6p3SZI_2r5b" role="3cqZAp">
              <node concept="2OqwBi" id="6p3SZI_2rFW" role="3clFbw">
                <node concept="2GrUjf" id="6p3SZI_2rfD" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6p3SZI_2pEC" resolve="mm" />
                </node>
                <node concept="liA8E" id="6p3SZI_2sE2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="3cpWs3" id="6p3SZI_2t6R" role="37wK5m">
                    <node concept="37vLTw" id="6p3SZI_2tom" role="3uHU7w">
                      <ref role="3cqZAo" node="6JwgQ7USt$h" resolve="moduleName" />
                    </node>
                    <node concept="Xl_RD" id="6p3SZI_2sWj" role="3uHU7B">
                      <property role="Xl_RC" value="#" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6p3SZI_2r5d" role="3clFbx">
                <node concept="3cpWs6" id="6p3SZI_2tAM" role="3cqZAp">
                  <node concept="3clFbT" id="6p3SZI_2tHA" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6p3SZI_2ug8" role="3cqZAp">
          <node concept="3clFbT" id="6p3SZI_2wDI" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6JwgQ7USo2Z" role="1B3o_S" />
      <node concept="10P_77" id="6JwgQ7USpX9" role="3clF45" />
      <node concept="37vLTG" id="6JwgQ7USt$h" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="6JwgQ7USEaV" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6JwgQ7US68h" role="jymVt" />
    <node concept="3clFb_" id="6JwgQ7US9S7" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3clFbS" id="6JwgQ7US9Sa" role="3clF47">
        <node concept="3clFbF" id="6JwgQ7USdoj" role="3cqZAp">
          <node concept="1rXfSq" id="6JwgQ7USdoi" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="6JwgQ7USe4A" role="37wK5m">
              <node concept="37vLTG" id="6JwgQ7USebW" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="6JwgQ7USeo0" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="6JwgQ7USe4B" role="1bW5cS">
                <node concept="3clFbF" id="6JwgQ7UShNT" role="3cqZAp">
                  <node concept="2OqwBi" id="6JwgQ7UShNV" role="3clFbG">
                    <node concept="2OqwBi" id="6JwgQ7UShNW" role="2Oq$k0">
                      <node concept="37vLTw" id="6JwgQ7UShNX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7USebW" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="6JwgQ7UShNY" role="2OqNvi">
                        <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6JwgQ7UShNZ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6JwgQ7USimo" role="3cqZAp">
                  <node concept="2OqwBi" id="6JwgQ7USimq" role="3clFbG">
                    <node concept="2OqwBi" id="6JwgQ7USimr" role="2Oq$k0">
                      <node concept="37vLTw" id="6JwgQ7USims" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7USebW" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="6JwgQ7USjme" role="2OqNvi">
                        <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6JwgQ7USimu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6JwgQ7USitv" role="3cqZAp">
                  <node concept="2OqwBi" id="6JwgQ7USitx" role="3clFbG">
                    <node concept="2OqwBi" id="6JwgQ7USity" role="2Oq$k0">
                      <node concept="37vLTw" id="6JwgQ7USitz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7USebW" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="6JwgQ7USjBI" role="2OqNvi">
                        <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6JwgQ7USit_" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6JwgQ7USeGa" role="3cqZAp">
                  <node concept="2OqwBi" id="6JwgQ7USg5a" role="3clFbG">
                    <node concept="2OqwBi" id="6JwgQ7USeWV" role="2Oq$k0">
                      <node concept="37vLTw" id="6JwgQ7USeG9" role="2Oq$k0">
                        <ref role="3cqZAo" node="6JwgQ7USebW" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="6JwgQ7USkk8" role="2OqNvi">
                        <ref role="2Oxat5" node="7xblg8lmp1Z" resolve="transientProjects" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6JwgQ7USh9M" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6p3SZI_0hZ$" role="3cqZAp">
          <node concept="1rXfSq" id="6p3SZI_0ith" role="1gVkn0">
            <ref role="37wK5l" node="6JwgQ7URCLz" resolve="isEmpty" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6JwgQ7US8bg" role="1B3o_S" />
      <node concept="3cqZAl" id="6JwgQ7US9O7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1xehy3SrsVK" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SrtXT" role="jymVt">
      <property role="TrG5h" value="readState" />
      <node concept="3clFbS" id="1xehy3SrtXU" role="3clF47">
        <node concept="3cpWs8" id="1xehy3SrtXV" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SrtXW" role="3cpWs9">
            <property role="TrG5h" value="cloudResourcesConfigurationComponent" />
            <node concept="3uibUv" id="1xehy3SrtXX" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="CloudResourcesConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="1xehy3SrtXY" role="33vP2m">
              <node concept="37vLTw" id="1xehy3SrtXZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SoLI0" resolve="project" />
              </node>
              <node concept="liA8E" id="1xehy3SrtY0" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="1xehy3SrtY1" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="CloudResourcesConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xehy3SrtY2" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SrtY3" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1xehy3SrtY4" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="2OqwBi" id="1xehy3SrtY5" role="33vP2m">
              <node concept="37vLTw" id="1xehy3SrtY6" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SrtXW" resolve="cloudResourcesConfigurationComponent" />
              </node>
              <node concept="liA8E" id="1xehy3SrtY7" role="2OqNvi">
                <ref role="37wK5l" node="7xblg8lmnRn" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1xehy3SrBXd" role="3cqZAp">
          <node concept="37vLTw" id="1xehy3SrC3w" role="3cqZAk">
            <ref role="3cqZAo" node="1xehy3SrtY3" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xehy3SrtYi" role="1B3o_S" />
      <node concept="3uibUv" id="1xehy3SrAx5" role="3clF45">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xehy3Srt5z" role="jymVt" />
    <node concept="3clFb_" id="1xehy3Sr98P" role="jymVt">
      <property role="TrG5h" value="modifyState" />
      <node concept="3clFbS" id="1xehy3Sr98S" role="3clF47">
        <node concept="3cpWs8" id="1xehy3Srdcu" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3Srdcv" role="3cpWs9">
            <property role="TrG5h" value="cloudResourcesConfigurationComponent" />
            <node concept="3uibUv" id="1xehy3Srdcw" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmms7" resolve="CloudResourcesConfigurationComponent" />
            </node>
            <node concept="2OqwBi" id="1xehy3Srdcx" role="33vP2m">
              <node concept="37vLTw" id="1xehy3Srdcy" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3SoLI0" resolve="project" />
              </node>
              <node concept="liA8E" id="1xehy3Srdcz" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="1xehy3Srdc$" role="37wK5m">
                  <ref role="3VsUkX" node="7xblg8lmms7" resolve="CloudResourcesConfigurationComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1xehy3Srdc_" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SrdcA" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1xehy3SrdcB" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="1xehy3SrCpb" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DojN6AJwkt" role="3cqZAp">
          <node concept="3clFbS" id="2DojN6AJwkv" role="3clFbx">
            <node concept="YS8fn" id="2DojN6AJx2k" role="3cqZAp">
              <node concept="2ShNRf" id="2DojN6AJx8v" role="YScLw">
                <node concept="1pGfFk" id="2DojN6AJyTD" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="2DojN6AJz7D" role="37wK5m">
                    <property role="Xl_RC" value="state should not be null" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DojN6AJwHm" role="3clFbw">
            <node concept="10Nm6u" id="2DojN6AJwSh" role="3uHU7w" />
            <node concept="37vLTw" id="2DojN6AJwr0" role="3uHU7B">
              <ref role="3cqZAo" node="1xehy3SrdcA" resolve="state" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xehy3SreFu" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3Srf9B" role="3clFbG">
            <node concept="37vLTw" id="1xehy3SreFs" role="2Oq$k0">
              <ref role="3cqZAo" node="1xehy3SraxU" resolve="modifier" />
            </node>
            <node concept="liA8E" id="1xehy3SrfxX" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
              <node concept="37vLTw" id="1xehy3SrfEJ" role="37wK5m">
                <ref role="3cqZAo" node="1xehy3SrdcA" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xehy3SrdcO" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3SrdcP" role="3clFbG">
            <node concept="37vLTw" id="1xehy3SrdcQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1xehy3Srdcv" resolve="cloudResourcesConfigurationComponent" />
            </node>
            <node concept="liA8E" id="1xehy3SrdcR" role="2OqNvi">
              <ref role="37wK5l" node="7xblg8lmnRv" resolve="loadState" />
              <node concept="37vLTw" id="1xehy3SrdcS" role="37wK5m">
                <ref role="3cqZAo" node="1xehy3SrdcA" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1xehy3Sr7DF" role="1B3o_S" />
      <node concept="3cqZAl" id="1xehy3Sr8Xm" role="3clF45" />
      <node concept="37vLTG" id="1xehy3SraxU" role="3clF46">
        <property role="TrG5h" value="modifier" />
        <node concept="3uibUv" id="1xehy3SraxT" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="1xehy3SrgB2" role="11_B2D">
            <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6Tb6n_gct" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SoXrB" role="jymVt">
      <property role="TrG5h" value="addRepository" />
      <node concept="3clFbS" id="1xehy3SoXrH" role="3clF47">
        <node concept="3clFbF" id="1xehy3Srh7u" role="3cqZAp">
          <node concept="1rXfSq" id="1xehy3Srh7s" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="1xehy3SrhKG" role="37wK5m">
              <node concept="37vLTG" id="1xehy3SrhMz" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="1xehy3SrhZW" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="1xehy3SrhKH" role="1bW5cS">
                <node concept="3clFbF" id="1xehy3SribH" role="3cqZAp">
                  <node concept="2OqwBi" id="1xehy3SribI" role="3clFbG">
                    <node concept="2OqwBi" id="1xehy3SribJ" role="2Oq$k0">
                      <node concept="37vLTw" id="1xehy3SribK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xehy3SrhMz" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="1xehy3SribL" role="2OqNvi">
                        <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1xehy3SribM" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="1xehy3SribN" role="37wK5m">
                        <node concept="37vLTw" id="1xehy3SribO" role="2Oq$k0">
                          <ref role="3cqZAo" node="1xehy3SoXrF" resolve="cloudRepository" />
                        </node>
                        <node concept="liA8E" id="1xehy3SribP" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
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
      <node concept="3cqZAl" id="1xehy3SoXsa" role="3clF45" />
      <node concept="37vLTG" id="1xehy3SoXrF" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <node concept="3uibUv" id="1xehy3SoXrG" role="1tU5fm">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1xehy3SoXs9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6nAf43" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SoZM5" role="jymVt">
      <property role="TrG5h" value="removeRepository" />
      <node concept="3clFbS" id="1xehy3SoZMb" role="3clF47">
        <node concept="3clFbF" id="1xehy3SrjAh" role="3cqZAp">
          <node concept="1rXfSq" id="1xehy3SrjAi" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="1xehy3SrjAj" role="37wK5m">
              <node concept="37vLTG" id="1xehy3SrjAk" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="1xehy3SrjAl" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="1xehy3SrjAm" role="1bW5cS">
                <node concept="3clFbF" id="1xehy3SrkiQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1xehy3SrkiR" role="3clFbG">
                    <node concept="2OqwBi" id="1xehy3SrkiS" role="2Oq$k0">
                      <node concept="37vLTw" id="1xehy3SrkiT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xehy3SrjAk" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="1xehy3SrkiU" role="2OqNvi">
                        <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1xehy3SrkiV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Collection.removeIf(java.util.function.Predicate)" resolve="removeIf" />
                      <node concept="1bVj0M" id="1xehy3SrkiW" role="37wK5m">
                        <node concept="3clFbS" id="1xehy3SrkiX" role="1bW5cS">
                          <node concept="3clFbF" id="1xehy3SrkiY" role="3cqZAp">
                            <node concept="17R0WA" id="1xehy3SrkiZ" role="3clFbG">
                              <node concept="2OqwBi" id="1xehy3Srkj0" role="3uHU7w">
                                <node concept="37vLTw" id="1xehy3Srkj1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1xehy3SoZM9" resolve="cloudRepository" />
                                </node>
                                <node concept="liA8E" id="1xehy3Srkj2" role="2OqNvi">
                                  <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1xehy3Srkj3" role="3uHU7B">
                                <ref role="3cqZAo" node="1xehy3Srkj4" resolve="url" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="1xehy3Srkj4" role="1bW2Oz">
                          <property role="TrG5h" value="url" />
                          <node concept="3uibUv" id="1xehy3Srkj5" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1xehy3Srkj6" role="3cqZAp">
                  <node concept="2OqwBi" id="1xehy3Srkj7" role="3clFbG">
                    <node concept="2OqwBi" id="1xehy3Srkj8" role="2Oq$k0">
                      <node concept="37vLTw" id="1xehy3Srkj9" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xehy3SrjAk" resolve="state" />
                      </node>
                      <node concept="2OwXpG" id="1xehy3Srkja" role="2OqNvi">
                        <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1xehy3Srkjb" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Collection.removeIf(java.util.function.Predicate)" resolve="removeIf" />
                      <node concept="1bVj0M" id="1xehy3Srkjc" role="37wK5m">
                        <node concept="3clFbS" id="1xehy3Srkjd" role="1bW5cS">
                          <node concept="3clFbF" id="1xehy3Srkje" role="3cqZAp">
                            <node concept="2OqwBi" id="1xehy3Srkjf" role="3clFbG">
                              <node concept="37vLTw" id="1xehy3Srkjg" role="2Oq$k0">
                                <ref role="3cqZAo" node="1xehy3Srkjn" resolve="moduleStr" />
                              </node>
                              <node concept="liA8E" id="1xehy3Srkjh" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                <node concept="3cpWs3" id="1xehy3Srkji" role="37wK5m">
                                  <node concept="Xl_RD" id="1xehy3Srkjj" role="3uHU7w">
                                    <property role="Xl_RC" value="#" />
                                  </node>
                                  <node concept="2OqwBi" id="1xehy3Srkjk" role="3uHU7B">
                                    <node concept="37vLTw" id="1xehy3Srkjl" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1xehy3SoZM9" resolve="cloudRepository" />
                                    </node>
                                    <node concept="liA8E" id="1xehy3Srkjm" role="2OqNvi">
                                      <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="1xehy3Srkjn" role="1bW2Oz">
                          <property role="TrG5h" value="moduleStr" />
                          <node concept="3uibUv" id="1xehy3Srkjo" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
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
      <node concept="3cqZAl" id="1xehy3SoZN2" role="3clF45" />
      <node concept="37vLTG" id="1xehy3SoZM9" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1xehy3SoZMa" role="1tU5fm">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1xehy3SoZN1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6nyY2w" role="jymVt" />
    <node concept="3clFb_" id="1xehy3Sp48W" role="jymVt">
      <property role="TrG5h" value="addTransientBoundModule" />
      <node concept="3clFbS" id="1xehy3Sp494" role="3clF47">
        <node concept="3clFbF" id="7jRNnvCcSyb" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCcSy9" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvCcvqb" resolve="addTransientBoundModule" />
            <node concept="37vLTw" id="7jRNnvCcTp1" role="37wK5m">
              <ref role="3cqZAo" node="5rz8NqPOdbF" resolve="treeInRepository" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCcTTB" role="37wK5m">
              <node concept="37vLTw" id="7jRNnvCcTTC" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3Sp492" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="7jRNnvCcTTD" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
              </node>
            </node>
            <node concept="2OqwBi" id="7jRNnvCcUsI" role="37wK5m">
              <node concept="37vLTw" id="7jRNnvCcUsJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1xehy3Sp492" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="7jRNnvCcUsK" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1xehy3Sp49Z" role="3clF45" />
      <node concept="37vLTG" id="5rz8NqPOdbF" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="5rz8NqPOdbG" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="1xehy3Sp492" role="3clF46">
        <property role="TrG5h" value="nodeTreeNode" />
        <node concept="3uibUv" id="1xehy3Sp493" role="1tU5fm">
          <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1xehy3Sp49Y" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7jRNnvCcpUg" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvCcvqb" role="jymVt">
      <property role="TrG5h" value="addTransientBoundModule" />
      <node concept="3clFbS" id="7jRNnvCcvqc" role="3clF47">
        <node concept="3clFbF" id="7jRNnvCcvqd" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCcvqe" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="7jRNnvCcvqf" role="37wK5m">
              <node concept="37vLTG" id="7jRNnvCcvqg" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="7jRNnvCcvqh" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="7jRNnvCcvqi" role="1bW5cS">
                <node concept="3clFbF" id="7jRNnvCcvqj" role="3cqZAp">
                  <node concept="2OqwBi" id="7jRNnvCcvqk" role="3clFbG">
                    <node concept="37vLTw" id="7jRNnvCcHTn" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCcDm2" resolve="branch" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCcvqo" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                      <node concept="1bVj0M" id="7jRNnvCcvqp" role="37wK5m">
                        <node concept="3clFbS" id="7jRNnvCcvqq" role="1bW5cS">
                          <node concept="3cpWs8" id="7jRNnvCcvqr" role="3cqZAp">
                            <node concept="3cpWsn" id="7jRNnvCcvqs" role="3cpWs9">
                              <property role="TrG5h" value="moduleName" />
                              <node concept="17QB3L" id="7jRNnvCcvqt" role="1tU5fm" />
                              <node concept="2OqwBi" id="7jRNnvCcvqu" role="33vP2m">
                                <node concept="liA8E" id="7jRNnvCcvqv" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                  <node concept="Xl_RD" id="7jRNnvCcvqw" role="37wK5m">
                                    <property role="Xl_RC" value="name" />
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="7jRNnvCcvqx" role="2Oq$k0">
                                  <node concept="10QFUN" id="7jRNnvCcvqy" role="1eOMHV">
                                    <node concept="3uibUv" id="7jRNnvCcvqz" role="10QFUM">
                                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                    </node>
                                    <node concept="37vLTw" id="7jRNnvCcNVC" role="10QFUP">
                                      <ref role="3cqZAo" node="7jRNnvCcIyw" resolve="cloudNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7jRNnvCcvqB" role="3cqZAp">
                            <node concept="2OqwBi" id="7jRNnvCcvqC" role="3clFbG">
                              <node concept="2OqwBi" id="7jRNnvCcvqD" role="2Oq$k0">
                                <node concept="37vLTw" id="7jRNnvCcvqE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7jRNnvCcvqg" resolve="state" />
                                </node>
                                <node concept="2OwXpG" id="7jRNnvCcvqF" role="2OqNvi">
                                  <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7jRNnvCcvqG" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="7jRNnvCcvqH" role="37wK5m">
                                  <node concept="37vLTw" id="7jRNnvCcvqI" role="3uHU7w">
                                    <ref role="3cqZAo" node="7jRNnvCcvqs" resolve="moduleName" />
                                  </node>
                                  <node concept="3cpWs3" id="7jRNnvCcvqJ" role="3uHU7B">
                                    <node concept="2OqwBi" id="7jRNnvCcvqK" role="3uHU7B">
                                      <node concept="37vLTw" id="7jRNnvCcvqL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7jRNnvCcvqR" resolve="treeInRepository" />
                                      </node>
                                      <node concept="liA8E" id="7jRNnvCcvqM" role="2OqNvi">
                                        <ref role="37wK5l" to="csg2:3i6diw3mCn3" resolve="completeId" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="7jRNnvCcvqN" role="3uHU7w">
                                      <property role="Xl_RC" value="#" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="7jRNnvCcvqO" role="3cqZAp">
                            <node concept="10M0yZ" id="7jRNnvCcvqP" role="3cqZAk">
                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
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
      </node>
      <node concept="3cqZAl" id="7jRNnvCcvqQ" role="3clF45" />
      <node concept="37vLTG" id="7jRNnvCcvqR" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="7jRNnvCcvqS" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCcDm2" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="7jRNnvCcFnJ" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCcIyw" role="3clF46">
        <property role="TrG5h" value="cloudNode" />
        <node concept="3uibUv" id="7jRNnvCcKZE" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7jRNnvCcvqV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7jRNnvCdvL7" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvCdrBw" role="jymVt">
      <property role="TrG5h" value="addTransientBoundModule" />
      <node concept="3clFbS" id="7jRNnvCdrBx" role="3clF47">
        <node concept="3clFbF" id="7jRNnvCdB45" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCdB44" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvCcvqb" resolve="addTransientBoundModule" />
            <node concept="37vLTw" id="7jRNnvCdChK" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCdrC8" resolve="treeInRepository" />
            </node>
            <node concept="37vLTw" id="7jRNnvCdCS$" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCdrCa" resolve="branch" />
            </node>
            <node concept="2ShNRf" id="7jRNnvCdD1l" role="37wK5m">
              <node concept="1pGfFk" id="7jRNnvCdFgy" role="2ShVmc">
                <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                <node concept="37vLTw" id="7jRNnvCdG1e" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCdrCc" resolve="cloudNodeId" />
                </node>
                <node concept="37vLTw" id="7jRNnvCdGsR" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCdrCa" resolve="branch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7jRNnvCdrC7" role="3clF45" />
      <node concept="37vLTG" id="7jRNnvCdrC8" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="7jRNnvCdrC9" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCdrCa" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="7jRNnvCdrCb" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCdrCc" role="3clF46">
        <property role="TrG5h" value="cloudNodeId" />
        <node concept="3cpWsb" id="7jRNnvCdzoH" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7jRNnvCdrCe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7pEM25OpCNH" role="jymVt" />
    <node concept="3clFb_" id="7pEM25OpFi2" role="jymVt">
      <property role="TrG5h" value="addTransientBoundProject" />
      <node concept="3clFbS" id="7pEM25OpFi3" role="3clF47">
        <node concept="3clFbF" id="7pEM25OpFi4" role="3cqZAp">
          <node concept="1rXfSq" id="7pEM25OpFi5" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="7pEM25OpFi6" role="37wK5m">
              <node concept="37vLTG" id="7pEM25OpFi7" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="7pEM25OpFi8" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="7pEM25OpFi9" role="1bW5cS">
                <node concept="3clFbF" id="7pEM25OpFia" role="3cqZAp">
                  <node concept="2OqwBi" id="3i6diw3nizK" role="3clFbG">
                    <node concept="37vLTw" id="7pEM25OpYrZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pEM25OpFiM" resolve="treeInRepository" />
                    </node>
                    <node concept="liA8E" id="3i6diw3nj8z" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:3i6diw3mRQm" resolve="runRead" />
                      <node concept="1bVj0M" id="7pEM25OpZpl" role="37wK5m">
                        <node concept="3clFbS" id="7pEM25OpZpm" role="1bW5cS">
                          <node concept="3clFbF" id="7pEM25OpZys" role="3cqZAp">
                            <node concept="2OqwBi" id="7pEM25OpZyt" role="3clFbG">
                              <node concept="2OqwBi" id="7pEM25OpZyu" role="2Oq$k0">
                                <node concept="37vLTw" id="7pEM25OpZyv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7pEM25OpFi7" resolve="state" />
                                </node>
                                <node concept="2OwXpG" id="7pEM25OpZyw" role="2OqNvi">
                                  <ref role="2Oxat5" node="7xblg8lmp1Z" resolve="transientProjects" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7pEM25OpZyx" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="2OqwBi" id="3i6diw3nl7P" role="37wK5m">
                                  <node concept="37vLTw" id="3i6diw3nl7Q" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7pEM25OpFiM" resolve="treeInRepository" />
                                  </node>
                                  <node concept="liA8E" id="3i6diw3nl7R" role="2OqNvi">
                                    <ref role="37wK5l" to="csg2:3i6diw3mCn3" resolve="completeId" />
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
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7pEM25OpFiL" role="3clF45" />
      <node concept="37vLTG" id="7pEM25OpFiM" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="3i6diw3nhAQ" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7pEM25OpFiO" role="3clF46">
        <property role="TrG5h" value="cloudProject" />
        <node concept="3Tqbb2" id="7pEM25OpSVB" role="1tU5fm">
          <ref role="ehGHo" to="w7di:3uw$nPCBu_p" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7pEM25OpFiQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7pEM25OpDI1" role="jymVt" />
    <node concept="3clFb_" id="1xehy3Sp7iB" role="jymVt">
      <property role="TrG5h" value="addTransientBoundModule" />
      <node concept="3clFbS" id="1xehy3Sp7iJ" role="3clF47">
        <node concept="3clFbF" id="1xehy3Srqro" role="3cqZAp">
          <node concept="1rXfSq" id="1xehy3Srqrp" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="1xehy3Srqrq" role="37wK5m">
              <node concept="37vLTG" id="1xehy3Srqrr" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="1xehy3Srqrs" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="1xehy3Srqrt" role="1bW5cS">
                <node concept="3clFbF" id="1xehy3Srqru" role="3cqZAp">
                  <node concept="2OqwBi" id="1xehy3Srqrv" role="3clFbG">
                    <node concept="2OqwBi" id="1xehy3Srqrw" role="2Oq$k0">
                      <node concept="37vLTw" id="1xehy3Srqrx" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xehy3Sp7iH" resolve="nodeTreeNode" />
                      </node>
                      <node concept="liA8E" id="1xehy3Srqry" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~PNodeAdapter.getBranch()" resolve="getBranch" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1xehy3Srqrz" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                      <node concept="1bVj0M" id="1xehy3Srqr$" role="37wK5m">
                        <node concept="3clFbS" id="1xehy3Srqr_" role="1bW5cS">
                          <node concept="3cpWs8" id="1xehy3Srr$I" role="3cqZAp">
                            <node concept="3cpWsn" id="1xehy3Srr$J" role="3cpWs9">
                              <property role="TrG5h" value="moduleName" />
                              <node concept="17QB3L" id="1xehy3Srr$K" role="1tU5fm" />
                              <node concept="2OqwBi" id="1xehy3Srr$L" role="33vP2m">
                                <node concept="liA8E" id="1xehy3Srr$M" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                  <node concept="Xl_RD" id="1xehy3Srr$N" role="37wK5m">
                                    <property role="Xl_RC" value="name" />
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="1xehy3Srr$O" role="2Oq$k0">
                                  <node concept="10QFUN" id="1xehy3Srr$P" role="1eOMHV">
                                    <node concept="3uibUv" id="1xehy3Srr$Q" role="10QFUM">
                                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                    </node>
                                    <node concept="37vLTw" id="1xehy3Srr$R" role="10QFUP">
                                      <ref role="3cqZAo" node="1xehy3Sp7iH" resolve="nodeTreeNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1xehy3Srr$S" role="3cqZAp">
                            <node concept="2OqwBi" id="1xehy3Srr$T" role="3clFbG">
                              <node concept="2OqwBi" id="1xehy3Srr$U" role="2Oq$k0">
                                <node concept="37vLTw" id="1xehy3Srr$V" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1xehy3Srqrr" resolve="state" />
                                </node>
                                <node concept="2OwXpG" id="1xehy3Srr$W" role="2OqNvi">
                                  <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1xehy3Srr$X" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="1xehy3Srr$Y" role="37wK5m">
                                  <node concept="37vLTw" id="1xehy3Srr$Z" role="3uHU7w">
                                    <ref role="3cqZAo" node="1xehy3Srr$J" resolve="moduleName" />
                                  </node>
                                  <node concept="3cpWs3" id="1xehy3Srr_0" role="3uHU7B">
                                    <node concept="2OqwBi" id="5rz8NqPObNF" role="3uHU7B">
                                      <node concept="37vLTw" id="5rz8NqPObfd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5rz8NqPO46M" resolve="treeInRepository" />
                                      </node>
                                      <node concept="liA8E" id="5rz8NqPOcgr" role="2OqNvi">
                                        <ref role="37wK5l" to="csg2:3i6diw3mCn3" resolve="completeId" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="1xehy3Srr_2" role="3uHU7w">
                                      <property role="Xl_RC" value="#" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1xehy3Srqs3" role="3cqZAp">
                            <node concept="10M0yZ" id="1xehy3Srqs4" role="3cqZAk">
                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
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
      </node>
      <node concept="3cqZAl" id="1xehy3Sp7jC" role="3clF45" />
      <node concept="37vLTG" id="5rz8NqPO46M" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="5rz8NqPO46N" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="1xehy3Sp7iH" role="3clF46">
        <property role="TrG5h" value="nodeTreeNode" />
        <node concept="3uibUv" id="1xehy3Sp7iI" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1xehy3Sp7jB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5isGFNR$XOi" role="jymVt" />
    <node concept="3clFb_" id="5isGFNR_0BD" role="jymVt">
      <property role="TrG5h" value="addMappedBoundModule" />
      <node concept="3clFbS" id="5isGFNR_0BE" role="3clF47">
        <node concept="3clFbJ" id="2DojN6AJ0FT" role="3cqZAp">
          <node concept="3clFbS" id="2DojN6AJ0FV" role="3clFbx">
            <node concept="YS8fn" id="2DojN6AJ263" role="3cqZAp">
              <node concept="2ShNRf" id="2DojN6AJ2cu" role="YScLw">
                <node concept="1pGfFk" id="2DojN6AJjd9" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2DojN6AJjmc" role="37wK5m">
                    <property role="Xl_RC" value="treeInRepository should not be null" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DojN6AJ1sQ" role="3clFbw">
            <node concept="10Nm6u" id="2DojN6AJ1W0" role="3uHU7w" />
            <node concept="37vLTw" id="2DojN6AJ0ZO" role="3uHU7B">
              <ref role="3cqZAo" node="5isGFNR_0Cj" resolve="treeInRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5isGFNR_0BF" role="3cqZAp">
          <node concept="1rXfSq" id="5isGFNR_0BG" role="3clFbG">
            <ref role="37wK5l" node="1xehy3Sr98P" resolve="modifyState" />
            <node concept="1bVj0M" id="5isGFNR_0BH" role="37wK5m">
              <node concept="37vLTG" id="5isGFNR_0BI" role="1bW2Oz">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="5isGFNR_0BJ" role="1tU5fm">
                  <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                </node>
              </node>
              <node concept="3clFbS" id="5isGFNR_0BK" role="1bW5cS">
                <node concept="3clFbJ" id="2DojN6AJs0f" role="3cqZAp">
                  <node concept="3clFbS" id="2DojN6AJs0h" role="3clFbx">
                    <node concept="YS8fn" id="2DojN6AJtbr" role="3cqZAp">
                      <node concept="2ShNRf" id="2DojN6AJto1" role="YScLw">
                        <node concept="1pGfFk" id="2DojN6AJvhq" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                          <node concept="Xl_RD" id="2DojN6AJvG_" role="37wK5m">
                            <property role="Xl_RC" value="state should not be null" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2DojN6AJssa" role="3clFbw">
                    <node concept="10Nm6u" id="2DojN6AJsHe" role="3uHU7w" />
                    <node concept="37vLTw" id="2DojN6AJs79" role="3uHU7B">
                      <ref role="3cqZAo" node="5isGFNR_0BI" resolve="state" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5isGFNR_0BL" role="3cqZAp">
                  <node concept="2OqwBi" id="5isGFNR_0BM" role="3clFbG">
                    <node concept="2OqwBi" id="5isGFNR_0BN" role="2Oq$k0">
                      <node concept="37vLTw" id="5isGFNR_0BO" role="2Oq$k0">
                        <ref role="3cqZAo" node="5isGFNR_0Cl" resolve="nodeTreeNode" />
                      </node>
                      <node concept="liA8E" id="5isGFNR_0BP" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~PNodeAdapter.getBranch()" resolve="getBranch" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5isGFNR_0BQ" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                      <node concept="1bVj0M" id="5isGFNR_0BR" role="37wK5m">
                        <node concept="3clFbS" id="5isGFNR_0BS" role="1bW5cS">
                          <node concept="3cpWs8" id="5isGFNR_0BT" role="3cqZAp">
                            <node concept="3cpWsn" id="5isGFNR_0BU" role="3cpWs9">
                              <property role="TrG5h" value="moduleName" />
                              <node concept="17QB3L" id="5isGFNR_0BV" role="1tU5fm" />
                              <node concept="2OqwBi" id="5isGFNR_0BW" role="33vP2m">
                                <node concept="liA8E" id="5isGFNR_0BX" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                  <node concept="2OqwBi" id="2DojN6AJqGv" role="37wK5m">
                                    <node concept="355D3s" id="2DojN6AJqav" role="2Oq$k0">
                                      <ref role="355D3t" to="w7di:qmkA5fOskf" resolve="Module" />
                                      <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                    <node concept="liA8E" id="2DojN6AJrt1" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="5isGFNR_0BZ" role="2Oq$k0">
                                  <node concept="10QFUN" id="5isGFNR_0C0" role="1eOMHV">
                                    <node concept="3uibUv" id="5isGFNR_0C1" role="10QFUM">
                                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                    </node>
                                    <node concept="37vLTw" id="5isGFNR_0C2" role="10QFUP">
                                      <ref role="3cqZAo" node="5isGFNR_0Cl" resolve="nodeTreeNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="2DojN6AJjRO" role="3cqZAp">
                            <node concept="3clFbS" id="2DojN6AJjRQ" role="3clFbx">
                              <node concept="YS8fn" id="2DojN6AJl$A" role="3cqZAp">
                                <node concept="2ShNRf" id="2DojN6AJlEL" role="YScLw">
                                  <node concept="1pGfFk" id="2DojN6AJnCD" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                                    <node concept="Xl_RD" id="2DojN6AJnT7" role="37wK5m">
                                      <property role="Xl_RC" value="module should not have null name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="2DojN6AJkTM" role="3clFbw">
                              <node concept="10Nm6u" id="2DojN6AJljK" role="3uHU7w" />
                              <node concept="37vLTw" id="2DojN6AJkhA" role="3uHU7B">
                                <ref role="3cqZAo" node="5isGFNR_0BU" resolve="moduleName" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5isGFNR_0C3" role="3cqZAp">
                            <node concept="2OqwBi" id="5isGFNR_0C4" role="3clFbG">
                              <node concept="2OqwBi" id="5isGFNR_0C5" role="2Oq$k0">
                                <node concept="37vLTw" id="5isGFNR_0C6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5isGFNR_0BI" resolve="state" />
                                </node>
                                <node concept="2OwXpG" id="5isGFNR_fDm" role="2OqNvi">
                                  <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5isGFNR_0C8" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="5isGFNR_0C9" role="37wK5m">
                                  <node concept="37vLTw" id="5isGFNR_0Ca" role="3uHU7w">
                                    <ref role="3cqZAo" node="5isGFNR_0BU" resolve="moduleName" />
                                  </node>
                                  <node concept="3cpWs3" id="5isGFNR_0Cb" role="3uHU7B">
                                    <node concept="2OqwBi" id="5isGFNR_0Cc" role="3uHU7B">
                                      <node concept="37vLTw" id="5isGFNR_0Cd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5isGFNR_0Cj" resolve="treeInRepository" />
                                      </node>
                                      <node concept="liA8E" id="5isGFNR_0Ce" role="2OqNvi">
                                        <ref role="37wK5l" to="csg2:3i6diw3mCn3" resolve="completeId" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5isGFNR_0Cf" role="3uHU7w">
                                      <property role="Xl_RC" value="#" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="5isGFNR_0Cg" role="3cqZAp">
                            <node concept="10M0yZ" id="5isGFNR_0Ch" role="3cqZAk">
                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
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
      </node>
      <node concept="3cqZAl" id="5isGFNR_0Ci" role="3clF45" />
      <node concept="37vLTG" id="5isGFNR_0Cj" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="5isGFNR_0Ck" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5isGFNR_0Cl" role="3clF46">
        <property role="TrG5h" value="nodeTreeNode" />
        <node concept="3uibUv" id="5isGFNR_0Cm" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5isGFNR_0Cn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5isGFNR$ZQs" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SoR1E" role="jymVt">
      <property role="TrG5h" value="addRepositoriesAsSpecifiedInPersistedBindingConfiguration" />
      <node concept="3clFbS" id="1xehy3SoR1I" role="3clF47">
        <node concept="3cpWs8" id="1xehy3SoR1Q" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SoR1R" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1xehy3SoR1S" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="1xehy3SrDFf" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1xehy3SoR1W" role="3cqZAp">
          <node concept="2GrKxI" id="1xehy3SoR1X" role="2Gsz3X">
            <property role="TrG5h" value="repoUrl" />
          </node>
          <node concept="3clFbS" id="1xehy3SoR1Y" role="2LFqv$">
            <node concept="abc8K" id="6JwgQ7UWVCJ" role="3cqZAp">
              <node concept="Xl_RD" id="6JwgQ7UWVSL" role="abp_N">
                <property role="Xl_RC" value="addRepositoriesAsSpecifiedInPersistedBindingConfiguration " />
              </node>
              <node concept="2GrUjf" id="6JwgQ7UWWf9" role="abp_N">
                <ref role="2Gs0qQ" node="1xehy3SoR1X" resolve="repoUrl" />
              </node>
            </node>
            <node concept="3cpWs8" id="1xehy3SoR1Z" role="3cqZAp">
              <node concept="3cpWsn" id="1xehy3SoR20" role="3cpWs9">
                <property role="TrG5h" value="cloudRepository" />
                <node concept="3uibUv" id="1xehy3SoR21" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                </node>
                <node concept="1rXfSq" id="1xehy3SoR22" role="33vP2m">
                  <ref role="37wK5l" node="3nl22UOeESG" resolve="ensureCloudRepoIsPresent" />
                  <node concept="2GrUjf" id="1xehy3SoR23" role="37wK5m">
                    <ref role="2Gs0qQ" node="1xehy3SoR1X" resolve="repoUrl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1xehy3SoR24" role="2GsD0m">
            <node concept="37vLTw" id="1xehy3SoR25" role="2Oq$k0">
              <ref role="3cqZAo" node="1xehy3SoR1R" resolve="state" />
            </node>
            <node concept="2OwXpG" id="1xehy3SoR26" role="2OqNvi">
              <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1xehy3SoR28" role="3clF45" />
      <node concept="3Tm6S6" id="1xehy3SoR27" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6nAdIW" role="jymVt" />
    <node concept="3clFb_" id="1xehy3SoS8F" role="jymVt">
      <property role="TrG5h" value="bindTransientModulesAsSpecifiedInPersistedConfiguration" />
      <node concept="3clFbS" id="1xehy3SoS8J" role="3clF47">
        <node concept="3cpWs8" id="1xehy3SoS8R" role="3cqZAp">
          <node concept="3cpWsn" id="1xehy3SoS8S" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1xehy3SoS8T" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="1xehy3SrFeS" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1xehy3SoS8X" role="3cqZAp">
          <node concept="2GrKxI" id="1xehy3SoS8Y" role="2Gsz3X">
            <property role="TrG5h" value="moduleStr" />
          </node>
          <node concept="3clFbS" id="1xehy3SoS8Z" role="2LFqv$">
            <node concept="3cpWs8" id="1xehy3SoS90" role="3cqZAp">
              <node concept="3cpWsn" id="1xehy3SoS91" role="3cpWs9">
                <property role="TrG5h" value="parts" />
                <node concept="10Q1$e" id="1xehy3SoS92" role="1tU5fm">
                  <node concept="3uibUv" id="1xehy3SoS93" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1xehy3SoS94" role="33vP2m">
                  <node concept="2GrUjf" id="1xehy3SoS95" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1xehy3SoS8Y" resolve="moduleStr" />
                  </node>
                  <node concept="liA8E" id="1xehy3SoS96" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                    <node concept="Xl_RD" id="1xehy3SoS97" role="37wK5m">
                      <property role="Xl_RC" value="#" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1xehy3SoS98" role="3cqZAp">
              <node concept="3clFbS" id="1xehy3SoS99" role="3clFbx">
                <node concept="YS8fn" id="1xehy3SoS9a" role="3cqZAp">
                  <node concept="2ShNRf" id="1xehy3SoS9b" role="YScLw">
                    <node concept="1pGfFk" id="1xehy3SoS9c" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="1xehy3SoS9d" role="37wK5m">
                        <node concept="2GrUjf" id="1xehy3SoS9e" role="3uHU7w">
                          <ref role="2Gs0qQ" node="1xehy3SoS8Y" resolve="moduleStr" />
                        </node>
                        <node concept="Xl_RD" id="1xehy3SoS9f" role="3uHU7B">
                          <property role="Xl_RC" value="The configuration of Modelix is not correct, please check .mps/cloudResources.xml. Module entry: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1xehy3SoS9g" role="3clFbw">
                <node concept="3cmrfG" id="1xehy3SoS9h" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="1xehy3SoS9i" role="3uHU7B">
                  <node concept="37vLTw" id="1xehy3SoS9j" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xehy3SoS91" resolve="parts" />
                  </node>
                  <node concept="1Rwk04" id="1xehy3SoS9k" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5rz8NqPRNwo" role="3cqZAp">
              <node concept="3cpWsn" id="5rz8NqPRNwp" role="3cpWs9">
                <property role="TrG5h" value="treeInRepository" />
                <node concept="3uibUv" id="5rz8NqPRNwq" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
                </node>
                <node concept="2YIFZM" id="5rz8NqPRRMn" role="33vP2m">
                  <ref role="37wK5l" to="csg2:5rz8NqPRPyG" resolve="fromPresentationString" />
                  <ref role="1Pybhc" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
                  <node concept="AH0OO" id="5rz8NqPRSe0" role="37wK5m">
                    <node concept="3cmrfG" id="5rz8NqPRSmc" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="5rz8NqPRS4X" role="AHHXb">
                      <ref role="3cqZAo" node="1xehy3SoS91" resolve="parts" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xehy3SoS9l" role="3cqZAp">
              <node concept="3cpWsn" id="1xehy3SoS9m" role="3cpWs9">
                <property role="TrG5h" value="cloudRepository" />
                <node concept="3uibUv" id="1xehy3SoS9n" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                </node>
                <node concept="1rXfSq" id="1xehy3SoS9o" role="33vP2m">
                  <ref role="37wK5l" node="3nl22UOeESG" resolve="ensureCloudRepoIsPresent" />
                  <node concept="2OqwBi" id="5rz8NqPRYyp" role="37wK5m">
                    <node concept="2OqwBi" id="5rz8NqPRTBo" role="2Oq$k0">
                      <node concept="37vLTw" id="5rz8NqPRTp5" role="2Oq$k0">
                        <ref role="3cqZAo" node="5rz8NqPRNwp" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="5rz8NqPRY1R" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:5rz8NqPRV5_" resolve="getCloudRepository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5rz8NqPRYRU" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="abc8K" id="6JwgQ7UWWiK" role="3cqZAp">
              <node concept="Xl_RD" id="6JwgQ7UWWiL" role="abp_N">
                <property role="Xl_RC" value="bindTransientModulesAsSpecifiedInPersistedConfiguration " />
              </node>
              <node concept="2GrUjf" id="6JwgQ7UWWJO" role="abp_N">
                <ref role="2Gs0qQ" node="1xehy3SoS8Y" resolve="moduleStr" />
              </node>
            </node>
            <node concept="3clFbH" id="5rz8NqPRLtL" role="3cqZAp" />
            <node concept="3clFbF" id="1xehy3SoS9s" role="3cqZAp">
              <node concept="1rXfSq" id="1xehy3SoS9t" role="3clFbG">
                <ref role="37wK5l" node="7QjPLhBYjkH" resolve="withConnectedCloudRepo" />
                <node concept="37vLTw" id="1xehy3SoS9u" role="37wK5m">
                  <ref role="3cqZAo" node="1xehy3SoS9m" resolve="cloudRepository" />
                </node>
                <node concept="1bVj0M" id="1xehy3SoS9v" role="37wK5m">
                  <node concept="37vLTG" id="1xehy3SoS9w" role="1bW2Oz">
                    <property role="TrG5h" value="cr" />
                    <node concept="3uibUv" id="1xehy3SoS9x" role="1tU5fm">
                      <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1xehy3SoS9y" role="1bW5cS">
                    <node concept="3clFbF" id="1xehy3SoS9z" role="3cqZAp">
                      <node concept="1rXfSq" id="1xehy3SoS9$" role="3clFbG">
                        <ref role="37wK5l" node="3mdQb0MacwC" resolve="bindToTransientModules" />
                        <node concept="37vLTw" id="5rz8NqPRYnF" role="37wK5m">
                          <ref role="3cqZAo" node="5rz8NqPRNwp" resolve="treeInRepository" />
                        </node>
                        <node concept="2ShNRf" id="1xehy3SoS9A" role="37wK5m">
                          <node concept="2i4dXS" id="1xehy3SoS9B" role="2ShVmc">
                            <node concept="17QB3L" id="1xehy3SoS9C" role="HW$YZ" />
                            <node concept="AH0OO" id="1xehy3SoS9D" role="HW$Y0">
                              <node concept="3cmrfG" id="1xehy3SoS9E" role="AHEQo">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="37vLTw" id="1xehy3SoS9F" role="AHHXb">
                                <ref role="3cqZAo" node="1xehy3SoS91" resolve="parts" />
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
          <node concept="2OqwBi" id="1xehy3SoS9G" role="2GsD0m">
            <node concept="37vLTw" id="1xehy3SoS9H" role="2Oq$k0">
              <ref role="3cqZAo" node="1xehy3SoS8S" resolve="state" />
            </node>
            <node concept="2OwXpG" id="1xehy3SoS9I" role="2OqNvi">
              <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1xehy3SoS9K" role="3clF45" />
      <node concept="3Tm6S6" id="1xehy3SoS9J" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="nzqvuXQPAw" role="jymVt" />
    <node concept="3clFb_" id="nzqvuXQQOY" role="jymVt">
      <property role="TrG5h" value="bindMappedModulesAsSpecifiedInPersistedConfiguration" />
      <node concept="3clFbS" id="nzqvuXQQOZ" role="3clF47">
        <node concept="3cpWs8" id="nzqvuXQQP0" role="3cqZAp">
          <node concept="3cpWsn" id="nzqvuXQQP1" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="nzqvuXQQP2" role="1tU5fm">
              <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
            </node>
            <node concept="1rXfSq" id="nzqvuXQQP3" role="33vP2m">
              <ref role="37wK5l" node="1xehy3SrtXT" resolve="readState" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="nzqvuXQQP4" role="3cqZAp">
          <node concept="2GrKxI" id="nzqvuXQQP5" role="2Gsz3X">
            <property role="TrG5h" value="moduleStr" />
          </node>
          <node concept="3clFbS" id="nzqvuXQQP6" role="2LFqv$">
            <node concept="3cpWs8" id="nzqvuXQQP7" role="3cqZAp">
              <node concept="3cpWsn" id="nzqvuXQQP8" role="3cpWs9">
                <property role="TrG5h" value="parts" />
                <node concept="10Q1$e" id="nzqvuXQQP9" role="1tU5fm">
                  <node concept="3uibUv" id="nzqvuXQQPa" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2OqwBi" id="nzqvuXQQPb" role="33vP2m">
                  <node concept="2GrUjf" id="nzqvuXQQPc" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="nzqvuXQQP5" resolve="moduleStr" />
                  </node>
                  <node concept="liA8E" id="nzqvuXQQPd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                    <node concept="Xl_RD" id="nzqvuXQQPe" role="37wK5m">
                      <property role="Xl_RC" value="#" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="nzqvuXQQPf" role="3cqZAp">
              <node concept="3clFbS" id="nzqvuXQQPg" role="3clFbx">
                <node concept="YS8fn" id="nzqvuXQQPh" role="3cqZAp">
                  <node concept="2ShNRf" id="nzqvuXQQPi" role="YScLw">
                    <node concept="1pGfFk" id="nzqvuXQQPj" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="nzqvuXQQPk" role="37wK5m">
                        <node concept="2GrUjf" id="nzqvuXQQPl" role="3uHU7w">
                          <ref role="2Gs0qQ" node="nzqvuXQQP5" resolve="moduleStr" />
                        </node>
                        <node concept="Xl_RD" id="nzqvuXQQPm" role="3uHU7B">
                          <property role="Xl_RC" value="The configuration of Modelix is not correct, please check .mps/cloudResources.xml. Module entry: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="nzqvuXQQPn" role="3clFbw">
                <node concept="3cmrfG" id="nzqvuXQQPo" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="nzqvuXQQPp" role="3uHU7B">
                  <node concept="37vLTw" id="nzqvuXQQPq" role="2Oq$k0">
                    <ref role="3cqZAo" node="nzqvuXQQP8" resolve="parts" />
                  </node>
                  <node concept="1Rwk04" id="nzqvuXQQPr" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nzqvuXQQPs" role="3cqZAp">
              <node concept="3cpWsn" id="nzqvuXQQPt" role="3cpWs9">
                <property role="TrG5h" value="treeInRepository" />
                <node concept="3uibUv" id="nzqvuXQQPu" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
                </node>
                <node concept="2YIFZM" id="nzqvuXQQPv" role="33vP2m">
                  <ref role="37wK5l" to="csg2:5rz8NqPRPyG" resolve="fromPresentationString" />
                  <ref role="1Pybhc" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
                  <node concept="AH0OO" id="nzqvuXQQPw" role="37wK5m">
                    <node concept="3cmrfG" id="nzqvuXQQPx" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="nzqvuXQQPy" role="AHHXb">
                      <ref role="3cqZAo" node="nzqvuXQQP8" resolve="parts" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="nzqvuXQQPz" role="3cqZAp">
              <node concept="3cpWsn" id="nzqvuXQQP$" role="3cpWs9">
                <property role="TrG5h" value="cloudRepository" />
                <node concept="3uibUv" id="nzqvuXQQP_" role="1tU5fm">
                  <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                </node>
                <node concept="1rXfSq" id="nzqvuXQQPA" role="33vP2m">
                  <ref role="37wK5l" node="3nl22UOeESG" resolve="ensureCloudRepoIsPresent" />
                  <node concept="2OqwBi" id="nzqvuXQQPB" role="37wK5m">
                    <node concept="2OqwBi" id="nzqvuXQQPC" role="2Oq$k0">
                      <node concept="37vLTw" id="nzqvuXQQPD" role="2Oq$k0">
                        <ref role="3cqZAo" node="nzqvuXQQPt" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="nzqvuXQQPE" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:5rz8NqPRV5_" resolve="getCloudRepository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="nzqvuXQQPF" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="abc8K" id="6JwgQ7UWXB1" role="3cqZAp">
              <node concept="Xl_RD" id="6JwgQ7UWXB2" role="abp_N">
                <property role="Xl_RC" value="bindMappedModulesAsSpecifiedInPersistedConfiguration " />
              </node>
              <node concept="2GrUjf" id="6JwgQ7UWXB3" role="abp_N">
                <ref role="2Gs0qQ" node="nzqvuXQQP5" resolve="moduleStr" />
              </node>
            </node>
            <node concept="3clFbH" id="nzqvuXQQPG" role="3cqZAp" />
            <node concept="3clFbF" id="nzqvuXQQPH" role="3cqZAp">
              <node concept="1rXfSq" id="nzqvuXQQPI" role="3clFbG">
                <ref role="37wK5l" node="7QjPLhBYjkH" resolve="withConnectedCloudRepo" />
                <node concept="37vLTw" id="nzqvuXQQPJ" role="37wK5m">
                  <ref role="3cqZAo" node="nzqvuXQQP$" resolve="cloudRepository" />
                </node>
                <node concept="1bVj0M" id="nzqvuXQQPK" role="37wK5m">
                  <node concept="37vLTG" id="nzqvuXQQPL" role="1bW2Oz">
                    <property role="TrG5h" value="cr" />
                    <node concept="3uibUv" id="nzqvuXQQPM" role="1tU5fm">
                      <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="nzqvuXQQPN" role="1bW5cS">
                    <node concept="3clFbF" id="nzqvuXQQPO" role="3cqZAp">
                      <node concept="1rXfSq" id="nzqvuXQQPP" role="3clFbG">
                        <ref role="37wK5l" node="nzqvuXSRHz" resolve="bindToMappedModules" />
                        <node concept="37vLTw" id="nzqvuXQQPQ" role="37wK5m">
                          <ref role="3cqZAo" node="nzqvuXQQPt" resolve="treeInRepository" />
                        </node>
                        <node concept="2ShNRf" id="nzqvuXQQPR" role="37wK5m">
                          <node concept="2i4dXS" id="nzqvuXQQPS" role="2ShVmc">
                            <node concept="17QB3L" id="nzqvuXQQPT" role="HW$YZ" />
                            <node concept="AH0OO" id="nzqvuXQQPU" role="HW$Y0">
                              <node concept="3cmrfG" id="nzqvuXQQPV" role="AHEQo">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="37vLTw" id="nzqvuXQQPW" role="AHHXb">
                                <ref role="3cqZAo" node="nzqvuXQQP8" resolve="parts" />
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
          <node concept="2OqwBi" id="nzqvuXQQPX" role="2GsD0m">
            <node concept="37vLTw" id="nzqvuXQQPY" role="2Oq$k0">
              <ref role="3cqZAo" node="nzqvuXQQP1" resolve="state" />
            </node>
            <node concept="2OwXpG" id="nzqvuXQXKo" role="2OqNvi">
              <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="nzqvuXQQQ0" role="3clF45" />
      <node concept="3Tm6S6" id="nzqvuXQQQ1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="nzqvuXQQF5" role="jymVt" />
    <node concept="2tJIrI" id="7f6Tb6n$lCt" role="jymVt" />
    <node concept="2YIFZL" id="3nl22UOeESG" role="jymVt">
      <property role="TrG5h" value="ensureCloudRepoIsPresent" />
      <node concept="3clFbS" id="3nl22UOeESJ" role="3clF47">
        <node concept="3cpWs6" id="5rz8NqPSbdH" role="3cqZAp">
          <node concept="2OqwBi" id="5rz8NqPScT6" role="3cqZAk">
            <node concept="2YIFZM" id="5rz8NqPScx9" role="2Oq$k0">
              <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
              <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
            </node>
            <node concept="liA8E" id="5rz8NqPSds1" role="2OqNvi">
              <ref role="37wK5l" to="csg2:5rz8NqPS7qi" resolve="ensureCloudRepoIsPresent" />
              <node concept="37vLTw" id="5rz8NqPSdPi" role="37wK5m">
                <ref role="3cqZAo" node="3nl22UOeETb" resolve="url" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6Tb6ny$mh" role="1B3o_S" />
      <node concept="3uibUv" id="3nl22UOeM6K" role="3clF45">
        <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
      <node concept="37vLTG" id="3nl22UOeETb" role="3clF46">
        <property role="TrG5h" value="url" />
        <node concept="17QB3L" id="3nl22UOeETa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7f6Tb6nyYzY" role="jymVt" />
    <node concept="2YIFZL" id="7QjPLhBXXcE" role="jymVt">
      <property role="TrG5h" value="withConnectedCloudRepoHelper" />
      <node concept="37vLTG" id="7QjPLhBXXTU" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7QjPLhBXXTW" role="1tU5fm">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7QjPLhBXZtV" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7QjPLhBXZtW" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="7QjPLhBXZtX" role="11_B2D">
            <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7QjPLhBXY7m" role="3clF46">
        <property role="TrG5h" value="nAttempts" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="7QjPLhBXYiT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7QjPLhBXXcH" role="3clF47">
        <node concept="3clFbJ" id="7QjPLhBXYZW" role="3cqZAp">
          <node concept="3clFbS" id="7QjPLhBXYZX" role="3clFbx">
            <node concept="3clFbF" id="7QjPLhBXYZY" role="3cqZAp">
              <node concept="2OqwBi" id="7QjPLhBXYZZ" role="3clFbG">
                <node concept="37vLTw" id="7QjPLhBXZND" role="2Oq$k0">
                  <ref role="3cqZAo" node="7QjPLhBXZtV" resolve="consumer" />
                </node>
                <node concept="liA8E" id="7QjPLhBXZ01" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="37vLTw" id="7QjPLhBXZ02" role="37wK5m">
                    <ref role="3cqZAo" node="7QjPLhBXXTU" resolve="cloudRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7QjPLhBXZ03" role="3clFbw">
            <node concept="37vLTw" id="7QjPLhBXZ04" role="2Oq$k0">
              <ref role="3cqZAo" node="7QjPLhBXXTU" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="7QjPLhBXZ05" role="2OqNvi">
              <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
            </node>
          </node>
          <node concept="9aQIb" id="7QjPLhBXZ06" role="9aQIa">
            <node concept="3clFbS" id="7QjPLhBXZ07" role="9aQI4">
              <node concept="3clFbJ" id="7QjPLhBY07J" role="3cqZAp">
                <node concept="3clFbS" id="7QjPLhBY07L" role="3clFbx">
                  <node concept="2xdQw9" id="6YtFVNSrkhF" role="3cqZAp">
                    <property role="2xdLsb" value="gZ5fh_4/error" />
                    <node concept="Xl_RD" id="6YtFVNSrkhH" role="9lYJi">
                      <property role="Xl_RC" value="Unable to connect to Modelix server. Modelix configuration aborted" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6YtFVNSrkeU" role="3cqZAp" />
                </node>
                <node concept="2dkUwp" id="6XQ4k58NFQK" role="3clFbw">
                  <node concept="37vLTw" id="7QjPLhBY0bW" role="3uHU7B">
                    <ref role="3cqZAo" node="7QjPLhBXY7m" resolve="nAttempts" />
                  </node>
                  <node concept="3cmrfG" id="7QjPLhBY1vt" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3YyFsnDOZRO" role="3cqZAp">
                <node concept="2OqwBi" id="3YyFsnDP063" role="3clFbG">
                  <node concept="37vLTw" id="3YyFsnDOZRM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7QjPLhBXXTU" resolve="cloudRepository" />
                  </node>
                  <node concept="liA8E" id="3YyFsnDP0wQ" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:2EzI5qKmj_D" resolve="reconnect" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3YyFsnDOEa0" role="3cqZAp">
                <node concept="2OqwBi" id="3YyFsnDODhB" role="3clFbG">
                  <node concept="2ShNRf" id="3YyFsnDO$ok" role="2Oq$k0">
                    <node concept="1pGfFk" id="3YyFsnDO$nn" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                      <node concept="1bVj0M" id="3YyFsnDO$qO" role="37wK5m">
                        <node concept="3clFbS" id="3YyFsnDO$qP" role="1bW5cS">
                          <node concept="3J1_TO" id="3YyFsnDOQst" role="3cqZAp">
                            <node concept="3uVAMA" id="3YyFsnDOKdb" role="1zxBo5">
                              <node concept="XOnhg" id="3YyFsnDOKdc" role="1zc67B">
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="3YyFsnDOKdd" role="1tU5fm">
                                  <node concept="3uibUv" id="3YyFsnDOKku" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="3YyFsnDOKde" role="1zc67A" />
                            </node>
                            <node concept="3clFbS" id="3YyFsnDOQsv" role="1zxBo7">
                              <node concept="3clFbF" id="3YyFsnDOCH9" role="3cqZAp">
                                <node concept="2YIFZM" id="3YyFsnDOCRk" role="3clFbG">
                                  <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                  <node concept="3cmrfG" id="3YyFsnDOCYq" role="37wK5m">
                                    <property role="3cmrfH" value="250" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3YyFsnDO$yk" role="3cqZAp">
                            <node concept="1rXfSq" id="3YyFsnDO_jp" role="3clFbG">
                              <ref role="37wK5l" node="7QjPLhBXXcE" resolve="withConnectedCloudRepoHelper" />
                              <node concept="37vLTw" id="3YyFsnDOAeV" role="37wK5m">
                                <ref role="3cqZAo" node="7QjPLhBXXTU" resolve="cloudRepository" />
                              </node>
                              <node concept="37vLTw" id="3YyFsnDOAPY" role="37wK5m">
                                <ref role="3cqZAo" node="7QjPLhBXZtV" resolve="consumer" />
                              </node>
                              <node concept="3cpWsd" id="3YyFsnDOBYB" role="37wK5m">
                                <node concept="3cmrfG" id="3YyFsnDOBZA" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="3YyFsnDOBa5" role="3uHU7B">
                                  <ref role="3cqZAo" node="7QjPLhBXY7m" resolve="nAttempts" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3YyFsnDODNG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7QjPLhBXWkp" role="1B3o_S" />
      <node concept="3cqZAl" id="7QjPLhBXYOA" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6nz0yp" role="jymVt" />
    <node concept="2YIFZL" id="7QjPLhBYjkH" role="jymVt">
      <property role="TrG5h" value="withConnectedCloudRepo" />
      <node concept="3clFbS" id="7QjPLhBYjkI" role="3clF47">
        <node concept="3clFbF" id="7QjPLhBYjkO" role="3cqZAp">
          <node concept="2YIFZM" id="7f6Tb6nz12_" role="3clFbG">
            <ref role="1Pybhc" node="7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            <ref role="37wK5l" node="7QjPLhBXXcE" resolve="withConnectedCloudRepoHelper" />
            <node concept="37vLTw" id="7f6Tb6nz12A" role="37wK5m">
              <ref role="3cqZAo" node="7QjPLhBYk70" resolve="cloudRepository" />
            </node>
            <node concept="37vLTw" id="7f6Tb6nz12B" role="37wK5m">
              <ref role="3cqZAo" node="7QjPLhBYjkX" resolve="consumer" />
            </node>
            <node concept="3cmrfG" id="7f6Tb6nz12C" role="37wK5m">
              <property role="3cmrfH" value="20" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7f6Tb6nz2wg" role="1B3o_S" />
      <node concept="3cqZAl" id="7QjPLhBYjkU" role="3clF45" />
      <node concept="37vLTG" id="7QjPLhBYk70" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7QjPLhBYk72" role="1tU5fm">
          <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7QjPLhBYjkX" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7QjPLhBYjkY" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="7QjPLhBYjkZ" role="11_B2D">
            <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7f6Tb6nz4VR" role="lGtFl">
        <node concept="TZ5HA" id="7f6Tb6nz4VS" role="TZ5H$">
          <node concept="1dT_AC" id="7f6Tb6nz4VT" role="1dT_Ay">
            <property role="1dT_AB" value="Sometimes we need to wait for the repository to be connected. This is the case for example on starting the plugin." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7f6Tb6nz0A5" role="jymVt" />
    <node concept="2YIFZL" id="3mdQb0MacwC" role="jymVt">
      <property role="TrG5h" value="bindToTransientModules" />
      <node concept="3clFbS" id="3mdQb0MacwD" role="3clF47">
        <node concept="3clFbF" id="3mdQb0MacwN" role="3cqZAp">
          <node concept="2OqwBi" id="3mdQb0MacwO" role="3clFbG">
            <node concept="10M0yZ" id="3mdQb0MacwP" role="2Oq$k0">
              <ref role="1PxDUh" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
              <ref role="3cqZAo" to="csg2:Onv88ZOFFp" resolve="FIXED" />
            </node>
            <node concept="liA8E" id="3mdQb0MacwQ" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="3mdQb0MacwR" role="37wK5m">
                <node concept="3clFbS" id="3mdQb0MacwS" role="1bW5cS">
                  <node concept="3clFbF" id="5rz8NqPOwmF" role="3cqZAp">
                    <node concept="2OqwBi" id="5rz8NqPOxv2" role="3clFbG">
                      <node concept="37vLTw" id="5rz8NqPOwmD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3mdQb0Maggi" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="5rz8NqPOye7" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:5rz8NqPOBfG" resolve="runRead" />
                        <node concept="1bVj0M" id="5rz8NqPOyDG" role="37wK5m">
                          <node concept="37vLTG" id="5rz8NqPOzGz" role="1bW2Oz">
                            <property role="TrG5h" value="rootNode" />
                            <node concept="3uibUv" id="5rz8NqPO$aQ" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5rz8NqPOyDH" role="1bW5cS">
                            <node concept="2Gpval" id="5rz8NqPO_Cb" role="3cqZAp">
                              <node concept="2GrKxI" id="5rz8NqPO_Cc" role="2Gsz3X">
                                <property role="TrG5h" value="child" />
                              </node>
                              <node concept="3clFbS" id="5rz8NqPO_Cd" role="2LFqv$">
                                <node concept="3cpWs8" id="5rz8NqPO_Ce" role="3cqZAp">
                                  <node concept="3cpWsn" id="5rz8NqPO_Cf" role="3cpWs9">
                                    <property role="TrG5h" value="name" />
                                    <node concept="17QB3L" id="5rz8NqPO_Cg" role="1tU5fm" />
                                    <node concept="2OqwBi" id="5rz8NqPO_Ch" role="33vP2m">
                                      <node concept="2GrUjf" id="5rz8NqPO_Ci" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="5rz8NqPO_Cc" resolve="child" />
                                      </node>
                                      <node concept="liA8E" id="5rz8NqPO_Cj" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                        <node concept="Xl_RD" id="5rz8NqPO_Ck" role="37wK5m">
                                          <property role="Xl_RC" value="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="5rz8NqPO_Cl" role="3cqZAp">
                                  <node concept="3clFbS" id="5rz8NqPO_Cm" role="3clFbx">
                                    <node concept="3clFbF" id="5rz8NqPO_Cr" role="3cqZAp">
                                      <node concept="2OqwBi" id="5rz8NqPO_Cs" role="3clFbG">
                                        <node concept="37vLTw" id="5rz8NqPO_Ct" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3mdQb0Maggi" resolve="treeInRepository" />
                                        </node>
                                        <node concept="liA8E" id="5rz8NqPO_Cu" role="2OqNvi">
                                          <ref role="37wK5l" to="csg2:5rz8NqPOGHm" resolve="addTransientModuleBinding" />
                                          <node concept="2GrUjf" id="5rz8NqPOKDT" role="37wK5m">
                                            <ref role="2Gs0qQ" node="5rz8NqPO_Cc" resolve="child" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="5rz8NqPO_CC" role="3clFbw">
                                    <node concept="37vLTw" id="5rz8NqPO_CD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3mdQb0Mb0Rm" resolve="modulesToBind" />
                                    </node>
                                    <node concept="3JPx81" id="5rz8NqPO_CE" role="2OqNvi">
                                      <node concept="37vLTw" id="5rz8NqPO_CF" role="25WWJ7">
                                        <ref role="3cqZAo" node="5rz8NqPO_Cf" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5rz8NqPO_CG" role="2GsD0m">
                                <node concept="37vLTw" id="5rz8NqPO_CH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5rz8NqPOzGz" resolve="rootNode" />
                                </node>
                                <node concept="liA8E" id="5rz8NqPO_CI" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getAllChildren()" resolve="getAllChildren" />
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
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3mdQb0Mbl$q" role="1B3o_S" />
      <node concept="3cqZAl" id="3mdQb0Macz8" role="3clF45" />
      <node concept="37vLTG" id="3mdQb0Maggi" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="5rz8NqPOgXQ" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3mdQb0Mb0Rm" role="3clF46">
        <property role="TrG5h" value="modulesToBind" />
        <node concept="2hMVRd" id="3mdQb0Mb1ku" role="1tU5fm">
          <node concept="17QB3L" id="3mdQb0Mb2aE" role="2hN53Y" />
        </node>
      </node>
      <node concept="P$JXv" id="1xehy3SrJ8B" role="lGtFl">
        <node concept="TZ5HA" id="1xehy3SrJ8C" role="TZ5H$">
          <node concept="1dT_AC" id="1xehy3SrJ8D" role="1dT_Ay">
            <property role="1dT_AB" value="FIXME we should probably not identify modules by name but some unique identifier instead" />
          </node>
        </node>
        <node concept="TUZQ0" id="1xehy3SrJ8E" role="3nqlJM">
          <node concept="zr_55" id="1xehy3SrJ8G" role="zr_5Q">
            <ref role="zr_51" node="3mdQb0Maggi" resolve="treeInRepository" />
          </node>
        </node>
        <node concept="TUZQ0" id="1xehy3SrJ8H" role="3nqlJM">
          <node concept="zr_55" id="1xehy3SrJ8J" role="zr_5Q">
            <ref role="zr_51" node="3mdQb0Mb0Rm" resolve="modulesToBind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="nzqvuXR01E" role="jymVt" />
    <node concept="3clFb_" id="nzqvuXSRHz" role="jymVt">
      <property role="TrG5h" value="bindToMappedModules" />
      <node concept="3clFbS" id="nzqvuXSRH_" role="3clF47">
        <node concept="3clFbF" id="nzqvuXSRHA" role="3cqZAp">
          <node concept="2OqwBi" id="nzqvuXSRHB" role="3clFbG">
            <node concept="10M0yZ" id="nzqvuXSRHC" role="2Oq$k0">
              <ref role="1PxDUh" to="csg2:Onv88ZNSEL" resolve="SharedExecutors" />
              <ref role="3cqZAo" to="csg2:Onv88ZOFFp" resolve="FIXED" />
            </node>
            <node concept="liA8E" id="nzqvuXSRHD" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="nzqvuXSRHE" role="37wK5m">
                <node concept="3clFbS" id="nzqvuXSRHF" role="1bW5cS">
                  <node concept="3clFbF" id="nzqvuXSRHG" role="3cqZAp">
                    <node concept="2OqwBi" id="nzqvuXSRHH" role="3clFbG">
                      <node concept="37vLTw" id="nzqvuXSRHI" role="2Oq$k0">
                        <ref role="3cqZAo" node="nzqvuXSRIk" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="nzqvuXSRHJ" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:5rz8NqPOBfG" resolve="runRead" />
                        <node concept="1bVj0M" id="nzqvuXSRHK" role="37wK5m">
                          <node concept="37vLTG" id="nzqvuXSRHL" role="1bW2Oz">
                            <property role="TrG5h" value="rootNode" />
                            <node concept="3uibUv" id="nzqvuXSRHM" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="nzqvuXSRHN" role="1bW5cS">
                            <node concept="2Gpval" id="nzqvuXSRHO" role="3cqZAp">
                              <node concept="2GrKxI" id="nzqvuXSRHP" role="2Gsz3X">
                                <property role="TrG5h" value="child" />
                              </node>
                              <node concept="3clFbS" id="nzqvuXSRHQ" role="2LFqv$">
                                <node concept="3cpWs8" id="nzqvuXSRHR" role="3cqZAp">
                                  <node concept="3cpWsn" id="nzqvuXSRHS" role="3cpWs9">
                                    <property role="TrG5h" value="name" />
                                    <node concept="17QB3L" id="nzqvuXSRHT" role="1tU5fm" />
                                    <node concept="2OqwBi" id="nzqvuXSRHU" role="33vP2m">
                                      <node concept="2GrUjf" id="nzqvuXSRHV" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="nzqvuXSRHP" resolve="child" />
                                      </node>
                                      <node concept="liA8E" id="nzqvuXSRHW" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                        <node concept="Xl_RD" id="nzqvuXSRHX" role="37wK5m">
                                          <property role="Xl_RC" value="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="nzqvuXSRHY" role="3cqZAp">
                                  <node concept="3clFbS" id="nzqvuXSRHZ" role="3clFbx">
                                    <node concept="3cpWs8" id="nzqvuXSRI0" role="3cqZAp">
                                      <node concept="3cpWsn" id="nzqvuXSRI1" role="3cpWs9">
                                        <property role="TrG5h" value="physicalModule" />
                                        <node concept="3uibUv" id="nzqvuXSRI2" role="1tU5fm">
                                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                        </node>
                                        <node concept="1rXfSq" id="nzqvuXSRI3" role="33vP2m">
                                          <ref role="37wK5l" node="nzqvuXSUOp" resolve="findPhysicalModule" />
                                          <node concept="37vLTw" id="nzqvuXSRI4" role="37wK5m">
                                            <ref role="3cqZAo" node="nzqvuXSRHS" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="nzqvuXTmDb" role="3cqZAp">
                                      <node concept="3clFbS" id="nzqvuXTmDd" role="3clFbx">
                                        <node concept="3clFbF" id="nzqvuXTpQA" role="3cqZAp">
                                          <node concept="2YIFZM" id="nzqvuXTqjT" role="3clFbG">
                                            <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                                            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                            <node concept="37vLTw" id="nzqvuXTqL7" role="37wK5m">
                                              <ref role="3cqZAo" node="1xehy3SoLI0" resolve="project" />
                                            </node>
                                            <node concept="3cpWs3" id="nzqvuXTuxs" role="37wK5m">
                                              <node concept="Xl_RD" id="nzqvuXTuCb" role="3uHU7w">
                                                <property role="Xl_RC" value=" because the module is missing" />
                                              </node>
                                              <node concept="3cpWs3" id="nzqvuXTu1s" role="3uHU7B">
                                                <node concept="Xl_RD" id="nzqvuXTryp" role="3uHU7B">
                                                  <property role="Xl_RC" value="We cannot instantiate the mapped binding to " />
                                                </node>
                                                <node concept="37vLTw" id="nzqvuXTu8g" role="3uHU7w">
                                                  <ref role="3cqZAo" node="nzqvuXSRHS" resolve="name" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="nzqvuXTvxh" role="37wK5m">
                                              <property role="Xl_RC" value="Error on mapped binding" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbC" id="nzqvuXTnRD" role="3clFbw">
                                        <node concept="10Nm6u" id="nzqvuXTogN" role="3uHU7w" />
                                        <node concept="37vLTw" id="nzqvuXTnd8" role="3uHU7B">
                                          <ref role="3cqZAo" node="nzqvuXSRI1" resolve="physicalModule" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="nzqvuXToEQ" role="9aQIa">
                                        <node concept="3clFbS" id="nzqvuXToER" role="9aQI4">
                                          <node concept="3clFbF" id="nzqvuXSRI5" role="3cqZAp">
                                            <node concept="2OqwBi" id="nzqvuXSRI6" role="3clFbG">
                                              <node concept="37vLTw" id="nzqvuXSRI7" role="2Oq$k0">
                                                <ref role="3cqZAo" node="nzqvuXSRIk" resolve="treeInRepository" />
                                              </node>
                                              <node concept="liA8E" id="nzqvuXSRI8" role="2OqNvi">
                                                <ref role="37wK5l" to="csg2:nzqvuXRoO1" resolve="addMappedModuleBinding" />
                                                <node concept="2GrUjf" id="nzqvuXSRI9" role="37wK5m">
                                                  <ref role="2Gs0qQ" node="nzqvuXSRHP" resolve="child" />
                                                </node>
                                                <node concept="37vLTw" id="nzqvuXSRIa" role="37wK5m">
                                                  <ref role="3cqZAo" node="nzqvuXSRI1" resolve="physicalModule" />
                                                </node>
                                                <node concept="2OqwBi" id="3RJ95ooS_2b" role="37wK5m">
                                                  <node concept="2YIFZM" id="3RJ95ooS$8w" role="2Oq$k0">
                                                    <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
                                                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                                                    <node concept="37vLTw" id="3RJ95ooS$8x" role="37wK5m">
                                                      <ref role="3cqZAo" node="1xehy3SoLI0" resolve="project" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="3RJ95ooSA0b" role="2OqNvi">
                                                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="nzqvuXSRIb" role="3clFbw">
                                    <node concept="37vLTw" id="nzqvuXSRIc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="nzqvuXSRIm" resolve="modulesToBind" />
                                    </node>
                                    <node concept="3JPx81" id="nzqvuXSRId" role="2OqNvi">
                                      <node concept="37vLTw" id="nzqvuXSRIe" role="25WWJ7">
                                        <ref role="3cqZAo" node="nzqvuXSRHS" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="nzqvuXSRIf" role="2GsD0m">
                                <node concept="37vLTw" id="nzqvuXSRIg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="nzqvuXSRHL" resolve="rootNode" />
                                </node>
                                <node concept="liA8E" id="nzqvuXSRIh" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getAllChildren()" resolve="getAllChildren" />
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
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="nzqvuXSRIj" role="3clF45" />
      <node concept="37vLTG" id="nzqvuXSRIk" role="3clF46">
        <property role="TrG5h" value="treeInRepository" />
        <node concept="3uibUv" id="nzqvuXSRIl" role="1tU5fm">
          <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="nzqvuXSRIm" role="3clF46">
        <property role="TrG5h" value="modulesToBind" />
        <node concept="2hMVRd" id="nzqvuXSRIn" role="1tU5fm">
          <node concept="17QB3L" id="nzqvuXSRIo" role="2hN53Y" />
        </node>
      </node>
      <node concept="3Tm6S6" id="nzqvuXSRIi" role="1B3o_S" />
      <node concept="P$JXv" id="nzqvuXSRIx" role="lGtFl">
        <node concept="TZ5HA" id="nzqvuXSRIy" role="TZ5H$">
          <node concept="1dT_AC" id="nzqvuXSRIz" role="1dT_Ay">
            <property role="1dT_AB" value="FIXME we should probably not identify modules by name but some unique identifier instead" />
          </node>
        </node>
        <node concept="TUZQ0" id="nzqvuXSRI$" role="3nqlJM">
          <node concept="zr_55" id="nzqvuXSRI_" role="zr_5Q">
            <ref role="zr_51" node="nzqvuXSRIk" resolve="treeInRepository" />
          </node>
        </node>
        <node concept="TUZQ0" id="nzqvuXSRIA" role="3nqlJM">
          <node concept="zr_55" id="nzqvuXSRIB" role="zr_5Q">
            <ref role="zr_51" node="nzqvuXSRIm" resolve="modulesToBind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="nzqvuXR1hp" role="jymVt" />
    <node concept="3clFb_" id="nzqvuXSUOp" role="jymVt">
      <property role="TrG5h" value="findPhysicalModule" />
      <node concept="3clFbS" id="nzqvuXSUOr" role="3clF47">
        <node concept="2Gpval" id="nzqvuXT2$P" role="3cqZAp">
          <node concept="2GrKxI" id="nzqvuXT2$R" role="2Gsz3X">
            <property role="TrG5h" value="physicalModule" />
          </node>
          <node concept="3clFbS" id="nzqvuXT2$V" role="2LFqv$">
            <node concept="3clFbJ" id="nzqvuXT3S7" role="3cqZAp">
              <node concept="17R0WA" id="nzqvuXT5jd" role="3clFbw">
                <node concept="37vLTw" id="nzqvuXT5Nw" role="3uHU7w">
                  <ref role="3cqZAo" node="nzqvuXSUOu" resolve="moduleName" />
                </node>
                <node concept="2OqwBi" id="nzqvuXT4qe" role="3uHU7B">
                  <node concept="2GrUjf" id="nzqvuXT4cv" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="nzqvuXT2$R" resolve="physicalModule" />
                  </node>
                  <node concept="liA8E" id="nzqvuXT4Re" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="nzqvuXT3S9" role="3clFbx">
                <node concept="3cpWs6" id="nzqvuXT6kN" role="3cqZAp">
                  <node concept="2GrUjf" id="nzqvuXT6yn" role="3cqZAk">
                    <ref role="2Gs0qQ" node="nzqvuXT2$R" resolve="physicalModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="nzqvuXT1sZ" role="2GsD0m">
            <node concept="2YIFZM" id="nzqvuXT0AG" role="2Oq$k0">
              <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="nzqvuXT0On" role="37wK5m">
                <ref role="3cqZAo" node="1xehy3SoLI0" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="nzqvuXT3nW" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~IProject.getProjectModules()" resolve="getProjectModules" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="nzqvuXThVh" role="3cqZAp">
          <node concept="10Nm6u" id="nzqvuXTjx7" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="nzqvuXSUOt" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="37vLTG" id="nzqvuXSUOu" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="nzqvuXSUOv" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="nzqvuXSUOs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7f6Tb6nz2$q" role="jymVt" />
    <node concept="3Tm1VV" id="7f6Tb6nxCKQ" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="5qcCSpC9nvB">
    <property role="3GE5qa" value="actions.dataroot" />
    <property role="TrG5h" value="AddProjectNode" />
    <property role="2uzpH1" value="Add Project" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="5qcCSpC9nvC" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="5qcCSpC9nvD" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5qcCSpC9nvE" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="5qcCSpC9nvF" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5qcCSpC9nvG" role="tncku">
      <node concept="3clFbS" id="5qcCSpC9nvH" role="2VODD2">
        <node concept="3cpWs8" id="5qcCSpC9nvI" role="3cqZAp">
          <node concept="3cpWsn" id="5qcCSpC9nvJ" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="5qcCSpC9nvK" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="5qcCSpC9nvL" role="33vP2m">
              <node concept="2OqwBi" id="5qcCSpC9nvM" role="10QFUP">
                <node concept="2WthIp" id="5qcCSpC9nvN" role="2Oq$k0" />
                <node concept="1DTwFV" id="5qcCSpC9nvO" role="2OqNvi">
                  <ref role="2WH_rO" node="5qcCSpC9nvE" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="5qcCSpC9nvP" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qcCSpC9nvQ" role="3cqZAp" />
        <node concept="3cpWs8" id="5qcCSpC9nvR" role="3cqZAp">
          <node concept="3cpWsn" id="5qcCSpC9nvS" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="5qcCSpC9nvT" role="1tU5fm" />
            <node concept="2YIFZM" id="5qcCSpC9nvU" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="5qcCSpC9nvV" role="37wK5m">
                <node concept="2WthIp" id="5qcCSpC9nvW" role="2Oq$k0" />
                <node concept="1DTwFV" id="5qcCSpC9nvX" role="2OqNvi">
                  <ref role="2WH_rO" node="5qcCSpC9nvC" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="5qcCSpC9nvY" role="37wK5m">
                <property role="Xl_RC" value="Name" />
              </node>
              <node concept="Xl_RD" id="5qcCSpC9nvZ" role="37wK5m">
                <property role="Xl_RC" value="Add Project" />
              </node>
              <node concept="10Nm6u" id="5qcCSpC9nw0" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5qcCSpC9nw1" role="3cqZAp">
          <node concept="3clFbS" id="5qcCSpC9nw2" role="3clFbx">
            <node concept="3cpWs6" id="5qcCSpC9nw3" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5qcCSpC9nw4" role="3clFbw">
            <node concept="37vLTw" id="5qcCSpC9nw5" role="2Oq$k0">
              <ref role="3cqZAo" node="5qcCSpC9nvS" resolve="name" />
            </node>
            <node concept="17RlXB" id="5qcCSpC9nw6" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5qcCSpC9nw7" role="3cqZAp" />
        <node concept="3clFbF" id="3TbkWOkVD$x" role="3cqZAp">
          <node concept="2OqwBi" id="3TbkWOkVD$y" role="3clFbG">
            <node concept="37vLTw" id="3TbkWOkVD$z" role="2Oq$k0">
              <ref role="3cqZAo" node="5qcCSpC9nvJ" resolve="nodeTreeNode" />
            </node>
            <node concept="AQDAd" id="3TbkWOkVD$$" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3TbkWOkVCAH" resolve="createProject" />
              <node concept="37vLTw" id="3TbkWOkVD$_" role="37wK5m">
                <ref role="3cqZAo" node="5qcCSpC9nvS" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5qcCSpC9nwA" role="tmbBb">
      <node concept="3clFbS" id="5qcCSpC9nwB" role="2VODD2">
        <node concept="3cpWs6" id="3TbkWOkVCbI" role="3cqZAp">
          <node concept="2OqwBi" id="3TbkWOkVCbJ" role="3cqZAk">
            <node concept="2OqwBi" id="3TbkWOkVCbK" role="2Oq$k0">
              <node concept="2WthIp" id="3TbkWOkVCbL" role="2Oq$k0" />
              <node concept="1DTwFV" id="3TbkWOkVCbM" role="2OqNvi">
                <ref role="2WH_rO" node="5qcCSpC9nvE" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="3TbkWOkVCbN" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Sh5cz" resolve="isRootNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="nP6bhxN7Q1">
    <property role="3GE5qa" value="actions.physicalelements" />
    <property role="TrG5h" value="CloudActionsForPhysicalModules" />
    <node concept="tT9cl" id="nP6bhxN7Qr" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Jd1" resolve="SolutionActions" />
      <ref role="2f8Tey" to="tprs:1bRM4HyGOKI" resolve="contents" />
    </node>
    <node concept="ftmFs" id="1kxBOgM1Bxv" role="ftER_">
      <node concept="tC5Ba" id="1xehy3Sk5zq" role="ftvYc">
        <property role="TrG5h" value="CloudActions" />
        <property role="1XlLyE" value="true" />
        <property role="2f7twF" value="Cloud Actions" />
        <node concept="2OiAzN" id="1xehy3Sk5QP" role="ftER_">
          <node concept="2OiTZ2" id="1xehy3Sk5QR" role="2Oj6PV">
            <node concept="3clFbS" id="1xehy3Sk5QT" role="2VODD2">
              <node concept="2Gpval" id="1xehy3Sk67Q" role="3cqZAp">
                <node concept="2GrKxI" id="1xehy3Sk67R" role="2Gsz3X">
                  <property role="TrG5h" value="treeInRepository" />
                </node>
                <node concept="3clFbS" id="1xehy3Sk67T" role="2LFqv$">
                  <node concept="2JFkCU" id="1xehy3Sk6Ju" role="3cqZAp">
                    <node concept="tCFHf" id="1xehy3Sk9L7" role="2JFLmv">
                      <ref role="tCJdB" node="nP6bhxN7Q3" resolve="CopyAndSyncPhysicalModuleOnCloud" />
                      <node concept="2GrUjf" id="1xehy3Sk9Ln" role="2J__8u">
                        <ref role="2Gs0qQ" node="1xehy3Sk67R" resolve="treeInRepository" />
                      </node>
                    </node>
                  </node>
                  <node concept="2JFkCU" id="1xehy3Sk9SS" role="3cqZAp">
                    <node concept="tCFHf" id="1xehy3Sk9Td" role="2JFLmv">
                      <ref role="tCJdB" node="e_REOZbrU1" resolve="CopyPhysicalModuleOnCloud" />
                      <node concept="2GrUjf" id="1xehy3Sk9Tt" role="2J__8u">
                        <ref role="2Gs0qQ" node="1xehy3Sk67R" resolve="treeInRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5rz8NqPRfo5" role="2GsD0m">
                  <node concept="2YIFZM" id="5rz8NqPRfo6" role="2Oq$k0">
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="5rz8NqPRfo7" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:3i6diw3oJN7" resolve="getConnectedTreesInRepositories" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="nP6bhxN7Q3">
    <property role="3GE5qa" value="actions.physicalelements" />
    <property role="TrG5h" value="CopyAndSyncPhysicalModuleOnCloud" />
    <property role="2uzpH1" value="Copy on Cloud &amp; Sync" />
    <node concept="2JriF1" id="1xehy3Sk7sb" role="2JrayB">
      <property role="TrG5h" value="treeInRepository" />
      <node concept="3Tm6S6" id="1xehy3Sk7sc" role="1B3o_S" />
      <node concept="3uibUv" id="5rz8NqPPYTy" role="1tU5fm">
        <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
      </node>
      <node concept="2K2imR" id="1xehy3Sk7KS" role="2K2Cet">
        <node concept="3clFbS" id="1xehy3Sk7KT" role="2VODD2">
          <node concept="3clFbF" id="1xehy3Sl7Ei" role="3cqZAp">
            <node concept="2OqwBi" id="1xehy3Sl7KK" role="3clFbG">
              <node concept="2K3dj_" id="1xehy3Sl7Eh" role="2Oq$k0" />
              <node concept="liA8E" id="16i93QEgu_z" role="2OqNvi">
                <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="nP6bhxUcuG" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="nP6bhxUcuH" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="i0AVAFY_LO" role="1NuT2Z">
      <property role="TrG5h" value="module" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULE" resolve="MODULE" />
      <node concept="1oajcY" id="i0AVAFY_LP" role="1oa70y" />
    </node>
    <node concept="tnohg" id="nP6bhxN7Q4" role="tncku">
      <node concept="3clFbS" id="nP6bhxN7Q5" role="2VODD2">
        <node concept="3clFbF" id="5i$4SBK0Y8v" role="3cqZAp">
          <node concept="2OqwBi" id="5i$4SBK0Y8w" role="3clFbG">
            <node concept="2ShNRf" id="5i$4SBK0Y8x" role="2Oq$k0">
              <node concept="HV5vD" id="5i$4SBK0Y8y" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="5i$4SBK0Y8z" role="2OqNvi">
              <ref role="37wK5l" to="csg2:5i$4SBK0N45" resolve="copyAndSyncInModelixAsIndependentModule" />
              <node concept="2OqwBi" id="5i$4SBK0Y8$" role="37wK5m">
                <node concept="2WthIp" id="5i$4SBK0Y8_" role="2Oq$k0" />
                <node concept="2BZ7hE" id="5i$4SBK0Y8A" role="2OqNvi">
                  <ref role="2WH_rO" node="1xehy3Sk7sb" resolve="treeInRepository" />
                </node>
              </node>
              <node concept="2OqwBi" id="5i$4SBK0Y8B" role="37wK5m">
                <node concept="2WthIp" id="5i$4SBK0Y8C" role="2Oq$k0" />
                <node concept="1DTwFV" id="5i$4SBK0Y8D" role="2OqNvi">
                  <ref role="2WH_rO" node="i0AVAFY_LO" resolve="module" />
                </node>
              </node>
              <node concept="2OqwBi" id="5i$4SBK0Yir" role="37wK5m">
                <node concept="2WthIp" id="5i$4SBK0Yiu" role="2Oq$k0" />
                <node concept="1DTwFV" id="5i$4SBK0Yiw" role="2OqNvi">
                  <ref role="2WH_rO" node="nP6bhxUcuG" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="nP6bhxQlVl" role="tmbBb">
      <node concept="3clFbS" id="nP6bhxQlVm" role="2VODD2">
        <node concept="3clFbF" id="1xehy3Sm8VG" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3Sm8VH" role="3clFbG">
            <node concept="2OqwBi" id="1xehy3Sm8VI" role="2Oq$k0">
              <node concept="tl45R" id="1xehy3Sm8VJ" role="2Oq$k0" />
              <node concept="liA8E" id="1xehy3Sm8VK" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1xehy3Sm8VL" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="1xehy3Sm8VM" role="37wK5m">
                <node concept="Xl_RD" id="1xehy3Sm8VN" role="3uHU7B">
                  <property role="Xl_RC" value="Copy on Cloud and Sync -&gt; " />
                </node>
                <node concept="2OqwBi" id="1xehy3Sm8VO" role="3uHU7w">
                  <node concept="2OqwBi" id="1xehy3Sm8VP" role="2Oq$k0">
                    <node concept="2WthIp" id="1xehy3Sm8VQ" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="1xehy3Smazf" role="2OqNvi">
                      <ref role="2WH_rO" node="1xehy3Sk7sb" resolve="treeInRepository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="16i93QEguo2" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="nP6bhxQm2J" role="3cqZAp">
          <node concept="1PaTwC" id="nP6bhxQm2K" role="1aUNEU">
            <node concept="3oM_SD" id="nP6bhxQm2L" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm6K" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm6O" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm73" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm79" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm7q" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="nP6bhxQm7G" role="1PaTwD">
              <property role="3oM_SC" value="stored" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="nP6bhxQmfP" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3SndDM" role="3cqZAk">
            <node concept="2OqwBi" id="1xehy3SncYl" role="2Oq$k0">
              <node concept="2WthIp" id="1xehy3SncYo" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1xehy3SncYq" role="2OqNvi">
                <ref role="2WH_rO" node="1xehy3Sk7sb" resolve="treeInRepository" />
              </node>
            </node>
            <node concept="liA8E" id="1xehy3SndLA" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3i6diw3n0$X" resolve="isConnected" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1J2iDZz_1Hs">
    <property role="3GE5qa" value="actions.repo" />
    <property role="TrG5h" value="Reconnect" />
    <property role="2uzpH1" value="Reconnect" />
    <property role="72QZ$" value="true" />
    <node concept="tnohg" id="1J2iDZz_1Ht" role="tncku">
      <node concept="3clFbS" id="1J2iDZz_1Hu" role="2VODD2">
        <node concept="3cpWs8" id="1J2iDZz_1Hv" role="3cqZAp">
          <node concept="3cpWsn" id="1J2iDZz_1Hw" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="1J2iDZz_1Hx" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="1J2iDZz_1Hy" role="33vP2m">
              <node concept="1eOMI4" id="1J2iDZz_1Hz" role="2Oq$k0">
                <node concept="10QFUN" id="1J2iDZz_1H$" role="1eOMHV">
                  <node concept="2OqwBi" id="1J2iDZz_1H_" role="10QFUP">
                    <node concept="2WthIp" id="1J2iDZz_1HA" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1J2iDZz_1HB" role="2OqNvi">
                      <ref role="2WH_rO" node="1J2iDZz_1Ij" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="1J2iDZz_1HC" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1J2iDZz_1HD" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1J2iDZz_zjX" role="3cqZAp">
          <node concept="2OqwBi" id="1J2iDZz_zy8" role="3clFbG">
            <node concept="37vLTw" id="1J2iDZz_zjV" role="2Oq$k0">
              <ref role="3cqZAo" node="1J2iDZz_1Hw" resolve="cloudRepository" />
            </node>
            <node concept="liA8E" id="1J2iDZz_zFt" role="2OqNvi">
              <ref role="37wK5l" to="csg2:2EzI5qKmj_D" resolve="reconnect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1J2iDZz_1Ih" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="1J2iDZz_1Ii" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1J2iDZz_1Ij" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="1J2iDZz_1Ik" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="1J2iDZz_1Il" role="tmbBb">
      <node concept="3clFbS" id="1J2iDZz_1Im" role="2VODD2">
        <node concept="3clFbJ" id="1J2iDZz_xPz" role="3cqZAp">
          <node concept="3clFbS" id="1J2iDZz_xP_" role="3clFbx">
            <node concept="3cpWs6" id="1J2iDZz_y84" role="3cqZAp">
              <node concept="3clFbT" id="1J2iDZz_y8n" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1J2iDZz_xRt" role="3clFbw">
            <node concept="2ZW3vV" id="1J2iDZz_1Io" role="3fr31v">
              <node concept="3uibUv" id="1J2iDZz_1Ip" role="2ZW6by">
                <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
              </node>
              <node concept="2OqwBi" id="1J2iDZz_1Iq" role="2ZW6bz">
                <node concept="2WthIp" id="1J2iDZz_1Ir" role="2Oq$k0" />
                <node concept="1DTwFV" id="1J2iDZz_1Is" role="2OqNvi">
                  <ref role="2WH_rO" node="1J2iDZz_1Ij" resolve="treeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1J2iDZz_xvA" role="3cqZAp">
          <node concept="3cpWsn" id="1J2iDZz_xvD" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="1J2iDZz_xvE" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="1J2iDZz_xvF" role="33vP2m">
              <node concept="1eOMI4" id="1J2iDZz_xvG" role="2Oq$k0">
                <node concept="10QFUN" id="1J2iDZz_xvH" role="1eOMHV">
                  <node concept="2OqwBi" id="1J2iDZz_xvI" role="10QFUP">
                    <node concept="2WthIp" id="1J2iDZz_xvJ" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1J2iDZz_xvK" role="2OqNvi">
                      <ref role="2WH_rO" node="1J2iDZz_1Ij" resolve="treeNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="1J2iDZz_xvL" role="10QFUM">
                    <ref role="3uigEE" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1J2iDZz_xvM" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1J2iDZz_yjS" role="3cqZAp">
          <node concept="3fqX7Q" id="1J2iDZz_yYp" role="3cqZAk">
            <node concept="2OqwBi" id="1J2iDZz_yYr" role="3fr31v">
              <node concept="37vLTw" id="1J2iDZz_yYs" role="2Oq$k0">
                <ref role="3cqZAo" node="1J2iDZz_xvD" resolve="cloudRepository" />
              </node>
              <node concept="liA8E" id="1J2iDZz_yYt" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="729BXr3O2Mp">
    <property role="3GE5qa" value="actions.node.module" />
    <property role="TrG5h" value="CheckoutAndSyncModule" />
    <property role="2uzpH1" value="Checkout and Sync" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="729BXr3O2Mq" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="729BXr3O2Mr" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="729BXr3O2Ms" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="729BXr3O2Mt" role="1oa70y" />
    </node>
    <node concept="tnohg" id="729BXr3O2Mu" role="tncku">
      <node concept="3clFbS" id="729BXr3O2Mv" role="2VODD2">
        <node concept="3clFbF" id="7jRNnvChBsC" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvChCGp" role="3clFbG">
            <node concept="2ShNRf" id="7jRNnvChBs$" role="2Oq$k0">
              <node concept="HV5vD" id="7jRNnvChCAo" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="7jRNnvChD45" role="2OqNvi">
              <ref role="37wK5l" to="csg2:7jRNnvChxov" resolve="checkoutAndSync" />
              <node concept="2OqwBi" id="7jRNnvChDmR" role="37wK5m">
                <node concept="2WthIp" id="7jRNnvChD4U" role="2Oq$k0" />
                <node concept="1DTwFV" id="7jRNnvChEkN" role="2OqNvi">
                  <ref role="2WH_rO" node="729BXr3O2Ms" resolve="treeNode" />
                </node>
              </node>
              <node concept="2YIFZM" id="7jRNnvChEzZ" role="37wK5m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="2OqwBi" id="7jRNnvChE_p" role="37wK5m">
                  <node concept="2WthIp" id="7jRNnvChE_s" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7jRNnvChE_u" role="2OqNvi">
                    <ref role="2WH_rO" node="729BXr3O2Mq" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="729BXr3O2Mw" role="tmbBb">
      <node concept="3clFbS" id="729BXr3O2Mx" role="2VODD2">
        <node concept="3cpWs6" id="729BXr3O2My" role="3cqZAp">
          <node concept="2OqwBi" id="729BXr3O2ME" role="3cqZAk">
            <node concept="2OqwBi" id="729BXr3O2MF" role="2Oq$k0">
              <node concept="2WthIp" id="729BXr3O2MG" role="2Oq$k0" />
              <node concept="1DTwFV" id="729BXr3O2MH" role="2OqNvi">
                <ref role="2WH_rO" node="729BXr3O2Ms" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="729BXr3O2MI" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Shl61" resolve="isModuleNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7xblg8lmms7">
    <property role="TrG5h" value="CloudResourcesConfigurationComponent" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="7xblg8lmn9N" role="jymVt" />
    <node concept="312cEu" id="7xblg8lmnwf" role="jymVt">
      <property role="TrG5h" value="State" />
      <node concept="312cEg" id="7xblg8lmo$P" role="jymVt">
        <property role="TrG5h" value="cloudRepositories" />
        <node concept="3Tm1VV" id="7xblg8lmona" role="1B3o_S" />
        <node concept="3uibUv" id="7f6Tb6nwIAF" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7f6Tb6nwJeg" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7xblg8lmp1Z" role="jymVt">
        <property role="TrG5h" value="transientProjects" />
        <node concept="3Tm1VV" id="7xblg8lmoOl" role="1B3o_S" />
        <node concept="3uibUv" id="7f6Tb6nwJK5" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7f6Tb6nwJK6" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6UFKywMPOVi" role="jymVt">
        <property role="TrG5h" value="transientModules" />
        <node concept="3Tm1VV" id="6UFKywMPMF3" role="1B3o_S" />
        <node concept="3uibUv" id="6UFKywMPODn" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6UFKywMPOUS" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="5isGFNR_amH" role="jymVt">
        <property role="TrG5h" value="mappedModules" />
        <node concept="3Tm1VV" id="5isGFNR_amI" role="1B3o_S" />
        <node concept="3uibUv" id="5isGFNR_amJ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5isGFNR_amK" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6UFKywMPP1b" role="jymVt" />
      <node concept="3clFbW" id="6UFKywMPPmk" role="jymVt">
        <node concept="3cqZAl" id="6UFKywMPPmm" role="3clF45" />
        <node concept="3clFbS" id="6UFKywMPPmn" role="3clF47">
          <node concept="3clFbF" id="6UFKywMPQ4w" role="3cqZAp">
            <node concept="37vLTI" id="6UFKywMPQVh" role="3clFbG">
              <node concept="2ShNRf" id="6UFKywMPRwO" role="37vLTx">
                <node concept="1pGfFk" id="6UFKywMPYTM" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                  <node concept="3uibUv" id="6UFKywMPZEl" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7f6Tb6nwLo7" role="37vLTJ">
                <ref role="3cqZAo" node="7xblg8lmo$P" resolve="cloudRepositories" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7f6Tb6nwK3q" role="3cqZAp">
            <node concept="37vLTI" id="7f6Tb6nwK3r" role="3clFbG">
              <node concept="2ShNRf" id="7f6Tb6nwK3s" role="37vLTx">
                <node concept="1pGfFk" id="7f6Tb6nwK3t" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                  <node concept="3uibUv" id="7f6Tb6nwK3u" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7f6Tb6nwK3v" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMPOVi" resolve="transientModules" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7f6Tb6nwK3I" role="3cqZAp">
            <node concept="37vLTI" id="7f6Tb6nwK3J" role="3clFbG">
              <node concept="2ShNRf" id="7f6Tb6nwK3K" role="37vLTx">
                <node concept="1pGfFk" id="7f6Tb6nwK3L" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                  <node concept="3uibUv" id="7f6Tb6nwK3M" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7f6Tb6nwMqS" role="37vLTJ">
                <ref role="3cqZAo" node="7xblg8lmp1Z" resolve="transientProjects" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1PLmMHCHKrR" role="3cqZAp">
            <node concept="37vLTI" id="1PLmMHCHLq7" role="3clFbG">
              <node concept="2ShNRf" id="1PLmMHCHM2Y" role="37vLTx">
                <node concept="1pGfFk" id="1PLmMHCI1_V" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                  <node concept="3uibUv" id="1PLmMHCI2ny" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1PLmMHCHKrP" role="37vLTJ">
                <ref role="3cqZAo" node="5isGFNR_amH" resolve="mappedModules" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6UFKywMPZJN" role="jymVt" />
      <node concept="3clFb_" id="6UFKywMPZTt" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="6UFKywMPZTu" role="1B3o_S" />
        <node concept="10Oyi0" id="6UFKywMPZTx" role="3clF45" />
        <node concept="3clFbS" id="6UFKywMPZTy" role="3clF47">
          <node concept="3cpWs8" id="6UFKywMQ262" role="3cqZAp">
            <node concept="3cpWsn" id="6UFKywMQ265" role="3cpWs9">
              <property role="TrG5h" value="hc" />
              <node concept="10Oyi0" id="6UFKywMQ260" role="1tU5fm" />
              <node concept="3cmrfG" id="6UFKywMQ2CL" role="33vP2m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6UFKywMQ5Wc" role="3cqZAp">
            <node concept="d57v9" id="6UFKywMQ9cY" role="3clFbG">
              <node concept="37vLTw" id="6UFKywMQ8gX" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
              <node concept="17qRlL" id="6UFKywMQbZB" role="37vLTx">
                <node concept="2OqwBi" id="6UFKywMQd8D" role="3uHU7w">
                  <node concept="37vLTw" id="6UFKywMQcvH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="cloudRepositories" />
                  </node>
                  <node concept="liA8E" id="6UFKywMQdxO" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6UFKywMQaD5" role="3uHU7B">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6UFKywMQdza" role="3cqZAp">
            <node concept="d57v9" id="6UFKywMQdzb" role="3clFbG">
              <node concept="37vLTw" id="6UFKywMQdzc" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
              <node concept="17qRlL" id="6UFKywMQdzd" role="37vLTx">
                <node concept="2OqwBi" id="6UFKywMQdze" role="3uHU7w">
                  <node concept="37vLTw" id="6UFKywMQeQd" role="2Oq$k0">
                    <ref role="3cqZAo" node="7xblg8lmp1Z" resolve="transientProjects" />
                  </node>
                  <node concept="liA8E" id="6UFKywMQdzg" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6UFKywMQdzh" role="3uHU7B">
                  <property role="3cmrfH" value="7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6UFKywMQgC$" role="3cqZAp">
            <node concept="d57v9" id="6UFKywMQijH" role="3clFbG">
              <node concept="17qRlL" id="6UFKywMQjMU" role="37vLTx">
                <node concept="2OqwBi" id="6UFKywMQlmS" role="3uHU7w">
                  <node concept="37vLTw" id="6UFKywMQkj0" role="2Oq$k0">
                    <ref role="3cqZAo" node="6UFKywMPOVi" resolve="transientModules" />
                  </node>
                  <node concept="liA8E" id="6UFKywMQmdH" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6UFKywMQi_q" role="3uHU7B">
                  <property role="3cmrfH" value="11" />
                </node>
              </node>
              <node concept="37vLTw" id="6UFKywMQgCy" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1PLmMHCI5jm" role="3cqZAp">
            <node concept="d57v9" id="1PLmMHCI5jn" role="3clFbG">
              <node concept="17qRlL" id="1PLmMHCI5jo" role="37vLTx">
                <node concept="2OqwBi" id="1PLmMHCI5jp" role="3uHU7w">
                  <node concept="37vLTw" id="1PLmMHCI74G" role="2Oq$k0">
                    <ref role="3cqZAo" node="5isGFNR_amH" resolve="mappedModules" />
                  </node>
                  <node concept="liA8E" id="1PLmMHCI5jr" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="1PLmMHCI5js" role="3uHU7B">
                  <property role="3cmrfH" value="13" />
                </node>
              </node>
              <node concept="37vLTw" id="1PLmMHCI5jt" role="37vLTJ">
                <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6UFKywMQ2Wu" role="3cqZAp">
            <node concept="37vLTw" id="6UFKywMQ3cu" role="3cqZAk">
              <ref role="3cqZAo" node="6UFKywMQ265" resolve="hc" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6UFKywMPZTz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6UFKywMPZTA" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="6UFKywMPZTB" role="1B3o_S" />
        <node concept="10P_77" id="6UFKywMPZTD" role="3clF45" />
        <node concept="37vLTG" id="6UFKywMPZTE" role="3clF46">
          <property role="TrG5h" value="obj" />
          <node concept="3uibUv" id="6UFKywMPZTF" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="6UFKywMPZTG" role="3clF47">
          <node concept="3clFbJ" id="6UFKywMQmEv" role="3cqZAp">
            <node concept="3clFbS" id="6UFKywMQmEx" role="3clFbx">
              <node concept="3cpWs8" id="6UFKywMQpgh" role="3cqZAp">
                <node concept="3cpWsn" id="6UFKywMQpgi" role="3cpWs9">
                  <property role="TrG5h" value="other" />
                  <node concept="3uibUv" id="6UFKywMQsmK" role="1tU5fm">
                    <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                  </node>
                  <node concept="1eOMI4" id="6UFKywMQpKu" role="33vP2m">
                    <node concept="10QFUN" id="6UFKywMQpKr" role="1eOMHV">
                      <node concept="3uibUv" id="6UFKywMQpKw" role="10QFUM">
                        <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
                      </node>
                      <node concept="37vLTw" id="6UFKywMQpKx" role="10QFUP">
                        <ref role="3cqZAo" node="6UFKywMPZTE" resolve="obj" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6UFKywMQqcQ" role="3cqZAp">
                <node concept="3clFbS" id="6UFKywMQqcS" role="3clFbx">
                  <node concept="3cpWs6" id="6UFKywMQsYn" role="3cqZAp">
                    <node concept="3clFbT" id="6UFKywMQtez" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="6UFKywMQrm7" role="3clFbw">
                  <node concept="2OqwBi" id="6UFKywMQs1Y" role="3uHU7w">
                    <node concept="37vLTw" id="6UFKywMQrCE" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="6UFKywMQsBn" role="2OqNvi">
                      <ref role="2Oxat5" node="7xblg8lmp1Z" resolve="transientProjects" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UFKywMQqH6" role="3uHU7B">
                    <ref role="3cqZAo" node="7xblg8lmp1Z" resolve="transientProjects" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6UFKywMQuQg" role="3cqZAp">
                <node concept="3clFbS" id="6UFKywMQuQh" role="3clFbx">
                  <node concept="3cpWs6" id="6UFKywMQuQi" role="3cqZAp">
                    <node concept="3clFbT" id="6UFKywMQuQj" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="6UFKywMQuQk" role="3clFbw">
                  <node concept="2OqwBi" id="6UFKywMQuQl" role="3uHU7w">
                    <node concept="37vLTw" id="6UFKywMQuQm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="6UFKywMQwMw" role="2OqNvi">
                      <ref role="2Oxat5" node="7xblg8lmo$P" resolve="cloudRepositories" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UFKywMQvA4" role="3uHU7B">
                    <ref role="3cqZAo" node="7xblg8lmo$P" resolve="cloudRepositories" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6UFKywMQv4s" role="3cqZAp">
                <node concept="3clFbS" id="6UFKywMQv4t" role="3clFbx">
                  <node concept="3cpWs6" id="6UFKywMQv4u" role="3cqZAp">
                    <node concept="3clFbT" id="6UFKywMQv4v" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="6UFKywMQv4w" role="3clFbw">
                  <node concept="2OqwBi" id="6UFKywMQv4x" role="3uHU7w">
                    <node concept="37vLTw" id="6UFKywMQv4y" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="6UFKywMQwCZ" role="2OqNvi">
                      <ref role="2Oxat5" node="6UFKywMPOVi" resolve="transientModules" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6UFKywMQwpl" role="3uHU7B">
                    <ref role="3cqZAo" node="6UFKywMPOVi" resolve="transientModules" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1PLmMHCI7du" role="3cqZAp">
                <node concept="3clFbS" id="1PLmMHCI7dv" role="3clFbx">
                  <node concept="3cpWs6" id="1PLmMHCI7dw" role="3cqZAp">
                    <node concept="3clFbT" id="1PLmMHCI7dx" role="3cqZAk" />
                  </node>
                </node>
                <node concept="17QLQc" id="1PLmMHCI7dy" role="3clFbw">
                  <node concept="2OqwBi" id="1PLmMHCI7dz" role="3uHU7w">
                    <node concept="37vLTw" id="1PLmMHCI7d$" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UFKywMQpgi" resolve="other" />
                    </node>
                    <node concept="2OwXpG" id="1PLmMHCI835" role="2OqNvi">
                      <ref role="2Oxat5" node="5isGFNR_amH" resolve="mappedModules" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1PLmMHCI8BU" role="3uHU7B">
                    <ref role="3cqZAo" node="5isGFNR_amH" resolve="mappedModules" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6UFKywMQucn" role="3cqZAp">
                <node concept="3clFbT" id="6UFKywMQusz" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6UFKywMQnoO" role="3clFbw">
              <node concept="3uibUv" id="6UFKywMQnHc" role="2ZW6by">
                <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
              </node>
              <node concept="37vLTw" id="6UFKywMQn2_" role="2ZW6bz">
                <ref role="3cqZAo" node="6UFKywMPZTE" resolve="obj" />
              </node>
            </node>
            <node concept="9aQIb" id="6UFKywMQo8Z" role="9aQIa">
              <node concept="3clFbS" id="6UFKywMQo90" role="9aQI4">
                <node concept="3cpWs6" id="6UFKywMQosB" role="3cqZAp">
                  <node concept="3clFbT" id="6UFKywMQoGy" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6UFKywMPZTH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="cJDksuusD8" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="cJDksuusD9" role="1B3o_S" />
        <node concept="3uibUv" id="cJDksuusDb" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="cJDksuusDc" role="3clF47">
          <node concept="3cpWs6" id="cJDksuuttZ" role="3cqZAp">
            <node concept="3cpWs3" id="7f6Tb6nwOuL" role="3cqZAk">
              <node concept="Xl_RD" id="cJDksuuzTR" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
              <node concept="3cpWs3" id="1PLmMHCIec0" role="3uHU7B">
                <node concept="37vLTw" id="1PLmMHCIf9y" role="3uHU7w">
                  <ref role="3cqZAo" node="5isGFNR_amH" resolve="mappedModules" />
                </node>
                <node concept="3cpWs3" id="1PLmMHCI8Lk" role="3uHU7B">
                  <node concept="3cpWs3" id="7f6Tb6nwXij" role="3uHU7B">
                    <node concept="37vLTw" id="7f6Tb6nwYgN" role="3uHU7w">
                      <ref role="3cqZAo" node="6UFKywMPOVi" resolve="transientModules" />
                    </node>
                    <node concept="3cpWs3" id="7f6Tb6nwUJo" role="3uHU7B">
                      <node concept="3cpWs3" id="7f6Tb6nwSpo" role="3uHU7B">
                        <node concept="3cpWs3" id="cJDksuuzDY" role="3uHU7B">
                          <node concept="3cpWs3" id="cJDksuuxKY" role="3uHU7B">
                            <node concept="Xl_RD" id="cJDksuuu46" role="3uHU7B">
                              <property role="Xl_RC" value="State(cloudRepositories: " />
                            </node>
                            <node concept="37vLTw" id="7f6Tb6nwNwG" role="3uHU7w">
                              <ref role="3cqZAo" node="7xblg8lmo$P" resolve="cloudRepositories" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="7f6Tb6nwPc$" role="3uHU7w">
                            <property role="Xl_RC" value=", transientProjects: " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7f6Tb6nwTn5" role="3uHU7w">
                          <ref role="3cqZAo" node="7xblg8lmp1Z" resolve="transientProjects" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7f6Tb6nwUZh" role="3uHU7w">
                        <property role="Xl_RC" value=", transientModules: " />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1PLmMHCI9Ba" role="3uHU7w">
                    <property role="Xl_RC" value=", mappedModules: " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="cJDksuusDd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6UFKywMOfG2" role="jymVt">
      <node concept="3cqZAl" id="6UFKywMOfG4" role="3clF45" />
      <node concept="3Tm1VV" id="6UFKywMOfG5" role="1B3o_S" />
      <node concept="3clFbS" id="6UFKywMOfG6" role="3clF47" />
    </node>
    <node concept="312cEg" id="7xblg8lmpx_" role="jymVt">
      <property role="TrG5h" value="state" />
      <node concept="3Tm6S6" id="7xblg8lmpgN" role="1B3o_S" />
      <node concept="3uibUv" id="7xblg8lmpx$" role="1tU5fm">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
      </node>
      <node concept="2ShNRf" id="7xblg8lmpK5" role="33vP2m">
        <node concept="1pGfFk" id="6UFKywMPPqi" role="2ShVmc">
          <ref role="37wK5l" node="6UFKywMPPmk" resolve="CloudResourcesConfigurationComponent.State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7xblg8lmne7" role="jymVt" />
    <node concept="3Tm1VV" id="7xblg8lmms8" role="1B3o_S" />
    <node concept="3uibUv" id="7xblg8lmmtu" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="7xblg8lmnM0" role="11_B2D">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
      </node>
    </node>
    <node concept="3clFb_" id="7xblg8lmnRn" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="7xblg8lmnRo" role="1B3o_S" />
      <node concept="2AHcQZ" id="7xblg8lmnRq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7xblg8lmnRs" role="3clF45">
        <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
      </node>
      <node concept="3clFbS" id="7xblg8lmnRt" role="3clF47">
        <node concept="3cpWs6" id="7xblg8lmrGH" role="3cqZAp">
          <node concept="37vLTw" id="7xblg8lmrRj" role="3cqZAk">
            <ref role="3cqZAo" node="7xblg8lmpx_" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7xblg8lmnRu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7xblg8lmnRv" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3Tm1VV" id="7xblg8lmnRw" role="1B3o_S" />
      <node concept="3cqZAl" id="7xblg8lmnRy" role="3clF45" />
      <node concept="37vLTG" id="7xblg8lmnRz" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="7xblg8lmnRA" role="1tU5fm">
          <ref role="3uigEE" node="7xblg8lmnwf" resolve="CloudResourcesConfigurationComponent.State" />
        </node>
        <node concept="2AHcQZ" id="7xblg8lmnR_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7xblg8lmnRB" role="3clF47">
        <node concept="3clFbF" id="7xblg8lms9X" role="3cqZAp">
          <node concept="37vLTI" id="7xblg8lmsTL" role="3clFbG">
            <node concept="37vLTw" id="7xblg8lmt5m" role="37vLTx">
              <ref role="3cqZAo" node="7xblg8lmnRz" resolve="state" />
            </node>
            <node concept="2OqwBi" id="7xblg8lmsvU" role="37vLTJ">
              <node concept="Xjq3P" id="7xblg8lms9W" role="2Oq$k0" />
              <node concept="2OwXpG" id="7xblg8lmsIK" role="2OqNvi">
                <ref role="2Oxat5" node="7xblg8lmpx_" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7xblg8lmnRC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2AHcQZ" id="7xblg8lmKGT" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~Service" resolve="Service" />
    </node>
    <node concept="2AHcQZ" id="7xblg8lmtrD" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="7xblg8lmt$$" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="7xblg8lmtJj" role="2B70Vg">
          <property role="Xl_RC" value="CloudResources" />
        </node>
      </node>
      <node concept="2B6LJw" id="7xblg8lmtUN" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="7xblg8lmvYG" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="7xblg8lr0G1" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.file()" resolve="file" />
            <node concept="Xl_RD" id="7xblg8lr0Rv" role="2B70Vg">
              <property role="Xl_RC" value="cloudResources.xml" />
            </node>
          </node>
          <node concept="2B6LJw" id="7xblg8lmwaQ" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="Xl_RD" id="7xblg8lmwbF" role="2B70Vg">
              <property role="Xl_RC" value="cloudResources.xml" />
            </node>
          </node>
          <node concept="2B6LJw" id="7xblg8lnA7M" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.roamingType()" resolve="roamingType" />
            <node concept="Rm8GO" id="7xblg8lnAGt" role="2B70Vg">
              <ref role="Rm8GQ" to="1m72:~RoamingType.DISABLED" resolve="DISABLED" />
              <ref role="1Px2BO" to="1m72:~RoamingType" resolve="RoamingType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2B6LJw" id="7xblg8lmtJR" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.reloadable()" resolve="reloadable" />
        <node concept="3clFbT" id="7xblg8lmtUH" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="6UFKywMPMal" role="lGtFl">
      <node concept="TZ5HA" id="6UFKywMPMam" role="TZ5H$">
        <node concept="1dT_AC" id="6UFKywMPMan" role="1dT_Ay">
          <property role="1dT_AB" value="This component handles the storage of the cloud configuration." />
        </node>
      </node>
      <node concept="TZ5HA" id="nP6bhxMG6p" role="TZ5H$">
        <node concept="1dT_AC" id="nP6bhxMG6q" role="1dT_Ay">
          <property role="1dT_AB" value="For information about component persistence refer to https://jetbrains.org/intellij/sdk/docs/basics/persisting_state_of_components.html" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1J2iDZzAC6g">
    <property role="3GE5qa" value="actions.node.project" />
    <property role="TrG5h" value="DeleteProject" />
    <property role="2uzpH1" value="Delete Project" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="1J2iDZzAC6h" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1J2iDZzAC6i" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1J2iDZzAC6j" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="1J2iDZzAC6k" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1J2iDZzAC6l" role="tncku">
      <node concept="3clFbS" id="1J2iDZzAC6m" role="2VODD2">
        <node concept="3cpWs8" id="1J2iDZzAC6O" role="3cqZAp">
          <node concept="3cpWsn" id="1J2iDZzAC6P" role="3cpWs9">
            <property role="TrG5h" value="dialogResult" />
            <node concept="10Oyi0" id="1J2iDZzAC6Q" role="1tU5fm" />
            <node concept="2YIFZM" id="1J2iDZzAC6R" role="33vP2m">
              <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <node concept="2OqwBi" id="1J2iDZzAC6S" role="37wK5m">
                <node concept="2OqwBi" id="1J2iDZzAC6T" role="2Oq$k0">
                  <node concept="2WthIp" id="1J2iDZzAC6U" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1J2iDZzAC6V" role="2OqNvi">
                    <ref role="2WH_rO" node="1J2iDZzAC6h" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="1J2iDZzAC6W" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="3cpWs3" id="1J2iDZzAC6X" role="37wK5m">
                <node concept="Xl_RD" id="1J2iDZzAC6Y" role="3uHU7w">
                  <property role="Xl_RC" value="' ?" />
                </node>
                <node concept="3cpWs3" id="1J2iDZzAC72" role="3uHU7B">
                  <node concept="Xl_RD" id="1J2iDZzAC73" role="3uHU7B">
                    <property role="Xl_RC" value="Are you sure you want to delete project '" />
                  </node>
                  <node concept="2OqwBi" id="1J2iDZzB1P6" role="3uHU7w">
                    <node concept="2OqwBi" id="1J2iDZzB0IL" role="2Oq$k0">
                      <node concept="2WthIp" id="1J2iDZzB0IO" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1J2iDZzB0IQ" role="2OqNvi">
                        <ref role="2WH_rO" node="1J2iDZzAC6j" resolve="treeNode" />
                      </node>
                    </node>
                    <node concept="AQDAd" id="1J2iDZzB2jK" role="2OqNvi">
                      <ref role="37wK5l" to="um17:1J2iDZzAZ5Z" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1J2iDZzAC7a" role="37wK5m">
                <property role="Xl_RC" value="Delete Project" />
              </node>
              <node concept="10Nm6u" id="1J2iDZzAC7b" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1J2iDZzAC7c" role="3cqZAp">
          <node concept="3clFbS" id="1J2iDZzAC7d" role="3clFbx">
            <node concept="3cpWs6" id="1J2iDZzAC7e" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="1J2iDZzAC7f" role="3clFbw">
            <node concept="10M0yZ" id="1J2iDZzAC7g" role="3uHU7w">
              <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
              <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
            </node>
            <node concept="37vLTw" id="1J2iDZzAC7h" role="3uHU7B">
              <ref role="3cqZAo" node="1J2iDZzAC6P" resolve="dialogResult" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1J2iDZzB4IA" role="3cqZAp">
          <node concept="2OqwBi" id="1J2iDZzB6i2" role="3clFbG">
            <node concept="2OqwBi" id="1J2iDZzB57F" role="2Oq$k0">
              <node concept="2WthIp" id="1J2iDZzB4I$" role="2Oq$k0" />
              <node concept="1DTwFV" id="1J2iDZzB5Hg" role="2OqNvi">
                <ref role="2WH_rO" node="1J2iDZzAC6j" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="1J2iDZzB7QU" role="2OqNvi">
              <ref role="37wK5l" to="um17:1J2iDZzB736" resolve="delete" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1J2iDZzAC7X" role="tmbBb">
      <node concept="3clFbS" id="1J2iDZzAC7Y" role="2VODD2">
        <node concept="3cpWs6" id="1J2iDZzAC94" role="3cqZAp">
          <node concept="2OqwBi" id="1J2iDZzASPV" role="3cqZAk">
            <node concept="2OqwBi" id="1J2iDZzASb8" role="2Oq$k0">
              <node concept="2WthIp" id="1J2iDZzASbb" role="2Oq$k0" />
              <node concept="1DTwFV" id="1J2iDZzASbd" role="2OqNvi">
                <ref role="2WH_rO" node="1J2iDZzAC6j" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="1J2iDZzATMN" role="2OqNvi">
              <ref role="37wK5l" to="um17:1J2iDZzAPAY" resolve="isProjectNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1WY6nGAtC_I">
    <property role="3GE5qa" value="actions.physicalelements" />
    <property role="TrG5h" value="CopyAndSyncPhysicalProjectOnCloud" />
    <property role="2uzpH1" value="Copy on Cloud &amp; Sync" />
    <node concept="2JriF1" id="1WY6nGAtC_J" role="2JrayB">
      <property role="TrG5h" value="treeInRepository" />
      <node concept="3Tm6S6" id="1WY6nGAtC_K" role="1B3o_S" />
      <node concept="3uibUv" id="3i6diw3mB6R" role="1tU5fm">
        <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
      </node>
      <node concept="2K2imR" id="1WY6nGAtC_M" role="2K2Cet">
        <node concept="3clFbS" id="1WY6nGAtC_N" role="2VODD2">
          <node concept="3clFbF" id="1WY6nGAtC_O" role="3cqZAp">
            <node concept="2OqwBi" id="1WY6nGAtC_P" role="3clFbG">
              <node concept="2K3dj_" id="1WY6nGAtC_Q" role="2Oq$k0" />
              <node concept="liA8E" id="16i93QEgvZ1" role="2OqNvi">
                <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="4OH9Sxdj6Hv" role="2JrayB">
      <property role="TrG5h" value="cloudProject" />
      <node concept="3Tm6S6" id="4OH9Sxdj6Hw" role="1B3o_S" />
      <node concept="3Tqbb2" id="4OH9Sxdj74n" role="1tU5fm">
        <ref role="ehGHo" to="w7di:3uw$nPCBu_p" resolve="Project" />
      </node>
      <node concept="2K2imR" id="4OH9Sxdj77W" role="2K2Cet">
        <node concept="3clFbS" id="4OH9Sxdj77X" role="2VODD2">
          <node concept="3clFbF" id="4OH9Sxdj7gq" role="3cqZAp">
            <node concept="2OqwBi" id="4OH9Sxdj7tz" role="3clFbG">
              <node concept="2K3dj_" id="4OH9Sxdj7gp" role="2Oq$k0" />
              <node concept="2qgKlT" id="4OH9Sxdj7SC" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1WY6nGAtC_S" role="1NuT2Z">
      <property role="TrG5h" value="localProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1WY6nGAtC_T" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1WY6nGAtC_W" role="tncku">
      <node concept="3clFbS" id="1WY6nGAtC_X" role="2VODD2">
        <node concept="3clFbF" id="3rV04iJIPvf" role="3cqZAp">
          <node concept="2OqwBi" id="3rV04iJIPNZ" role="3clFbG">
            <node concept="2ShNRf" id="3rV04iJIPvh" role="2Oq$k0">
              <node concept="HV5vD" id="3rV04iJIPvi" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="3rV04iJIQ4D" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3rV04iJIx8Z" resolve="copyAndSyncInModelixAsEntireProject" />
              <node concept="2OqwBi" id="3rV04iJIQnk" role="37wK5m">
                <node concept="2WthIp" id="3rV04iJIQ5p" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3rV04iJIQXL" role="2OqNvi">
                  <ref role="2WH_rO" node="1WY6nGAtC_J" resolve="treeInRepository" />
                </node>
              </node>
              <node concept="2OqwBi" id="3rV04iJITal" role="37wK5m">
                <node concept="2WthIp" id="3rV04iJISSd" role="2Oq$k0" />
                <node concept="1DTwFV" id="3rV04iJITJH" role="2OqNvi">
                  <ref role="2WH_rO" node="1WY6nGAtC_S" resolve="localProject" />
                </node>
              </node>
              <node concept="2OqwBi" id="3rV04iJITP9" role="37wK5m">
                <node concept="2WthIp" id="3rV04iJITPc" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3rV04iJITPe" role="2OqNvi">
                  <ref role="2WH_rO" node="4OH9Sxdj6Hv" resolve="cloudProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1WY6nGAtCAa" role="tmbBb">
      <node concept="3clFbS" id="1WY6nGAtCAb" role="2VODD2">
        <node concept="3clFbJ" id="4OH9Sxdjaaw" role="3cqZAp">
          <node concept="3clFbS" id="4OH9Sxdjaay" role="3clFbx">
            <node concept="3clFbF" id="4OH9SxdjbC8" role="3cqZAp">
              <node concept="2OqwBi" id="4OH9SxdjbC9" role="3clFbG">
                <node concept="2OqwBi" id="4OH9SxdjbCa" role="2Oq$k0">
                  <node concept="tl45R" id="4OH9SxdjbCb" role="2Oq$k0" />
                  <node concept="liA8E" id="4OH9SxdjbCc" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="4OH9SxdjbCd" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="4OH9Sxdjca8" role="37wK5m">
                    <node concept="Xl_RD" id="4OH9SxdjcgN" role="3uHU7w">
                      <property role="Xl_RC" value=" as new project" />
                    </node>
                    <node concept="3cpWs3" id="4OH9SxdjbCe" role="3uHU7B">
                      <node concept="Xl_RD" id="4OH9SxdjbCf" role="3uHU7B">
                        <property role="Xl_RC" value="Copy on Cloud and Sync -&gt; " />
                      </node>
                      <node concept="2OqwBi" id="6Sw$yPpyxQ0" role="3uHU7w">
                        <node concept="2OqwBi" id="6Sw$yPpyxQ1" role="2Oq$k0">
                          <node concept="2WthIp" id="6Sw$yPpyxQ2" role="2Oq$k0" />
                          <node concept="2BZ7hE" id="6Sw$yPpyxQ3" role="2OqNvi">
                            <ref role="2WH_rO" node="1WY6nGAtC_J" resolve="treeInRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6Sw$yPpyxQ4" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4OH9Sxdjaax" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4OH9SxdjaXT" role="3clFbw">
            <node concept="10Nm6u" id="4OH9Sxdjb6R" role="3uHU7w" />
            <node concept="2OqwBi" id="4OH9SxdjadQ" role="3uHU7B">
              <node concept="2WthIp" id="4OH9SxdjadT" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4OH9SxdjadV" role="2OqNvi">
                <ref role="2WH_rO" node="4OH9Sxdj6Hv" resolve="cloudProject" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4OH9Sxdjbdn" role="9aQIa">
            <node concept="3clFbS" id="4OH9Sxdjbdo" role="9aQI4">
              <node concept="3clFbF" id="3i6diw3mXbb" role="3cqZAp">
                <node concept="2OqwBi" id="3i6diw3mY1_" role="3clFbG">
                  <node concept="2OqwBi" id="3i6diw3mXb5" role="2Oq$k0">
                    <node concept="2WthIp" id="3i6diw3mXb8" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="3i6diw3mXba" role="2OqNvi">
                      <ref role="2WH_rO" node="1WY6nGAtC_J" resolve="treeInRepository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3i6diw3mYoD" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:3i6diw3mRQm" resolve="runRead" />
                    <node concept="1bVj0M" id="3i6diw3mYFC" role="37wK5m">
                      <node concept="3clFbS" id="3i6diw3mYFD" role="1bW5cS">
                        <node concept="3clFbF" id="3i6diw3mYFE" role="3cqZAp">
                          <node concept="2OqwBi" id="3i6diw3mYFF" role="3clFbG">
                            <node concept="2OqwBi" id="3i6diw3mYFG" role="2Oq$k0">
                              <node concept="tl45R" id="3i6diw3mYFH" role="2Oq$k0" />
                              <node concept="liA8E" id="3i6diw3mYFI" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3i6diw3mYFJ" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                              <node concept="3cpWs3" id="3i6diw3mYFK" role="37wK5m">
                                <node concept="2OqwBi" id="3i6diw3mYFL" role="3uHU7w">
                                  <node concept="2OqwBi" id="3i6diw3mYFM" role="2Oq$k0">
                                    <node concept="2WthIp" id="3i6diw3mYFN" role="2Oq$k0" />
                                    <node concept="2BZ7hE" id="3i6diw3mYFO" role="2OqNvi">
                                      <ref role="2WH_rO" node="4OH9Sxdj6Hv" resolve="cloudProject" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="16i93QEg46u" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="3i6diw3mYFQ" role="3uHU7B">
                                  <node concept="3cpWs3" id="3i6diw3mYFR" role="3uHU7B">
                                    <node concept="Xl_RD" id="3i6diw3mYFS" role="3uHU7B">
                                      <property role="Xl_RC" value="Sync to Cloud Repo " />
                                    </node>
                                    <node concept="2OqwBi" id="3i6diw3mYFT" role="3uHU7w">
                                      <node concept="2OqwBi" id="3i6diw3mYFU" role="2Oq$k0">
                                        <node concept="2WthIp" id="3i6diw3mYFV" role="2Oq$k0" />
                                        <node concept="2BZ7hE" id="3i6diw3mYFW" role="2OqNvi">
                                          <ref role="2WH_rO" node="1WY6nGAtC_J" resolve="treeInRepository" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="16i93QEgwjv" role="2OqNvi">
                                        <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="3i6diw3mYFY" role="3uHU7w">
                                    <property role="Xl_RC" value=" to project " />
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
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1WY6nGAtCAp" role="3cqZAp">
          <node concept="1PaTwC" id="1WY6nGAtCAq" role="1aUNEU">
            <node concept="3oM_SD" id="1WY6nGAtCAr" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAs" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAt" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAu" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAv" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAw" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="1WY6nGAtCAx" role="1PaTwD">
              <property role="3oM_SC" value="stored" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1WY6nGAtCAy" role="3cqZAp">
          <node concept="2OqwBi" id="1WY6nGAtCAz" role="3cqZAk">
            <node concept="2OqwBi" id="1WY6nGAtCA$" role="2Oq$k0">
              <node concept="2WthIp" id="1WY6nGAtCA_" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1WY6nGAtCAA" role="2OqNvi">
                <ref role="2WH_rO" node="1WY6nGAtC_J" resolve="treeInRepository" />
              </node>
            </node>
            <node concept="liA8E" id="3i6diw3n215" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3i6diw3n0$X" resolve="isConnected" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5iCdLF2l4kT">
    <property role="3GE5qa" value="actions.node" />
    <property role="TrG5h" value="NavigateToMpsNode" />
    <property role="2uzpH1" value="Navigate to Corresponding MPS Node" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="2XrIbr" id="5iCdLF2m2vX" role="32lrUH">
      <property role="TrG5h" value="findNodeInModel" />
      <node concept="37vLTG" id="5iCdLF2m2vY" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="5iCdLF2m2vZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5iCdLF2m33m" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="17QB3L" id="5iCdLF2m33n" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5iCdLF2m2w0" role="3clF45" />
      <node concept="3clFbS" id="5iCdLF2m2w1" role="3clF47">
        <node concept="2Gpval" id="5iCdLF2m6RT" role="3cqZAp">
          <node concept="2GrKxI" id="5iCdLF2m6RW" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="5iCdLF2m70s" role="2GsD0m">
            <node concept="37vLTw" id="5iCdLF2m6ST" role="2Oq$k0">
              <ref role="3cqZAo" node="5iCdLF2m2vY" resolve="model" />
            </node>
            <node concept="liA8E" id="5iCdLF2m79c" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="5iCdLF2m6S2" role="2LFqv$">
            <node concept="3cpWs8" id="5iCdLF2m7qj" role="3cqZAp">
              <node concept="3cpWsn" id="5iCdLF2m7qm" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3Tqbb2" id="5iCdLF2m7qi" role="1tU5fm" />
                <node concept="2OqwBi" id="5iCdLF2m7ru" role="33vP2m">
                  <node concept="2WthIp" id="5iCdLF2m7rx" role="2Oq$k0" />
                  <node concept="2XshWL" id="5iCdLF2m7Yy" role="2OqNvi">
                    <ref role="2WH_rO" node="5iCdLF2m1Tw" resolve="findNodeInNode" />
                    <node concept="2GrUjf" id="5iCdLF2m81x" role="2XxRq1">
                      <ref role="2Gs0qQ" node="5iCdLF2m6RW" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="5iCdLF2m82E" role="2XxRq1">
                      <ref role="3cqZAo" node="5iCdLF2m33m" resolve="nodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5iCdLF2m8aj" role="3cqZAp">
              <node concept="3clFbS" id="5iCdLF2m8al" role="3clFbx">
                <node concept="3cpWs6" id="5iCdLF2m8t4" role="3cqZAp">
                  <node concept="37vLTw" id="5iCdLF2m8tN" role="3cqZAk">
                    <ref role="3cqZAo" node="5iCdLF2m7qm" resolve="res" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5iCdLF2m8jQ" role="3clFbw">
                <node concept="10Nm6u" id="5iCdLF2m8pj" role="3uHU7w" />
                <node concept="37vLTw" id="5iCdLF2m8bf" role="3uHU7B">
                  <ref role="3cqZAo" node="5iCdLF2m7qm" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5iCdLF2m7gB" role="3cqZAp">
          <node concept="10Nm6u" id="5iCdLF2m7gZ" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="5iCdLF2m1Tw" role="32lrUH">
      <property role="TrG5h" value="findNodeInNode" />
      <node concept="37vLTG" id="5iCdLF2m2m5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5iCdLF2m2XV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5iCdLF2m2Y9" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="17QB3L" id="5iCdLF2m32Z" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5iCdLF2m2iy" role="3clF45" />
      <node concept="3clFbS" id="5iCdLF2m1Ty" role="3clF47">
        <node concept="3clFbJ" id="5iCdLF2m5N2" role="3cqZAp">
          <node concept="17R0WA" id="5iCdLF2mabn" role="3clFbw">
            <node concept="37vLTw" id="5iCdLF2maeX" role="3uHU7w">
              <ref role="3cqZAo" node="5iCdLF2m2Y9" resolve="nodeId" />
            </node>
            <node concept="2OqwBi" id="5iCdLF2m9Dt" role="3uHU7B">
              <node concept="2OqwBi" id="5iCdLF2m9pk" role="2Oq$k0">
                <node concept="2JrnkZ" id="5iCdLF2m9bZ" role="2Oq$k0">
                  <node concept="37vLTw" id="5iCdLF2m5Ni" role="2JrQYb">
                    <ref role="3cqZAo" node="5iCdLF2m2m5" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="5iCdLF2m9yy" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
              <node concept="liA8E" id="5iCdLF2m9N7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5iCdLF2m5N4" role="3clFbx">
            <node concept="3cpWs6" id="5iCdLF2majz" role="3cqZAp">
              <node concept="37vLTw" id="5iCdLF2mak2" role="3cqZAk">
                <ref role="3cqZAo" node="5iCdLF2m2m5" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5iCdLF2mb4u" role="3cqZAp">
          <node concept="2GrKxI" id="5iCdLF2mb4v" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="5iCdLF2mdZz" role="2GsD0m">
            <node concept="2JrnkZ" id="5iCdLF2mdu7" role="2Oq$k0">
              <node concept="37vLTw" id="5iCdLF2mc8P" role="2JrQYb">
                <ref role="3cqZAo" node="5iCdLF2m2m5" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="5iCdLF2me_9" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3clFbS" id="5iCdLF2mb4z" role="2LFqv$">
            <node concept="3cpWs8" id="5iCdLF2mb4$" role="3cqZAp">
              <node concept="3cpWsn" id="5iCdLF2mb4_" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3Tqbb2" id="5iCdLF2mb4A" role="1tU5fm" />
                <node concept="2OqwBi" id="5iCdLF2mb4B" role="33vP2m">
                  <node concept="2WthIp" id="5iCdLF2mb4C" role="2Oq$k0" />
                  <node concept="2XshWL" id="5iCdLF2mb4D" role="2OqNvi">
                    <ref role="2WH_rO" node="5iCdLF2m1Tw" resolve="findNodeInNode" />
                    <node concept="2GrUjf" id="5iCdLF2mb4E" role="2XxRq1">
                      <ref role="2Gs0qQ" node="5iCdLF2mb4v" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="5iCdLF2mb4F" role="2XxRq1">
                      <ref role="3cqZAo" node="5iCdLF2m2Y9" resolve="nodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5iCdLF2mb4G" role="3cqZAp">
              <node concept="3clFbS" id="5iCdLF2mb4H" role="3clFbx">
                <node concept="3cpWs6" id="5iCdLF2mb4I" role="3cqZAp">
                  <node concept="37vLTw" id="5iCdLF2mb4J" role="3cqZAk">
                    <ref role="3cqZAo" node="5iCdLF2mb4_" resolve="res" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5iCdLF2mb4K" role="3clFbw">
                <node concept="10Nm6u" id="5iCdLF2mb4L" role="3uHU7w" />
                <node concept="37vLTw" id="5iCdLF2mb4M" role="3uHU7B">
                  <ref role="3cqZAo" node="5iCdLF2mb4_" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5iCdLF2mb4N" role="3cqZAp">
          <node concept="10Nm6u" id="5iCdLF2mb4O" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5iCdLF2l4kU" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="5iCdLF2l4kV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5iCdLF2l4kW" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="5iCdLF2l4kX" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5iCdLF2l4lw" role="tncku">
      <node concept="3clFbS" id="5iCdLF2l4lx" role="2VODD2">
        <node concept="3cpWs8" id="5iCdLF2lAJB" role="3cqZAp">
          <node concept="3cpWsn" id="5iCdLF2lAJC" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="5iCdLF2lAJD" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="5iCdLF2lAJE" role="33vP2m">
              <node concept="2OqwBi" id="5iCdLF2lAJF" role="10QFUP">
                <node concept="2WthIp" id="5iCdLF2lAJG" role="2Oq$k0" />
                <node concept="1DTwFV" id="5iCdLF2lAJH" role="2OqNvi">
                  <ref role="2WH_rO" node="5iCdLF2l4kW" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="5iCdLF2lAJI" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Nm_qC27l2D" role="3cqZAp">
          <node concept="3cpWsn" id="Nm_qC27l2E" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="Nm_qC27l2F" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2OqwBi" id="Nm_qC27l2G" role="33vP2m">
              <node concept="37vLTw" id="Nm_qC27l2H" role="2Oq$k0">
                <ref role="3cqZAo" node="5iCdLF2lAJC" resolve="nodeTreeNode" />
              </node>
              <node concept="AQDAd" id="Nm_qC27l2I" role="2OqNvi">
                <ref role="37wK5l" to="um17:Nm_qC27bd8" resolve="getTreeInRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5iCdLF2lDsV" role="3cqZAp">
          <node concept="1PaTwC" id="5iCdLF2lDsW" role="1aUNEU">
            <node concept="3oM_SD" id="5iCdLF2lDsX" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDur" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDuN" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDuS" role="1PaTwD">
              <property role="3oM_SC" value="know" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDuY" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDv5" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDvd" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDvE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDvO" role="1PaTwD">
              <property role="3oM_SC" value="look" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDVI" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDVV" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5iCdLF2lDw9" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Nm_qC26x5V" role="3cqZAp" />
        <node concept="3clFbF" id="Nm_qC26Au6" role="3cqZAp">
          <node concept="2OqwBi" id="Nm_qC26BtB" role="3clFbG">
            <node concept="37vLTw" id="Nm_qC27lJ2" role="2Oq$k0">
              <ref role="3cqZAo" node="Nm_qC27l2E" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="Nm_qC26BRt" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3i6diw3mRQm" resolve="runRead" />
              <node concept="1bVj0M" id="Nm_qC26BVF" role="37wK5m">
                <node concept="3clFbS" id="Nm_qC26BVG" role="1bW5cS">
                  <node concept="3cpWs8" id="5iCdLF2lAUX" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lAV0" role="3cpWs9">
                      <property role="TrG5h" value="mpsNodeId" />
                      <node concept="17QB3L" id="5iCdLF2lAUV" role="1tU5fm" />
                      <node concept="2OqwBi" id="Nm_qC26x8P" role="33vP2m">
                        <node concept="37vLTw" id="Nm_qC27mTq" role="2Oq$k0">
                          <ref role="3cqZAo" node="Nm_qC27l2E" resolve="treeInRepository" />
                        </node>
                        <node concept="liA8E" id="Nm_qC26x8T" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2Js2MfX9Evn" resolve="computeRead" />
                          <node concept="1bVj0M" id="Nm_qC26x8U" role="37wK5m">
                            <node concept="3clFbS" id="Nm_qC26x8V" role="1bW5cS">
                              <node concept="3clFbF" id="Nm_qC26x8W" role="3cqZAp">
                                <node concept="2OqwBi" id="Nm_qC26xE7" role="3clFbG">
                                  <node concept="2OqwBi" id="Nm_qC26xE8" role="2Oq$k0">
                                    <node concept="37vLTw" id="Nm_qC26xE9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5iCdLF2lAJC" resolve="nodeTreeNode" />
                                    </node>
                                    <node concept="liA8E" id="Nm_qC26xEa" role="2OqNvi">
                                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                                    </node>
                                  </node>
                                  <node concept="AQDAd" id="Nm_qC26xEb" role="2OqNvi">
                                    <ref role="37wK5l" to="xxte:6dTx9S5u7xa" resolve="mappedMpsNodeID" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5iCdLF2lHoa" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lHod" role="3cpWs9">
                      <property role="TrG5h" value="cloudModule" />
                      <node concept="3uibUv" id="5iCdLF2lI9g" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="5iCdLF2lIhF" role="33vP2m">
                        <node concept="2OqwBi" id="5iCdLF2lIaX" role="2Oq$k0">
                          <node concept="37vLTw" id="5iCdLF2lIaY" role="2Oq$k0">
                            <ref role="3cqZAo" node="5iCdLF2lAJC" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="5iCdLF2lIaZ" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="AQDAd" id="5iCdLF2lIrt" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:5iCdLF2lEVB" resolve="containingModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5iCdLF2lIwJ" role="3cqZAp">
                    <node concept="3clFbS" id="5iCdLF2lIwL" role="3clFbx">
                      <node concept="3clFbF" id="5iCdLF2lIZt" role="3cqZAp">
                        <node concept="2YIFZM" id="5iCdLF2lIZR" role="3clFbG">
                          <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <node concept="2OqwBi" id="5iCdLF2lJ2m" role="37wK5m">
                            <node concept="2WthIp" id="5iCdLF2lJ2p" role="2Oq$k0" />
                            <node concept="1DTwFV" id="5iCdLF2lJ2r" role="2OqNvi">
                              <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5iCdLF2lJ51" role="37wK5m">
                            <property role="Xl_RC" value="No containing module found" />
                          </node>
                          <node concept="Xl_RD" id="5iCdLF2lJa6" role="37wK5m">
                            <property role="Xl_RC" value="Error navigating to MPS node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5iCdLF2lJjy" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="5iCdLF2lIFd" role="3clFbw">
                      <node concept="10Nm6u" id="5iCdLF2lIJ_" role="3uHU7w" />
                      <node concept="37vLTw" id="5iCdLF2lIzx" role="3uHU7B">
                        <ref role="3cqZAo" node="5iCdLF2lHod" resolve="cloudModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5iCdLF2lNr6" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lNr7" role="3cpWs9">
                      <property role="TrG5h" value="cloudModel" />
                      <node concept="3uibUv" id="5iCdLF2lNr8" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="5iCdLF2lNr9" role="33vP2m">
                        <node concept="2OqwBi" id="5iCdLF2lNra" role="2Oq$k0">
                          <node concept="37vLTw" id="5iCdLF2lNrb" role="2Oq$k0">
                            <ref role="3cqZAo" node="5iCdLF2lAJC" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="5iCdLF2lNrc" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="AQDAd" id="5iCdLF2lNrd" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:5iCdLF2lMHW" resolve="containingModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5iCdLF2lNre" role="3cqZAp">
                    <node concept="3clFbS" id="5iCdLF2lNrf" role="3clFbx">
                      <node concept="3clFbF" id="5iCdLF2lNrg" role="3cqZAp">
                        <node concept="2YIFZM" id="5iCdLF2lNrh" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                          <node concept="2OqwBi" id="5iCdLF2lNri" role="37wK5m">
                            <node concept="2WthIp" id="5iCdLF2lNrj" role="2Oq$k0" />
                            <node concept="1DTwFV" id="5iCdLF2lNrk" role="2OqNvi">
                              <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5iCdLF2lNrl" role="37wK5m">
                            <property role="Xl_RC" value="No containing model found" />
                          </node>
                          <node concept="Xl_RD" id="5iCdLF2lNrm" role="37wK5m">
                            <property role="Xl_RC" value="Error navigating to MPS node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5iCdLF2lNrn" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="5iCdLF2lNro" role="3clFbw">
                      <node concept="10Nm6u" id="5iCdLF2lNrp" role="3uHU7w" />
                      <node concept="37vLTw" id="5iCdLF2lNrq" role="3uHU7B">
                        <ref role="3cqZAo" node="5iCdLF2lNr7" resolve="cloudModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5iCdLF2lL6J" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lL6M" role="3cpWs9">
                      <property role="TrG5h" value="moduleId" />
                      <node concept="17QB3L" id="5iCdLF2lL6H" role="1tU5fm" />
                      <node concept="2OqwBi" id="5iCdLF2lKaE" role="33vP2m">
                        <node concept="37vLTw" id="5iCdLF2lK1u" role="2Oq$k0">
                          <ref role="3cqZAo" node="5iCdLF2lHod" resolve="cloudModule" />
                        </node>
                        <node concept="liA8E" id="5iCdLF2lKjZ" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                          <node concept="2OqwBi" id="5iCdLF2lMil" role="37wK5m">
                            <node concept="355D3s" id="5iCdLF2lKNu" role="2Oq$k0">
                              <ref role="355D3t" to="w7di:qmkA5fOskf" resolve="Module" />
                              <ref role="355D3u" to="w7di:3Ezg1fME0bw" resolve="id" />
                            </node>
                            <node concept="liA8E" id="5iCdLF2lMAS" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1zQIRcKaE26" role="3cqZAp">
                    <node concept="3clFbS" id="1zQIRcKaE27" role="3clFbx">
                      <node concept="3clFbF" id="1zQIRcKaE28" role="3cqZAp">
                        <node concept="2YIFZM" id="1zQIRcKaE29" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                          <node concept="2OqwBi" id="1zQIRcKaE2a" role="37wK5m">
                            <node concept="2WthIp" id="1zQIRcKaE2b" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1zQIRcKaE2c" role="2OqNvi">
                              <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1zQIRcKaE2d" role="37wK5m">
                            <property role="Xl_RC" value="No module id" />
                          </node>
                          <node concept="Xl_RD" id="1zQIRcKaE2e" role="37wK5m">
                            <property role="Xl_RC" value="Error navigating to MPS node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1zQIRcKaE2f" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="1zQIRcKaE2g" role="3clFbw">
                      <node concept="10Nm6u" id="1zQIRcKaE2h" role="3uHU7w" />
                      <node concept="37vLTw" id="1zQIRcKaEVV" role="3uHU7B">
                        <ref role="3cqZAo" node="5iCdLF2lL6M" resolve="moduleId" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5iCdLF2lNJI" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lNJL" role="3cpWs9">
                      <property role="TrG5h" value="modelId" />
                      <node concept="17QB3L" id="5iCdLF2lNJG" role="1tU5fm" />
                      <node concept="2OqwBi" id="5iCdLF2lNPU" role="33vP2m">
                        <node concept="37vLTw" id="1zQIRcKa_Az" role="2Oq$k0">
                          <ref role="3cqZAo" node="5iCdLF2lNr7" resolve="cloudModel" />
                        </node>
                        <node concept="liA8E" id="5iCdLF2lNPW" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                          <node concept="2OqwBi" id="5iCdLF2lNPX" role="37wK5m">
                            <node concept="355D3s" id="5iCdLF2lNPY" role="2Oq$k0">
                              <ref role="355D3t" to="w7di:qmkA5fOskc" resolve="Model" />
                              <ref role="355D3u" to="w7di:2hbxkgeTB8i" resolve="id" />
                            </node>
                            <node concept="liA8E" id="5iCdLF2lNPZ" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1zQIRcKaydJ" role="3cqZAp">
                    <node concept="3clFbS" id="1zQIRcKaydL" role="3clFbx">
                      <node concept="3clFbF" id="1zQIRcKa_VH" role="3cqZAp">
                        <node concept="2YIFZM" id="1zQIRcKa_VI" role="3clFbG">
                          <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <node concept="2OqwBi" id="1zQIRcKa_VJ" role="37wK5m">
                            <node concept="2WthIp" id="1zQIRcKa_VK" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1zQIRcKa_VL" role="2OqNvi">
                              <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1zQIRcKa_VO" role="37wK5m">
                            <property role="Xl_RC" value="No model id" />
                          </node>
                          <node concept="Xl_RD" id="1zQIRcKa_VP" role="37wK5m">
                            <property role="Xl_RC" value="Error navigating to MPS node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1zQIRcKa_VQ" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="1zQIRcKa$pK" role="3clFbw">
                      <node concept="10Nm6u" id="1zQIRcKa_0m" role="3uHU7w" />
                      <node concept="37vLTw" id="1zQIRcKazEa" role="3uHU7B">
                        <ref role="3cqZAo" node="5iCdLF2lNJL" resolve="modelId" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5iCdLF2lRCR" role="3cqZAp">
                    <node concept="3cpWsn" id="5iCdLF2lRCS" role="3cpWs9">
                      <property role="TrG5h" value="repo" />
                      <node concept="3uibUv" id="5iCdLF2lRCT" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                      </node>
                      <node concept="2OqwBi" id="5iCdLF2lQbU" role="33vP2m">
                        <node concept="2YIFZM" id="5iCdLF2lPQQ" role="2Oq$k0">
                          <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                          <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
                          <node concept="2OqwBi" id="5iCdLF2lPW8" role="37wK5m">
                            <node concept="2WthIp" id="5iCdLF2lPWb" role="2Oq$k0" />
                            <node concept="1DTwFV" id="5iCdLF2lPWd" role="2OqNvi">
                              <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5iCdLF2lQAA" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1QHqEK" id="2baKFJoL0AG" role="3cqZAp">
                    <node concept="1QHqEC" id="2baKFJoL0AI" role="1QHqEI">
                      <node concept="3clFbS" id="2baKFJoL0AK" role="1bW5cS">
                        <node concept="2Gpval" id="5iCdLF2lS7S" role="3cqZAp">
                          <node concept="2GrKxI" id="5iCdLF2lS7U" role="2Gsz3X">
                            <property role="TrG5h" value="module" />
                          </node>
                          <node concept="2OqwBi" id="5iCdLF2lSvk" role="2GsD0m">
                            <node concept="37vLTw" id="5iCdLF2lSfG" role="2Oq$k0">
                              <ref role="3cqZAo" node="5iCdLF2lRCS" resolve="repo" />
                            </node>
                            <node concept="liA8E" id="5iCdLF2lSHb" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5iCdLF2lS7Y" role="2LFqv$">
                            <node concept="3clFbJ" id="5iCdLF2lSZQ" role="3cqZAp">
                              <node concept="17R0WA" id="5iCdLF2lUfU" role="3clFbw">
                                <node concept="37vLTw" id="5iCdLF2lUrj" role="3uHU7w">
                                  <ref role="3cqZAo" node="5iCdLF2lL6M" resolve="moduleId" />
                                </node>
                                <node concept="2OqwBi" id="5iCdLF2lTxy" role="3uHU7B">
                                  <node concept="2OqwBi" id="5iCdLF2lT7c" role="2Oq$k0">
                                    <node concept="2GrUjf" id="5iCdLF2lT0z" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="5iCdLF2lS7U" resolve="module" />
                                    </node>
                                    <node concept="liA8E" id="5iCdLF2lTpl" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="5iCdLF2lTPX" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="5iCdLF2lSZS" role="3clFbx">
                                <node concept="2Gpval" id="5iCdLF2lX$4" role="3cqZAp">
                                  <node concept="2GrKxI" id="5iCdLF2lX$6" role="2Gsz3X">
                                    <property role="TrG5h" value="model" />
                                  </node>
                                  <node concept="2OqwBi" id="5iCdLF2lXH3" role="2GsD0m">
                                    <node concept="2GrUjf" id="5iCdLF2lX_y" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="5iCdLF2lS7U" resolve="module" />
                                    </node>
                                    <node concept="liA8E" id="5iCdLF2lY98" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="5iCdLF2lX$a" role="2LFqv$">
                                    <node concept="3clFbJ" id="5iCdLF2lYct" role="3cqZAp">
                                      <node concept="17R0WA" id="5iCdLF2lYcu" role="3clFbw">
                                        <node concept="37vLTw" id="5iCdLF2m0ly" role="3uHU7w">
                                          <ref role="3cqZAo" node="5iCdLF2lNJL" resolve="modelId" />
                                        </node>
                                        <node concept="2OqwBi" id="5iCdLF2lZCl" role="3uHU7B">
                                          <node concept="2OqwBi" id="5iCdLF2lYFN" role="2Oq$k0">
                                            <node concept="2GrUjf" id="5iCdLF2lYxw" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="5iCdLF2lX$6" resolve="model" />
                                            </node>
                                            <node concept="liA8E" id="5iCdLF2lZeb" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="5iCdLF2m05J" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5iCdLF2lYc_" role="3clFbx">
                                        <node concept="3cpWs8" id="5iCdLF2m3nT" role="3cqZAp">
                                          <node concept="3cpWsn" id="5iCdLF2m3nW" role="3cpWs9">
                                            <property role="TrG5h" value="node" />
                                            <node concept="3Tqbb2" id="5iCdLF2m3nO" role="1tU5fm" />
                                            <node concept="2OqwBi" id="5iCdLF2m3pk" role="33vP2m">
                                              <node concept="2WthIp" id="5iCdLF2m3pn" role="2Oq$k0" />
                                              <node concept="2XshWL" id="5iCdLF2m3pp" role="2OqNvi">
                                                <ref role="2WH_rO" node="5iCdLF2m2vX" resolve="findNodeInModel" />
                                                <node concept="2GrUjf" id="5iCdLF2m3rz" role="2XxRq1">
                                                  <ref role="2Gs0qQ" node="5iCdLF2lX$6" resolve="model" />
                                                </node>
                                                <node concept="37vLTw" id="5iCdLF2m3CX" role="2XxRq1">
                                                  <ref role="3cqZAo" node="5iCdLF2lAV0" resolve="mpsNodeId" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="5iCdLF2m3TD" role="3cqZAp">
                                          <node concept="3clFbS" id="5iCdLF2m3TF" role="3clFbx">
                                            <node concept="3clFbF" id="5iCdLF2m4LX" role="3cqZAp">
                                              <node concept="2YIFZM" id="5iCdLF2m4LY" role="3clFbG">
                                                <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                                                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                                <node concept="2OqwBi" id="5iCdLF2m4LZ" role="37wK5m">
                                                  <node concept="2WthIp" id="5iCdLF2m4M0" role="2Oq$k0" />
                                                  <node concept="1DTwFV" id="5iCdLF2m4M1" role="2OqNvi">
                                                    <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                                                  </node>
                                                </node>
                                                <node concept="3cpWs3" id="5iCdLF2m4M2" role="37wK5m">
                                                  <node concept="37vLTw" id="5iCdLF2m5bf" role="3uHU7w">
                                                    <ref role="3cqZAo" node="5iCdLF2lAV0" resolve="mpsNodeId" />
                                                  </node>
                                                  <node concept="Xl_RD" id="5iCdLF2m4M4" role="3uHU7B">
                                                    <property role="Xl_RC" value="No node found: " />
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="5iCdLF2m4M5" role="37wK5m">
                                                  <property role="Xl_RC" value="Error navigating to MPS node" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs6" id="5iCdLF2lYcG" role="3cqZAp" />
                                          </node>
                                          <node concept="3clFbC" id="5iCdLF2m43i" role="3clFbw">
                                            <node concept="10Nm6u" id="5iCdLF2m48O" role="3uHU7w" />
                                            <node concept="37vLTw" id="5iCdLF2m3UF" role="3uHU7B">
                                              <ref role="3cqZAo" node="5iCdLF2m3nW" resolve="node" />
                                            </node>
                                          </node>
                                          <node concept="9aQIb" id="5iCdLF2m4d4" role="9aQIa">
                                            <node concept="3clFbS" id="5iCdLF2m4d5" role="9aQI4">
                                              <node concept="3clFbF" id="6nXm1dkSIp$" role="3cqZAp">
                                                <node concept="2OqwBi" id="6nXm1dkSJEH" role="3clFbG">
                                                  <node concept="2YIFZM" id="6nXm1dkSJ8F" role="2Oq$k0">
                                                    <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
                                                    <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
                                                  </node>
                                                  <node concept="liA8E" id="6nXm1dkSKej" role="2OqNvi">
                                                    <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
                                                    <node concept="2YIFZM" id="6nXm1dkSQ3T" role="37wK5m">
                                                      <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
                                                      <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                                                      <node concept="2OqwBi" id="6nXm1dkSKHY" role="37wK5m">
                                                        <node concept="2WthIp" id="6nXm1dkSKI1" role="2Oq$k0" />
                                                        <node concept="1DTwFV" id="6nXm1dkSKI3" role="2OqNvi">
                                                          <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="6nXm1dkSMDd" role="37wK5m">
                                                      <ref role="3cqZAo" node="5iCdLF2m3nW" resolve="node" />
                                                    </node>
                                                    <node concept="3clFbT" id="6nXm1dkSN1X" role="37wK5m" />
                                                    <node concept="3clFbT" id="6nXm1dkSN$D" role="37wK5m">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3cpWs6" id="5iCdLF2m4hi" role="3cqZAp" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="5iCdLF2m0H9" role="3cqZAp">
                                  <node concept="2YIFZM" id="5iCdLF2m0Ha" role="3clFbG">
                                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                    <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                                    <node concept="2OqwBi" id="5iCdLF2m0Hb" role="37wK5m">
                                      <node concept="2WthIp" id="5iCdLF2m0Hc" role="2Oq$k0" />
                                      <node concept="1DTwFV" id="5iCdLF2m0Hd" role="2OqNvi">
                                        <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                                      </node>
                                    </node>
                                    <node concept="3cpWs3" id="5iCdLF2m0He" role="37wK5m">
                                      <node concept="37vLTw" id="5iCdLF2m1gS" role="3uHU7w">
                                        <ref role="3cqZAo" node="5iCdLF2lNJL" resolve="modelId" />
                                      </node>
                                      <node concept="Xl_RD" id="5iCdLF2m0Hg" role="3uHU7B">
                                        <property role="Xl_RC" value="No model found: " />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5iCdLF2m0Hh" role="37wK5m">
                                      <property role="Xl_RC" value="Error navigating to MPS node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="5iCdLF2m4zx" role="3cqZAp" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5iCdLF2lVuH" role="3cqZAp">
                          <node concept="2YIFZM" id="5iCdLF2lVuI" role="3clFbG">
                            <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String)" resolve="showErrorDialog" />
                            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                            <node concept="2OqwBi" id="5iCdLF2lVuJ" role="37wK5m">
                              <node concept="2WthIp" id="5iCdLF2lVuK" role="2Oq$k0" />
                              <node concept="1DTwFV" id="5iCdLF2lVuL" role="2OqNvi">
                                <ref role="2WH_rO" node="5iCdLF2l4kU" resolve="project" />
                              </node>
                            </node>
                            <node concept="3cpWs3" id="5iCdLF2lW5F" role="37wK5m">
                              <node concept="37vLTw" id="5iCdLF2lW8v" role="3uHU7w">
                                <ref role="3cqZAo" node="5iCdLF2lL6M" resolve="moduleId" />
                              </node>
                              <node concept="Xl_RD" id="5iCdLF2lVuM" role="3uHU7B">
                                <property role="Xl_RC" value="No module found: " />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5iCdLF2lVuN" role="37wK5m">
                              <property role="Xl_RC" value="Error navigating to MPS node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2baKFJoL12Q" role="ukAjM">
                      <ref role="3cqZAo" node="5iCdLF2lRCS" resolve="repo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5iCdLF2l4mT" role="tmbBb">
      <node concept="3clFbS" id="5iCdLF2l4mU" role="2VODD2">
        <node concept="3clFbJ" id="5iCdLF2lrbm" role="3cqZAp">
          <node concept="3clFbS" id="5iCdLF2lrbo" role="3clFbx">
            <node concept="3cpWs6" id="5iCdLF2lr$f" role="3cqZAp">
              <node concept="3clFbT" id="5iCdLF2lr$y" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5iCdLF2lrwj" role="3clFbw">
            <node concept="2OqwBi" id="5iCdLF2lrwl" role="3fr31v">
              <node concept="2OqwBi" id="5iCdLF2lrwm" role="2Oq$k0">
                <node concept="2WthIp" id="5iCdLF2lrwn" role="2Oq$k0" />
                <node concept="1DTwFV" id="5iCdLF2lrwo" role="2OqNvi">
                  <ref role="2WH_rO" node="5iCdLF2l4kW" resolve="treeNode" />
                </node>
              </node>
              <node concept="AQDAd" id="5iCdLF2lrwp" role="2OqNvi">
                <ref role="37wK5l" to="um17:5iCdLF2lqde" resolve="isProperNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5iCdLF2lqRh" role="3cqZAp">
          <node concept="3cpWsn" id="5iCdLF2lqRk" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="5iCdLF2lqRl" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="5iCdLF2lqRm" role="33vP2m">
              <node concept="2OqwBi" id="5iCdLF2lqRn" role="10QFUP">
                <node concept="2WthIp" id="5iCdLF2lqRo" role="2Oq$k0" />
                <node concept="1DTwFV" id="5iCdLF2lqRp" role="2OqNvi">
                  <ref role="2WH_rO" node="5iCdLF2l4kW" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="5iCdLF2lqRq" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Nm_qC27jU7" role="3cqZAp">
          <node concept="3cpWsn" id="Nm_qC27jU8" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="Nm_qC27jU9" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2OqwBi" id="Nm_qC27hhD" role="33vP2m">
              <node concept="37vLTw" id="Nm_qC27k9j" role="2Oq$k0">
                <ref role="3cqZAo" node="5iCdLF2lqRk" resolve="nodeTreeNode" />
              </node>
              <node concept="AQDAd" id="Nm_qC27id4" role="2OqNvi">
                <ref role="37wK5l" to="um17:Nm_qC27bd8" resolve="getTreeInRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5iCdLF2loZs" role="3cqZAp">
          <node concept="2OqwBi" id="Nm_qC26vMj" role="3cqZAk">
            <node concept="37vLTw" id="Nm_qC27kVP" role="2Oq$k0">
              <ref role="3cqZAo" node="Nm_qC27jU8" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="Nm_qC26w5V" role="2OqNvi">
              <ref role="37wK5l" to="csg2:2Js2MfX9Evn" resolve="computeRead" />
              <node concept="1bVj0M" id="Nm_qC26wan" role="37wK5m">
                <node concept="3clFbS" id="Nm_qC26wao" role="1bW5cS">
                  <node concept="3clFbF" id="Nm_qC26wqp" role="3cqZAp">
                    <node concept="2OqwBi" id="Nm_qC26wqr" role="3clFbG">
                      <node concept="2OqwBi" id="Nm_qC26wqs" role="2Oq$k0">
                        <node concept="37vLTw" id="Nm_qC26wqt" role="2Oq$k0">
                          <ref role="3cqZAo" node="5iCdLF2lqRk" resolve="nodeTreeNode" />
                        </node>
                        <node concept="liA8E" id="Nm_qC26wqu" role="2OqNvi">
                          <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                        </node>
                      </node>
                      <node concept="AQDAd" id="Nm_qC26wqv" role="2OqNvi">
                        <ref role="37wK5l" to="xxte:5iCdLF2lvlw" resolve="isMappedToMpsNode" />
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
  <node concept="sE7Ow" id="e_REOZbrU1">
    <property role="3GE5qa" value="actions.physicalelements" />
    <property role="TrG5h" value="CopyPhysicalModuleOnCloud" />
    <property role="2uzpH1" value="Copy on Cloud" />
    <node concept="2JriF1" id="1xehy3Sk9_8" role="2JrayB">
      <property role="TrG5h" value="treeInRepository" />
      <node concept="3Tm6S6" id="1xehy3Sk9_9" role="1B3o_S" />
      <node concept="3uibUv" id="5rz8NqPRgds" role="1tU5fm">
        <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
      </node>
      <node concept="2K2imR" id="1xehy3Sk9_b" role="2K2Cet">
        <node concept="3clFbS" id="1xehy3Sk9_c" role="2VODD2">
          <node concept="3clFbF" id="1xehy3Sl8lH" role="3cqZAp">
            <node concept="2OqwBi" id="1xehy3Sl8rO" role="3clFbG">
              <node concept="2K3dj_" id="1xehy3Sl8lG" role="2Oq$k0" />
              <node concept="liA8E" id="16i93QEgqZm" role="2OqNvi">
                <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="e_REOZbrU2" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="e_REOZbrU3" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="e_REOZbrU4" role="1NuT2Z">
      <property role="TrG5h" value="module" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULE" resolve="MODULE" />
      <node concept="1oajcY" id="e_REOZbrU5" role="1oa70y" />
    </node>
    <node concept="tnohg" id="e_REOZbrU6" role="tncku">
      <node concept="3clFbS" id="e_REOZbrU7" role="2VODD2">
        <node concept="3clFbF" id="e_REOZbrUY" role="3cqZAp">
          <node concept="2OqwBi" id="e_REOZbrUZ" role="3clFbG">
            <node concept="2ShNRf" id="e_REOZbrV0" role="2Oq$k0">
              <node concept="HV5vD" id="e_REOZbrV1" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="e_REOZbrV2" role="2OqNvi">
              <ref role="37wK5l" to="csg2:i0AVAFY82L" resolve="copyInModelixAsIndependentModule" />
              <node concept="2OqwBi" id="1xehy3SnaIY" role="37wK5m">
                <node concept="2WthIp" id="1xehy3SnaJ1" role="2Oq$k0" />
                <node concept="2BZ7hE" id="1xehy3SnaJ3" role="2OqNvi">
                  <ref role="2WH_rO" node="1xehy3Sk9_8" resolve="treeInRepository" />
                </node>
              </node>
              <node concept="2OqwBi" id="e_REOZbrV4" role="37wK5m">
                <node concept="2WthIp" id="e_REOZbrV5" role="2Oq$k0" />
                <node concept="1DTwFV" id="e_REOZbrV6" role="2OqNvi">
                  <ref role="2WH_rO" node="e_REOZbrU4" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="e_REOZbrVA" role="tmbBb">
      <node concept="3clFbS" id="e_REOZbrVB" role="2VODD2">
        <node concept="3clFbF" id="1xehy3SmaYV" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3SmaYW" role="3clFbG">
            <node concept="2OqwBi" id="1xehy3SmaYX" role="2Oq$k0">
              <node concept="tl45R" id="1xehy3SmaYY" role="2Oq$k0" />
              <node concept="liA8E" id="1xehy3SmaYZ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1xehy3SmaZ0" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="1xehy3SmaZ1" role="37wK5m">
                <node concept="Xl_RD" id="1xehy3SmaZ2" role="3uHU7B">
                  <property role="Xl_RC" value="Copy on Cloud -&gt; " />
                </node>
                <node concept="2OqwBi" id="1xehy3SmaZ3" role="3uHU7w">
                  <node concept="2OqwBi" id="1xehy3SmaZ4" role="2Oq$k0">
                    <node concept="2WthIp" id="1xehy3SmaZ5" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="1xehy3SmaZ6" role="2OqNvi">
                      <ref role="2WH_rO" node="1xehy3Sk9_8" resolve="treeInRepository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="16i93QEgqUu" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:16i93QEglbV" resolve="presentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="e_REOZbrVL" role="3cqZAp">
          <node concept="1PaTwC" id="e_REOZbrVM" role="1aUNEU">
            <node concept="3oM_SD" id="e_REOZbrVN" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVO" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVP" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVQ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVR" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVS" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="e_REOZbrVT" role="1PaTwD">
              <property role="3oM_SC" value="stored" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="e_REOZbrVU" role="3cqZAp">
          <node concept="2OqwBi" id="1xehy3SneII" role="3cqZAk">
            <node concept="2OqwBi" id="1xehy3Sneao" role="2Oq$k0">
              <node concept="2WthIp" id="1xehy3Snear" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1xehy3Sneat" role="2OqNvi">
                <ref role="2WH_rO" node="1xehy3Sk9_8" resolve="treeInRepository" />
              </node>
            </node>
            <node concept="liA8E" id="1xehy3SneOA" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3i6diw3n0$X" resolve="isConnected" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="729BXr3NNGW">
    <property role="3GE5qa" value="actions.node.module" />
    <property role="TrG5h" value="CheckoutModule" />
    <property role="2uzpH1" value="Checkout" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="729BXr3NNGX" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="729BXr3NNGY" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="729BXr3NNGZ" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="729BXr3NNH0" role="1oa70y" />
    </node>
    <node concept="tnohg" id="729BXr3NNH1" role="tncku">
      <node concept="3clFbS" id="729BXr3NNH2" role="2VODD2">
        <node concept="3cpWs8" id="5Ns9HDw14NE" role="3cqZAp">
          <node concept="3cpWsn" id="5Ns9HDw14NF" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="5Ns9HDw14NG" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="5Ns9HDw14NH" role="33vP2m">
              <node concept="2OqwBi" id="5Ns9HDw14NI" role="10QFUP">
                <node concept="2WthIp" id="5Ns9HDw14NJ" role="2Oq$k0" />
                <node concept="1DTwFV" id="5Ns9HDw14NK" role="2OqNvi">
                  <ref role="2WH_rO" node="729BXr3NNGZ" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="5Ns9HDw14NL" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Ns9HDw13eg" role="3cqZAp">
          <node concept="3cpWsn" id="5Ns9HDw13eh" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="5Ns9HDw13ei" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2OqwBi" id="5Ns9HDw15Ab" role="33vP2m">
              <node concept="37vLTw" id="5Ns9HDw1565" role="2Oq$k0">
                <ref role="3cqZAo" node="5Ns9HDw14NF" resolve="nodeTreeNode" />
              </node>
              <node concept="AQDAd" id="5Ns9HDw16sS" role="2OqNvi">
                <ref role="37wK5l" to="um17:Nm_qC27bd8" resolve="getTreeInRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Ns9HDw1rmR" role="3cqZAp">
          <node concept="3cpWsn" id="5Ns9HDw1rmS" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="5Ns9HDw1vjg" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="5Ns9HDw1rq1" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project)" resolve="toMPSProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="5Ns9HDw1vts" role="37wK5m">
                <node concept="2WthIp" id="5Ns9HDw1vtv" role="2Oq$k0" />
                <node concept="1DTwFV" id="5Ns9HDw1vtx" role="2OqNvi">
                  <ref role="2WH_rO" node="729BXr3NNGX" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OzsJtas0Aa" role="3cqZAp">
          <node concept="2OqwBi" id="1OzsJtas28e" role="3clFbG">
            <node concept="2ShNRf" id="1OzsJtas0A6" role="2Oq$k0">
              <node concept="1pGfFk" id="1OzsJtas1Dw" role="2ShVmc">
                <ref role="37wK5l" to="csg2:1OzsJtaqF48" resolve="ModuleCheckout" />
                <node concept="37vLTw" id="1OzsJtas1Zq" role="37wK5m">
                  <ref role="3cqZAo" node="5Ns9HDw1rmS" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="1OzsJtas22f" role="37wK5m">
                  <ref role="3cqZAo" node="5Ns9HDw13eh" resolve="treeInRepository" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1OzsJtas2qw" role="2OqNvi">
              <ref role="37wK5l" to="csg2:1OzsJtaqDPS" resolve="checkoutCloudModule" />
              <node concept="1eOMI4" id="1OzsJtas3RU" role="37wK5m">
                <node concept="10QFUN" id="1OzsJtas3RR" role="1eOMHV">
                  <node concept="3uibUv" id="1OzsJtas444" role="10QFUM">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                  <node concept="2OqwBi" id="1OzsJtas2VZ" role="10QFUP">
                    <node concept="37vLTw" id="1OzsJtas2rv" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Ns9HDw14NF" resolve="nodeTreeNode" />
                    </node>
                    <node concept="liA8E" id="1OzsJtas3Ot" role="2OqNvi">
                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="729BXr3NNHW" role="tmbBb">
      <node concept="3clFbS" id="729BXr3NNHX" role="2VODD2">
        <node concept="3SKdUt" id="729BXr3O6pT" role="3cqZAp">
          <node concept="1PaTwC" id="729BXr3O6pU" role="1aUNEU">
            <node concept="3oM_SD" id="729BXr3O6pV" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6rH" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6rV" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sa" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sg" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sn" role="1PaTwD">
              <property role="3oM_SC" value="exist" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sv" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sC" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6sW" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6t7" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="729BXr3O6tj" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="729BXr3NNHY" role="3cqZAp">
          <node concept="2OqwBi" id="729BXr3NNI6" role="3cqZAk">
            <node concept="2OqwBi" id="729BXr3NNI7" role="2Oq$k0">
              <node concept="2WthIp" id="729BXr3NNI8" role="2Oq$k0" />
              <node concept="1DTwFV" id="729BXr3NNI9" role="2OqNvi">
                <ref role="2WH_rO" node="729BXr3NNGZ" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="729BXr3NNIa" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Shl61" resolve="isModuleNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="lOVi2A8Hs3">
    <property role="3GE5qa" value="actions.node.module" />
    <property role="TrG5h" value="DeleteModule" />
    <property role="2uzpH1" value="Delete Module" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="lOVi2A8Hs4" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="lOVi2A8Hs5" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="lOVi2A8Hs6" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="lOVi2A8Hs7" role="1oa70y" />
    </node>
    <node concept="tnohg" id="lOVi2A8Hs8" role="tncku">
      <node concept="3clFbS" id="lOVi2A8Hs9" role="2VODD2">
        <node concept="3cpWs8" id="lOVi2A8Hsa" role="3cqZAp">
          <node concept="3cpWsn" id="lOVi2A8Hsb" role="3cpWs9">
            <property role="TrG5h" value="dialogResult" />
            <node concept="10Oyi0" id="lOVi2A8Hsc" role="1tU5fm" />
            <node concept="2YIFZM" id="lOVi2A8Hsd" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
              <node concept="2OqwBi" id="lOVi2A8Hse" role="37wK5m">
                <node concept="2OqwBi" id="lOVi2A8Hsf" role="2Oq$k0">
                  <node concept="2WthIp" id="lOVi2A8Hsg" role="2Oq$k0" />
                  <node concept="1DTwFV" id="lOVi2A8Hsh" role="2OqNvi">
                    <ref role="2WH_rO" node="lOVi2A8Hs4" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="lOVi2A8Hsi" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="3cpWs3" id="lOVi2A8Hsj" role="37wK5m">
                <node concept="Xl_RD" id="lOVi2A8Hsk" role="3uHU7w">
                  <property role="Xl_RC" value="' ?" />
                </node>
                <node concept="3cpWs3" id="lOVi2A8Hsl" role="3uHU7B">
                  <node concept="Xl_RD" id="lOVi2A8Hsm" role="3uHU7B">
                    <property role="Xl_RC" value="Are you sure you want to delete module '" />
                  </node>
                  <node concept="2OqwBi" id="lOVi2A8Hsn" role="3uHU7w">
                    <node concept="2OqwBi" id="lOVi2A8Hso" role="2Oq$k0">
                      <node concept="2WthIp" id="lOVi2A8Hsp" role="2Oq$k0" />
                      <node concept="1DTwFV" id="lOVi2A8Hsq" role="2OqNvi">
                        <ref role="2WH_rO" node="lOVi2A8Hs6" resolve="treeNode" />
                      </node>
                    </node>
                    <node concept="AQDAd" id="lOVi2A8Hsr" role="2OqNvi">
                      <ref role="37wK5l" to="um17:1J2iDZzAZ5Z" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="lOVi2A8Hss" role="37wK5m">
                <property role="Xl_RC" value="Delete Module" />
              </node>
              <node concept="10Nm6u" id="lOVi2A8Hst" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="lOVi2A8Hsu" role="3cqZAp">
          <node concept="3clFbS" id="lOVi2A8Hsv" role="3clFbx">
            <node concept="3cpWs6" id="lOVi2A8Hsw" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="lOVi2A8Hsx" role="3clFbw">
            <node concept="10M0yZ" id="lOVi2A8Hsy" role="3uHU7w">
              <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
              <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
            </node>
            <node concept="37vLTw" id="lOVi2A8Hsz" role="3uHU7B">
              <ref role="3cqZAo" node="lOVi2A8Hsb" resolve="dialogResult" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lOVi2A8Hs$" role="3cqZAp">
          <node concept="2OqwBi" id="lOVi2A8Hs_" role="3clFbG">
            <node concept="2OqwBi" id="lOVi2A8HsA" role="2Oq$k0">
              <node concept="2WthIp" id="lOVi2A8HsB" role="2Oq$k0" />
              <node concept="1DTwFV" id="lOVi2A8HsC" role="2OqNvi">
                <ref role="2WH_rO" node="lOVi2A8Hs6" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="lOVi2A8HsD" role="2OqNvi">
              <ref role="37wK5l" to="um17:1J2iDZzB736" resolve="delete" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="lOVi2A8HsE" role="tmbBb">
      <node concept="3clFbS" id="lOVi2A8HsF" role="2VODD2">
        <node concept="3cpWs6" id="lOVi2A8HsG" role="3cqZAp">
          <node concept="2OqwBi" id="lOVi2A8HsH" role="3cqZAk">
            <node concept="2OqwBi" id="lOVi2A8HsI" role="2Oq$k0">
              <node concept="2WthIp" id="lOVi2A8HsJ" role="2Oq$k0" />
              <node concept="1DTwFV" id="lOVi2A8HsK" role="2OqNvi">
                <ref role="2WH_rO" node="lOVi2A8Hs6" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="lOVi2A8HsL" role="2OqNvi">
              <ref role="37wK5l" to="um17:1xehy3Shl61" resolve="isModuleNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7fzD_A4sSsN">
    <property role="3GE5qa" value="actions.node" />
    <property role="TrG5h" value="SetProperty" />
    <property role="2uzpH1" value="Set Property '...'" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="1DS2jV" id="7fzD_A4sSsO" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7fzD_A4sSsP" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7fzD_A4sSsQ" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="7fzD_A4sSsR" role="1oa70y" />
    </node>
    <node concept="2JriF1" id="7fzD_A4sSsS" role="2JrayB">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="7fzD_A4sSsT" role="1B3o_S" />
      <node concept="3uibUv" id="7fzD_A4sSsU" role="1tU5fm">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="2K2imR" id="7fzD_A4sSsV" role="2K2Cet">
        <node concept="3clFbS" id="7fzD_A4sSsW" role="2VODD2">
          <node concept="3clFbF" id="7fzD_A4sSsX" role="3cqZAp">
            <node concept="2OqwBi" id="7fzD_A4sSsY" role="3clFbG">
              <node concept="2K3dj_" id="7fzD_A4sSsZ" role="2Oq$k0" />
              <node concept="liA8E" id="7fzD_A4sSt0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="7fzD_A4sSth" role="2JrayB">
      <property role="TrG5h" value="role" />
      <node concept="3Tm6S6" id="7fzD_A4sSti" role="1B3o_S" />
      <node concept="3uibUv" id="7fzD_A4tjPj" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="2K2imR" id="7fzD_A4sStk" role="2K2Cet">
        <node concept="3clFbS" id="7fzD_A4sStl" role="2VODD2">
          <node concept="3clFbF" id="7fzD_A4sStm" role="3cqZAp">
            <node concept="2OqwBi" id="7fzD_A4sStn" role="3clFbG">
              <node concept="2K3dj_" id="7fzD_A4sSto" role="2Oq$k0" />
              <node concept="liA8E" id="7fzD_A4sStp" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="7fzD_A4sStq" role="tncku">
      <node concept="3clFbS" id="7fzD_A4sStr" role="2VODD2">
        <node concept="3cpWs8" id="7fzD_A4sSts" role="3cqZAp">
          <node concept="3cpWsn" id="7fzD_A4sStt" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="7fzD_A4sStu" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="7fzD_A4sStv" role="33vP2m">
              <node concept="2OqwBi" id="7fzD_A4sStw" role="10QFUP">
                <node concept="2WthIp" id="7fzD_A4sStx" role="2Oq$k0" />
                <node concept="1DTwFV" id="7fzD_A4sSty" role="2OqNvi">
                  <ref role="2WH_rO" node="7fzD_A4sSsQ" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="7fzD_A4sStz" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7fzD_A4sSt$" role="3cqZAp" />
        <node concept="3cpWs8" id="6vE__CKzb4R" role="3cqZAp">
          <node concept="3cpWsn" id="6vE__CKzb4U" role="3cpWs9">
            <property role="TrG5h" value="currentValue" />
            <node concept="17QB3L" id="6vE__CKzb4P" role="1tU5fm" />
            <node concept="2OqwBi" id="6vE__CKzeZe" role="33vP2m">
              <node concept="2OqwBi" id="6vE__CKzcMw" role="2Oq$k0">
                <node concept="37vLTw" id="6vE__CKzbU7" role="2Oq$k0">
                  <ref role="3cqZAo" node="7fzD_A4sStt" resolve="nodeTreeNode" />
                </node>
                <node concept="AQDAd" id="6vE__CKzewd" role="2OqNvi">
                  <ref role="37wK5l" to="um17:Nm_qC27bd8" resolve="getTreeInRepository" />
                </node>
              </node>
              <node concept="liA8E" id="6vE__CKzfwq" role="2OqNvi">
                <ref role="37wK5l" to="csg2:2Js2MfX9Evn" resolve="computeRead" />
                <node concept="1bVj0M" id="6vE__CKzfCu" role="37wK5m">
                  <node concept="3clFbS" id="6vE__CKzfCv" role="1bW5cS">
                    <node concept="3clFbF" id="6vE__CKztoI" role="3cqZAp">
                      <node concept="2OqwBi" id="6vE__CKzwCw" role="3clFbG">
                        <node concept="2OqwBi" id="6vE__CKzvoa" role="2Oq$k0">
                          <node concept="37vLTw" id="6vE__CKzuDY" role="2Oq$k0">
                            <ref role="3cqZAo" node="7fzD_A4sStt" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="6vE__CKzwnk" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6vE__CKzwUy" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                          <node concept="2OqwBi" id="6vE__CKzyPo" role="37wK5m">
                            <node concept="2OqwBi" id="6vE__CKzxAm" role="2Oq$k0">
                              <node concept="2WthIp" id="6vE__CKzx5M" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="6vE__CKzylL" role="2OqNvi">
                                <ref role="2WH_rO" node="7fzD_A4sSth" resolve="role" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6vE__CKzzpG" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
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
        <node concept="3cpWs8" id="7fzD_A4sSt_" role="3cqZAp">
          <node concept="3cpWsn" id="7fzD_A4sStA" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="7fzD_A4sStB" role="1tU5fm" />
            <node concept="2YIFZM" id="7fzD_A4sStH" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showInputDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon,java.lang.String,com.intellij.openapi.ui.InputValidator)" resolve="showInputDialog" />
              <node concept="2OqwBi" id="7fzD_A4sStI" role="37wK5m">
                <node concept="2WthIp" id="7fzD_A4sStJ" role="2Oq$k0" />
                <node concept="1DTwFV" id="7fzD_A4sStK" role="2OqNvi">
                  <ref role="2WH_rO" node="7fzD_A4sSsO" resolve="project" />
                </node>
              </node>
              <node concept="Xl_RD" id="7fzD_A4sStL" role="37wK5m">
                <property role="Xl_RC" value="Value" />
              </node>
              <node concept="3cpWs3" id="7fzD_A4tpcw" role="37wK5m">
                <node concept="Xl_RD" id="7fzD_A4tpcI" role="3uHU7w">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="3cpWs3" id="7fzD_A4sStM" role="3uHU7B">
                  <node concept="Xl_RD" id="7fzD_A4sStS" role="3uHU7B">
                    <property role="Xl_RC" value="Set Property '" />
                  </node>
                  <node concept="2OqwBi" id="7fzD_A4sStN" role="3uHU7w">
                    <node concept="2OqwBi" id="7fzD_A4sStO" role="2Oq$k0">
                      <node concept="2WthIp" id="7fzD_A4sStP" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="7fzD_A4to61" role="2OqNvi">
                        <ref role="2WH_rO" node="7fzD_A4sSth" resolve="role" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7fzD_A4toH9" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="7fzD_A4sStT" role="37wK5m" />
              <node concept="37vLTw" id="6vE__CKzbwR" role="37wK5m">
                <ref role="3cqZAo" node="6vE__CKzb4U" resolve="currentValue" />
              </node>
              <node concept="2ShNRf" id="7pQWC8SXisP" role="37wK5m">
                <node concept="YeOm9" id="7pQWC8SXqe$" role="2ShVmc">
                  <node concept="1Y3b0j" id="7pQWC8SXqeB" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="jkm4:~InputValidator" resolve="InputValidator" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="7pQWC8SXqeC" role="1B3o_S" />
                    <node concept="3clFb_" id="7pQWC8SXqeH" role="jymVt">
                      <property role="TrG5h" value="checkInput" />
                      <node concept="3Tm1VV" id="7pQWC8SXqeI" role="1B3o_S" />
                      <node concept="10P_77" id="7pQWC8SXqeK" role="3clF45" />
                      <node concept="37vLTG" id="7pQWC8SXqeL" role="3clF46">
                        <property role="TrG5h" value="s" />
                        <node concept="3uibUv" id="7pQWC8SXqeM" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7pQWC8SXqeN" role="3clF47">
                        <node concept="3SKdUt" id="7pQWC8SXruW" role="3cqZAp">
                          <node concept="1PaTwC" id="7pQWC8SXruX" role="1aUNEU">
                            <node concept="3oM_SD" id="7pQWC8SXruY" role="1PaTwD">
                              <property role="3oM_SC" value="TODO" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrAw" role="1PaTwD">
                              <property role="3oM_SC" value="perhaps" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrA$" role="1PaTwD">
                              <property role="3oM_SC" value="look" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrAD" role="1PaTwD">
                              <property role="3oM_SC" value="into" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrAJ" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrAQ" role="1PaTwD">
                              <property role="3oM_SC" value="type" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrBA" role="1PaTwD">
                              <property role="3oM_SC" value="of" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrBJ" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrBT" role="1PaTwD">
                              <property role="3oM_SC" value="property" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrCo" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrDN" role="1PaTwD">
                              <property role="3oM_SC" value="authorize" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrEC" role="1PaTwD">
                              <property role="3oM_SC" value="it" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrEQ" role="1PaTwD">
                              <property role="3oM_SC" value="or" />
                            </node>
                            <node concept="3oM_SD" id="7pQWC8SXrF5" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7pQWC8SXqGf" role="3cqZAp">
                          <node concept="3clFbT" id="7pQWC8SXqRi" role="3cqZAk">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7pQWC8SXqeP" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7pQWC8SXqeQ" role="jymVt" />
                    <node concept="3clFb_" id="7pQWC8SXqeR" role="jymVt">
                      <property role="TrG5h" value="canClose" />
                      <node concept="3Tm1VV" id="7pQWC8SXqeS" role="1B3o_S" />
                      <node concept="10P_77" id="7pQWC8SXqeU" role="3clF45" />
                      <node concept="37vLTG" id="7pQWC8SXqeV" role="3clF46">
                        <property role="TrG5h" value="s" />
                        <node concept="3uibUv" id="7pQWC8SXqeW" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7pQWC8SXqeX" role="3clF47">
                        <node concept="3cpWs6" id="7pQWC8SXqRM" role="3cqZAp">
                          <node concept="3clFbT" id="7pQWC8SXqRN" role="3cqZAk">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7pQWC8SXqeZ" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7fzD_A4sStV" role="3cqZAp">
          <node concept="3clFbS" id="7fzD_A4sStW" role="3clFbx">
            <node concept="3cpWs6" id="7fzD_A4sStX" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7fzD_A4tnpT" role="3clFbw">
            <node concept="10Nm6u" id="7fzD_A4tnqH" role="3uHU7w" />
            <node concept="37vLTw" id="7fzD_A4tmXV" role="3uHU7B">
              <ref role="3cqZAo" node="7fzD_A4sStA" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7fzD_A4sSu9" role="3cqZAp" />
        <node concept="3clFbF" id="7fzD_A4sSua" role="3cqZAp">
          <node concept="2OqwBi" id="7fzD_A4sSub" role="3clFbG">
            <node concept="2OqwBi" id="7fzD_A4sSuc" role="2Oq$k0">
              <node concept="37vLTw" id="7fzD_A4sSud" role="2Oq$k0">
                <ref role="3cqZAo" node="7fzD_A4sStt" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="7fzD_A4sSue" role="2OqNvi">
                <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="7fzD_A4sSuf" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="7fzD_A4sSug" role="37wK5m">
                <node concept="3clFbS" id="7fzD_A4sSuh" role="1bW5cS">
                  <node concept="3clFbF" id="7fzD_A4tq7H" role="3cqZAp">
                    <node concept="2OqwBi" id="7fzD_A4tq7J" role="3clFbG">
                      <node concept="2OqwBi" id="7fzD_A4tq7K" role="2Oq$k0">
                        <node concept="2WthIp" id="7fzD_A4tq7L" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="7fzD_A4tq7M" role="2OqNvi">
                          <ref role="2WH_rO" node="7fzD_A4sSsS" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7fzD_A4tq7N" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                        <node concept="2OqwBi" id="7fzD_A4tq7O" role="37wK5m">
                          <node concept="2OqwBi" id="7fzD_A4tq7P" role="2Oq$k0">
                            <node concept="2WthIp" id="7fzD_A4tq7Q" role="2Oq$k0" />
                            <node concept="2BZ7hE" id="7fzD_A4tq7R" role="2OqNvi">
                              <ref role="2WH_rO" node="7fzD_A4sSth" resolve="role" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7fzD_A4tq7S" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7fzD_A4tq7T" role="37wK5m">
                          <ref role="3cqZAo" node="7fzD_A4sStA" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7fzD_A4sSuL" role="3cqZAp">
                    <node concept="10M0yZ" id="7fzD_A4sSuM" role="3cqZAk">
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7fzD_A4sSuN" role="tmbBb">
      <node concept="3clFbS" id="7fzD_A4sSuO" role="2VODD2">
        <node concept="3clFbF" id="7fzD_A4sSuR" role="3cqZAp">
          <node concept="2OqwBi" id="7fzD_A4sSuS" role="3clFbG">
            <node concept="2OqwBi" id="7fzD_A4sSuT" role="2Oq$k0">
              <node concept="tl45R" id="7fzD_A4sSuU" role="2Oq$k0" />
              <node concept="liA8E" id="7fzD_A4sSuV" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7fzD_A4sSuW" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="2hbxkgeRrMK" role="37wK5m">
                <node concept="Xl_RD" id="2hbxkgeRrrF" role="3uHU7w">
                  <property role="Xl_RC" value=")" />
                </node>
                <node concept="3cpWs3" id="2hbxkgeRrrt" role="3uHU7B">
                  <node concept="3cpWs3" id="2hbxkgeQWX6" role="3uHU7B">
                    <node concept="3cpWs3" id="7fzD_A4sSuX" role="3uHU7B">
                      <node concept="Xl_RD" id="2hbxkgeQXXb" role="3uHU7B">
                        <property role="Xl_RC" value="Set Property '" />
                      </node>
                      <node concept="2OqwBi" id="7fzD_A4sSuZ" role="3uHU7w">
                        <node concept="2OqwBi" id="7fzD_A4sSv0" role="2Oq$k0">
                          <node concept="2WthIp" id="7fzD_A4sSv1" role="2Oq$k0" />
                          <node concept="2BZ7hE" id="7fzD_A4sSv2" role="2OqNvi">
                            <ref role="2WH_rO" node="7fzD_A4sSth" resolve="role" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7fzD_A4sSv3" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2hbxkgeQWXk" role="3uHU7w">
                      <property role="Xl_RC" value="' (" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2hbxkgeR0Ez" role="3uHU7w">
                    <node concept="2OqwBi" id="2hbxkgeQZT5" role="2Oq$k0">
                      <node concept="2OqwBi" id="2hbxkgeQYPF" role="2Oq$k0">
                        <node concept="2WthIp" id="2hbxkgeQYtv" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="2hbxkgeQZeV" role="2OqNvi">
                          <ref role="2WH_rO" node="7fzD_A4sSth" resolve="role" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2hbxkgeR0gZ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SConceptFeature.getOwner()" resolve="getOwner" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2hbxkgeR15W" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7fzD_A4sSvG" role="3cqZAp">
          <node concept="3clFbT" id="7fzD_A4sSvH" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="1WY6nGAtCz9">
    <property role="3GE5qa" value="actions.physicalelements" />
    <property role="TrG5h" value="CloudActionsForPhysicalProjects" />
    <node concept="tT9cl" id="1WY6nGAtCza" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HGL" resolve="ProjectActions" />
      <ref role="2f8Tey" to="tprs:hyahB7P" resolve="projectNew" />
    </node>
    <node concept="ftmFs" id="1WY6nGAtCzb" role="ftER_">
      <node concept="tC5Ba" id="1WY6nGAtCzc" role="ftvYc">
        <property role="TrG5h" value="CloudActions" />
        <property role="1XlLyE" value="true" />
        <property role="2f7twF" value="Cloud Actions" />
        <node concept="2OiAzN" id="1WY6nGAtCzd" role="ftER_">
          <node concept="2OiTZ2" id="1WY6nGAtCze" role="2Oj6PV">
            <node concept="3clFbS" id="1WY6nGAtCzf" role="2VODD2">
              <node concept="2Gpval" id="1WY6nGAtCzg" role="3cqZAp">
                <node concept="2GrKxI" id="1WY6nGAtCzh" role="2Gsz3X">
                  <property role="TrG5h" value="treeInRepository" />
                </node>
                <node concept="2OqwBi" id="1WY6nGAtCzi" role="2GsD0m">
                  <node concept="2YIFZM" id="1WY6nGAtCzj" role="2Oq$k0">
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  </node>
                  <node concept="liA8E" id="3i6diw3p3b6" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:3i6diw3oJN7" resolve="getConnectedTreesInRepositories" />
                  </node>
                </node>
                <node concept="3clFbS" id="1WY6nGAtCzl" role="2LFqv$">
                  <node concept="3clFbF" id="3i6diw3pIv0" role="3cqZAp">
                    <node concept="2OqwBi" id="3i6diw3pI_c" role="3clFbG">
                      <node concept="2GrUjf" id="3i6diw3pIuY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1WY6nGAtCzh" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="3i6diw3pIJG" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:3i6diw3pFY0" resolve="processProjects" />
                        <node concept="1bVj0M" id="3i6diw3pIL3" role="37wK5m">
                          <node concept="3clFbS" id="3i6diw3pIL4" role="1bW5cS">
                            <node concept="2JFkCU" id="3i6diw3pIL5" role="3cqZAp">
                              <node concept="tCFHf" id="3i6diw3pIL6" role="2JFLmv">
                                <ref role="tCJdB" node="1WY6nGAtC_I" resolve="CopyAndSyncPhysicalProjectOnCloud" />
                                <node concept="2GrUjf" id="3i6diw3pIL7" role="2J__8u">
                                  <ref role="2Gs0qQ" node="1WY6nGAtCzh" resolve="treeInRepository" />
                                </node>
                                <node concept="37vLTw" id="3i6diw3pIL8" role="2J__8u">
                                  <ref role="3cqZAo" node="3i6diw3pIL9" resolve="pr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="3i6diw3pIL9" role="1bW2Oz">
                            <property role="TrG5h" value="pr" />
                            <node concept="3uibUv" id="3i6diw3pILa" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2JFkCU" id="4OH9Sxdj80f" role="3cqZAp">
                    <node concept="tCFHf" id="4OH9Sxdj80g" role="2JFLmv">
                      <ref role="tCJdB" node="1WY6nGAtC_I" resolve="CopyAndSyncPhysicalProjectOnCloud" />
                      <node concept="2GrUjf" id="4OH9Sxdj80h" role="2J__8u">
                        <ref role="2Gs0qQ" node="1WY6nGAtCzh" resolve="treeInRepository" />
                      </node>
                      <node concept="10Nm6u" id="4OH9Sxdj823" role="2J__8u" />
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
  <node concept="sE7Ow" id="4eX7sil7CCq">
    <property role="3GE5qa" value="actions.node.project" />
    <property role="TrG5h" value="AddProjectBinding" />
    <property role="2uzpH1" value="Bind to Current Project" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="4eX7sil8Pp2" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4eX7sil8Pp3" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4eX7sil7CCt" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="4eX7sil7CCu" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4eX7sil7CCv" role="tncku">
      <node concept="3clFbS" id="4eX7sil7CCw" role="2VODD2">
        <node concept="3cpWs8" id="4eX7sil7CCx" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CCy" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="4eX7sil7CCz" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="4eX7sil7CC$" role="33vP2m">
              <node concept="2OqwBi" id="4eX7sil7CC_" role="10QFUP">
                <node concept="2WthIp" id="4eX7sil7CCA" role="2Oq$k0" />
                <node concept="1DTwFV" id="4eX7sil7CCB" role="2OqNvi">
                  <ref role="2WH_rO" node="4eX7sil7CCt" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="4eX7sil7CCC" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="mLlB37s91R" role="3cqZAp">
          <node concept="3cpWsn" id="mLlB37s91S" role="3cpWs9">
            <property role="TrG5h" value="expectedProjectName" />
            <node concept="17QB3L" id="mLlB37s9hb" role="1tU5fm" />
            <node concept="2OqwBi" id="mLlB37s91T" role="33vP2m">
              <node concept="2OqwBi" id="mLlB37s91U" role="2Oq$k0">
                <node concept="37vLTw" id="mLlB37s91V" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eX7sil7CCy" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="mLlB37s91W" role="2OqNvi">
                  <ref role="37wK5l" to="um17:49CIzaqrc1R" resolve="getBranch" />
                </node>
              </node>
              <node concept="liA8E" id="mLlB37s91X" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="mLlB37s91Y" role="37wK5m">
                  <node concept="3clFbS" id="mLlB37s91Z" role="1bW5cS">
                    <node concept="3clFbF" id="mLlB37s920" role="3cqZAp">
                      <node concept="2OqwBi" id="mLlB37s921" role="3clFbG">
                        <node concept="2OqwBi" id="mLlB37s922" role="2Oq$k0">
                          <node concept="37vLTw" id="mLlB37s923" role="2Oq$k0">
                            <ref role="3cqZAo" node="4eX7sil7CCy" resolve="nodeTreeNode" />
                          </node>
                          <node concept="liA8E" id="mLlB37s924" role="2OqNvi">
                            <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="mLlB37s925" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                          <node concept="2OqwBi" id="mLlB37s926" role="37wK5m">
                            <node concept="355D3s" id="mLlB37s927" role="2Oq$k0">
                              <ref role="355D3t" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="liA8E" id="mLlB37s928" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
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
        <node concept="3clFbJ" id="mLlB37s9N6" role="3cqZAp">
          <node concept="3clFbS" id="mLlB37s9N8" role="3clFbx">
            <node concept="3cpWs8" id="mLlB37szFr" role="3cqZAp">
              <node concept="3cpWsn" id="mLlB37szFs" role="3cpWs9">
                <property role="TrG5h" value="dialogResult" />
                <node concept="10Oyi0" id="mLlB37szvm" role="1tU5fm" />
                <node concept="2YIFZM" id="mLlB37szFt" role="33vP2m">
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
                  <node concept="2OqwBi" id="mLlB37szFu" role="37wK5m">
                    <node concept="2OqwBi" id="mLlB37szFv" role="2Oq$k0">
                      <node concept="2WthIp" id="mLlB37szFw" role="2Oq$k0" />
                      <node concept="1DTwFV" id="mLlB37szFx" role="2OqNvi">
                        <ref role="2WH_rO" node="4eX7sil8Pp2" resolve="project" />
                      </node>
                    </node>
                    <node concept="liA8E" id="mLlB37szFy" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="mLlB37szFz" role="37wK5m">
                    <node concept="Xl_RD" id="mLlB37szF$" role="3uHU7w">
                      <property role="Xl_RC" value="'?" />
                    </node>
                    <node concept="3cpWs3" id="mLlB37szF_" role="3uHU7B">
                      <node concept="3cpWs3" id="mLlB37szFA" role="3uHU7B">
                        <node concept="Xl_RD" id="mLlB37szFB" role="3uHU7w">
                          <property role="Xl_RC" value="' to '" />
                        </node>
                        <node concept="3cpWs3" id="mLlB37szFC" role="3uHU7B">
                          <node concept="Xl_RD" id="mLlB37szFD" role="3uHU7B">
                            <property role="Xl_RC" value="Project names don't match. Do you want to bind '" />
                          </node>
                          <node concept="37vLTw" id="mLlB37szFE" role="3uHU7w">
                            <ref role="3cqZAo" node="mLlB37s91S" resolve="expectedProjectName" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="mLlB37szFF" role="3uHU7w">
                        <node concept="2OqwBi" id="mLlB37szFG" role="2Oq$k0">
                          <node concept="2WthIp" id="mLlB37szFH" role="2Oq$k0" />
                          <node concept="1DTwFV" id="mLlB37szFI" role="2OqNvi">
                            <ref role="2WH_rO" node="4eX7sil8Pp2" resolve="project" />
                          </node>
                        </node>
                        <node concept="liA8E" id="mLlB37szFJ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~MPSProject.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="mLlB37szFK" role="37wK5m">
                    <property role="Xl_RC" value="Bind Project" />
                  </node>
                  <node concept="10Nm6u" id="mLlB37szFL" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="mLlB37s$1A" role="3cqZAp">
              <node concept="3clFbS" id="mLlB37s$1C" role="3clFbx">
                <node concept="3cpWs6" id="mLlB37sAAy" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="mLlB37s_dD" role="3clFbw">
                <node concept="10M0yZ" id="mLlB37sA6I" role="3uHU7w">
                  <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
                  <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                </node>
                <node concept="37vLTw" id="mLlB37s$nF" role="3uHU7B">
                  <ref role="3cqZAo" node="mLlB37szFs" resolve="dialogResult" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="mLlB37saoZ" role="3clFbw">
            <node concept="2OqwBi" id="mLlB37sbqA" role="3uHU7w">
              <node concept="2OqwBi" id="mLlB37save" role="2Oq$k0">
                <node concept="2WthIp" id="mLlB37savh" role="2Oq$k0" />
                <node concept="1DTwFV" id="mLlB37savj" role="2OqNvi">
                  <ref role="2WH_rO" node="4eX7sil8Pp2" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="mLlB37scxK" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="37vLTw" id="mLlB37s9VZ" role="3uHU7B">
              <ref role="3cqZAo" node="mLlB37s91S" resolve="expectedProjectName" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eX7sil7CCD" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CCE" role="3cpWs9">
            <property role="TrG5h" value="cloudRepository" />
            <node concept="3uibUv" id="4eX7sil7CCF" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="4eX7sil7CCG" role="33vP2m">
              <node concept="2OqwBi" id="4eX7sil7CCH" role="2Oq$k0">
                <node concept="37vLTw" id="4eX7sil7CCI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eX7sil7CCy" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="4eX7sil7CCJ" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="4eX7sil7CCK" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WTCgk" resolve="CloudRepositoryTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4eX7sil7CCL" role="2OqNvi">
                <ref role="37wK5l" to="um17:6aRQr1Xc29I" resolve="getCloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eX7sil7CCM" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CCN" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="4eX7sil7CCO" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="4eX7sil7CCP" role="33vP2m">
              <node concept="2OqwBi" id="4eX7sil7CCQ" role="2Oq$k0">
                <node concept="37vLTw" id="4eX7sil7CCR" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eX7sil7CCy" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="4eX7sil7CCS" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="4eX7sil7CCT" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4eX7sil7CCU" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$XCSQOnnq" role="3cqZAp">
          <node concept="3cpWsn" id="P$XCSQOnnr" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="P$XCSQOnns" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="P$XCSQOnF9" role="33vP2m">
              <node concept="1pGfFk" id="P$XCSQOnEY" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="P$XCSQOnMX" role="37wK5m">
                  <ref role="3cqZAo" node="4eX7sil7CCE" resolve="cloudRepository" />
                </node>
                <node concept="37vLTw" id="P$XCSQOnV1" role="37wK5m">
                  <ref role="3cqZAo" node="4eX7sil7CCN" resolve="treeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="P$XCSQOsHM" role="3cqZAp">
          <node concept="3cpWsn" id="P$XCSQOsHP" role="3cpWs9">
            <property role="TrG5h" value="cloudProjectId" />
            <node concept="3cpWsb" id="P$XCSQOsHK" role="1tU5fm" />
            <node concept="2OqwBi" id="P$XCSQOtfL" role="33vP2m">
              <node concept="1eOMI4" id="P$XCSQOtfM" role="2Oq$k0">
                <node concept="10QFUN" id="P$XCSQOtfN" role="1eOMHV">
                  <node concept="2OqwBi" id="P$XCSQOtfO" role="10QFUP">
                    <node concept="37vLTw" id="P$XCSQOtfP" role="2Oq$k0">
                      <ref role="3cqZAo" node="4eX7sil7CCy" resolve="nodeTreeNode" />
                    </node>
                    <node concept="liA8E" id="P$XCSQOtfQ" role="2OqNvi">
                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="P$XCSQOtfR" role="10QFUM">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="P$XCSQOtfS" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P$XCSQOeee" role="3cqZAp">
          <node concept="2OqwBi" id="P$XCSQOlCY" role="3clFbG">
            <node concept="2ShNRf" id="P$XCSQOeea" role="2Oq$k0">
              <node concept="HV5vD" id="P$XCSQOlsj" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="P$XCSQOm8e" role="2OqNvi">
              <ref role="37wK5l" to="csg2:P$XCSQNC_Y" resolve="bindCloudProjectToMpsProject" />
              <node concept="37vLTw" id="P$XCSQOobT" role="37wK5m">
                <ref role="3cqZAo" node="P$XCSQOnnr" resolve="treeInRepository" />
              </node>
              <node concept="37vLTw" id="P$XCSQOtPO" role="37wK5m">
                <ref role="3cqZAo" node="P$XCSQOsHP" resolve="cloudProjectId" />
              </node>
              <node concept="2OqwBi" id="P$XCSQOu6S" role="37wK5m">
                <node concept="2WthIp" id="P$XCSQOu6V" role="2Oq$k0" />
                <node concept="1DTwFV" id="P$XCSQOu6X" role="2OqNvi">
                  <ref role="2WH_rO" node="4eX7sil8Pp2" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="4eX7sil7CDa" role="tmbBb">
      <node concept="3clFbS" id="4eX7sil7CDb" role="2VODD2">
        <node concept="3clFbJ" id="1J2iDZzAUup" role="3cqZAp">
          <node concept="3clFbS" id="1J2iDZzAUur" role="3clFbx">
            <node concept="3cpWs6" id="1J2iDZzAWu1" role="3cqZAp">
              <node concept="3clFbT" id="1J2iDZzAWuk" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1J2iDZzAU_z" role="3clFbw">
            <node concept="2OqwBi" id="1J2iDZzAVtA" role="3fr31v">
              <node concept="2OqwBi" id="1J2iDZzAUFL" role="2Oq$k0">
                <node concept="2WthIp" id="1J2iDZzAUFO" role="2Oq$k0" />
                <node concept="1DTwFV" id="1J2iDZzAUFQ" role="2OqNvi">
                  <ref role="2WH_rO" node="4eX7sil7CCt" resolve="treeNode" />
                </node>
              </node>
              <node concept="AQDAd" id="1J2iDZzAWjZ" role="2OqNvi">
                <ref role="37wK5l" to="um17:1J2iDZzAPAY" resolve="isProjectNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eX7sil7CDc" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CDd" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="4eX7sil7CDe" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="0kSF2" id="4eX7sil7CDf" role="33vP2m">
              <node concept="3uibUv" id="4eX7sil7CDg" role="0kSFW">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
              <node concept="2OqwBi" id="4eX7sil7CDh" role="0kSFX">
                <node concept="2WthIp" id="4eX7sil7CDi" role="2Oq$k0" />
                <node concept="1DTwFV" id="4eX7sil7CDj" role="2OqNvi">
                  <ref role="2WH_rO" node="4eX7sil7CCt" resolve="treeNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eX7sil7CDM" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CDN" role="3cpWs9">
            <property role="TrG5h" value="nodeId" />
            <node concept="3cpWsb" id="4eX7sil7CDO" role="1tU5fm" />
            <node concept="2OqwBi" id="4eX7sil7CDP" role="33vP2m">
              <node concept="1eOMI4" id="4eX7sil7CDQ" role="2Oq$k0">
                <node concept="10QFUN" id="4eX7sil7CDR" role="1eOMHV">
                  <node concept="3uibUv" id="4eX7sil7CDS" role="10QFUM">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                  <node concept="2OqwBi" id="4eX7sil7CDT" role="10QFUP">
                    <node concept="37vLTw" id="4eX7sil7CDU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4eX7sil7CDd" resolve="nodeTreeNode" />
                    </node>
                    <node concept="liA8E" id="4eX7sil7CDV" role="2OqNvi">
                      <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4eX7sil7CDW" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eX7sil7CDX" role="3cqZAp">
          <node concept="3cpWsn" id="4eX7sil7CDY" role="3cpWs9">
            <property role="TrG5h" value="treeId" />
            <node concept="3uibUv" id="4eX7sil7CDZ" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2OqwBi" id="4eX7sil7CE0" role="33vP2m">
              <node concept="2OqwBi" id="4eX7sil7CE1" role="2Oq$k0">
                <node concept="37vLTw" id="4eX7sil7CE2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eX7sil7CDd" resolve="nodeTreeNode" />
                </node>
                <node concept="liA8E" id="4eX7sil7CE3" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAncestor(java.lang.Class)" resolve="getAncestor" />
                  <node concept="3VsKOn" id="4eX7sil7CE4" role="37wK5m">
                    <ref role="3VsUkX" to="um17:6aRQr1WUXn6" resolve="CloudTreeTreeNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4eX7sil7CE5" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBgmbf" resolve="getTreeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4eX7sil7CE6" role="3cqZAp">
          <node concept="3clFbS" id="4eX7sil7CE7" role="3clFbx">
            <node concept="3cpWs6" id="4eX7sil7CE8" role="3cqZAp">
              <node concept="3clFbT" id="4eX7sil7CE9" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="4eX7sil7CEa" role="3clFbw">
            <node concept="2OqwBi" id="4eX7sil7CEb" role="2Oq$k0">
              <node concept="37vLTw" id="4eX7sil7CEc" role="2Oq$k0">
                <ref role="3cqZAo" node="4eX7sil7CDd" resolve="nodeTreeNode" />
              </node>
              <node concept="liA8E" id="4eX7sil7CEd" role="2OqNvi">
                <ref role="37wK5l" to="um17:EMWAvBfk$Y" resolve="getCloudRepository" />
              </node>
            </node>
            <node concept="liA8E" id="4eX7sil7CEe" role="2OqNvi">
              <ref role="37wK5l" to="csg2:4eX7sil8qhJ" resolve="hasProjectBinding" />
              <node concept="37vLTw" id="4eX7sil7CEf" role="37wK5m">
                <ref role="3cqZAo" node="4eX7sil7CDY" resolve="treeId" />
              </node>
              <node concept="37vLTw" id="4eX7sil7CEg" role="37wK5m">
                <ref role="3cqZAo" node="4eX7sil7CDN" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4eX7sil7CEh" role="3cqZAp">
          <node concept="3clFbT" id="4eX7sil7CEi" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3rVtQmcjXlI">
    <property role="3GE5qa" value="actions.node" />
    <property role="TrG5h" value="ShowProperties" />
    <property role="2uzpH1" value="Show Properties" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="1DS2jV" id="3rVtQmcjXmS" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3rVtQmcjXmT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3rVtQmcjXmU" role="1NuT2Z">
      <property role="TrG5h" value="treeNode" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="3rVtQmcjXmV" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3rVtQmcjXmW" role="tncku">
      <node concept="3clFbS" id="3rVtQmcjXmX" role="2VODD2">
        <node concept="3cpWs8" id="3rVtQmcjXmY" role="3cqZAp">
          <node concept="3cpWsn" id="3rVtQmcjXmZ" role="3cpWs9">
            <property role="TrG5h" value="nodeTreeNode" />
            <node concept="3uibUv" id="3rVtQmcjXn0" role="1tU5fm">
              <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
            </node>
            <node concept="10QFUN" id="3rVtQmcjXn1" role="33vP2m">
              <node concept="2OqwBi" id="3rVtQmcjXn2" role="10QFUP">
                <node concept="2WthIp" id="3rVtQmcjXn3" role="2Oq$k0" />
                <node concept="1DTwFV" id="3rVtQmcjXn4" role="2OqNvi">
                  <ref role="2WH_rO" node="3rVtQmcjXmU" resolve="treeNode" />
                </node>
              </node>
              <node concept="3uibUv" id="3rVtQmcjXn5" role="10QFUM">
                <ref role="3uigEE" to="um17:49CIzapIBwH" resolve="CloudNodeTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3rVtQmcjXn6" role="3cqZAp">
          <node concept="3cpWsn" id="3rVtQmcjXn7" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="3rVtQmcjXn8" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2OqwBi" id="3rVtQmcjXn9" role="33vP2m">
              <node concept="37vLTw" id="3rVtQmcjXna" role="2Oq$k0">
                <ref role="3cqZAo" node="3rVtQmcjXmZ" resolve="nodeTreeNode" />
              </node>
              <node concept="AQDAd" id="3rVtQmcjXnb" role="2OqNvi">
                <ref role="37wK5l" to="um17:Nm_qC27bd8" resolve="getTreeInRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3rVtQmcjXnc" role="3cqZAp">
          <node concept="1PaTwC" id="3rVtQmcjXnd" role="1aUNEU">
            <node concept="3oM_SD" id="3rVtQmcjXne" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnf" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXng" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnh" role="1PaTwD">
              <property role="3oM_SC" value="know" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXni" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnj" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnk" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnl" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnm" role="1PaTwD">
              <property role="3oM_SC" value="look" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnn" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXno" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3rVtQmcjXnp" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3rVtQmcjXnq" role="3cqZAp" />
        <node concept="3cpWs8" id="3rVtQmckW5K" role="3cqZAp">
          <node concept="3cpWsn" id="3rVtQmckW5L" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="3rVtQmckW5M" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="3rVtQmckWwT" role="33vP2m">
              <node concept="1pGfFk" id="3rVtQmckWwI" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3rVtQmcjXnr" role="3cqZAp">
          <node concept="2OqwBi" id="3rVtQmcjXns" role="3clFbG">
            <node concept="37vLTw" id="3rVtQmcjXnt" role="2Oq$k0">
              <ref role="3cqZAo" node="3rVtQmcjXn7" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="3rVtQmcjXnu" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3i6diw3mRQm" resolve="runRead" />
              <node concept="1bVj0M" id="3rVtQmcjXnv" role="37wK5m">
                <node concept="3clFbS" id="3rVtQmcjXnw" role="1bW5cS">
                  <node concept="3cpWs8" id="3rVtQmck$zi" role="3cqZAp">
                    <node concept="3cpWsn" id="3rVtQmck$zj" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3uibUv" id="3rVtQmck$zk" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="3rVtQmckz_S" role="33vP2m">
                        <node concept="37vLTw" id="3rVtQmckz49" role="2Oq$k0">
                          <ref role="3cqZAo" node="3rVtQmcjXmZ" resolve="nodeTreeNode" />
                        </node>
                        <node concept="liA8E" id="3rVtQmck$tD" role="2OqNvi">
                          <ref role="37wK5l" to="um17:49CIzaqf7rw" resolve="getNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="3rVtQmckUH3" role="3cqZAp">
                    <node concept="2GrKxI" id="3rVtQmckUH5" role="2Gsz3X">
                      <property role="TrG5h" value="property" />
                    </node>
                    <node concept="3clFbS" id="3rVtQmckUH9" role="2LFqv$">
                      <node concept="3clFbF" id="3rVtQmckWEa" role="3cqZAp">
                        <node concept="2OqwBi" id="3rVtQmckX6K" role="3clFbG">
                          <node concept="37vLTw" id="3rVtQmckWE9" role="2Oq$k0">
                            <ref role="3cqZAo" node="3rVtQmckW5L" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="3rVtQmckXJ4" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="2OqwBi" id="67QRd0UD16Y" role="37wK5m">
                              <node concept="2GrUjf" id="3rVtQmckYBW" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3rVtQmckUH5" resolve="property" />
                              </node>
                              <node concept="liA8E" id="67QRd0UD1V0" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~IProperty.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3rVtQmckYZZ" role="3cqZAp">
                        <node concept="2OqwBi" id="3rVtQmckZwj" role="3clFbG">
                          <node concept="37vLTw" id="3rVtQmckYZX" role="2Oq$k0">
                            <ref role="3cqZAo" node="3rVtQmckW5L" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="3rVtQmcl09r" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="Xl_RD" id="3rVtQmcl0iR" role="37wK5m">
                              <property role="Xl_RC" value=" = " />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3rVtQmcl1wM" role="3cqZAp">
                        <node concept="2OqwBi" id="3rVtQmcl2na" role="3clFbG">
                          <node concept="37vLTw" id="3rVtQmcl1wK" role="2Oq$k0">
                            <ref role="3cqZAo" node="3rVtQmckW5L" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="3rVtQmcl2TY" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="2OqwBi" id="3rVtQmcl3xq" role="37wK5m">
                              <node concept="37vLTw" id="3rVtQmcl3jQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3rVtQmck$zj" resolve="node" />
                              </node>
                              <node concept="liA8E" id="3rVtQmcl42S" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                <node concept="2OqwBi" id="3rVtQmcl5dV" role="37wK5m">
                                  <node concept="2GrUjf" id="3rVtQmcl4Nv" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="3rVtQmckUH5" resolve="property" />
                                  </node>
                                  <node concept="liA8E" id="3rVtQmcl62b" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~IProperty.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3rVtQmcl6nA" role="3cqZAp">
                        <node concept="2OqwBi" id="3rVtQmcl7ir" role="3clFbG">
                          <node concept="37vLTw" id="3rVtQmcl6n$" role="2Oq$k0">
                            <ref role="3cqZAo" node="3rVtQmckW5L" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="3rVtQmcl8iH" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="Xl_RD" id="3rVtQmcl8x_" role="37wK5m">
                              <property role="Xl_RC" value="\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3rVtQmckVEq" role="2GsD0m">
                      <node concept="2OqwBi" id="3rVtQmckVEr" role="2Oq$k0">
                        <node concept="37vLTw" id="3rVtQmckVEs" role="2Oq$k0">
                          <ref role="3cqZAo" node="3rVtQmck$zj" resolve="node" />
                        </node>
                        <node concept="liA8E" id="3rVtQmckVEt" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3rVtQmckVEu" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IConcept.getProperties()" resolve="getProperties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3rVtQmclbTy" role="3cqZAp">
          <node concept="2YIFZM" id="3rVtQmclcvl" role="3clFbG">
            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
            <ref role="37wK5l" to="jkm4:~Messages.showMessageDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showMessageDialog" />
            <node concept="2OqwBi" id="3rVtQmcld3u" role="37wK5m">
              <node concept="2WthIp" id="3rVtQmcld3x" role="2Oq$k0" />
              <node concept="1DTwFV" id="3rVtQmcld3z" role="2OqNvi">
                <ref role="2WH_rO" node="3rVtQmcjXmS" resolve="project" />
              </node>
            </node>
            <node concept="2OqwBi" id="3rVtQmcldue" role="37wK5m">
              <node concept="37vLTw" id="3rVtQmcld6w" role="2Oq$k0">
                <ref role="3cqZAo" node="3rVtQmckW5L" resolve="sb" />
              </node>
              <node concept="liA8E" id="3rVtQmcldZu" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
            <node concept="Xl_RD" id="3rVtQmcleHs" role="37wK5m">
              <property role="Xl_RC" value="Properties" />
            </node>
            <node concept="10Nm6u" id="3rVtQmclfFf" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3TbkWOkVEMX" role="tmbBb">
      <node concept="3clFbS" id="3TbkWOkVEMY" role="2VODD2">
        <node concept="3clFbF" id="3TbkWOkVFj5" role="3cqZAp">
          <node concept="2OqwBi" id="3TbkWOkVFYP" role="3clFbG">
            <node concept="2OqwBi" id="3TbkWOkVFiZ" role="2Oq$k0">
              <node concept="2WthIp" id="3TbkWOkVFj2" role="2Oq$k0" />
              <node concept="1DTwFV" id="3TbkWOkVFj4" role="2OqNvi">
                <ref role="2WH_rO" node="3rVtQmcjXmU" resolve="treeNode" />
              </node>
            </node>
            <node concept="AQDAd" id="3TbkWOkVGvV" role="2OqNvi">
              <ref role="37wK5l" to="um17:5iCdLF2lqde" resolve="isProperNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="5Le8ZRJdWor">
    <property role="TrG5h" value="EModelixExecutionMode" />
    <node concept="QsSxf" id="5Le8ZRJdWMd" role="Qtgdg">
      <property role="TrG5h" value="DEFAULT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5Le8ZRJdWrr" role="Qtgdg">
      <property role="TrG5h" value="INTEGRATION_TESTS" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5Le8ZRJe0YA" role="Qtgdg">
      <property role="TrG5h" value="MODEL_EXPORT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5Le8ZRJdWvX" role="Qtgdg">
      <property role="TrG5h" value="CLUSTER" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="5Le8ZRJdWos" role="1B3o_S" />
  </node>
</model>

