<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c65aa0cf-b22b-4cca-bd88-3210b1c2f55f(de.q60.mps.web.model.operations)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
    <import index="mjcn" ref="r:89ac1ee0-92ac-49e1-83e6-167854d2040e(de.q60.mps.shadowmodels.runtime.model)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" />
    <import index="wy2b" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.google.gson(de.q60.mps.web.lib/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="3HP615" id="1U0efzLyBFz">
    <property role="TrG5h" value="IOperation" />
    <node concept="3clFb_" id="1U0efzLyR7X" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLyR8U" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLyR9R" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLyRbw" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLyR80" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLyR81" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1U0efzLyRc6" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLyRdg" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLyRdD" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLyRcU" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLyRc9" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLyRca" role="3clF47" />
      <node concept="P$JXv" id="1U0efzLBUrZ" role="lGtFl">
        <node concept="TZ5HA" id="1U0efzLBUs0" role="TZ5H$">
          <node concept="1dT_AC" id="1U0efzLBUs1" role="1dT_Ay">
            <property role="1dT_AB" value="The 'previous' operation is the one that is inserted before this operation" />
          </node>
        </node>
        <node concept="TZ5HA" id="1U0efzLBUtl" role="TZ5H$">
          <node concept="1dT_AC" id="1U0efzLBUtm" role="1dT_Ay">
            <property role="1dT_AB" value="in the history of operations applied to the model." />
          </node>
        </node>
        <node concept="TZ5HA" id="1U0efzLBUtX" role="TZ5H$">
          <node concept="1dT_AC" id="1U0efzLBUtY" role="1dT_Ay">
            <property role="1dT_AB" value="'this' operation was created for a version that doesn't have 'previous' applied and now" />
          </node>
        </node>
        <node concept="TZ5HA" id="1U0efzLBUv3" role="TZ5H$">
          <node concept="1dT_AC" id="1U0efzLBUv4" role="1dT_Ay">
            <property role="1dT_AB" value="'this' needs to be replaced with an operation that applies the same intented change" />
          </node>
        </node>
        <node concept="TZ5HA" id="1U0efzLBUvt" role="TZ5H$">
          <node concept="1dT_AC" id="1U0efzLBUvu" role="1dT_Ay">
            <property role="1dT_AB" value="on a model that was modifed by 'previous' in the mean time." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzLyBF$" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1U0efzLyBFX">
    <property role="TrG5h" value="IAppliedOperation" />
    <node concept="3clFb_" id="1U0efzLyRfF" role="jymVt">
      <property role="TrG5h" value="getOriginalOp" />
      <node concept="3uibUv" id="1U0efzLyRgC" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLyRfI" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLyRfJ" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1U0efzLBrQZ" role="jymVt">
      <property role="TrG5h" value="invert" />
      <node concept="3uibUv" id="1U0efzLBrU7" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLBrR2" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBrR3" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1U0efzLyBFY" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1U0efzL$1zV">
    <property role="TrG5h" value="SetPropertyOp" />
    <node concept="2tJIrI" id="1U0efzLA380" role="jymVt" />
    <node concept="312cEg" id="1U0efzLA4gU" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwJb8r" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLA4gX" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLA4gY" role="jymVt">
      <property role="TrG5h" value="role" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwJdat" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLA4h1" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLA4h2" role="jymVt">
      <property role="TrG5h" value="value" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwJdNh" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLA4h5" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1U0efzLA3bJ" role="jymVt" />
    <node concept="3clFbW" id="1U0efzLA4sS" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLA4sT" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLA4sU" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLA4sW" role="3clF47">
        <node concept="3clFbF" id="1U0efzLA4t0" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLA4t2" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLA4t6" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLA4t7" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLA4t8" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLA4gU" resolve="nodeId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLA4t9" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLA4sZ" resolve="nodeId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLA4tc" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLA4te" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLA4ti" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLA4tj" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLA4tk" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLA4gY" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLA4tl" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLA4tb" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLA4to" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLA4tq" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLA4tu" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLA4tv" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLA4tw" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLA4h2" resolve="value" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLA4tx" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLA4tn" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLA4sZ" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzLA4sY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLA4tb" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzLA4ta" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLA4tn" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1U0efzLA4tm" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLA3fv" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$1Cy" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzL$1Cz" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzL$1C$" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzL$1C_" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$1CA" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$1CD" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLA95$" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLA95_" role="3cpWs9">
            <property role="TrG5h" value="oldValue" />
            <node concept="17QB3L" id="1U0efzLA95y" role="1tU5fm" />
            <node concept="2OqwBi" id="1U0efzLA95A" role="33vP2m">
              <node concept="37vLTw" id="1U0efzLA95B" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzL$1Cz" resolve="transaction" />
              </node>
              <node concept="liA8E" id="1U0efzLA95C" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4_SQzDOeddg" resolve="getProperty" />
                <node concept="37vLTw" id="1U0efzLA95D" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLA4gU" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="1U0efzLA95E" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLA4gY" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzL$1FH" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$1PZ" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$1FG" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$1Cz" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL$20$" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOedJ8" resolve="setProperty" />
              <node concept="37vLTw" id="1U0efzLA4QT" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLA4gU" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="1U0efzLA58_" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLA4gY" resolve="role" />
              </node>
              <node concept="37vLTw" id="1U0efzLA5rV" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLA4h2" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLA7QZ" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzLA9Go" role="3cqZAk">
            <node concept="1pGfFk" id="1U0efzLAa0b" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzLA7jo" resolve="SetPropertyOp.Applied" />
              <node concept="37vLTw" id="1U0efzLAafn" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLA95_" resolve="oldValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$1CE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAaJz" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAasr" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLAass" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLAast" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLAasu" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLAasv" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAasy" role="3clF47">
        <node concept="3clFbJ" id="1U0efzLADLC" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLADLE" role="3clFbx">
            <node concept="3cpWs6" id="1U0efzLLZDK" role="3cqZAp">
              <node concept="Xjq3P" id="1U0efzLLZF$" role="3cqZAk" />
            </node>
          </node>
          <node concept="2ZW3vV" id="1U0efzLAE4P" role="3clFbw">
            <node concept="3uibUv" id="1U0efzLAJ6E" role="2ZW6by">
              <ref role="3uigEE" node="1U0efzL$1zV" resolve="SetPropertyOp" />
            </node>
            <node concept="37vLTw" id="1U0efzLADNF" role="2ZW6bz">
              <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
            </node>
          </node>
          <node concept="9aQIb" id="1U0efzLAEcN" role="9aQIa">
            <node concept="3clFbS" id="1U0efzLAEcO" role="9aQI4">
              <node concept="YS8fn" id="1U0efzLAEhb" role="3cqZAp">
                <node concept="2ShNRf" id="1U0efzLAEiX" role="YScLw">
                  <node concept="1pGfFk" id="1U0efzLAEsk" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="1U0efzLAFjQ" role="37wK5m">
                      <node concept="2OqwBi" id="1U0efzLAGN0" role="3uHU7w">
                        <node concept="2OqwBi" id="1U0efzLAFGA" role="2Oq$k0">
                          <node concept="37vLTw" id="1U0efzLAFnx" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
                          </node>
                          <node concept="liA8E" id="1U0efzLAG6Q" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1U0efzLAIQ_" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1U0efzLAEvq" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown type: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLM095" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLM0XP" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLM1bu" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAp8F" resolve="SetReferenceOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLM0AR" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLM097" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLM1dk" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLM1d$" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLM1fj" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLM26L" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLM2ks" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLM1H$" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLM1fl" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLM2mk" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLM2ob" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLM2PX" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLM3HC" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLM3Vl" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLM3kp" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLM2PZ" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLM6$6" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLM6$7" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLM6$3" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLM6$8" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLM6$9" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLM6$a" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLM6$b" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1U0efzLM4t6" role="3cqZAp">
                <node concept="3clFbS" id="1U0efzLM4t8" role="3clFbx">
                  <node concept="3cpWs6" id="1U0efzLMdK2" role="3cqZAp">
                    <node concept="2ShNRf" id="1U0efzLMdLY" role="3cqZAk">
                      <node concept="HV5vD" id="1U0efzLMeAg" role="2ShVmc">
                        <ref role="HV5vE" node="1U0efzLBr7u" resolve="NoOp" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1U0efzLMbBc" role="3clFbw">
                  <node concept="37vLTw" id="1U0efzLM7yw" role="3uHU7B">
                    <ref role="3cqZAo" node="1U0efzLA4gU" resolve="nodeId" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLM92N" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLM8zB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLM6$7" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="4jf43puSo3d" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1U0efzLMcHN" role="9aQIa">
                  <node concept="3clFbS" id="1U0efzLMcHO" role="9aQI4">
                    <node concept="3cpWs6" id="1U0efzLM3Xf" role="3cqZAp">
                      <node concept="Xjq3P" id="1U0efzLM3Xv" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLMg4C" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLMhfY" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLMhvG" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLMgOI" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAass" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLMg4E" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLMhz_" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLMhBt" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLAasz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLA5BK" role="jymVt" />
    <node concept="3clFb_" id="plPun87_Vo" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun87_Vp" role="3clF45" />
      <node concept="3Tm1VV" id="plPun87_Vq" role="1B3o_S" />
      <node concept="3clFbS" id="plPun87_Vr" role="3clF47">
        <node concept="3clFbF" id="plPun87IjH" role="3cqZAp">
          <node concept="2YIFZM" id="plPun87IjI" role="3clFbG">
            <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
            <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="plPun87IjJ" role="37wK5m">
              <property role="Xl_RC" value="SetPropertOp {0}.{1} = {2}" />
            </node>
            <node concept="2YIFZM" id="plPun8iros" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8irot" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLA4gU" resolve="nodeId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87Kpe" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLA4gY" resolve="role" />
            </node>
            <node concept="37vLTw" id="plPun87KEs" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLA4h2" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="plPun87_Vt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun87DkC" role="jymVt" />
    <node concept="312cEu" id="1U0efzLA6RN" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="1U0efzLA7gf" role="jymVt">
        <property role="TrG5h" value="oldValue" />
        <node concept="3Tm6S6" id="1U0efzLA7gg" role="1B3o_S" />
        <node concept="17QB3L" id="1U0efzLA7iq" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="1U0efzLA77P" role="jymVt" />
      <node concept="3Tm1VV" id="1U0efzLA6RO" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLA7bS" role="EKbjA">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3clFbW" id="1U0efzLA7jo" role="jymVt">
        <node concept="3cqZAl" id="1U0efzLA7jp" role="3clF45" />
        <node concept="3Tm1VV" id="1U0efzLA7jq" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLA7js" role="3clF47">
          <node concept="3clFbF" id="1U0efzLA7jw" role="3cqZAp">
            <node concept="37vLTI" id="1U0efzLA7jy" role="3clFbG">
              <node concept="2OqwBi" id="1U0efzLA7jA" role="37vLTJ">
                <node concept="Xjq3P" id="1U0efzLA7jB" role="2Oq$k0" />
                <node concept="2OwXpG" id="1U0efzLA7jC" role="2OqNvi">
                  <ref role="2Oxat5" node="1U0efzLA7gf" resolve="oldValue" />
                </node>
              </node>
              <node concept="37vLTw" id="1U0efzLA7jD" role="37vLTx">
                <ref role="3cqZAo" node="1U0efzLA7jv" resolve="oldValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1U0efzLA7jv" role="3clF46">
          <property role="TrG5h" value="oldValue" />
          <node concept="17QB3L" id="1U0efzLA7ju" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLA7nI" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLA7rj" role="jymVt">
        <property role="TrG5h" value="getOriginalOp" />
        <node concept="3uibUv" id="1U0efzLA7rk" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLA7rl" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLA7rn" role="3clF47">
          <node concept="3clFbF" id="1U0efzLA7yT" role="3cqZAp">
            <node concept="Xjq3P" id="1U0efzLA7yS" role="3clFbG">
              <ref role="1HBi2w" node="1U0efzL$1zV" resolve="SetPropertyOp" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLA7ro" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLBsL6" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLBt9i" role="jymVt">
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="1U0efzLBt9j" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLBt9k" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLBt9m" role="3clF47">
          <node concept="3clFbF" id="1U0efzLBuUm" role="3cqZAp">
            <node concept="2ShNRf" id="1U0efzLBuUk" role="3clFbG">
              <node concept="1pGfFk" id="1U0efzLBv2o" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLA4sS" resolve="SetPropertyOp" />
                <node concept="37vLTw" id="1U0efzLBv7J" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLA4gU" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="1U0efzLBvs8" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLA4gY" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLBvMw" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLA7gf" resolve="oldValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLBt9n" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzL$1zW" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzL$1Af" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzL$1$h">
    <property role="TrG5h" value="AbstractOperation" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="1U0efzL$1$i" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzL$1AN" role="EKbjA">
      <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
    </node>
    <node concept="3clFbW" id="1U0efzLA4pu" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLA4pv" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLA4pw" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLA4py" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzL$23a">
    <property role="TrG5h" value="OTBranch" />
    <node concept="2tJIrI" id="1U0efzL$24k" role="jymVt" />
    <node concept="312cEg" id="1U0efzL$2zM" role="jymVt">
      <property role="TrG5h" value="branch" />
      <node concept="3Tm6S6" id="1U0efzL$2zN" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzL$2Jl" role="1tU5fm">
        <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
      </node>
    </node>
    <node concept="312cEg" id="1U0efzLOdDx" role="jymVt">
      <property role="TrG5h" value="idGenerator" />
      <node concept="3Tm6S6" id="1U0efzLOdDy" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLOdJ4" role="1tU5fm">
        <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
      </node>
    </node>
    <node concept="312cEg" id="plPun8b5Qr" role="jymVt">
      <property role="TrG5h" value="operations" />
      <node concept="3Tm6S6" id="plPun8b5Qs" role="1B3o_S" />
      <node concept="_YKpA" id="plPun8b6gL" role="1tU5fm">
        <node concept="3uibUv" id="plPun8b6AH" role="_ZDj9">
          <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
        </node>
      </node>
      <node concept="2ShNRf" id="plPun8b7sS" role="33vP2m">
        <node concept="Tc6Ow" id="plPun8b7sF" role="2ShVmc">
          <node concept="3uibUv" id="plPun8b7sG" role="HW$YZ">
            <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="plPun8cSCR" role="jymVt">
      <property role="TrG5h" value="operationsLock" />
      <node concept="3Tm6S6" id="plPun8cSCS" role="1B3o_S" />
      <node concept="3uibUv" id="plPun8cTVu" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="plPun8cVvu" role="33vP2m">
        <node concept="1pGfFk" id="plPun8cVvk" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="plPun8b5sd" role="jymVt" />
    <node concept="3clFbW" id="1U0efzL$33q" role="jymVt">
      <node concept="3cqZAl" id="1U0efzL$33r" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$33s" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$33u" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$33y" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzL$33$" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzL$33C" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzL$33D" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzL$33E" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzL$2zM" resolve="branch" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzL$33F" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzL$33x" resolve="branch" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLOdJL" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLOeHh" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLOeKb" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLOdJ8" resolve="idGenerator" />
            </node>
            <node concept="2OqwBi" id="1U0efzLOe1M" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLOdJJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLOeoA" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLOdDx" resolve="idGenerator" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzL$33x" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="1U0efzL$33w" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLOdJ8" role="3clF46">
        <property role="TrG5h" value="idGenerator" />
        <node concept="3uibUv" id="1U0efzLOdJi" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$2on" role="jymVt" />
    <node concept="3clFb_" id="plPun8b85$" role="jymVt">
      <property role="TrG5h" value="operationApplied" />
      <node concept="37vLTG" id="plPun8ba2K" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="plPun8barg" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="plPun8b85A" role="3clF45" />
      <node concept="3Tm1VV" id="plPun8b85B" role="1B3o_S" />
      <node concept="3clFbS" id="plPun8b85C" role="3clF47">
        <node concept="3clFbF" id="plPun8bavf" role="3cqZAp">
          <node concept="2OqwBi" id="plPun8bboA" role="3clFbG">
            <node concept="37vLTw" id="plPun8bave" role="2Oq$k0">
              <ref role="3cqZAo" node="plPun8b5Qr" resolve="operations" />
            </node>
            <node concept="TSZUe" id="plPun8brcj" role="2OqNvi">
              <node concept="37vLTw" id="plPun8brk_" role="25WWJ7">
                <ref role="3cqZAo" node="plPun8ba2K" resolve="op" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="plPun8b7Fe" role="jymVt" />
    <node concept="3clFb_" id="plPun8cBGh" role="jymVt">
      <property role="TrG5h" value="getNewOperations" />
      <node concept="_YKpA" id="plPun8cKms" role="3clF45">
        <node concept="3uibUv" id="plPun8cLzd" role="_ZDj9">
          <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
        </node>
      </node>
      <node concept="3Tm1VV" id="plPun8cBGk" role="1B3o_S" />
      <node concept="3clFbS" id="plPun8cBGl" role="3clF47">
        <node concept="1HWtB8" id="plPun8cWtW" role="3cqZAp">
          <node concept="37vLTw" id="plPun8cW$V" role="1HWFw0">
            <ref role="3cqZAo" node="plPun8cSCR" resolve="operationsLock" />
          </node>
          <node concept="3clFbS" id="plPun8cWu0" role="1HWHxc">
            <node concept="3cpWs8" id="plPun8cMDs" role="3cqZAp">
              <node concept="3cpWsn" id="plPun8cMDt" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="_YKpA" id="plPun8cMDo" role="1tU5fm">
                  <node concept="3uibUv" id="plPun8cMDr" role="_ZDj9">
                    <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
                  </node>
                </node>
                <node concept="37vLTw" id="plPun8cMDu" role="33vP2m">
                  <ref role="3cqZAo" node="plPun8b5Qr" resolve="operations" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="plPun8cNTX" role="3cqZAp">
              <node concept="37vLTI" id="plPun8cPa2" role="3clFbG">
                <node concept="2ShNRf" id="plPun8cXvS" role="37vLTx">
                  <node concept="Tc6Ow" id="plPun8cXvF" role="2ShVmc">
                    <node concept="3uibUv" id="plPun8cXvG" role="HW$YZ">
                      <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="plPun8cNTV" role="37vLTJ">
                  <ref role="3cqZAo" node="plPun8b5Qr" resolve="operations" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="plPun8cXY8" role="3cqZAp">
              <node concept="37vLTw" id="plPun8cXYa" role="3cqZAk">
                <ref role="3cqZAo" node="plPun8cMDt" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="plPun8cAbk" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$24I" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="37vLTG" id="1U0efzL$24J" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="1U0efzL$24K" role="1tU5fm">
          <ref role="3uigEE" to="3hky:5QP6xyjMbUr" resolve="IBranchListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$24L" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$24M" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$24O" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$4ra" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$4GU" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$4r9" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$6AC" role="2OqNvi">
              <ref role="37wK5l" to="3hky:5QP6xyjMcer" resolve="addListener" />
              <node concept="37vLTw" id="1U0efzL$6M1" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$24J" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$24P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25M" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="1U0efzL$25N" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="1U0efzL$25O" role="1tU5fm">
          <ref role="3uigEE" to="3hky:5QP6xyjMbUr" resolve="IBranchListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$25P" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$25Q" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$25S" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$7_T" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$7Qt" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$7_S" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$9Kh" role="2OqNvi">
              <ref role="37wK5l" to="3hky:5QP6xyjMcsf" resolve="removeListener" />
              <node concept="37vLTw" id="1U0efzL$9VJ" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$25N" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$24Q" role="jymVt">
      <property role="TrG5h" value="canRead" />
      <node concept="10P_77" id="1U0efzL$24R" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$24S" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$24U" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$abD" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$atD" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$abC" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$cnB" role="2OqNvi">
              <ref role="37wK5l" to="3hky:2BYLcdc8SfK" resolve="canRead" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$24V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$24Y" role="jymVt">
      <property role="TrG5h" value="canWrite" />
      <node concept="10P_77" id="1U0efzL$24Z" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$250" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$252" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$czl" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$cPt" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$czk" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$eJz" role="2OqNvi">
              <ref role="37wK5l" to="3hky:2BYLcdc8SsS" resolve="canWrite" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$253" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$256" role="jymVt">
      <property role="TrG5h" value="computeRead" />
      <node concept="16syzq" id="1U0efzL$257" role="3clF45">
        <ref role="16sUi3" node="1U0efzL$25d" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$258" role="1B3o_S" />
      <node concept="37vLTG" id="1U0efzL$25a" role="3clF46">
        <property role="TrG5h" value="computable" />
        <node concept="1ajhzC" id="1U0efzL$25b" role="1tU5fm">
          <node concept="16syzq" id="1U0efzL$25c" role="1ajl9A">
            <ref role="16sUi3" node="1U0efzL$25d" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1U0efzL$25d" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="1U0efzL$25e" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$tix" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$t_t" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$tiw" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$vwn" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0k4c" resolve="computeRead" />
              <node concept="37vLTw" id="1U0efzL$vGI" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$25a" resolve="computable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25g" role="jymVt">
      <property role="TrG5h" value="computeWrite" />
      <node concept="37vLTG" id="1U0efzL$25h" role="3clF46">
        <property role="TrG5h" value="computable" />
        <node concept="1ajhzC" id="1U0efzL$25i" role="1tU5fm">
          <node concept="16syzq" id="1U0efzL$25j" role="1ajl9A">
            <ref role="16sUi3" node="1U0efzL$25n" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="1U0efzL$25k" role="3clF45">
        <ref role="16sUi3" node="1U0efzL$25n" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$25l" role="1B3o_S" />
      <node concept="16euLQ" id="1U0efzL$25n" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="1U0efzL$25o" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$vUG" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$wdK" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$vUF" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$y8M" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0kdO" resolve="computeWrite" />
              <node concept="37vLTw" id="1U0efzL$ysd" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$25h" resolve="computable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25q" role="jymVt">
      <property role="TrG5h" value="getReadTransaction" />
      <node concept="3uibUv" id="1U0efzL$25r" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOc0fa" resolve="IReadTransaction" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$25s" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$25u" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$eVm" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$fck" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$eVl" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$h6y" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOeg84" resolve="getReadTransaction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25y" role="jymVt">
      <property role="TrG5h" value="getTransaction" />
      <node concept="3uibUv" id="1U0efzL$25z" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDO0jSL" resolve="ITransaction" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$25$" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$25A" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$hiq" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzL$D$g" role="3clFbG">
            <ref role="37wK5l" node="1U0efzL$mjK" resolve="wrap" />
            <node concept="2OqwBi" id="1U0efzL$hzw" role="37wK5m">
              <node concept="37vLTw" id="1U0efzL$hip" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
              </node>
              <node concept="liA8E" id="1U0efzL$jtQ" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4_SQzDOeg7H" resolve="getTransaction" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25E" role="jymVt">
      <property role="TrG5h" value="getWriteTransaction" />
      <node concept="3uibUv" id="1U0efzL$25F" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$25G" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$25I" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$Eet" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzL$Ees" role="3clFbG">
            <ref role="37wK5l" node="1U0efzL$qpW" resolve="wrap" />
            <node concept="2OqwBi" id="1U0efzL$jV1" role="37wK5m">
              <node concept="37vLTw" id="1U0efzL$jDM" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
              </node>
              <node concept="liA8E" id="1U0efzL$lPv" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4_SQzDOeg8s" resolve="getWriteTransaction" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$25J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$25U" role="jymVt">
      <property role="TrG5h" value="runRead" />
      <node concept="3cqZAl" id="1U0efzL$25V" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$25W" role="1B3o_S" />
      <node concept="37vLTG" id="1U0efzL$25Y" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="1ajhzC" id="1U0efzL$25Z" role="1tU5fm">
          <node concept="3cqZAl" id="1U0efzL$260" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="1U0efzL$261" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$yEb" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$yW3" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$yEa" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$$Rd" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0jTM" resolve="runRead" />
              <node concept="37vLTw" id="1U0efzL$_3K" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$25Y" resolve="runnable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$262" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$263" role="jymVt">
      <property role="TrG5h" value="runWrite" />
      <node concept="37vLTG" id="1U0efzL$264" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="1ajhzC" id="1U0efzL$265" role="1tU5fm">
          <node concept="3cqZAl" id="1U0efzL$266" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$267" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$268" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$26a" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$_g$" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$_mR" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$_gz" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$2zM" resolve="branch" />
            </node>
            <node concept="liA8E" id="1U0efzL$Bi9" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDO0jWS" resolve="runWrite" />
              <node concept="37vLTw" id="1U0efzL$BuL" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$264" resolve="runnable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$26b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$m1f" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$mjK" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="37vLTG" id="1U0efzL$n54" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="1U0efzL$nkU" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDO0jSL" resolve="ITransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzL$nwk" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDO0jSL" resolve="ITransaction" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$mjN" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$mjO" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$pov" role="3cqZAp">
          <node concept="3K4zz7" id="1U0efzL$q61" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$qk1" role="3K4GZi">
              <ref role="3cqZAo" node="1U0efzL$n54" resolve="t" />
            </node>
            <node concept="2ZW3vV" id="1U0efzL$p$Q" role="3K4Cdx">
              <node concept="3uibUv" id="1U0efzL$pDh" role="2ZW6by">
                <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
              </node>
              <node concept="37vLTw" id="1U0efzL$pot" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzL$n54" resolve="t" />
              </node>
            </node>
            <node concept="1rXfSq" id="1U0efzL$rtp" role="3K4E3e">
              <ref role="37wK5l" node="1U0efzL$qpW" resolve="wrap" />
              <node concept="10QFUN" id="1U0efzL$rCl" role="37wK5m">
                <node concept="3uibUv" id="1U0efzL$rDO" role="10QFUM">
                  <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
                </node>
                <node concept="37vLTw" id="1U0efzL$s0G" role="10QFUP">
                  <ref role="3cqZAo" node="1U0efzL$n54" resolve="t" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$qJ5" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$qpW" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="37vLTG" id="1U0efzL$qpX" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="1U0efzL$r2V" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1U0efzL$qq0" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$qq1" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$qq2" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL$qq8" role="3clFbG">
            <node concept="1pGfFk" id="1U0efzL$qq9" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzL$oJw" resolve="OTWriteTransaction" />
              <node concept="37vLTw" id="1U0efzL$qqa" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$qpX" resolve="t" />
              </node>
              <node concept="Xjq3P" id="1U0efzL$qqb" role="37wK5m" />
              <node concept="37vLTw" id="plPun8b2UZ" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLOdDx" resolve="idGenerator" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzL$FCw" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzL$23b" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzL$242" role="EKbjA">
      <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzL$nJc">
    <property role="TrG5h" value="OTWriteTransaction" />
    <node concept="2tJIrI" id="1U0efzL$nYE" role="jymVt" />
    <node concept="312cEg" id="1U0efzL$nZm" role="jymVt">
      <property role="TrG5h" value="transaction" />
      <node concept="3Tm6S6" id="1U0efzL$nZn" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzL$o05" role="1tU5fm">
        <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
      </node>
    </node>
    <node concept="312cEg" id="1U0efzL$oEs" role="jymVt">
      <property role="TrG5h" value="otBranch" />
      <node concept="3Tm6S6" id="1U0efzL$oEt" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzL$oH6" role="1tU5fm">
        <ref role="3uigEE" node="1U0efzL$23a" resolve="OTBranch" />
      </node>
    </node>
    <node concept="312cEg" id="4TPMxteYsMB" role="jymVt">
      <property role="TrG5h" value="idGenerator" />
      <node concept="3Tmbuc" id="4TPMxtf0fGt" role="1B3o_S" />
      <node concept="3uibUv" id="4TPMxteYtua" role="1tU5fm">
        <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$nYJ" role="jymVt" />
    <node concept="3Tm1VV" id="1U0efzL$nJd" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzL$nL0" role="EKbjA">
      <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
    </node>
    <node concept="3clFbW" id="1U0efzL$oJw" role="jymVt">
      <node concept="3cqZAl" id="1U0efzL$oJx" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$oJy" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$oJ$" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$oJC" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzL$oJE" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzL$oJI" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzL$oJJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzL$oJK" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzL$oEs" resolve="otBranch" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzL$oJL" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzL$oJB" resolve="otBranch" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzL$oJO" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzL$oJQ" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzL$oJU" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzL$oJV" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzL$oJW" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzL$nZm" resolve="transaction" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzL$oJX" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzL$oJN" resolve="transaction" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLOaWg" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLOccC" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLOchq" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLOaUr" resolve="idGenerator" />
            </node>
            <node concept="2OqwBi" id="1U0efzLObw$" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLOaWe" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLObYi" role="2OqNvi">
                <ref role="2Oxat5" node="4TPMxteYsMB" resolve="idGenerator" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzL$oJN" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzL$oJM" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzL$oJB" role="3clF46">
        <property role="TrG5h" value="otBranch" />
        <node concept="3uibUv" id="1U0efzL$oJA" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzL$23a" resolve="OTBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLOaUr" role="3clF46">
        <property role="TrG5h" value="idGenerator" />
        <node concept="3uibUv" id="1U0efzLOaUD" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4TPMxteYkMu" resolve="IIdGenerator" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAf0T" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAg6B" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLAjP8" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3uibUv" id="1U0efzLAkMj" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzLAg6D" role="3clF45" />
      <node concept="3Tmbuc" id="1U0efzLAh9X" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAg6F" role="3clF47">
        <node concept="3clFbF" id="1U0efzLPfBk" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzLPfBh" role="3clFbG">
            <node concept="10M0yZ" id="1U0efzLPfBi" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1U0efzLPfBj" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="1U0efzLPg1O" role="37wK5m">
                <node concept="37vLTw" id="1U0efzLPg34" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLAjP8" resolve="op" />
                </node>
                <node concept="Xl_RD" id="1U0efzLPfCH" role="3uHU7B">
                  <property role="Xl_RC" value="apply: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="plPun8bu9V" role="3cqZAp">
          <node concept="3cpWsn" id="plPun8bu9W" role="3cpWs9">
            <property role="TrG5h" value="appliedOp" />
            <node concept="3uibUv" id="plPun8bu9T" role="1tU5fm">
              <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
            </node>
            <node concept="2OqwBi" id="plPun8bu9X" role="33vP2m">
              <node concept="37vLTw" id="plPun8bu9Y" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzLAjP8" resolve="op" />
              </node>
              <node concept="liA8E" id="plPun8bu9Z" role="2OqNvi">
                <ref role="37wK5l" node="1U0efzLyR7X" resolve="apply" />
                <node concept="37vLTw" id="plPun8bua0" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="plPun8bvuw" role="3cqZAp">
          <node concept="2OqwBi" id="plPun8bw$8" role="3clFbG">
            <node concept="37vLTw" id="plPun8bvuu" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$oEs" resolve="otBranch" />
            </node>
            <node concept="liA8E" id="plPun8b$DA" role="2OqNvi">
              <ref role="37wK5l" node="plPun8b85$" resolve="operationApplied" />
              <node concept="37vLTw" id="plPun8b_np" role="37wK5m">
                <ref role="3cqZAo" node="plPun8bu9W" resolve="appliedOp" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$G08" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G8s" role="jymVt">
      <property role="TrG5h" value="moveChild" />
      <node concept="37vLTG" id="1U0efzL$G8t" role="3clF46">
        <property role="TrG5h" value="newParentId" />
        <node concept="3cpWsb" id="1U0efzL$G8u" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8v" role="3clF46">
        <property role="TrG5h" value="newRole" />
        <node concept="17QB3L" id="1U0efzL$G8w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8x" role="3clF46">
        <property role="TrG5h" value="newIndex" />
        <node concept="10Oyi0" id="1U0efzL$G8y" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8z" role="3clF46">
        <property role="TrG5h" value="childId" />
        <node concept="3cpWsb" id="1U0efzL$G8$" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1U0efzL$G8_" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G8A" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G8C" role="3clF47">
        <node concept="3cpWs8" id="plPun88eZS" role="3cqZAp">
          <node concept="3cpWsn" id="plPun88eZT" role="3cpWs9">
            <property role="TrG5h" value="oldparent" />
            <node concept="3cpWsb" id="plPun88eZU" role="1tU5fm" />
            <node concept="1rXfSq" id="plPun88eZV" role="33vP2m">
              <ref role="37wK5l" node="1U0efzL$G79" resolve="getParent" />
              <node concept="37vLTw" id="plPun88g8d" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G8z" resolve="childId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="plPun88eZX" role="3cqZAp">
          <node concept="3cpWsn" id="plPun88eZY" role="3cpWs9">
            <property role="TrG5h" value="oldRole" />
            <node concept="17QB3L" id="plPun88eZZ" role="1tU5fm" />
            <node concept="1rXfSq" id="plPun88f00" role="33vP2m">
              <ref role="37wK5l" node="1U0efzL$G7E" resolve="getRole" />
              <node concept="37vLTw" id="plPun88gRg" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G8z" resolve="childId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="plPun88f02" role="3cqZAp">
          <node concept="3cpWsn" id="plPun88f03" role="3cpWs9">
            <property role="TrG5h" value="oldIndex" />
            <node concept="10Oyi0" id="plPun88f04" role="1tU5fm" />
            <node concept="2OqwBi" id="plPun88f05" role="33vP2m">
              <node concept="1rXfSq" id="plPun88f06" role="2Oq$k0">
                <ref role="37wK5l" node="1U0efzL$G6M" resolve="getChildren" />
                <node concept="37vLTw" id="plPun88f07" role="37wK5m">
                  <ref role="3cqZAo" node="plPun88eZT" resolve="oldparent" />
                </node>
                <node concept="37vLTw" id="plPun88f08" role="37wK5m">
                  <ref role="3cqZAo" node="plPun88eZY" resolve="oldRole" />
                </node>
              </node>
              <node concept="2WmjW8" id="plPun88f09" role="2OqNvi">
                <node concept="37vLTw" id="plPun88hAh" role="25WWJ7">
                  <ref role="3cqZAo" node="1U0efzL$G8z" resolve="childId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="plPun88yqx" role="3cqZAp">
          <node concept="3clFbS" id="plPun88yqz" role="3clFbx">
            <node concept="3clFbF" id="plPun88_iI" role="3cqZAp">
              <node concept="37vLTI" id="plPun88ADF" role="3clFbG">
                <node concept="2OqwBi" id="plPun88Efy" role="37vLTx">
                  <node concept="1rXfSq" id="plPun88Bvw" role="2Oq$k0">
                    <ref role="37wK5l" node="1U0efzL$G6M" resolve="getChildren" />
                    <node concept="37vLTw" id="plPun88Cpd" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzL$G8t" resolve="newParentId" />
                    </node>
                    <node concept="37vLTw" id="plPun88DlO" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzL$G8v" resolve="newRole" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="plPun88GRd" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="plPun88_iG" role="37vLTJ">
                  <ref role="3cqZAo" node="1U0efzL$G8x" resolve="newIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="plPun88$fD" role="3clFbw">
            <node concept="3cmrfG" id="plPun88$gP" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="plPun88y$4" role="3uHU7B">
              <ref role="3cqZAo" node="1U0efzL$G8x" resolve="newIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="plPun885g9" role="3cqZAp">
          <node concept="1rXfSq" id="plPun885g8" role="3clFbG">
            <ref role="37wK5l" node="1U0efzLAg6B" resolve="apply" />
            <node concept="2ShNRf" id="plPun8865b" role="37wK5m">
              <node concept="1pGfFk" id="plPun886gY" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLDtUD" resolve="MoveNodeOp" />
                <node concept="37vLTw" id="plPun88ajS" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8z" resolve="childId" />
                </node>
                <node concept="37vLTw" id="plPun88j87" role="37wK5m">
                  <ref role="3cqZAo" node="plPun88eZT" resolve="oldparent" />
                </node>
                <node concept="37vLTw" id="plPun88jZM" role="37wK5m">
                  <ref role="3cqZAo" node="plPun88eZY" resolve="oldRole" />
                </node>
                <node concept="37vLTw" id="plPun88k6r" role="37wK5m">
                  <ref role="3cqZAo" node="plPun88f03" resolve="oldIndex" />
                </node>
                <node concept="37vLTw" id="plPun88kh1" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8t" resolve="newParentId" />
                </node>
                <node concept="37vLTw" id="plPun88l5a" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8v" resolve="newRole" />
                </node>
                <node concept="37vLTw" id="plPun88lS8" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8x" resolve="newIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G8D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL_Zz2" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G8E" role="jymVt">
      <property role="TrG5h" value="setProperty" />
      <node concept="37vLTG" id="1U0efzL$G8F" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G8G" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8H" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G8I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8J" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1U0efzL$G8K" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1U0efzL$G8L" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G8M" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G8O" role="3clF47">
        <node concept="3clFbF" id="1U0efzLAnOO" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzLAnON" role="3clFbG">
            <ref role="37wK5l" node="1U0efzLAg6B" resolve="apply" />
            <node concept="2ShNRf" id="1U0efzLA2SD" role="37wK5m">
              <node concept="1pGfFk" id="1U0efzLA424" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLA4sS" resolve="SetPropertyOp" />
                <node concept="37vLTw" id="1U0efzLAddJ" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8F" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="1U0efzLAdMO" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8H" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLAenG" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8J" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G8P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL_YzH" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G8Q" role="jymVt">
      <property role="TrG5h" value="setReferenceTarget" />
      <node concept="37vLTG" id="1U0efzL$G8R" role="3clF46">
        <property role="TrG5h" value="sourceId" />
        <node concept="3cpWsb" id="1U0efzL$G8S" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8T" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G8U" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G8V" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1U0efzL$G8W" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$G8X" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G8Y" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G90" role="3clF47">
        <node concept="3clFbF" id="1U0efzLAtuf" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzLAtug" role="3clFbG">
            <ref role="37wK5l" node="1U0efzLAg6B" resolve="apply" />
            <node concept="2ShNRf" id="1U0efzLAtuh" role="37wK5m">
              <node concept="1pGfFk" id="1U0efzLAtui" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLAp8R" resolve="SetReferenceOp" />
                <node concept="37vLTw" id="1U0efzLAujp" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8R" resolve="sourceId" />
                </node>
                <node concept="37vLTw" id="1U0efzLAtuk" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8T" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLAuZ4" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G8V" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G91" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL_X$p" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G5_" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <node concept="37vLTG" id="1U0efzL$G5A" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzL$G5B" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5C" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G5D" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5E" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzL$G5F" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5G" role="3clF46">
        <property role="TrG5h" value="childId" />
        <node concept="3cpWsb" id="1U0efzL$G5H" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5I" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1U0efzL$G5J" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$G5K" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G5L" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G5N" role="3clF47">
        <node concept="3clFbJ" id="plPun88mN4" role="3cqZAp">
          <node concept="3clFbS" id="plPun88mN6" role="3clFbx">
            <node concept="3clFbF" id="plPun88pn0" role="3cqZAp">
              <node concept="37vLTI" id="plPun88rEP" role="3clFbG">
                <node concept="2OqwBi" id="plPun88vxo" role="37vLTx">
                  <node concept="1rXfSq" id="plPun88swp" role="2Oq$k0">
                    <ref role="37wK5l" node="1U0efzL$G6M" resolve="getChildren" />
                    <node concept="37vLTw" id="plPun88tpH" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzL$G5A" resolve="parentId" />
                    </node>
                    <node concept="37vLTw" id="plPun88uvn" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzL$G5C" resolve="role" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="plPun88xsO" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="plPun88pmY" role="37vLTJ">
                  <ref role="3cqZAo" node="1U0efzL$G5E" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="plPun88omf" role="3clFbw">
            <node concept="3cmrfG" id="plPun88onr" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="plPun88mOr" role="3uHU7B">
              <ref role="3cqZAo" node="1U0efzL$G5E" resolve="index" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLMzDE" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzLMzDD" role="3clFbG">
            <ref role="37wK5l" node="1U0efzLAg6B" resolve="apply" />
            <node concept="2ShNRf" id="1U0efzLM$5b" role="37wK5m">
              <node concept="1pGfFk" id="1U0efzLM$f6" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLAzjc" resolve="AddNewChildOp" />
                <node concept="37vLTw" id="1U0efzLM$hk" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G5A" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLM$i_" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G5C" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLM$jV" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G5E" resolve="index" />
                </node>
                <node concept="37vLTw" id="1U0efzLM$qg" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G5G" resolve="childId" />
                </node>
                <node concept="37vLTw" id="1U0efzLM$wK" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G5I" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G5O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLA1RX" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G6e" role="jymVt">
      <property role="TrG5h" value="deleteNode" />
      <node concept="37vLTG" id="1U0efzL$G6f" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G6g" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1U0efzL$G6h" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G6i" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6k" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLM_c$" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLM_c_" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3cpWsb" id="1U0efzLM_cz" role="1tU5fm" />
            <node concept="1rXfSq" id="1U0efzLM_cA" role="33vP2m">
              <ref role="37wK5l" node="1U0efzL$G79" resolve="getParent" />
              <node concept="37vLTw" id="1U0efzLM_cB" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6f" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1U0efzLM_dp" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLM_dq" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="17QB3L" id="1U0efzLM_do" role="1tU5fm" />
            <node concept="1rXfSq" id="1U0efzLM_dr" role="33vP2m">
              <ref role="37wK5l" node="1U0efzL$G7E" resolve="getRole" />
              <node concept="37vLTw" id="1U0efzLM_ds" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6f" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1U0efzLM_gm" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLM_gp" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="1U0efzLM_gk" role="1tU5fm" />
            <node concept="2OqwBi" id="1U0efzLM_Cq" role="33vP2m">
              <node concept="1rXfSq" id="1U0efzLM_jj" role="2Oq$k0">
                <ref role="37wK5l" node="1U0efzL$G6M" resolve="getChildren" />
                <node concept="37vLTw" id="1U0efzLM_lx" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLM_c_" resolve="parent" />
                </node>
                <node concept="37vLTw" id="1U0efzLM_nx" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLM_dq" resolve="role" />
                </node>
              </node>
              <node concept="2WmjW8" id="1U0efzLMCS7" role="2OqNvi">
                <node concept="37vLTw" id="1U0efzLMCTk" role="25WWJ7">
                  <ref role="3cqZAo" node="1U0efzL$G6f" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLM$z7" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzLM$z6" role="3clFbG">
            <ref role="37wK5l" node="1U0efzLAg6B" resolve="apply" />
            <node concept="2ShNRf" id="1U0efzLM$Cg" role="37wK5m">
              <node concept="1pGfFk" id="1U0efzLM$Mb" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                <node concept="37vLTw" id="1U0efzLM_cC" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLM_c_" resolve="parent" />
                </node>
                <node concept="37vLTw" id="1U0efzLM_dt" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLM_dq" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLMCWI" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLM_gp" resolve="index" />
                </node>
                <node concept="37vLTw" id="1U0efzLMD5E" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$G6f" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL$G0A" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G5n" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <node concept="37vLTG" id="1U0efzL$G5o" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzL$G5p" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5q" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G5r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5s" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzL$G5t" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5u" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1U0efzL$G5v" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
        </node>
      </node>
      <node concept="3cpWsb" id="1U0efzL$G5w" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G5x" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G5z" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLOfyE" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLOfyF" role="3cpWs9">
            <property role="TrG5h" value="childId" />
            <node concept="3cpWsb" id="1U0efzLOfyD" role="1tU5fm" />
            <node concept="2OqwBi" id="1U0efzLOfyG" role="33vP2m">
              <node concept="37vLTw" id="1U0efzLOfyH" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxteYsMB" resolve="idGenerator" />
              </node>
              <node concept="liA8E" id="1U0efzLOfyI" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4TPMxteYkOn" resolve="generate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLOclZ" role="3cqZAp">
          <node concept="1rXfSq" id="1U0efzLOclY" role="3clFbG">
            <ref role="37wK5l" node="1U0efzL$G5_" resolve="addNewChild" />
            <node concept="37vLTw" id="1U0efzLOcvt" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzL$G5o" resolve="parentId" />
            </node>
            <node concept="37vLTw" id="1U0efzLOcxt" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzL$G5q" resolve="role" />
            </node>
            <node concept="37vLTw" id="1U0efzLOcEx" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzL$G5s" resolve="index" />
            </node>
            <node concept="37vLTw" id="1U0efzLOfyJ" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLOfyF" resolve="childId" />
            </node>
            <node concept="37vLTw" id="1U0efzLOdhD" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzL$G5u" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLOf$Q" role="3cqZAp">
          <node concept="37vLTw" id="1U0efzLOfBz" role="3cqZAk">
            <ref role="3cqZAo" node="1U0efzLOfyF" resolve="childId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G5$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G5P" role="jymVt">
      <property role="TrG5h" value="addNewLazyChild" />
      <node concept="37vLTG" id="1U0efzL$G5Q" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzL$G5R" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5S" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G5T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5U" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzL$G5V" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G5W" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1U0efzL$G5X" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
        </node>
      </node>
      <node concept="3cpWsb" id="1U0efzL$G5Y" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G5Z" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G61" role="3clF47">
        <node concept="YS8fn" id="1U0efzL$Hap" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL$Haq" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL$Har" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G62" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G63" role="jymVt">
      <property role="TrG5h" value="containsNode" />
      <node concept="37vLTG" id="1U0efzL$G64" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G65" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1U0efzL$G66" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G67" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6a" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$HmM" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$Hzf" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$HmL" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL$LiX" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOi66W" resolve="containsNode" />
              <node concept="37vLTw" id="1U0efzL$LSs" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G64" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G6m" role="jymVt">
      <property role="TrG5h" value="ensureLoaded" />
      <node concept="37vLTG" id="1U0efzL$G6n" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G6o" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1U0efzL$G6p" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G6q" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6t" role="3clF47">
        <node concept="YS8fn" id="1U0efzL$MxT" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL$MxU" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL$MxV" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G6v" role="jymVt">
      <property role="TrG5h" value="getAllChildren" />
      <node concept="37vLTG" id="1U0efzL$G6w" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzL$G6x" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1U0efzL$G6y" role="3clF45">
        <node concept="3cpWsb" id="1U0efzL$G6z" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G6$" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6B" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$MBj" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$NlN" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$MBi" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL$R5D" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOede1" resolve="getAllChildren" />
              <node concept="37vLTw" id="1U0efzL$RGN" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6w" resolve="parentId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6C" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G6D" role="jymVt">
      <property role="TrG5h" value="getBranch" />
      <node concept="3uibUv" id="1U0efzL$G6E" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G6F" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6I" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$Sl_" role="3cqZAp">
          <node concept="37vLTw" id="1U0efzL$Sl$" role="3clFbG">
            <ref role="3cqZAo" node="1U0efzL$oEs" resolve="otBranch" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G6M" role="jymVt">
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="1U0efzL$G6N" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzL$G6O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G6P" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G6Q" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1U0efzL$G6R" role="3clF45">
        <node concept="3cpWsb" id="1U0efzL$G6S" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G6T" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G6W" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$SYq" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$TcP" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$SYp" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL$TT$" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOeddK" resolve="getChildren" />
              <node concept="37vLTw" id="1U0efzL$UwX" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6N" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="1U0efzL$VeZ" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6P" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G6X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G6Y" role="jymVt">
      <property role="TrG5h" value="getConcept" />
      <node concept="37vLTG" id="1U0efzL$G6Z" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G70" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1U0efzL$G71" role="3clF45">
        <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G72" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G75" role="3clF47">
        <node concept="3clFbF" id="1U0efzL$VQc" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL$W0I" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL$VQb" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL$ZKO" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOfxLJ" resolve="getConcept" />
              <node concept="37vLTw" id="1U0efzL_0n0" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G6Z" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G76" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G79" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="37vLTG" id="1U0efzL$G7a" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G7b" role="1tU5fm" />
      </node>
      <node concept="3cpWsb" id="1U0efzL$G7c" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G7d" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G7g" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_0Zb" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_1II" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_0Za" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_2rH" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOgNmw" resolve="getParent" />
              <node concept="37vLTw" id="1U0efzL_328" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7a" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G7h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G7i" role="jymVt">
      <property role="TrG5h" value="getProperty" />
      <node concept="37vLTG" id="1U0efzL$G7j" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G7k" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G7l" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G7m" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1U0efzL$G7n" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G7o" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G7r" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_3K5" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_4vK" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_3K4" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_8g6" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOeddg" resolve="getProperty" />
              <node concept="37vLTw" id="1U0efzL_8QK" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7j" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="1U0efzL_9yG" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7l" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G7s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G7t" role="jymVt">
      <property role="TrG5h" value="getReferenceTarget" />
      <node concept="37vLTG" id="1U0efzL$G7u" role="3clF46">
        <property role="TrG5h" value="sourceId" />
        <node concept="3cpWsb" id="1U0efzL$G7v" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G7w" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzL$G7x" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1U0efzL$G7y" role="3clF45">
        <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G7z" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G7A" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_icB" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_jyV" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_iNL" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_nlF" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOeddw" resolve="getReferenceTarget" />
              <node concept="37vLTw" id="1U0efzL_nYz" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7u" resolve="sourceId" />
              </node>
              <node concept="37vLTw" id="1U0efzL_oGT" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7w" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G7B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G7E" role="jymVt">
      <property role="TrG5h" value="getRole" />
      <node concept="37vLTG" id="1U0efzL$G7F" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G7G" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1U0efzL$G7H" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G7I" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G7L" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_plv" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_q5N" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_plu" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_qNz" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOgNBE" resolve="getRole" />
              <node concept="37vLTw" id="1U0efzL_rr4" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7F" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G7M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G7N" role="jymVt">
      <property role="TrG5h" value="getTree" />
      <node concept="3uibUv" id="1U0efzL$G7O" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDOqQ5x" resolve="ITree" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G7P" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G7S" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_s6B" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_sR5" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_s6A" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_t$X" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOqQAG" resolve="getTree" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G7T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G7W" role="jymVt">
      <property role="TrG5h" value="getUserObject" />
      <node concept="37vLTG" id="1U0efzL$G7X" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G7Y" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G7Z" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="1U0efzL$G80" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzL$G81" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="1U0efzL$G82" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G85" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_udV" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_uot" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_udU" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_v6t" role="2OqNvi">
              <ref role="37wK5l" to="3hky:5QP6xykolPF" resolve="getUserObject" />
              <node concept="37vLTw" id="1U0efzL_vIs" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7X" resolve="nodeId" />
              </node>
              <node concept="37vLTw" id="1U0efzL_wrt" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzL$G7Z" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G86" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G89" role="jymVt">
      <property role="TrG5h" value="isLoaded" />
      <node concept="37vLTG" id="1U0efzL$G8a" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G8b" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1U0efzL$G8c" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G8d" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G8g" role="3clF47">
        <node concept="YS8fn" id="1U0efzL_Bva" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL_Bvb" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL_Bvc" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G8h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G8k" role="jymVt">
      <property role="TrG5h" value="loadNode" />
      <node concept="37vLTG" id="1U0efzL$G8l" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G8m" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1U0efzL$G8n" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G8o" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G8q" role="3clF47">
        <node concept="YS8fn" id="1U0efzL_APz" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL_AP$" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL_AP_" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G8r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G92" role="jymVt">
      <property role="TrG5h" value="setTree" />
      <node concept="37vLTG" id="1U0efzL$G93" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1U0efzL$G94" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOqQ5x" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$G95" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G96" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G98" role="3clF47">
        <node concept="YS8fn" id="1U0efzL_UkJ" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL_UkK" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL_UkL" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G99" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1U0efzL$G9a" role="jymVt">
      <property role="TrG5h" value="setUserObject" />
      <node concept="37vLTG" id="1U0efzL$G9b" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="1U0efzL$G9c" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzL$G9d" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="1U0efzL$G9e" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzL$G9f" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="1U0efzL$G9g" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$G9h" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL$G9i" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G9k" role="3clF47">
        <node concept="YS8fn" id="1U0efzL_Uh5" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzL_Uh6" role="YScLw">
            <node concept="1pGfFk" id="1U0efzL_Uh7" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzL$G9l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL_RvZ" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL$G9m" role="jymVt">
      <property role="TrG5h" value="visitNodes" />
      <node concept="37vLTG" id="1U0efzL$G9n" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="1U0efzL$G9o" role="1tU5fm">
          <node concept="3uibUv" id="1U0efzL$G9p" role="1ajw0F">
            <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
          </node>
          <node concept="10P_77" id="1U0efzL$G9q" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="1U0efzL$G9r" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzL_TnZ" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL$G9v" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_B$Q" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzL_CjH" role="3clFbG">
            <node concept="37vLTw" id="1U0efzL_B$P" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzL$nZm" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzL_D1X" role="2OqNvi">
              <ref role="37wK5l" to="3hky:5QP6xykhJDl" resolve="visitNodes" />
              <node concept="1bVj0M" id="1U0efzL_K8o" role="37wK5m">
                <node concept="37vLTG" id="1U0efzL_NpP" role="1bW2Oz">
                  <property role="TrG5h" value="node" />
                  <node concept="3uibUv" id="1U0efzL_Nzy" role="1tU5fm">
                    <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
                  </node>
                </node>
                <node concept="3clFbS" id="1U0efzL_K8q" role="1bW5cS">
                  <node concept="3clFbF" id="1U0efzL_KLF" role="3cqZAp">
                    <node concept="2OqwBi" id="1U0efzL_LpJ" role="3clFbG">
                      <node concept="37vLTw" id="1U0efzL_KLE" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzL$G9n" resolve="visitor" />
                      </node>
                      <node concept="1Bd96e" id="1U0efzL_Mzv" role="2OqNvi">
                        <node concept="1rXfSq" id="1U0efzL_MIq" role="1BdPVh">
                          <ref role="37wK5l" node="1U0efzL_Ejq" resolve="wrap" />
                          <node concept="37vLTw" id="1U0efzL_OsM" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzL_NpP" resolve="node" />
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
      <node concept="2AHcQZ" id="1U0efzL$G9w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzL_FUa" role="jymVt" />
    <node concept="3clFb_" id="1U0efzL_Ejq" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="37vLTG" id="1U0efzL_Ejr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1U0efzL_ItQ" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzL_Jb5" role="3clF45">
        <ref role="3uigEE" to="mjcn:5gTrVpGiHIH" resolve="INode" />
      </node>
      <node concept="3Tmbuc" id="1U0efzL_SuU" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzL_Ejv" role="3clF47">
        <node concept="3clFbF" id="1U0efzL_Ejw" role="3cqZAp">
          <node concept="3K4zz7" id="1U0efzL_Ejx" role="3clFbG">
            <node concept="2ShNRf" id="1U0efzL_Ejy" role="3K4E3e">
              <node concept="1pGfFk" id="1U0efzL_Ejz" role="2ShVmc">
                <ref role="37wK5l" to="3hky:4_SQzDObR89" resolve="PNodeAdapter" />
                <node concept="2OqwBi" id="1U0efzL_Ej$" role="37wK5m">
                  <node concept="1eOMI4" id="1U0efzL_Ej_" role="2Oq$k0">
                    <node concept="10QFUN" id="1U0efzL_EjA" role="1eOMHV">
                      <node concept="37vLTw" id="1U0efzL_EjB" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzL_Ejr" resolve="node" />
                      </node>
                      <node concept="3uibUv" id="1U0efzL_EjC" role="10QFUM">
                        <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1U0efzL_EjD" role="2OqNvi">
                    <ref role="37wK5l" to="3hky:QurUgi3vlP" resolve="getNodeId" />
                  </node>
                </node>
                <node concept="37vLTw" id="1U0efzL_EjE" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzL$oEs" resolve="otBranch" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzL_EjF" role="3K4GZi">
              <ref role="3cqZAo" node="1U0efzL_Ejr" resolve="node" />
            </node>
            <node concept="2ZW3vV" id="1U0efzL_EjG" role="3K4Cdx">
              <node concept="3uibUv" id="1U0efzL_EjH" role="2ZW6by">
                <ref role="3uigEE" to="3hky:4_SQzDObR22" resolve="PNodeAdapter" />
              </node>
              <node concept="37vLTw" id="1U0efzL_EjI" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzL_Ejr" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1U0efzLAp8F">
    <property role="TrG5h" value="SetReferenceOp" />
    <node concept="2tJIrI" id="1U0efzLAp8G" role="jymVt" />
    <node concept="312cEg" id="1U0efzLAp8H" role="jymVt">
      <property role="TrG5h" value="sourceId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwKu0h" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLAp8J" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAp8K" role="jymVt">
      <property role="TrG5h" value="role" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwKvfH" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLAp8M" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAp8N" role="jymVt">
      <property role="TrG5h" value="target" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1bTaSPwKwz0" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLArAq" role="1tU5fm">
        <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAp8Q" role="jymVt" />
    <node concept="3clFbW" id="1U0efzLAp8R" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLAp8S" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLAp8T" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAp8U" role="3clF47">
        <node concept="3clFbF" id="1U0efzLAp8V" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAp8W" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAp8X" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAp8Y" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAp8Z" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAp8H" resolve="sourceId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAp90" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAp9d" resolve="sourceId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAp91" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAp92" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAp93" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAp94" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAp95" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAp8K" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAp96" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAp9f" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAp97" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAp98" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAp99" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAp9a" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAp9b" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAp8N" resolve="target" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAp9c" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAp9h" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLAp9d" role="3clF46">
        <property role="TrG5h" value="sourceId" />
        <node concept="3cpWsb" id="1U0efzLAp9e" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAp9f" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzLAp9g" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAp9h" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="1U0efzLAqMu" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAp9j" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAp9k" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLAp9l" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLAp9m" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLAp9n" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLAp9o" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAp9p" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLAp9q" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLAp9r" role="3cpWs9">
            <property role="TrG5h" value="oldValue" />
            <node concept="3uibUv" id="1U0efzLArYj" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
            </node>
            <node concept="2OqwBi" id="1U0efzLAp9t" role="33vP2m">
              <node concept="37vLTw" id="1U0efzLAp9u" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzLAp9l" resolve="transaction" />
              </node>
              <node concept="liA8E" id="1U0efzLAp9v" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4_SQzDOeddw" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="1U0efzLAp9w" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAp8H" resolve="sourceId" />
                </node>
                <node concept="37vLTw" id="1U0efzLAp9x" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAp8K" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAp9y" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzLAp9z" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLAp9$" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzLAp9l" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzLAp9_" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOedJt" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="1U0efzLAp9A" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAp8H" resolve="sourceId" />
              </node>
              <node concept="37vLTw" id="1U0efzLAp9B" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAp8K" resolve="role" />
              </node>
              <node concept="37vLTw" id="1U0efzLAp9C" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAp8N" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLAp9D" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzLAp9E" role="3cqZAk">
            <node concept="1pGfFk" id="1U0efzLAp9F" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzLApa0" resolve="SetReferenceOp.Applied" />
              <node concept="37vLTw" id="1U0efzLAp9G" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAp9r" resolve="oldValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLAp9H" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAp9I" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAp9J" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLAp9K" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLAp9L" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLAp9M" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLAp9N" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAp9O" role="3clF47">
        <node concept="3clFbJ" id="1U0efzLMixO" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLMixP" role="3clFbx">
            <node concept="3cpWs6" id="1U0efzLMixQ" role="3cqZAp">
              <node concept="Xjq3P" id="1U0efzLMixR" role="3cqZAk" />
            </node>
          </node>
          <node concept="2ZW3vV" id="1U0efzLMixS" role="3clFbw">
            <node concept="3uibUv" id="1U0efzLMixT" role="2ZW6by">
              <ref role="3uigEE" node="1U0efzL$1zV" resolve="SetPropertyOp" />
            </node>
            <node concept="37vLTw" id="1U0efzLMixU" role="2ZW6bz">
              <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
            </node>
          </node>
          <node concept="9aQIb" id="1U0efzLMixV" role="9aQIa">
            <node concept="3clFbS" id="1U0efzLMixW" role="9aQI4">
              <node concept="YS8fn" id="1U0efzLMixX" role="3cqZAp">
                <node concept="2ShNRf" id="1U0efzLMixY" role="YScLw">
                  <node concept="1pGfFk" id="1U0efzLMixZ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="1U0efzLMiy0" role="37wK5m">
                      <node concept="2OqwBi" id="1U0efzLMiy1" role="3uHU7w">
                        <node concept="2OqwBi" id="1U0efzLMiy2" role="2Oq$k0">
                          <node concept="37vLTw" id="1U0efzLMiy3" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
                          </node>
                          <node concept="liA8E" id="1U0efzLMiy4" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1U0efzLMiy5" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1U0efzLMiy6" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown type: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLMiy7" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLMiy8" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLMiy9" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAp8F" resolve="SetReferenceOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLMiya" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLMiyb" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLMiyc" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLMiyd" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLMiye" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLMiyf" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLMiyg" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLMiyh" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLMiyi" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLMiyj" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLMiyk" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLMiyl" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLMiym" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLMiyn" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLMiyo" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLMiyp" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLMiyq" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLMiyr" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLMiys" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLMiyt" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLMiyu" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLMiyv" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLMiyw" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1U0efzLMiyx" role="3cqZAp">
                <node concept="3clFbS" id="1U0efzLMiyy" role="3clFbx">
                  <node concept="3cpWs6" id="1U0efzLMiyz" role="3cqZAp">
                    <node concept="2ShNRf" id="1U0efzLMiy$" role="3cqZAk">
                      <node concept="HV5vD" id="1U0efzLMiy_" role="2ShVmc">
                        <ref role="HV5vE" node="1U0efzLBr7u" resolve="NoOp" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1U0efzLMiyA" role="3clFbw">
                  <node concept="37vLTw" id="1U0efzLMjjS" role="3uHU7B">
                    <ref role="3cqZAo" node="1U0efzLAp8H" resolve="sourceId" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLMiyC" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLMiyD" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLMiyr" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLMiyE" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLBCqJ" resolve="parentId" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1U0efzLMiyF" role="9aQIa">
                  <node concept="3clFbS" id="1U0efzLMiyG" role="9aQI4">
                    <node concept="3cpWs6" id="1U0efzLMiyH" role="3cqZAp">
                      <node concept="Xjq3P" id="1U0efzLMiyI" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLMiyJ" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLMiyK" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLMiyL" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLMiyM" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAp9K" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLMiyN" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLMiyO" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLMiyP" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLAp9R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun87GSs" role="jymVt" />
    <node concept="3clFb_" id="plPun87EY3" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun87EY4" role="3clF45" />
      <node concept="3Tm1VV" id="plPun87EY5" role="1B3o_S" />
      <node concept="3clFbS" id="plPun87EY6" role="3clF47">
        <node concept="3clFbF" id="plPun87LOO" role="3cqZAp">
          <node concept="2YIFZM" id="plPun87LOP" role="3clFbG">
            <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
            <node concept="Xl_RD" id="plPun87LOQ" role="37wK5m">
              <property role="Xl_RC" value="SetReferenceOp {0}.{1} = {2}" />
            </node>
            <node concept="2YIFZM" id="plPun8is$$" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8is$_" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAp8H" resolve="sourceId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87LOS" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLAp8K" resolve="role" />
            </node>
            <node concept="37vLTw" id="plPun87Mx9" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLAp8N" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="plPun87EY8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAp9S" role="jymVt" />
    <node concept="312cEu" id="1U0efzLAp9T" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="1U0efzLAp9U" role="jymVt">
        <property role="TrG5h" value="oldValue" />
        <node concept="3Tm6S6" id="1U0efzLAp9V" role="1B3o_S" />
        <node concept="3uibUv" id="1U0efzLAqQe" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLAp9X" role="jymVt" />
      <node concept="3Tm1VV" id="1U0efzLAp9Y" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLAp9Z" role="EKbjA">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3clFbW" id="1U0efzLApa0" role="jymVt">
        <node concept="3cqZAl" id="1U0efzLApa1" role="3clF45" />
        <node concept="3Tm1VV" id="1U0efzLApa2" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLApa3" role="3clF47">
          <node concept="3clFbF" id="1U0efzLApa4" role="3cqZAp">
            <node concept="37vLTI" id="1U0efzLApa5" role="3clFbG">
              <node concept="2OqwBi" id="1U0efzLApa6" role="37vLTJ">
                <node concept="Xjq3P" id="1U0efzLApa7" role="2Oq$k0" />
                <node concept="2OwXpG" id="1U0efzLApa8" role="2OqNvi">
                  <ref role="2Oxat5" node="1U0efzLAp9U" resolve="oldValue" />
                </node>
              </node>
              <node concept="37vLTw" id="1U0efzLApa9" role="37vLTx">
                <ref role="3cqZAo" node="1U0efzLApaa" resolve="oldValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1U0efzLApaa" role="3clF46">
          <property role="TrG5h" value="oldValue" />
          <node concept="3uibUv" id="1U0efzLAr66" role="1tU5fm">
            <ref role="3uigEE" to="mjcn:5gTrVpGiJqG" resolve="INodeReference" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLApac" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLApad" role="jymVt">
        <property role="TrG5h" value="getOriginalOp" />
        <node concept="3uibUv" id="1U0efzLApae" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLApaf" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLApag" role="3clF47">
          <node concept="3clFbF" id="1U0efzLApah" role="3cqZAp">
            <node concept="Xjq3P" id="1U0efzLApai" role="3clFbG">
              <ref role="1HBi2w" node="1U0efzLAp8F" resolve="SetReferenceOp" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLApaj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLByYX" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLByDh" role="jymVt">
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="1U0efzLByDi" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLByDj" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLByDl" role="3clF47">
          <node concept="3clFbF" id="1U0efzLBzBz" role="3cqZAp">
            <node concept="2ShNRf" id="1U0efzLBzBx" role="3clFbG">
              <node concept="1pGfFk" id="1U0efzLBzJ_" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLAp8R" resolve="SetReferenceOp" />
                <node concept="37vLTw" id="1U0efzLBzOW" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAp8H" resolve="sourceId" />
                </node>
                <node concept="37vLTw" id="1U0efzLB$6A" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAp8K" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLB$nL" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAp9U" resolve="oldValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLByDm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzLApaz" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzLApa$" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzLAvJQ">
    <property role="TrG5h" value="AddNewChildOp" />
    <node concept="2tJIrI" id="1U0efzLAvJR" role="jymVt" />
    <node concept="312cEg" id="1U0efzLAyYR" role="jymVt">
      <property role="TrG5h" value="parentId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLD9La" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLAyYU" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAyYV" role="jymVt">
      <property role="TrG5h" value="role" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLD9XH" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLAyYY" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAyYZ" role="jymVt">
      <property role="TrG5h" value="index" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDaag" role="1B3o_S" />
      <node concept="10Oyi0" id="1U0efzLAyZ2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAyZ3" role="jymVt">
      <property role="TrG5h" value="childId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDaqo" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLAyZ6" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLAyZ7" role="jymVt">
      <property role="TrG5h" value="concept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDaBe" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLAyZa" role="1tU5fm">
        <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAyOG" role="jymVt" />
    <node concept="3clFbW" id="1U0efzLAzjc" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLAzjd" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLAzje" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAzjg" role="3clF47">
        <node concept="3clFbF" id="1U0efzLAzjk" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAzjm" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAzjq" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAzjr" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAzjs" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAyZ3" resolve="childId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAzjt" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAzjj" resolve="childId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAzjw" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAzjy" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAzjA" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAzjB" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAzjC" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAyZ7" resolve="concept" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAzjD" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAzjv" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAzjG" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAzjI" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAzjM" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAzjN" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAzjO" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAyYZ" resolve="index" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAzjP" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAzjF" resolve="index" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAzjS" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAzjU" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAzjY" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAzjZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAzk0" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAyYR" resolve="parentId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAzk1" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAzjR" resolve="parentId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLAzk4" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLAzk6" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLAzka" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLAzkb" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLAzkc" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLAyYV" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLAzkd" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLAzk3" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLAzjR" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzLAzjQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAzk3" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzLAzk2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAzjF" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzLAzjE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAzjj" role="3clF46">
        <property role="TrG5h" value="childId" />
        <node concept="3cpWsb" id="1U0efzLAzji" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLAzjv" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1U0efzLAzju" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAvKu" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLIXQZ" role="jymVt">
      <property role="TrG5h" value="withIndex" />
      <node concept="37vLTG" id="1U0efzLJ0zi" role="3clF46">
        <property role="TrG5h" value="newIndex" />
        <node concept="10Oyi0" id="1U0efzLJ1rT" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1U0efzLJ56Z" role="3clF45">
        <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLIXR2" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLIXR3" role="3clF47">
        <node concept="3clFbF" id="1U0efzLJ1zH" role="3cqZAp">
          <node concept="3K4zz7" id="1U0efzLJ3YK" role="3clFbG">
            <node concept="Xjq3P" id="1U0efzLJ4rY" role="3K4E3e" />
            <node concept="2ShNRf" id="1U0efzLJ4LF" role="3K4GZi">
              <node concept="1pGfFk" id="1U0efzLJ6EU" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLAzjc" resolve="AddNewChildOp" />
                <node concept="37vLTw" id="1U0efzLJ6N6" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLJ7Kj" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLJINN" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLJ0zi" resolve="newIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLJ9jD" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyZ3" resolve="childId" />
                </node>
                <node concept="37vLTw" id="1U0efzLJajW" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyZ7" resolve="concept" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1U0efzLJ2wZ" role="3K4Cdx">
              <node concept="37vLTw" id="1U0efzLJ2QY" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
              </node>
              <node concept="37vLTw" id="1U0efzLJ1zG" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLJ0zi" resolve="newIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLIWQ3" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAvKv" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLAvKw" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLAvKx" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLAvKy" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLAvKz" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAvK$" role="3clF47">
        <node concept="3clFbF" id="1U0efzLAvKH" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzLAvKI" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLAvKJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzLAvKw" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzLAvKK" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4TPMxteW$kc" resolve="addNewChild" />
              <node concept="37vLTw" id="1U0efzLAAiW" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
              </node>
              <node concept="37vLTw" id="1U0efzLAAAk" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
              </node>
              <node concept="37vLTw" id="1U0efzLAAN$" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
              </node>
              <node concept="37vLTw" id="1U0efzLABeA" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyZ3" resolve="childId" />
              </node>
              <node concept="37vLTw" id="1U0efzLABFV" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyZ7" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLAvKO" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzLAvKP" role="3cqZAk">
            <node concept="1pGfFk" id="1U0efzLAvKQ" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzLAvLb" resolve="AddNewChildOp.Applied" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLAvKS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAvKT" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLAvKU" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLAvKV" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLAvKW" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLAvKX" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLAvKY" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLAvKZ" role="3clF47">
        <node concept="3clFbJ" id="1U0efzLFWSX" role="3cqZAp">
          <node concept="2ZW3vV" id="1U0efzLFX9N" role="3clFbw">
            <node concept="3uibUv" id="1U0efzLFXgO" role="2ZW6by">
              <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
            </node>
            <node concept="37vLTw" id="1U0efzLFWTt" role="2ZW6bz">
              <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
            </node>
          </node>
          <node concept="3clFbS" id="1U0efzLFWSZ" role="3clFbx">
            <node concept="3cpWs8" id="1U0efzLFXrf" role="3cqZAp">
              <node concept="3cpWsn" id="1U0efzLFXrg" role="3cpWs9">
                <property role="TrG5h" value="o" />
                <node concept="3uibUv" id="1U0efzLFXrc" role="1tU5fm">
                  <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                </node>
                <node concept="1eOMI4" id="1U0efzLFXrh" role="33vP2m">
                  <node concept="10QFUN" id="1U0efzLFXri" role="1eOMHV">
                    <node concept="3uibUv" id="1U0efzLFXrj" role="10QFUM">
                      <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLFXrk" role="10QFUP">
                      <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1U0efzLFXxM" role="3cqZAp">
              <node concept="3clFbS" id="1U0efzLFXxO" role="3clFbx">
                <node concept="3clFbJ" id="1U0efzLG3kj" role="3cqZAp">
                  <node concept="3clFbS" id="1U0efzLG3kl" role="3clFbx">
                    <node concept="3cpWs6" id="1U0efzLG6n7" role="3cqZAp">
                      <node concept="2ShNRf" id="1U0efzLG6oV" role="3cqZAk">
                        <node concept="1pGfFk" id="1U0efzLG6Sq" role="2ShVmc">
                          <ref role="37wK5l" node="1U0efzLAzjc" resolve="AddNewChildOp" />
                          <node concept="37vLTw" id="1U0efzLG7gj" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                          </node>
                          <node concept="37vLTw" id="1U0efzLGaNO" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                          </node>
                          <node concept="3cpWs3" id="1U0efzLGcBx" role="37wK5m">
                            <node concept="3cmrfG" id="1U0efzLGcBH" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLGb$6" role="3uHU7B">
                              <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1U0efzLGd_6" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLAyZ3" resolve="childId" />
                          </node>
                          <node concept="37vLTw" id="1U0efzLGeB_" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLAyZ7" resolve="concept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2dkUwp" id="1U0efzLG67j" role="3clFbw">
                    <node concept="2OqwBi" id="1U0efzLG3_d" role="3uHU7B">
                      <node concept="37vLTw" id="1U0efzLG3mc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzLFXrg" resolve="o" />
                      </node>
                      <node concept="2OwXpG" id="1U0efzLG4ly" role="2OqNvi">
                        <ref role="2Oxat5" node="1U0efzLAyYZ" resolve="index" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1U0efzLG5RO" role="3uHU7w">
                      <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="1U0efzLGf8Z" role="9aQIa">
                    <node concept="3clFbS" id="1U0efzLGf90" role="9aQI4">
                      <node concept="3cpWs6" id="1U0efzLGfE4" role="3cqZAp">
                        <node concept="Xjq3P" id="1U0efzLGgcI" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1U0efzLG0sM" role="3clFbw">
                <node concept="17R0WA" id="1U0efzLG2OH" role="3uHU7w">
                  <node concept="37vLTw" id="1U0efzLG304" role="3uHU7w">
                    <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLG0U_" role="3uHU7B">
                    <node concept="37vLTw" id="1U0efzLG0Bo" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLFXrg" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLG1J6" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLAyYV" resolve="role" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="1U0efzLFZu0" role="3uHU7B">
                  <node concept="2OqwBi" id="1U0efzLFXKi" role="3uHU7B">
                    <node concept="37vLTw" id="1U0efzLFXyA" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLFXrg" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLFXVa" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLAyYR" resolve="parentId" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1U0efzLFZCh" role="3uHU7w">
                    <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="1U0efzLG3be" role="9aQIa">
                <node concept="3clFbS" id="1U0efzLG3bf" role="9aQI4">
                  <node concept="3cpWs6" id="1U0efzLG3ih" role="3cqZAp">
                    <node concept="Xjq3P" id="1U0efzLG3ix" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLGgHV" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLGj5X" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLGjjC" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLGiIX" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLGgHX" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLGjxk" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLGjxl" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLGjxi" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLGjxm" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLGjxn" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLGjxo" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLGjxp" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1U0efzLJc6$" role="3cqZAp">
                <node concept="1rXfSq" id="1U0efzLJdlq" role="3cqZAk">
                  <ref role="37wK5l" node="1U0efzLIXQZ" resolve="withIndex" />
                  <node concept="2OqwBi" id="1U0efzLJeyZ" role="37wK5m">
                    <node concept="37vLTw" id="1U0efzLJez0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLGjxl" resolve="o" />
                    </node>
                    <node concept="liA8E" id="1U0efzLJez1" role="2OqNvi">
                      <ref role="37wK5l" node="1U0efzLGU0w" resolve="adjustIndex" />
                      <node concept="37vLTw" id="1U0efzLJez2" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLJez3" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLJez4" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLG_ww" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLGADZ" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLGARK" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLGAiT" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLG_wy" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLGB5k" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLGB5l" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLGB5i" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLGB5m" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLGB5n" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLGB5o" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLGB5p" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1U0efzLJicI" role="3cqZAp">
                <node concept="1rXfSq" id="1U0efzLJjqF" role="3cqZAk">
                  <ref role="37wK5l" node="1U0efzLIXQZ" resolve="withIndex" />
                  <node concept="2OqwBi" id="1U0efzLJkBn" role="37wK5m">
                    <node concept="37vLTw" id="1U0efzLJkBo" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLGB5l" resolve="o" />
                    </node>
                    <node concept="liA8E" id="1U0efzLJkBp" role="2OqNvi">
                      <ref role="37wK5l" node="1U0efzLH22V" resolve="adjustIndex" />
                      <node concept="37vLTw" id="1U0efzLJkBq" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLJkBr" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLJkBs" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLIA1z" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLIBn5" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLIBCE" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzL$1zV" resolve="SetPropertyOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLIAW4" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLIA1_" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLIBFw" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLIBIl" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLIC_E" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLIC_F" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLID$1" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAp8F" resolve="SetReferenceOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLIC_H" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLIC_I" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLIC_J" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLIC_K" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLICCP" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLICCQ" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLIDAH" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBr7u" resolve="NoOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLICCS" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLICCT" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLICCU" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLICCV" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1U0efzLGhfa" role="9aQIa">
            <node concept="3clFbS" id="1U0efzLGhfb" role="9aQI4">
              <node concept="YS8fn" id="1U0efzLGinC" role="3cqZAp">
                <node concept="2ShNRf" id="1U0efzLGinD" role="YScLw">
                  <node concept="1pGfFk" id="1U0efzLGinE" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="1U0efzLGinF" role="37wK5m">
                      <node concept="2OqwBi" id="1U0efzLGinG" role="3uHU7w">
                        <node concept="2OqwBi" id="1U0efzLGinH" role="2Oq$k0">
                          <node concept="37vLTw" id="1U0efzLGinI" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLAvKV" resolve="previous" />
                          </node>
                          <node concept="liA8E" id="1U0efzLGinJ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1U0efzLGinK" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1U0efzLGinL" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown type: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLAvL2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLAvL3" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLGDNX" role="jymVt">
      <property role="TrG5h" value="adjustIndex" />
      <node concept="37vLTG" id="1U0efzLGDNY" role="3clF46">
        <property role="TrG5h" value="otherParentId" />
        <node concept="3cpWsb" id="1U0efzLGDNZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGDO0" role="3clF46">
        <property role="TrG5h" value="otherRole" />
        <node concept="17QB3L" id="1U0efzLGDO1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGDO2" role="3clF46">
        <property role="TrG5h" value="otherIndex" />
        <node concept="10Oyi0" id="1U0efzLGDO3" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="1U0efzLGDO4" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLGDO5" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLGDO8" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLGFAp" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLGFAs" role="3cpWs9">
            <property role="TrG5h" value="adjustedIndex" />
            <node concept="10Oyi0" id="1U0efzLGFAo" role="1tU5fm" />
            <node concept="37vLTw" id="1U0efzLGFCB" role="33vP2m">
              <ref role="3cqZAo" node="1U0efzLGDO2" resolve="otherIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U0efzLGHqe" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLGHqg" role="3clFbx">
            <node concept="3clFbF" id="1U0efzLGNmP" role="3cqZAp">
              <node concept="3uNrnE" id="1U0efzLGSd7" role="3clFbG">
                <node concept="37vLTw" id="1U0efzLGSd9" role="2$L3a6">
                  <ref role="3cqZAo" node="1U0efzLGFAs" resolve="adjustedIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1U0efzLGONJ" role="3clFbw">
            <node concept="2dkUwp" id="1U0efzLGQBl" role="3uHU7w">
              <node concept="37vLTw" id="1U0efzLGQTw" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLGDO2" resolve="otherIndex" />
              </node>
              <node concept="37vLTw" id="1U0efzLGPph" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
              </node>
            </node>
            <node concept="1Wc70l" id="1U0efzLGMbP" role="3uHU7B">
              <node concept="17R0WA" id="1U0efzLGLjy" role="3uHU7B">
                <node concept="37vLTw" id="1U0efzLGKxD" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLGDNY" resolve="otherParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLGLre" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                </node>
              </node>
              <node concept="17R0WA" id="1U0efzLGMV_" role="3uHU7w">
                <node concept="37vLTw" id="1U0efzLGMp$" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLGDO0" resolve="otherRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLGN8q" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLGFKe" role="3cqZAp">
          <node concept="37vLTw" id="1U0efzLGG_z" role="3cqZAk">
            <ref role="3cqZAo" node="1U0efzLGFAs" resolve="adjustedIndex" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLGDO9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLGEDP" role="jymVt" />
    <node concept="3clFb_" id="plPun86Knr" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun86Kns" role="3clF45" />
      <node concept="3Tm1VV" id="plPun86Knt" role="1B3o_S" />
      <node concept="3clFbS" id="plPun86Knu" role="3clF47">
        <node concept="3clFbF" id="plPun87y0e" role="3cqZAp">
          <node concept="2YIFZM" id="plPun87y0f" role="3clFbG">
            <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
            <node concept="Xl_RD" id="plPun87y0g" role="37wK5m">
              <property role="Xl_RC" value="AddNewChildOp {0}, {1}.{2}[{3}], {4}" />
            </node>
            <node concept="2YIFZM" id="plPun8iize" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8iizf" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyZ3" resolve="childId" />
              </node>
            </node>
            <node concept="2YIFZM" id="plPun8ii8Y" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8ii8Z" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87zrw" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
            </node>
            <node concept="37vLTw" id="plPun87zGm" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
            </node>
            <node concept="37vLTw" id="plPun87$1l" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLAyZ7" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="plPun86Knw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun86Oup" role="jymVt" />
    <node concept="312cEu" id="1U0efzLAvL4" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Applied" />
      <node concept="2tJIrI" id="1U0efzLACGL" role="jymVt" />
      <node concept="3Tm1VV" id="1U0efzLAvL9" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLAvLa" role="EKbjA">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3clFbW" id="1U0efzLAvLb" role="jymVt">
        <node concept="3cqZAl" id="1U0efzLAvLc" role="3clF45" />
        <node concept="3Tm1VV" id="1U0efzLAvLd" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLAvLe" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="1U0efzLAvLn" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLAvLo" role="jymVt">
        <property role="TrG5h" value="getOriginalOp" />
        <node concept="3uibUv" id="1U0efzLAvLp" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLAvLq" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLAvLr" role="3clF47">
          <node concept="3clFbF" id="1U0efzLAvLs" role="3cqZAp">
            <node concept="Xjq3P" id="1U0efzLAvLt" role="3clFbG">
              <ref role="1HBi2w" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLAvLu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLAvLv" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLBBaX" role="jymVt">
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="1U0efzLBBaY" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLBBaZ" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLBBb1" role="3clF47">
          <node concept="3clFbF" id="1U0efzLBBuR" role="3cqZAp">
            <node concept="2ShNRf" id="1U0efzLBBuP" role="3clFbG">
              <node concept="1pGfFk" id="1U0efzLBBB1" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                <node concept="37vLTw" id="1U0efzLDk0o" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyYR" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLDl1_" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyYV" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLDlvD" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyYZ" resolve="index" />
                </node>
                <node concept="37vLTw" id="1U0efzLBBD8" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLAyZ3" resolve="childId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLBBb2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzLAvLI" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzLAvLJ" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
    <node concept="3uibUv" id="1U0efzLGCZQ" role="EKbjA">
      <ref role="3uigEE" node="1U0efzLGBPm" resolve="IModifiesChildrenOp" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzLBr7u">
    <property role="TrG5h" value="NoOp" />
    <node concept="2tJIrI" id="1U0efzLBraH" role="jymVt" />
    <node concept="2tJIrI" id="1U0efzLBraW" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLBrbm" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLBrbn" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLBrbo" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLBrbp" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLBrbq" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBrbt" role="3clF47">
        <node concept="3clFbF" id="1U0efzLBrAG" role="3cqZAp">
          <node concept="Xjq3P" id="1U0efzLBrAF" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLBrbu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBrF$" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLBrbx" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLBrby" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLBrbz" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLBrb$" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLBrb_" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBrbC" role="3clF47">
        <node concept="3clFbF" id="1U0efzLBrbF" role="3cqZAp">
          <node concept="10Nm6u" id="1U0efzLBrbE" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLBrbD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBrhH" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLMk4e" role="jymVt">
      <property role="TrG5h" value="getOriginalOp" />
      <node concept="3uibUv" id="1U0efzLMk4f" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLMk4g" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLMk4j" role="3clF47">
        <node concept="3clFbF" id="1U0efzLMkr0" role="3cqZAp">
          <node concept="Xjq3P" id="1U0efzLMkqZ" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLMk4k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLMkgx" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLMk4n" role="jymVt">
      <property role="TrG5h" value="invert" />
      <node concept="3uibUv" id="1U0efzLMk4o" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLMk4p" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLMk4s" role="3clF47">
        <node concept="3clFbF" id="1U0efzLMkwO" role="3cqZAp">
          <node concept="Xjq3P" id="1U0efzLMkwN" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLMk4t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBrmc" role="jymVt" />
    <node concept="3Tm1VV" id="1U0efzLBr7v" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzLBr9K" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
    <node concept="3uibUv" id="1U0efzLBrwu" role="EKbjA">
      <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzLBCqH">
    <property role="TrG5h" value="DeleteNodeOp" />
    <node concept="2tJIrI" id="1U0efzLBCqI" role="jymVt" />
    <node concept="312cEg" id="1U0efzLBCqJ" role="jymVt">
      <property role="TrG5h" value="parentId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDbfv" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLBCqL" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLBCqM" role="jymVt">
      <property role="TrG5h" value="role" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDc9n" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLBCqO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLBCqP" role="jymVt">
      <property role="TrG5h" value="index" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDd8i" role="1B3o_S" />
      <node concept="10Oyi0" id="1U0efzLBCqR" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLBCqS" role="jymVt">
      <property role="TrG5h" value="childId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDe2a" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLBCqU" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1U0efzLBCqY" role="jymVt" />
    <node concept="3clFbW" id="1U0efzLBCqZ" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLBCr0" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLBCr1" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBCr2" role="3clF47">
        <node concept="3clFbF" id="1U0efzLBCr3" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLBCr4" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLBCr5" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLBCr6" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLBCr7" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLBCr8" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLBCrx" resolve="childId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLBCrf" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLBCrg" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLBCrh" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLBCri" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLBCrj" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLBCqP" resolve="index" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLBCrk" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLBCr_" resolve="index" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLBCrl" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLBCrm" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLBCrn" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLBCro" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLBCrp" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLBCqJ" resolve="parentId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLBCrq" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLBCrB" resolve="parentId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLBCrr" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLBCrs" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLBCrt" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLBCru" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLBCrv" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLBCqM" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLBCrw" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLBCrD" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLBCrB" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzLBCrC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLBCrD" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzLBCrE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLBCr_" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzLBCrA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLBCrx" role="3clF46">
        <property role="TrG5h" value="childId" />
        <node concept="3cpWsb" id="1U0efzLBCry" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLJp0X" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLJrfI" role="jymVt">
      <property role="TrG5h" value="withIndex" />
      <node concept="37vLTG" id="1U0efzLJzbh" role="3clF46">
        <property role="TrG5h" value="newIndex" />
        <node concept="10Oyi0" id="1U0efzLJ$Qk" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1U0efzLJxxy" role="3clF45">
        <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLJrfL" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLJrfM" role="3clF47">
        <node concept="3clFbF" id="1U0efzLJ$VH" role="3cqZAp">
          <node concept="3K4zz7" id="1U0efzLJBAG" role="3clFbG">
            <node concept="Xjq3P" id="1U0efzLJCli" role="3K4E3e" />
            <node concept="2ShNRf" id="1U0efzLJCF1" role="3K4GZi">
              <node concept="1pGfFk" id="1U0efzLJD8d" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                <node concept="37vLTw" id="1U0efzLJDgC" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLJEvb" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLJFJH" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLJzbh" resolve="newIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLJGCJ" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1U0efzLJ_Kx" role="3K4Cdx">
              <node concept="37vLTw" id="1U0efzLJAa4" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
              </node>
              <node concept="37vLTw" id="1U0efzLJ$VG" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLJzbh" resolve="newIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBCrF" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLBCrG" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLBCrH" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLBCrI" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLBCrJ" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLBCrK" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBCrL" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLBJAJ" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLBJAK" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="1U0efzLBJAI" role="1tU5fm">
              <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="1U0efzLBJAL" role="33vP2m">
              <node concept="37vLTw" id="1U0efzLBJAM" role="2Oq$k0">
                <ref role="3cqZAo" node="1U0efzLBCrH" resolve="transaction" />
              </node>
              <node concept="liA8E" id="1U0efzLBJAN" role="2OqNvi">
                <ref role="37wK5l" to="3hky:4_SQzDOfxLJ" resolve="getConcept" />
                <node concept="37vLTw" id="1U0efzLBJAO" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLBCrM" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzLBCrN" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLBCrO" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzLBCrH" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzLBCrP" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOnYpN" resolve="deleteNode" />
              <node concept="37vLTw" id="1U0efzLBCrT" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLBCrV" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzLBCrW" role="3cqZAk">
            <node concept="1pGfFk" id="1U0efzLBCrX" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzLBCsf" resolve="DeleteNodeOp.Applied" />
              <node concept="37vLTw" id="1U0efzLBKlf" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLBJAK" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLBCrY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBCrZ" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLBCs0" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLBCs1" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLBCs2" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLBCs3" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLBCs4" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLBCs5" role="3clF47">
        <node concept="3clFbJ" id="1U0efzLBLsC" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLBLsE" role="3clFbx">
            <node concept="3cpWs8" id="1U0efzLBMfY" role="3cqZAp">
              <node concept="3cpWsn" id="1U0efzLBMfZ" role="3cpWs9">
                <property role="TrG5h" value="o" />
                <node concept="3uibUv" id="1U0efzLBMfU" role="1tU5fm">
                  <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                </node>
                <node concept="1eOMI4" id="1U0efzLBMg0" role="33vP2m">
                  <node concept="10QFUN" id="1U0efzLBMg1" role="1eOMHV">
                    <node concept="3uibUv" id="1U0efzLBMg2" role="10QFUM">
                      <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLBMg3" role="10QFUP">
                      <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1U0efzLBLXU" role="3cqZAp">
              <node concept="3clFbS" id="1U0efzLBLXW" role="3clFbx">
                <node concept="3clFbJ" id="1U0efzLBUU$" role="3cqZAp">
                  <node concept="3clFbS" id="1U0efzLBUUA" role="3clFbx">
                    <node concept="3cpWs6" id="1U0efzLBXRg" role="3cqZAp">
                      <node concept="2ShNRf" id="1U0efzLBXT4" role="3cqZAk">
                        <node concept="1pGfFk" id="1U0efzLBYnH" role="2ShVmc">
                          <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                          <node concept="37vLTw" id="1U0efzLC0fs" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                          </node>
                          <node concept="37vLTw" id="1U0efzLC0XD" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                          </node>
                          <node concept="3cpWsd" id="1U0efzLC2IM" role="37wK5m">
                            <node concept="3cmrfG" id="1U0efzLC2IY" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLC1Gf" role="3uHU7B">
                              <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1U0efzLC3u$" role="37wK5m">
                            <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="1U0efzLBXBi" role="3clFbw">
                    <node concept="37vLTw" id="1U0efzLBXBI" role="3uHU7w">
                      <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                    </node>
                    <node concept="2OqwBi" id="1U0efzLBVbu" role="3uHU7B">
                      <node concept="37vLTw" id="1U0efzLBUWt" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                      </node>
                      <node concept="2OwXpG" id="1U0efzLBVVN" role="2OqNvi">
                        <ref role="2Oxat5" node="1U0efzLBCqP" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="1U0efzLCvkQ" role="3eNLev">
                    <node concept="3clFbS" id="1U0efzLCvkS" role="3eOfB_">
                      <node concept="3clFbJ" id="1U0efzLC80m" role="3cqZAp">
                        <property role="TyiWK" value="true" />
                        <node concept="3clFbS" id="1U0efzLC80o" role="3clFbx">
                          <node concept="YS8fn" id="1U0efzLCb7d" role="3cqZAp">
                            <node concept="2ShNRf" id="1U0efzLCb7u" role="YScLw">
                              <node concept="1pGfFk" id="1U0efzLCbgZ" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                <node concept="3cpWs3" id="1U0efzLCpku" role="37wK5m">
                                  <node concept="2OqwBi" id="1U0efzLCpJ6" role="3uHU7w">
                                    <node concept="37vLTw" id="1U0efzLCpkE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                                    </node>
                                    <node concept="2OwXpG" id="1U0efzLCr0e" role="2OqNvi">
                                      <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs3" id="1U0efzLCnHs" role="3uHU7B">
                                    <node concept="3cpWs3" id="1U0efzLCmlB" role="3uHU7B">
                                      <node concept="3cpWs3" id="1U0efzLCgJ$" role="3uHU7B">
                                        <node concept="3cpWs3" id="1U0efzLCfCG" role="3uHU7B">
                                          <node concept="3cpWs3" id="1U0efzLCeGY" role="3uHU7B">
                                            <node concept="3cpWs3" id="1U0efzLCe4i" role="3uHU7B">
                                              <node concept="3cpWs3" id="1U0efzLCdbA" role="3uHU7B">
                                                <node concept="3cpWs3" id="1U0efzLCceP" role="3uHU7B">
                                                  <node concept="Xl_RD" id="1U0efzLCbn3" role="3uHU7B">
                                                    <property role="Xl_RC" value="Both operations delete " />
                                                  </node>
                                                  <node concept="37vLTw" id="1U0efzLCciA" role="3uHU7w">
                                                    <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="1U0efzLCdbM" role="3uHU7w">
                                                  <property role="Xl_RC" value="." />
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="1U0efzLCe4S" role="3uHU7w">
                                                <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="1U0efzLCeHa" role="3uHU7w">
                                              <property role="Xl_RC" value="[" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="1U0efzLCfDy" role="3uHU7w">
                                            <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="1U0efzLCgJK" role="3uHU7w">
                                          <property role="Xl_RC" value="] but with different expected IDs " />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="1U0efzLCmLI" role="3uHU7w">
                                        <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="1U0efzLCnHC" role="3uHU7w">
                                      <property role="Xl_RC" value=" and " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17QLQc" id="1U0efzLCaAk" role="3clFbw">
                          <node concept="37vLTw" id="1U0efzLCaVW" role="3uHU7w">
                            <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                          </node>
                          <node concept="2OqwBi" id="1U0efzLC8ha" role="3uHU7B">
                            <node concept="37vLTw" id="1U0efzLC82h" role="2Oq$k0">
                              <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                            </node>
                            <node concept="2OwXpG" id="1U0efzLC9bO" role="2OqNvi">
                              <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1U0efzLCrJ5" role="3cqZAp">
                        <node concept="2ShNRf" id="1U0efzLCs5i" role="3cqZAk">
                          <node concept="HV5vD" id="1U0efzLCu5u" role="2ShVmc">
                            <ref role="HV5vE" node="1U0efzLBr7u" resolve="NoOp" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="1U0efzLCvWw" role="3eO9$A">
                      <node concept="2OqwBi" id="1U0efzLCvWx" role="3uHU7B">
                        <node concept="37vLTw" id="1U0efzLCvWy" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLCvWz" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLBCqP" resolve="index" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLCvW$" role="3uHU7w">
                        <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1U0efzLC_uh" role="9aQIa">
                    <node concept="3clFbS" id="1U0efzLC_ui" role="9aQI4">
                      <node concept="3cpWs6" id="1U0efzLCA5Q" role="3cqZAp">
                        <node concept="Xjq3P" id="1U0efzLCA9C" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1U0efzLBQPe" role="3clFbw">
                <node concept="17R0WA" id="1U0efzLBNNb" role="3uHU7B">
                  <node concept="37vLTw" id="1U0efzLBMqc" role="3uHU7B">
                    <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLBOpc" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLBNXT" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLBPoZ" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLBCqJ" resolve="parentId" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="1U0efzLBRxW" role="3uHU7w">
                  <node concept="37vLTw" id="1U0efzLBR0L" role="3uHU7B">
                    <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLBS7k" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLBRHT" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLBMfZ" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLBSY3" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLBCqM" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="1U0efzLCuH9" role="9aQIa">
                <node concept="3clFbS" id="1U0efzLCuHa" role="9aQI4">
                  <node concept="3cpWs6" id="1U0efzLCAM_" role="3cqZAp">
                    <node concept="Xjq3P" id="1U0efzLCAMP" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1U0efzLBLJX" role="3clFbw">
            <node concept="3uibUv" id="1U0efzLBLRO" role="2ZW6by">
              <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
            </node>
            <node concept="37vLTw" id="1U0efzLBLuL" role="2ZW6bz">
              <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLCAQG" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLCDwW" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLCDKC" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLCD6D" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLCAQI" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLCDOm" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLCDOn" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLCEEP" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLCDOp" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLCDOq" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLCFpA" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLCDOs" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1U0efzLCDOt" role="3cqZAp">
                <node concept="3clFbS" id="1U0efzLCDOu" role="3clFbx">
                  <node concept="3clFbJ" id="1U0efzLCDOv" role="3cqZAp">
                    <node concept="3clFbS" id="1U0efzLCDOw" role="3clFbx">
                      <node concept="3cpWs6" id="1U0efzLCDOx" role="3cqZAp">
                        <node concept="2ShNRf" id="1U0efzLCDOy" role="3cqZAk">
                          <node concept="1pGfFk" id="1U0efzLCDOz" role="2ShVmc">
                            <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                            <node concept="37vLTw" id="1U0efzLCDO$" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLCDO_" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                            </node>
                            <node concept="3cpWs3" id="1U0efzLDhP5" role="37wK5m">
                              <node concept="37vLTw" id="1U0efzLCDOC" role="3uHU7B">
                                <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                              </node>
                              <node concept="3cmrfG" id="1U0efzLCDOB" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="1U0efzLCDOD" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2dkUwp" id="1U0efzLDgUS" role="3clFbw">
                      <node concept="2OqwBi" id="1U0efzLCDOG" role="3uHU7B">
                        <node concept="37vLTw" id="1U0efzLCDOH" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLCDOn" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLCDOI" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLAyYZ" resolve="index" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLCDOF" role="3uHU7w">
                        <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="1U0efzLCDPo" role="9aQIa">
                      <node concept="3clFbS" id="1U0efzLCDPp" role="9aQI4">
                        <node concept="3cpWs6" id="1U0efzLCDPq" role="3cqZAp">
                          <node concept="Xjq3P" id="1U0efzLCDPr" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1U0efzLCDPs" role="3clFbw">
                  <node concept="17R0WA" id="1U0efzLCDPt" role="3uHU7B">
                    <node concept="37vLTw" id="1U0efzLCDPu" role="3uHU7B">
                      <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                    </node>
                    <node concept="2OqwBi" id="1U0efzLCDPv" role="3uHU7w">
                      <node concept="37vLTw" id="1U0efzLCDPw" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzLCDOn" resolve="o" />
                      </node>
                      <node concept="2OwXpG" id="1U0efzLCDPx" role="2OqNvi">
                        <ref role="2Oxat5" node="1U0efzLAyYR" resolve="parentId" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="1U0efzLCDPy" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLCDPz" role="3uHU7B">
                      <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                    </node>
                    <node concept="2OqwBi" id="1U0efzLCDP$" role="3uHU7w">
                      <node concept="37vLTw" id="1U0efzLCDP_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzLCDOn" resolve="o" />
                      </node>
                      <node concept="2OwXpG" id="1U0efzLCDPA" role="2OqNvi">
                        <ref role="2Oxat5" node="1U0efzLAyYV" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1U0efzLCDPB" role="9aQIa">
                  <node concept="3clFbS" id="1U0efzLCDPC" role="9aQI4">
                    <node concept="3cpWs6" id="1U0efzLCDPD" role="3cqZAp">
                      <node concept="Xjq3P" id="1U0efzLCDPE" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLDBT$" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLDDme" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLDDA2" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLDCPC" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLDBTA" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLDDUh" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLDDUi" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLDDUd" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLDDUj" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLDDUk" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLDDUl" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLDDUm" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1U0efzLEe0n" role="3cqZAp">
                <node concept="3clFbS" id="1U0efzLEe0p" role="3clFbx">
                  <node concept="3clFbJ" id="1U0efzLEINg" role="3cqZAp">
                    <property role="TyiWK" value="true" />
                    <node concept="3clFbS" id="1U0efzLEINi" role="3clFbx">
                      <node concept="YS8fn" id="1U0efzLEVLx" role="3cqZAp">
                        <node concept="2ShNRf" id="1U0efzLEVLM" role="YScLw">
                          <node concept="1pGfFk" id="1U0efzLEVXE" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                            <node concept="3cpWs3" id="1U0efzLFbjt" role="37wK5m">
                              <node concept="Xl_RD" id="1U0efzLFarQ" role="3uHU7w">
                                <property role="Xl_RC" value="]" />
                              </node>
                              <node concept="3cpWs3" id="1U0efzLFarE" role="3uHU7B">
                                <node concept="3cpWs3" id="1U0efzLF9jh" role="3uHU7B">
                                  <node concept="3cpWs3" id="1U0efzLF6fO" role="3uHU7B">
                                    <node concept="3cpWs3" id="1U0efzLF5aS" role="3uHU7B">
                                      <node concept="3cpWs3" id="1U0efzLF1Sx" role="3uHU7B">
                                        <node concept="3cpWs3" id="1U0efzLFgoP" role="3uHU7B">
                                          <node concept="Xl_RD" id="1U0efzLFeIF" role="3uHU7w">
                                            <property role="Xl_RC" value=" but was " />
                                          </node>
                                          <node concept="3cpWs3" id="1U0efzLFm_Y" role="3uHU7B">
                                            <node concept="Xl_RD" id="1U0efzLFlzd" role="3uHU7w">
                                              <property role="Xl_RC" value="]" />
                                            </node>
                                            <node concept="3cpWs3" id="1U0efzLFlz1" role="3uHU7B">
                                              <node concept="3cpWs3" id="1U0efzLFkfy" role="3uHU7B">
                                                <node concept="3cpWs3" id="1U0efzLFjo0" role="3uHU7B">
                                                  <node concept="3cpWs3" id="1U0efzLFi61" role="3uHU7B">
                                                    <node concept="3cpWs3" id="1U0efzLFebj" role="3uHU7B">
                                                      <node concept="3cpWs3" id="1U0efzLEYsD" role="3uHU7B">
                                                        <node concept="3cpWs3" id="1U0efzLEXlF" role="3uHU7B">
                                                          <node concept="Xl_RD" id="1U0efzLEWHK" role="3uHU7B">
                                                            <property role="Xl_RC" value="node " />
                                                          </node>
                                                          <node concept="37vLTw" id="1U0efzLEXrJ" role="3uHU7w">
                                                            <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                                                          </node>
                                                        </node>
                                                        <node concept="Xl_RD" id="1U0efzLEYsP" role="3uHU7w">
                                                          <property role="Xl_RC" value=" expected to be at " />
                                                        </node>
                                                      </node>
                                                      <node concept="37vLTw" id="1U0efzLFgXX" role="3uHU7w">
                                                        <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="1U0efzLFi6d" role="3uHU7w">
                                                      <property role="Xl_RC" value="." />
                                                    </node>
                                                  </node>
                                                  <node concept="37vLTw" id="1U0efzLFjoQ" role="3uHU7w">
                                                    <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="1U0efzLFkfI" role="3uHU7w">
                                                  <property role="Xl_RC" value="[" />
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="1U0efzLFnd1" role="3uHU7w">
                                                <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="1U0efzLF2xE" role="3uHU7w">
                                          <node concept="37vLTw" id="1U0efzLF1SH" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                                          </node>
                                          <node concept="2OwXpG" id="1U0efzLF3If" role="2OqNvi">
                                            <ref role="2Oxat5" node="1U0efzLDmDO" resolve="sourceParentId" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="1U0efzLF5b4" role="3uHU7w">
                                        <property role="Xl_RC" value="." />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="1U0efzLF6U0" role="3uHU7w">
                                      <node concept="37vLTw" id="1U0efzLF6g0" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                                      </node>
                                      <node concept="2OwXpG" id="1U0efzLF87u" role="2OqNvi">
                                        <ref role="2Oxat5" node="1U0efzLDnJs" resolve="sourceRole" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="1U0efzLF9jt" role="3uHU7w">
                                    <property role="Xl_RC" value="[" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1U0efzLFcgJ" role="3uHU7w">
                                  <node concept="37vLTw" id="1U0efzLFbPa" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                                  </node>
                                  <node concept="2OwXpG" id="1U0efzLFdvA" role="2OqNvi">
                                    <ref role="2Oxat5" node="1U0efzLDnMK" resolve="sourceIndex" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="1U0efzLERIk" role="3clFbw">
                      <node concept="17QLQc" id="1U0efzLEV9Z" role="3uHU7w">
                        <node concept="37vLTw" id="1U0efzLEVp1" role="3uHU7w">
                          <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                        </node>
                        <node concept="2OqwBi" id="1U0efzLESs6" role="3uHU7B">
                          <node concept="37vLTw" id="1U0efzLES4a" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="2OwXpG" id="1U0efzLETvV" role="2OqNvi">
                            <ref role="2Oxat5" node="1U0efzLDnMK" resolve="sourceIndex" />
                          </node>
                        </node>
                      </node>
                      <node concept="22lmx$" id="1U0efzLEN_1" role="3uHU7B">
                        <node concept="17QLQc" id="1U0efzLEM$p" role="3uHU7B">
                          <node concept="2OqwBi" id="1U0efzLEK52" role="3uHU7B">
                            <node concept="37vLTw" id="1U0efzLEJNQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                            </node>
                            <node concept="2OwXpG" id="1U0efzLEL1Z" role="2OqNvi">
                              <ref role="2Oxat5" node="1U0efzLDmDO" resolve="sourceParentId" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1U0efzLEMIg" role="3uHU7w">
                            <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                          </node>
                        </node>
                        <node concept="17QLQc" id="1U0efzLEQmM" role="3uHU7w">
                          <node concept="2OqwBi" id="1U0efzLEOfM" role="3uHU7B">
                            <node concept="37vLTw" id="1U0efzLENSV" role="2Oq$k0">
                              <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                            </node>
                            <node concept="2OwXpG" id="1U0efzLEPig" role="2OqNvi">
                              <ref role="2Oxat5" node="1U0efzLDnJs" resolve="sourceRole" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1U0efzLER8A" role="3uHU7w">
                            <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1U0efzLEsOp" role="3cqZAp">
                    <node concept="2ShNRf" id="1U0efzLEsSv" role="3cqZAk">
                      <node concept="1pGfFk" id="1U0efzLEtZv" role="2ShVmc">
                        <ref role="37wK5l" node="1U0efzLBCqZ" resolve="DeleteNodeOp" />
                        <node concept="2OqwBi" id="1U0efzLEvUf" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLEuYK" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="2OwXpG" id="1U0efzLExMo" role="2OqNvi">
                            <ref role="2Oxat5" node="1U0efzLDnCc" resolve="targetParentId" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1U0efzLE$MW" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLEzLO" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="2OwXpG" id="1U0efzLE_WW" role="2OqNvi">
                            <ref role="2Oxat5" node="1U0efzLDnL3" resolve="targetRole" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1U0efzLECSz" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLEBWv" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="2OwXpG" id="1U0efzLEEMz" role="2OqNvi">
                            <ref role="2Oxat5" node="1U0efzLDnOz" resolve="targetIndex" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1U0efzLEGML" role="37wK5m">
                          <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="1U0efzLEhaT" role="3clFbw">
                  <node concept="37vLTw" id="1U0efzLEhkI" role="3uHU7w">
                    <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                  </node>
                  <node concept="2OqwBi" id="1U0efzLEfiX" role="3uHU7B">
                    <node concept="37vLTw" id="1U0efzLEf1N" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                    </node>
                    <node concept="2OwXpG" id="1U0efzLEfxt" role="2OqNvi">
                      <ref role="2Oxat5" node="1U0efzLDrhq" resolve="childId" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1U0efzLEhCb" role="3eNLev">
                  <node concept="3clFbS" id="1U0efzLEhCd" role="3eOfB_">
                    <node concept="3cpWs6" id="1U0efzLJM5T" role="3cqZAp">
                      <node concept="1rXfSq" id="1U0efzLJNPF" role="3cqZAk">
                        <ref role="37wK5l" node="1U0efzLJrfI" resolve="withIndex" />
                        <node concept="2OqwBi" id="1U0efzLJP$s" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLJP$t" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="liA8E" id="1U0efzLJP$u" role="2OqNvi">
                            <ref role="37wK5l" node="1U0efzLH22V" resolve="adjustIndex" />
                            <node concept="37vLTw" id="1U0efzLJP$v" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLJP$w" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLJP$x" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="1U0efzLEhLB" role="3eO9$A">
                    <node concept="17R0WA" id="1U0efzLEhLC" role="3uHU7w">
                      <node concept="2OqwBi" id="1U0efzLEhLD" role="3uHU7w">
                        <node concept="37vLTw" id="1U0efzLEhLE" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLEhLF" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLDnL3" resolve="targetRole" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLEhLG" role="3uHU7B">
                        <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="1U0efzLEhLH" role="3uHU7B">
                      <node concept="37vLTw" id="1U0efzLEhLI" role="3uHU7B">
                        <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                      </node>
                      <node concept="2OqwBi" id="1U0efzLEhLJ" role="3uHU7w">
                        <node concept="37vLTw" id="1U0efzLEhLK" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLEhLL" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLDnCc" resolve="targetParentId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1U0efzLEkdZ" role="3eNLev">
                  <node concept="3clFbS" id="1U0efzLEke1" role="3eOfB_">
                    <node concept="3clFbJ" id="1U0efzLHB1x" role="3cqZAp">
                      <property role="TyiWK" value="true" />
                      <node concept="3clFbS" id="1U0efzLHB1z" role="3clFbx">
                        <node concept="YS8fn" id="1U0efzLFARW" role="3cqZAp">
                          <node concept="2ShNRf" id="1U0efzLFASb" role="YScLw">
                            <node concept="1pGfFk" id="1U0efzLFB43" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                              <node concept="3cpWs3" id="1U0efzLFRb_" role="37wK5m">
                                <node concept="2OqwBi" id="1U0efzLFRYt" role="3uHU7w">
                                  <node concept="37vLTw" id="1U0efzLFRbL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                                  </node>
                                  <node concept="2OwXpG" id="1U0efzLFTki" role="2OqNvi">
                                    <ref role="2Oxat5" node="1U0efzLDrhq" resolve="childId" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="1U0efzLFPWj" role="3uHU7B">
                                  <node concept="3cpWs3" id="1U0efzLFO85" role="3uHU7B">
                                    <node concept="3cpWs3" id="1U0efzLFIxY" role="3uHU7B">
                                      <node concept="3cpWs3" id="1U0efzLFGXj" role="3uHU7B">
                                        <node concept="3cpWs3" id="1U0efzLFFLl" role="3uHU7B">
                                          <node concept="3cpWs3" id="1U0efzLFEUG" role="3uHU7B">
                                            <node concept="3cpWs3" id="1U0efzLFDLK" role="3uHU7B">
                                              <node concept="3cpWs3" id="1U0efzLFC$J" role="3uHU7B">
                                                <node concept="Xl_RD" id="1U0efzLFBKF" role="3uHU7B">
                                                  <property role="Xl_RC" value="Node at " />
                                                </node>
                                                <node concept="37vLTw" id="1U0efzLFCEN" role="3uHU7w">
                                                  <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="1U0efzLFDLW" role="3uHU7w">
                                                <property role="Xl_RC" value="." />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="1U0efzLFEVi" role="3uHU7w">
                                              <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="1U0efzLFFLx" role="3uHU7w">
                                            <property role="Xl_RC" value="[" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1U0efzLFHe1" role="3uHU7w">
                                          <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="1U0efzLFIya" role="3uHU7w">
                                        <property role="Xl_RC" value="] is expected to be " />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1U0efzLFOMw" role="3uHU7w">
                                      <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="1U0efzLFPWv" role="3uHU7w">
                                    <property role="Xl_RC" value=", but was " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="1U0efzLHG1h" role="3clFbw">
                        <node concept="37vLTw" id="1U0efzLHGBC" role="3uHU7w">
                          <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                        </node>
                        <node concept="2OqwBi" id="1U0efzLHCWW" role="3uHU7B">
                          <node concept="37vLTw" id="1U0efzLHCqS" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                          </node>
                          <node concept="2OwXpG" id="1U0efzLHEd3" role="2OqNvi">
                            <ref role="2Oxat5" node="1U0efzLDnMK" resolve="sourceIndex" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="1U0efzLHLfc" role="9aQIa">
                        <node concept="3clFbS" id="1U0efzLHLfd" role="9aQI4">
                          <node concept="3cpWs6" id="1U0efzLK0EO" role="3cqZAp">
                            <node concept="1rXfSq" id="1U0efzLK0EQ" role="3cqZAk">
                              <ref role="37wK5l" node="1U0efzLJrfI" resolve="withIndex" />
                              <node concept="2OqwBi" id="1U0efzLK0ER" role="37wK5m">
                                <node concept="37vLTw" id="1U0efzLK0ES" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                                </node>
                                <node concept="liA8E" id="1U0efzLK0ET" role="2OqNvi">
                                  <ref role="37wK5l" node="1U0efzLH22V" resolve="adjustIndex" />
                                  <node concept="37vLTw" id="1U0efzLK0EU" role="37wK5m">
                                    <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                                  </node>
                                  <node concept="37vLTw" id="1U0efzLK0EV" role="37wK5m">
                                    <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                                  </node>
                                  <node concept="37vLTw" id="1U0efzLK0EW" role="37wK5m">
                                    <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="1U0efzLDQX$" role="3eO9$A">
                    <node concept="17R0WA" id="1U0efzLDRUK" role="3uHU7w">
                      <node concept="2OqwBi" id="1U0efzLDSEE" role="3uHU7w">
                        <node concept="37vLTw" id="1U0efzLDSeW" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLDSZq" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLDnJs" resolve="sourceRole" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLDRhm" role="3uHU7B">
                        <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="1U0efzLDLYh" role="3uHU7B">
                      <node concept="37vLTw" id="1U0efzLDL0P" role="3uHU7B">
                        <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                      </node>
                      <node concept="2OqwBi" id="1U0efzLDMLo" role="3uHU7w">
                        <node concept="37vLTw" id="1U0efzLDMhn" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLDDUi" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLDNNk" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLDmDO" resolve="sourceParentId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1U0efzLEo$c" role="9aQIa">
                  <node concept="3clFbS" id="1U0efzLEo$d" role="9aQI4">
                    <node concept="3cpWs6" id="1U0efzLDTa0" role="3cqZAp">
                      <node concept="Xjq3P" id="1U0efzLDTdW" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLItDD" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLIvUX" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLIweN" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzL$1zV" resolve="SetPropertyOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLIvru" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLItDF" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLIwjM" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLIwoK" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLIy27" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLIy28" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLIzO8" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAp8F" resolve="SetReferenceOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLIy2a" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLIy2b" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLIy2c" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLIy2d" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLIzUX" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLIzUY" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLI_Hj" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBr7u" resolve="NoOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLIzV0" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLIzV1" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLIzV2" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLIzV3" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1U0efzLCBuy" role="9aQIa">
            <node concept="3clFbS" id="1U0efzLCBuz" role="9aQI4">
              <node concept="YS8fn" id="1U0efzLCCBA" role="3cqZAp">
                <node concept="2ShNRf" id="1U0efzLCCBB" role="YScLw">
                  <node concept="1pGfFk" id="1U0efzLCCBC" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="1U0efzLCCBD" role="37wK5m">
                      <node concept="2OqwBi" id="1U0efzLCCBE" role="3uHU7w">
                        <node concept="2OqwBi" id="1U0efzLCCBF" role="2Oq$k0">
                          <node concept="37vLTw" id="1U0efzLCCBG" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLBCs1" resolve="previous" />
                          </node>
                          <node concept="liA8E" id="1U0efzLCCBH" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1U0efzLCCBI" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1U0efzLCCBJ" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown type: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLBCs8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLGVKm" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLGU0w" role="jymVt">
      <property role="TrG5h" value="adjustIndex" />
      <node concept="37vLTG" id="1U0efzLGU0x" role="3clF46">
        <property role="TrG5h" value="otherParentId" />
        <node concept="3cpWsb" id="1U0efzLGU0y" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGU0z" role="3clF46">
        <property role="TrG5h" value="otherRole" />
        <node concept="17QB3L" id="1U0efzLGU0$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGU0_" role="3clF46">
        <property role="TrG5h" value="otherIndex" />
        <node concept="10Oyi0" id="1U0efzLGU0A" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="1U0efzLGU0B" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLGU0C" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLGU0D" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLGU0E" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLGU0F" role="3cpWs9">
            <property role="TrG5h" value="adjustedIndex" />
            <node concept="10Oyi0" id="1U0efzLGU0G" role="1tU5fm" />
            <node concept="37vLTw" id="1U0efzLGU0H" role="33vP2m">
              <ref role="3cqZAo" node="1U0efzLGU0_" resolve="otherIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U0efzLGU0I" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLGU0J" role="3clFbx">
            <node concept="3clFbF" id="1U0efzLGU0K" role="3cqZAp">
              <node concept="3uO5VW" id="1U0efzLH0Qz" role="3clFbG">
                <node concept="37vLTw" id="1U0efzLH0Q_" role="2$L3a6">
                  <ref role="3cqZAo" node="1U0efzLGU0F" resolve="adjustedIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1U0efzLGU0N" role="3clFbw">
            <node concept="3eOVzh" id="1U0efzLH15h" role="3uHU7w">
              <node concept="37vLTw" id="1U0efzLGU0Q" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
              </node>
              <node concept="37vLTw" id="1U0efzLGU0P" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLGU0_" resolve="otherIndex" />
              </node>
            </node>
            <node concept="1Wc70l" id="1U0efzLGU0R" role="3uHU7B">
              <node concept="17R0WA" id="1U0efzLGU0S" role="3uHU7B">
                <node concept="37vLTw" id="1U0efzLGU0T" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLGU0x" resolve="otherParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLGU0U" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                </node>
              </node>
              <node concept="17R0WA" id="1U0efzLGU0V" role="3uHU7w">
                <node concept="37vLTw" id="1U0efzLGU0W" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLGU0z" resolve="otherRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLGU0X" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLGU0Y" role="3cqZAp">
          <node concept="37vLTw" id="1U0efzLGU0Z" role="3cqZAk">
            <ref role="3cqZAo" node="1U0efzLGU0F" resolve="adjustedIndex" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLGU10" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLBCs9" role="jymVt" />
    <node concept="3clFb_" id="plPun86ToM" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun86ToN" role="3clF45" />
      <node concept="3Tm1VV" id="plPun86ToO" role="1B3o_S" />
      <node concept="3clFbS" id="plPun86ToP" role="3clF47">
        <node concept="3clFbF" id="plPun87tJs" role="3cqZAp">
          <node concept="2YIFZM" id="plPun87tJt" role="3clFbG">
            <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
            <node concept="Xl_RD" id="plPun87tJu" role="37wK5m">
              <property role="Xl_RC" value="DeleteNodeOp {0}, {1}.{2}[{3}]" />
            </node>
            <node concept="2YIFZM" id="plPun8il_N" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8il_O" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
              </node>
            </node>
            <node concept="2YIFZM" id="plPun8img_" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8imgA" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87vls" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
            </node>
            <node concept="37vLTw" id="plPun87vRT" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="plPun86ToR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun86Xp3" role="jymVt" />
    <node concept="312cEu" id="1U0efzLBCsa" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Applied" />
      <node concept="312cEg" id="1U0efzLBGjH" role="jymVt">
        <property role="TrG5h" value="concept" />
        <node concept="3Tm6S6" id="1U0efzLBGjI" role="1B3o_S" />
        <node concept="3uibUv" id="1U0efzLBGGa" role="1tU5fm">
          <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLBCsc" role="jymVt" />
      <node concept="3Tm1VV" id="1U0efzLBCsd" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLBCse" role="EKbjA">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3clFbW" id="1U0efzLBCsf" role="jymVt">
        <node concept="37vLTG" id="1U0efzLBGKe" role="3clF46">
          <property role="TrG5h" value="concept" />
          <node concept="3uibUv" id="1U0efzLBH8D" role="1tU5fm">
            <ref role="3uigEE" to="mjcn:5gTrVpGiUpC" resolve="IConcept" />
          </node>
        </node>
        <node concept="3cqZAl" id="1U0efzLBCsg" role="3clF45" />
        <node concept="3Tm1VV" id="1U0efzLBCsh" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLBCsi" role="3clF47">
          <node concept="3clFbF" id="1U0efzLMqZS" role="3cqZAp">
            <node concept="37vLTI" id="1U0efzLMrIj" role="3clFbG">
              <node concept="37vLTw" id="1U0efzLMrNL" role="37vLTx">
                <ref role="3cqZAo" node="1U0efzLBGKe" resolve="concept" />
              </node>
              <node concept="2OqwBi" id="1U0efzLMr7W" role="37vLTJ">
                <node concept="Xjq3P" id="1U0efzLMqZR" role="2Oq$k0" />
                <node concept="2OwXpG" id="1U0efzLMruE" role="2OqNvi">
                  <ref role="2Oxat5" node="1U0efzLBGjH" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLBCsj" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLBCsk" role="jymVt">
        <property role="TrG5h" value="getOriginalOp" />
        <node concept="3uibUv" id="1U0efzLBCsl" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLBCsm" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLBCsn" role="3clF47">
          <node concept="3clFbF" id="1U0efzLBCso" role="3cqZAp">
            <node concept="Xjq3P" id="1U0efzLBCsp" role="3clFbG">
              <ref role="1HBi2w" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLBCsq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLBCsr" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLBCss" role="jymVt">
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="1U0efzLBCst" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLBCsu" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLBCsv" role="3clF47">
          <node concept="3clFbF" id="1U0efzLBCsw" role="3cqZAp">
            <node concept="2ShNRf" id="1U0efzLBCsx" role="3clFbG">
              <node concept="1pGfFk" id="1U0efzLBCsy" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLAzjc" resolve="AddNewChildOp" />
                <node concept="37vLTw" id="1U0efzLMnhn" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqJ" resolve="parentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLMoNg" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqM" resolve="role" />
                </node>
                <node concept="37vLTw" id="1U0efzLMpXN" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqP" resolve="index" />
                </node>
                <node concept="37vLTw" id="1U0efzLBCsz" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBCqS" resolve="childId" />
                </node>
                <node concept="37vLTw" id="1U0efzLMqNF" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLBGjH" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLBCs$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1U0efzLBCs_" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzLBCsA" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
    <node concept="3uibUv" id="1U0efzLGYDY" role="EKbjA">
      <ref role="3uigEE" node="1U0efzLGBPm" resolve="IModifiesChildrenOp" />
    </node>
  </node>
  <node concept="312cEu" id="1U0efzLDlUu">
    <property role="TrG5h" value="MoveNodeOp" />
    <node concept="2tJIrI" id="1U0efzLDlXc" role="jymVt" />
    <node concept="312cEg" id="1U0efzLDrhq" role="jymVt">
      <property role="TrG5h" value="childId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDrhr" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLDrhs" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1U0efzLDylN" role="jymVt" />
    <node concept="312cEg" id="1U0efzLDmDO" role="jymVt">
      <property role="TrG5h" value="sourceParentId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnpu" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLDmKY" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLDnJs" role="jymVt">
      <property role="TrG5h" value="sourceRole" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnJt" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLDoi_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLDnMK" role="jymVt">
      <property role="TrG5h" value="sourceIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnML" role="1B3o_S" />
      <node concept="10Oyi0" id="1U0efzLDoRT" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1U0efzLDyDH" role="jymVt" />
    <node concept="312cEg" id="1U0efzLDnCc" role="jymVt">
      <property role="TrG5h" value="targetParentId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnCd" role="1B3o_S" />
      <node concept="3cpWsb" id="1U0efzLDnCe" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLDnL3" role="jymVt">
      <property role="TrG5h" value="targetRole" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnL4" role="1B3o_S" />
      <node concept="17QB3L" id="1U0efzLDomn" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1U0efzLDnOz" role="jymVt">
      <property role="TrG5h" value="targetIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1U0efzLDnO$" role="1B3o_S" />
      <node concept="10Oyi0" id="1U0efzLDpaz" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1U0efzLDr1$" role="jymVt" />
    <node concept="3clFbW" id="1U0efzLDtUD" role="jymVt">
      <node concept="3cqZAl" id="1U0efzLDtUE" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLDtUF" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLDtUH" role="3clF47">
        <node concept="3clFbF" id="1U0efzLDtUL" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtUN" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtUR" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtUS" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtUT" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDrhq" resolve="childId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtUU" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtUK" resolve="childId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtV9" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtVb" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtVf" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtVg" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtVh" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDmDO" resolve="sourceParentId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtVi" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtV8" resolve="sourceParentId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtVl" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtVn" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtVr" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtVs" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtVt" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDnJs" resolve="sourceRole" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtVu" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtVk" resolve="sourceRole" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtUX" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtUZ" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtV3" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtV4" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtV5" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDnMK" resolve="sourceIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtV6" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtUW" resolve="sourceIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtVH" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtVJ" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtVN" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtVO" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtVP" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDnCc" resolve="targetParentId" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtVQ" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtVG" resolve="targetParentId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtVT" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtVV" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtVZ" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtW0" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtW1" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDnL3" resolve="targetRole" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtW2" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtVS" resolve="targetRole" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDtVx" role="3cqZAp">
          <node concept="37vLTI" id="1U0efzLDtVz" role="3clFbG">
            <node concept="2OqwBi" id="1U0efzLDtVB" role="37vLTJ">
              <node concept="Xjq3P" id="1U0efzLDtVC" role="2Oq$k0" />
              <node concept="2OwXpG" id="1U0efzLDtVD" role="2OqNvi">
                <ref role="2Oxat5" node="1U0efzLDnOz" resolve="targetIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="1U0efzLDtVE" role="37vLTx">
              <ref role="3cqZAo" node="1U0efzLDtVw" resolve="targetIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1U0efzLDtUK" role="3clF46">
        <property role="TrG5h" value="childId" />
        <node concept="3cpWsb" id="1U0efzLDtUJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtV8" role="3clF46">
        <property role="TrG5h" value="sourceParentId" />
        <node concept="3cpWsb" id="1U0efzLDtV7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtVk" role="3clF46">
        <property role="TrG5h" value="sourceRole" />
        <node concept="17QB3L" id="1U0efzLDtVj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtUW" role="3clF46">
        <property role="TrG5h" value="sourceIndex" />
        <node concept="10Oyi0" id="1U0efzLDtUV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtVG" role="3clF46">
        <property role="TrG5h" value="targetParentId" />
        <node concept="3cpWsb" id="1U0efzLDtVF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtVS" role="3clF46">
        <property role="TrG5h" value="targetRole" />
        <node concept="17QB3L" id="1U0efzLDtVR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLDtVw" role="3clF46">
        <property role="TrG5h" value="targetIndex" />
        <node concept="10Oyi0" id="1U0efzLDtVv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLDm1$" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLK5u1" role="jymVt">
      <property role="TrG5h" value="withIndex" />
      <node concept="37vLTG" id="1U0efzLK7gT" role="3clF46">
        <property role="TrG5h" value="newSourceIndex" />
        <node concept="10Oyi0" id="1U0efzLK7OV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLK7Ts" role="3clF46">
        <property role="TrG5h" value="newTargetIndex" />
        <node concept="10Oyi0" id="1U0efzLK8ty" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1U0efzLKl51" role="3clF45">
        <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLK5u4" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLK5u5" role="3clF47">
        <node concept="3clFbF" id="1U0efzLK8$v" role="3cqZAp">
          <node concept="3K4zz7" id="1U0efzLKe23" role="3clFbG">
            <node concept="Xjq3P" id="1U0efzLKev_" role="3K4E3e" />
            <node concept="2ShNRf" id="1U0efzLKePq" role="3K4GZi">
              <node concept="1pGfFk" id="1U0efzLKfiW" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLDtUD" resolve="MoveNodeOp" />
                <node concept="37vLTw" id="1U0efzLKfqO" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
                </node>
                <node concept="37vLTw" id="1U0efzLKghn" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLKh8n" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLKi1l" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLK7gT" resolve="newSourceIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLKiO1" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLKjHJ" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLKkBT" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLK7Ts" resolve="newTargetIndex" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1U0efzLKaTK" role="3K4Cdx">
              <node concept="3clFbC" id="1U0efzLKcwj" role="3uHU7w">
                <node concept="37vLTw" id="1U0efzLKcUh" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLKbmO" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLK7Ts" resolve="newTargetIndex" />
                </node>
              </node>
              <node concept="3clFbC" id="1U0efzLK9gr" role="3uHU7B">
                <node concept="37vLTw" id="1U0efzLK8$u" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLK7gT" resolve="newSourceIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLK9Aq" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLK4Oy" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLDm2p" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1U0efzLDm2q" role="3clF46">
        <property role="TrG5h" value="transaction" />
        <node concept="3uibUv" id="1U0efzLDm2r" role="1tU5fm">
          <ref role="3uigEE" to="3hky:4_SQzDOc0eq" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLDm2s" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLDm2t" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLDm2w" role="3clF47">
        <node concept="3clFbF" id="1U0efzLDpeM" role="3cqZAp">
          <node concept="2OqwBi" id="1U0efzLDpr1" role="3clFbG">
            <node concept="37vLTw" id="1U0efzLDpeL" role="2Oq$k0">
              <ref role="3cqZAo" node="1U0efzLDm2q" resolve="transaction" />
            </node>
            <node concept="liA8E" id="1U0efzLDpBA" role="2OqNvi">
              <ref role="37wK5l" to="3hky:4_SQzDOedJM" resolve="moveChild" />
              <node concept="37vLTw" id="1U0efzLDpEv" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
              </node>
              <node concept="37vLTw" id="1U0efzLDpZT" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
              </node>
              <node concept="37vLTw" id="1U0efzLDqmV" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
              </node>
              <node concept="37vLTw" id="1U0efzLDrUR" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U0efzLDs$5" role="3cqZAp">
          <node concept="2ShNRf" id="1U0efzLDs$1" role="3clFbG">
            <node concept="1pGfFk" id="1U0efzLDtru" role="2ShVmc">
              <ref role="37wK5l" node="1U0efzLDsVO" resolve="MoveNodeOp.Applied" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLDm2x" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLDm9O" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLDm2$" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="37vLTG" id="1U0efzLDm2_" role="3clF46">
        <property role="TrG5h" value="previous" />
        <node concept="3uibUv" id="1U0efzLDm2A" role="1tU5fm">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
      </node>
      <node concept="3uibUv" id="1U0efzLDm2B" role="3clF45">
        <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
      </node>
      <node concept="3Tm1VV" id="1U0efzLDm2C" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLDm2Q" role="3clF47">
        <node concept="3clFbJ" id="1U0efzLK2zm" role="3cqZAp">
          <node concept="2ZW3vV" id="1U0efzLK2Rv" role="3clFbw">
            <node concept="3uibUv" id="1U0efzLK31l" role="2ZW6by">
              <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
            </node>
            <node concept="37vLTw" id="1U0efzLK2$d" role="2ZW6bz">
              <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
            </node>
          </node>
          <node concept="3clFbS" id="1U0efzLK2zo" role="3clFbx">
            <node concept="3cpWs8" id="1U0efzLK39J" role="3cqZAp">
              <node concept="3cpWsn" id="1U0efzLK39K" role="3cpWs9">
                <property role="TrG5h" value="o" />
                <node concept="3uibUv" id="1U0efzLK39F" role="1tU5fm">
                  <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                </node>
                <node concept="1eOMI4" id="1U0efzLK39L" role="33vP2m">
                  <node concept="10QFUN" id="1U0efzLK39M" role="1eOMHV">
                    <node concept="3uibUv" id="1U0efzLK39N" role="10QFUM">
                      <ref role="3uigEE" node="1U0efzLAvJQ" resolve="AddNewChildOp" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLK39O" role="10QFUP">
                      <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1U0efzLKlVe" role="3cqZAp">
              <node concept="1rXfSq" id="1U0efzLKmSE" role="3cqZAk">
                <ref role="37wK5l" node="1U0efzLK5u1" resolve="withIndex" />
                <node concept="2OqwBi" id="1U0efzLKozZ" role="37wK5m">
                  <node concept="37vLTw" id="1U0efzLKnPF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1U0efzLK39K" resolve="o" />
                  </node>
                  <node concept="liA8E" id="1U0efzLKqw5" role="2OqNvi">
                    <ref role="37wK5l" node="1U0efzLGDNX" resolve="adjustIndex" />
                    <node concept="37vLTw" id="1U0efzLKrut" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLKtre" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLKvo2" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1U0efzLKyzc" role="37wK5m">
                  <node concept="37vLTw" id="1U0efzLKxk8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1U0efzLK39K" resolve="o" />
                  </node>
                  <node concept="liA8E" id="1U0efzLK$wf" role="2OqNvi">
                    <ref role="37wK5l" node="1U0efzLGDNX" resolve="adjustIndex" />
                    <node concept="37vLTw" id="1U0efzLK_uY" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLKBth" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                    </node>
                    <node concept="37vLTw" id="1U0efzLKDrB" role="37wK5m">
                      <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1U0efzLK3hZ" role="9aQIa">
            <node concept="3clFbS" id="1U0efzLK3i0" role="9aQI4">
              <node concept="YS8fn" id="1U0efzLK4kn" role="3cqZAp">
                <node concept="2ShNRf" id="1U0efzLK4ko" role="YScLw">
                  <node concept="1pGfFk" id="1U0efzLK4kp" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="1U0efzLK4kq" role="37wK5m">
                      <node concept="2OqwBi" id="1U0efzLK4kr" role="3uHU7w">
                        <node concept="2OqwBi" id="1U0efzLK4ks" role="2Oq$k0">
                          <node concept="37vLTw" id="1U0efzLK4kt" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
                          </node>
                          <node concept="liA8E" id="1U0efzLK4ku" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1U0efzLK4kv" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1U0efzLK4kw" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown type: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLKEA6" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLKG24" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLKGjp" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLKF_6" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLKEA8" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLKKAf" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLKKAg" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLKKAb" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLKKAh" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLKKAi" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLKKAj" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLBCqH" resolve="DeleteNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLKKAk" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1U0efzLKN_$" role="3cqZAp">
                <node concept="3clFbS" id="1U0efzLKN_A" role="3clFbx">
                  <node concept="3clFbJ" id="1U0efzLL0Qf" role="3cqZAp">
                    <property role="TyiWK" value="true" />
                    <node concept="3clFbS" id="1U0efzLL0Qh" role="3clFbx">
                      <node concept="YS8fn" id="1U0efzLL3oH" role="3cqZAp">
                        <node concept="2ShNRf" id="1U0efzLL3rr" role="YScLw">
                          <node concept="1pGfFk" id="1U0efzLL3_L" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                            <node concept="3cpWs3" id="1U0efzLLraW" role="37wK5m">
                              <node concept="2OqwBi" id="1U0efzLLuLR" role="3uHU7w">
                                <node concept="37vLTw" id="1U0efzLLu3c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                                </node>
                                <node concept="2OwXpG" id="1U0efzLLwaI" role="2OqNvi">
                                  <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="1U0efzLLohb" role="3uHU7B">
                                <node concept="3cpWs3" id="1U0efzLLj76" role="3uHU7B">
                                  <node concept="3cpWs3" id="1U0efzLLdBw" role="3uHU7B">
                                    <node concept="3cpWs3" id="1U0efzLLbr$" role="3uHU7B">
                                      <node concept="3cpWs3" id="1U0efzLL9P6" role="3uHU7B">
                                        <node concept="3cpWs3" id="1U0efzLL88G" role="3uHU7B">
                                          <node concept="3cpWs3" id="1U0efzLL6v3" role="3uHU7B">
                                            <node concept="37vLTw" id="1U0efzLL6_I" role="3uHU7B">
                                              <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                                            </node>
                                            <node concept="Xl_RD" id="1U0efzLL6jg" role="3uHU7w">
                                              <property role="Xl_RC" value="." />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="1U0efzLL8PO" role="3uHU7w">
                                            <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="1U0efzLL9Pp" role="3uHU7w">
                                          <property role="Xl_RC" value="[" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="1U0efzLLcao" role="3uHU7w">
                                        <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="1U0efzLLdBN" role="3uHU7w">
                                      <property role="Xl_RC" value="] expected to be " />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1U0efzLLtjm" role="3uHU7w">
                                    <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="1U0efzLLohu" role="3uHU7w">
                                  <property role="Xl_RC" value=", but was " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17QLQc" id="1U0efzLL30I" role="3clFbw">
                      <node concept="37vLTw" id="1U0efzLL39j" role="3uHU7w">
                        <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
                      </node>
                      <node concept="2OqwBi" id="1U0efzLL1cw" role="3uHU7B">
                        <node concept="37vLTw" id="1U0efzLL0T0" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLL1sE" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLBCqS" resolve="childId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1U0efzLL3ZV" role="3cqZAp">
                    <node concept="2ShNRf" id="1U0efzLL48o" role="3cqZAk">
                      <node concept="HV5vD" id="1U0efzLL5gF" role="2ShVmc">
                        <ref role="HV5vE" node="1U0efzLBr7u" resolve="NoOp" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1U0efzLKVTA" role="3clFbw">
                  <node concept="17R0WA" id="1U0efzLKZb6" role="3uHU7w">
                    <node concept="37vLTw" id="1U0efzLL0xw" role="3uHU7w">
                      <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                    </node>
                    <node concept="2OqwBi" id="1U0efzLKWDw" role="3uHU7B">
                      <node concept="37vLTw" id="1U0efzLKWbK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                      </node>
                      <node concept="2OwXpG" id="1U0efzLL0jU" role="2OqNvi">
                        <ref role="2Oxat5" node="1U0efzLBCqP" resolve="index" />
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="1U0efzLKSpT" role="3uHU7B">
                    <node concept="17R0WA" id="1U0efzLKRul" role="3uHU7B">
                      <node concept="2OqwBi" id="1U0efzLKOSy" role="3uHU7B">
                        <node concept="37vLTw" id="1U0efzLKO$Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLKPUh" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLBCqJ" resolve="parentId" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLKRAU" role="3uHU7w">
                        <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="1U0efzLKVdS" role="3uHU7w">
                      <node concept="2OqwBi" id="1U0efzLKT3g" role="3uHU7B">
                        <node concept="37vLTw" id="1U0efzLKSE3" role="2Oq$k0">
                          <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                        </node>
                        <node concept="2OwXpG" id="1U0efzLKUaw" role="2OqNvi">
                          <ref role="2Oxat5" node="1U0efzLBCqM" resolve="role" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1U0efzLKVnG" role="3uHU7w">
                        <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1U0efzLLwNQ" role="9aQIa">
                  <node concept="3clFbS" id="1U0efzLLwNR" role="9aQI4">
                    <node concept="3cpWs6" id="1U0efzLLCuU" role="3cqZAp">
                      <node concept="1rXfSq" id="1U0efzLLCuV" role="3cqZAk">
                        <ref role="37wK5l" node="1U0efzLK5u1" resolve="withIndex" />
                        <node concept="2OqwBi" id="1U0efzLLCuW" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLLCuX" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                          </node>
                          <node concept="liA8E" id="1U0efzLLCuY" role="2OqNvi">
                            <ref role="37wK5l" node="1U0efzLGU0w" resolve="adjustIndex" />
                            <node concept="37vLTw" id="1U0efzLLCuZ" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLLCv0" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLLCv1" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1U0efzLLCv2" role="37wK5m">
                          <node concept="37vLTw" id="1U0efzLLCv3" role="2Oq$k0">
                            <ref role="3cqZAo" node="1U0efzLKKAg" resolve="o" />
                          </node>
                          <node concept="liA8E" id="1U0efzLLCv4" role="2OqNvi">
                            <ref role="37wK5l" node="1U0efzLGU0w" resolve="adjustIndex" />
                            <node concept="37vLTw" id="1U0efzLLCv5" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLLCv6" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                            </node>
                            <node concept="37vLTw" id="1U0efzLLCv7" role="37wK5m">
                              <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
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
          <node concept="3eNFk2" id="1U0efzLLFph" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLLHlN" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLLHDl" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLLGSP" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLLFpj" role="3eOfB_">
              <node concept="3cpWs8" id="1U0efzLLIaB" role="3cqZAp">
                <node concept="3cpWsn" id="1U0efzLLIaC" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="1U0efzLLIOR" role="1tU5fm">
                    <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                  </node>
                  <node concept="1eOMI4" id="1U0efzLLIaE" role="33vP2m">
                    <node concept="10QFUN" id="1U0efzLLIaF" role="1eOMHV">
                      <node concept="3uibUv" id="1U0efzLLLMv" role="10QFUM">
                        <ref role="3uigEE" node="1U0efzLDlUu" resolve="MoveNodeOp" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLLIaH" role="10QFUP">
                        <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1U0efzLLIaI" role="3cqZAp">
                <node concept="1rXfSq" id="1U0efzLLIaJ" role="3cqZAk">
                  <ref role="37wK5l" node="1U0efzLK5u1" resolve="withIndex" />
                  <node concept="2OqwBi" id="1U0efzLLIaK" role="37wK5m">
                    <node concept="37vLTw" id="1U0efzLLIaL" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLLIaC" resolve="o" />
                    </node>
                    <node concept="liA8E" id="1U0efzLLIaM" role="2OqNvi">
                      <ref role="37wK5l" node="1U0efzLH22V" resolve="adjustIndex" />
                      <node concept="37vLTw" id="1U0efzLLIaN" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLLIaO" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLLIaP" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1U0efzLLIaQ" role="37wK5m">
                    <node concept="37vLTw" id="1U0efzLLIaR" role="2Oq$k0">
                      <ref role="3cqZAo" node="1U0efzLLIaC" resolve="o" />
                    </node>
                    <node concept="liA8E" id="1U0efzLLIaS" role="2OqNvi">
                      <ref role="37wK5l" node="1U0efzLH22V" resolve="adjustIndex" />
                      <node concept="37vLTw" id="1U0efzLLIaT" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLLIaU" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                      </node>
                      <node concept="37vLTw" id="1U0efzLLIaV" role="37wK5m">
                        <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLLNgS" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLLPnT" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLLPFV" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzL$1zV" resolve="SetPropertyOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLLOSe" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLLNgU" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLLPKC" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLLPPk" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLLRjO" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLLTmO" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLLTES" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLAp8F" resolve="SetReferenceOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLLSR7" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLLRjQ" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLLTJB" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLLTOl" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1U0efzLLVp5" role="3eNLev">
            <node concept="2ZW3vV" id="1U0efzLLXs5" role="3eO9$A">
              <node concept="3uibUv" id="1U0efzLLXKb" role="2ZW6by">
                <ref role="3uigEE" node="1U0efzLBr7u" resolve="NoOp" />
              </node>
              <node concept="37vLTw" id="1U0efzLLWWm" role="2ZW6bz">
                <ref role="3cqZAo" node="1U0efzLDm2_" resolve="previous" />
              </node>
            </node>
            <node concept="3clFbS" id="1U0efzLLVp7" role="3eOfB_">
              <node concept="3cpWs6" id="1U0efzLLXOW" role="3cqZAp">
                <node concept="Xjq3P" id="1U0efzLLXTG" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLDm2R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLH2yK" role="jymVt" />
    <node concept="3clFb_" id="1U0efzLH22V" role="jymVt">
      <property role="TrG5h" value="adjustIndex" />
      <node concept="37vLTG" id="1U0efzLH22W" role="3clF46">
        <property role="TrG5h" value="otherParentId" />
        <node concept="3cpWsb" id="1U0efzLH22X" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLH22Y" role="3clF46">
        <property role="TrG5h" value="otherRole" />
        <node concept="17QB3L" id="1U0efzLH22Z" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLH230" role="3clF46">
        <property role="TrG5h" value="otherIndex" />
        <node concept="10Oyi0" id="1U0efzLH231" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="1U0efzLH232" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLH233" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLH234" role="3clF47">
        <node concept="3cpWs8" id="1U0efzLH235" role="3cqZAp">
          <node concept="3cpWsn" id="1U0efzLH236" role="3cpWs9">
            <property role="TrG5h" value="adjustedIndex" />
            <node concept="10Oyi0" id="1U0efzLH237" role="1tU5fm" />
            <node concept="37vLTw" id="1U0efzLH238" role="33vP2m">
              <ref role="3cqZAo" node="1U0efzLH230" resolve="otherIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U0efzLH239" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLH23a" role="3clFbx">
            <node concept="3clFbF" id="1U0efzLH23b" role="3cqZAp">
              <node concept="3uO5VW" id="1U0efzLH75S" role="3clFbG">
                <node concept="37vLTw" id="1U0efzLH75U" role="2$L3a6">
                  <ref role="3cqZAo" node="1U0efzLH236" resolve="adjustedIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1U0efzLH23e" role="3clFbw">
            <node concept="3eOVzh" id="1U0efzLH5Xr" role="3uHU7w">
              <node concept="37vLTw" id="1U0efzLH3Pg" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
              </node>
              <node concept="37vLTw" id="1U0efzLH23g" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLH230" resolve="otherIndex" />
              </node>
            </node>
            <node concept="1Wc70l" id="1U0efzLH23i" role="3uHU7B">
              <node concept="17R0WA" id="1U0efzLH23j" role="3uHU7B">
                <node concept="37vLTw" id="1U0efzLH23k" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLH22W" resolve="otherParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLH3bI" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                </node>
              </node>
              <node concept="17R0WA" id="1U0efzLH23m" role="3uHU7w">
                <node concept="37vLTw" id="1U0efzLH23n" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLH22Y" resolve="otherRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLH3wv" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U0efzLH7k_" role="3cqZAp">
          <node concept="3clFbS" id="1U0efzLH7kA" role="3clFbx">
            <node concept="3clFbF" id="1U0efzLH7kB" role="3cqZAp">
              <node concept="3uNrnE" id="1U0efzLH9Qj" role="3clFbG">
                <node concept="37vLTw" id="1U0efzLH9Ql" role="2$L3a6">
                  <ref role="3cqZAo" node="1U0efzLH236" resolve="adjustedIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1U0efzLH7kE" role="3clFbw">
            <node concept="2dkUwp" id="1U0efzLH8HI" role="3uHU7w">
              <node concept="37vLTw" id="1U0efzLH8pd" role="3uHU7B">
                <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
              </node>
              <node concept="37vLTw" id="1U0efzLH7kH" role="3uHU7w">
                <ref role="3cqZAo" node="1U0efzLH230" resolve="otherIndex" />
              </node>
            </node>
            <node concept="1Wc70l" id="1U0efzLH7kI" role="3uHU7B">
              <node concept="17R0WA" id="1U0efzLH7kJ" role="3uHU7B">
                <node concept="37vLTw" id="1U0efzLH7kK" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLH22W" resolve="otherParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLH7Jr" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                </node>
              </node>
              <node concept="17R0WA" id="1U0efzLH7kM" role="3uHU7w">
                <node concept="37vLTw" id="1U0efzLH7kN" role="3uHU7B">
                  <ref role="3cqZAo" node="1U0efzLH22Y" resolve="otherRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLH84k" role="3uHU7w">
                  <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1U0efzLH23p" role="3cqZAp">
          <node concept="37vLTw" id="1U0efzLH23q" role="3cqZAk">
            <ref role="3cqZAo" node="1U0efzLH236" resolve="adjustedIndex" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1U0efzLH23r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLDm1N" role="jymVt" />
    <node concept="3clFb_" id="plPun8714A" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="plPun8714B" role="3clF45" />
      <node concept="3Tm1VV" id="plPun8714C" role="1B3o_S" />
      <node concept="3clFbS" id="plPun8714D" role="3clF47">
        <node concept="3clFbF" id="plPun87l$r" role="3cqZAp">
          <node concept="2YIFZM" id="plPun87lLd" role="3clFbG">
            <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
            <node concept="Xl_RD" id="plPun87lLL" role="37wK5m">
              <property role="Xl_RC" value="MoveNodeOp {0}, {1}.{2}[{3}]-&gt;{4}.{5}[{6}]" />
            </node>
            <node concept="2YIFZM" id="plPun8ioKk" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8ioKl" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
              </node>
            </node>
            <node concept="2YIFZM" id="plPun8ipql" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8ipqm" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87nrZ" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
            </node>
            <node concept="37vLTw" id="plPun87o5_" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
            </node>
            <node concept="2YIFZM" id="plPun8iq4m" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
              <node concept="37vLTw" id="plPun8iq4n" role="37wK5m">
                <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
              </node>
            </node>
            <node concept="37vLTw" id="plPun87paO" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
            </node>
            <node concept="37vLTw" id="plPun87pAg" role="37wK5m">
              <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="plPun8714F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="plPun874SX" role="jymVt" />
    <node concept="312cEu" id="1U0efzLDlXN" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Applied" />
      <node concept="3clFbW" id="1U0efzLDsVO" role="jymVt">
        <node concept="3cqZAl" id="1U0efzLDsVQ" role="3clF45" />
        <node concept="3Tm1VV" id="1U0efzLDsVR" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLDsVS" role="3clF47" />
      </node>
      <node concept="3clFb_" id="1U0efzLDmiZ" role="jymVt">
        <property role="TrG5h" value="getOriginalOp" />
        <node concept="3uibUv" id="1U0efzLDmj0" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLDmj1" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLDmj3" role="3clF47">
          <node concept="3clFbF" id="1U0efzLDmsu" role="3cqZAp">
            <node concept="Xjq3P" id="1U0efzLDmst" role="3clFbG">
              <ref role="1HBi2w" node="1U0efzLDlUu" resolve="MoveNodeOp" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLDmj4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1U0efzLDmyd" role="jymVt" />
      <node concept="3clFb_" id="1U0efzLDmj7" role="jymVt">
        <property role="TrG5h" value="invert" />
        <node concept="3uibUv" id="1U0efzLDmj8" role="3clF45">
          <ref role="3uigEE" node="1U0efzLyBFz" resolve="IOperation" />
        </node>
        <node concept="3Tm1VV" id="1U0efzLDmj9" role="1B3o_S" />
        <node concept="3clFbS" id="1U0efzLDmjb" role="3clF47">
          <node concept="3clFbF" id="1U0efzLD$cB" role="3cqZAp">
            <node concept="2ShNRf" id="1U0efzLD$c_" role="3clFbG">
              <node concept="1pGfFk" id="1U0efzLD$kL" role="2ShVmc">
                <ref role="37wK5l" node="1U0efzLDtUD" resolve="MoveNodeOp" />
                <node concept="37vLTw" id="1U0efzLD$qG" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDrhq" resolve="childId" />
                </node>
                <node concept="37vLTw" id="1U0efzLD$J_" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnCc" resolve="targetParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLD_4V" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnL3" resolve="targetRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLD_sf" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnOz" resolve="targetIndex" />
                </node>
                <node concept="37vLTw" id="1U0efzLD_O3" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDmDO" resolve="sourceParentId" />
                </node>
                <node concept="37vLTw" id="1U0efzLDAeM" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnJs" resolve="sourceRole" />
                </node>
                <node concept="37vLTw" id="1U0efzLDABm" role="37wK5m">
                  <ref role="3cqZAo" node="1U0efzLDnMK" resolve="sourceIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1U0efzLDmjc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1U0efzLDlXO" role="1B3o_S" />
      <node concept="3uibUv" id="1U0efzLDm0m" role="EKbjA">
        <ref role="3uigEE" node="1U0efzLyBFX" resolve="IAppliedOperation" />
      </node>
    </node>
    <node concept="2tJIrI" id="1U0efzLDlXw" role="jymVt" />
    <node concept="3Tm1VV" id="1U0efzLDlUv" role="1B3o_S" />
    <node concept="3uibUv" id="1U0efzLDlWq" role="1zkMxy">
      <ref role="3uigEE" node="1U0efzL$1$h" resolve="AbstractOperation" />
    </node>
    <node concept="3uibUv" id="1U0efzLHc14" role="EKbjA">
      <ref role="3uigEE" node="1U0efzLGBPm" resolve="IModifiesChildrenOp" />
    </node>
  </node>
  <node concept="3HP615" id="1U0efzLGBPm">
    <property role="TrG5h" value="IModifiesChildrenOp" />
    <node concept="3clFb_" id="1U0efzLGBRH" role="jymVt">
      <property role="TrG5h" value="adjustIndex" />
      <node concept="37vLTG" id="1U0efzLGBU_" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="1U0efzLGBVw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGBXa" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="1U0efzLGBY9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1U0efzLGC2n" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1U0efzLGC3u" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="1U0efzLGBZp" role="3clF45" />
      <node concept="3Tm1VV" id="1U0efzLGBRK" role="1B3o_S" />
      <node concept="3clFbS" id="1U0efzLGBRL" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1U0efzLGBPn" role="1B3o_S" />
  </node>
</model>

