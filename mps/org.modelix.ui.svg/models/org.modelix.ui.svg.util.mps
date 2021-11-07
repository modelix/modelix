<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:92fbab23-1cd1-4f94-ad71-7e60b5fa50f8(org.modelix.ui.svg.util)">
  <persistence version="9" />
  <languages>
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
  </imports>
  <registry>
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="8022092943110829337" name="jetbrains.mps.baseLanguage.extensionMethods.structure.BaseExtensionMethodContainer" flags="ng" index="a7sou">
        <child id="8022092943110829339" name="methods" index="a7sos" />
      </concept>
      <concept id="8022092943109322131" name="jetbrains.mps.baseLanguage.extensionMethods.structure.SimpleExtensionMethodsContainer" flags="ng" index="apGqk" />
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
      <concept id="1550313277222152185" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodDeclaration" flags="ng" index="ATzpf">
        <child id="8022092943109605394" name="extendedType" index="aoRGl" />
      </concept>
      <concept id="3316739663067157299" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ThisExtensionExpression" flags="nn" index="2V_BSl" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="apGqk" id="YrAPzEOjOW">
    <property role="TrG5h" value="AWTExtensions" />
    <node concept="ATzpf" id="YrAPzEOjQd" role="a7sos">
      <property role="TrG5h" value="getVisibleOwnedWindows" />
      <node concept="3Tm1VV" id="YrAPzEOjQe" role="1B3o_S" />
      <node concept="A3Dl8" id="YrAPzEOjQp" role="3clF45">
        <node concept="3uibUv" id="YrAPzEOjQ$" role="A3Ik2">
          <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
        </node>
      </node>
      <node concept="3clFbS" id="YrAPzEOjQg" role="3clF47">
        <node concept="3clFbJ" id="54meraTBRce" role="3cqZAp">
          <node concept="3clFbS" id="54meraTBRcg" role="3clFbx">
            <node concept="3cpWs6" id="54meraTBS9l" role="3cqZAp">
              <node concept="2ShNRf" id="54meraTBSgY" role="3cqZAk">
                <node concept="kMnCb" id="54meraTBSgT" role="2ShVmc">
                  <node concept="3uibUv" id="54meraTBSgU" role="kMuH3">
                    <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="54meraTBRQM" role="3clFbw">
            <node concept="10Nm6u" id="54meraTBS8O" role="3uHU7w" />
            <node concept="2V_BSl" id="54meraTBRjC" role="3uHU7B" />
          </node>
        </node>
        <node concept="3clFbF" id="YrAPzEOjWx" role="3cqZAp">
          <node concept="2OqwBi" id="YrAPzEOlsL" role="3clFbG">
            <node concept="2OqwBi" id="YrAPzEOoSN" role="2Oq$k0">
              <node concept="2OqwBi" id="YrAPzEOkT6" role="2Oq$k0">
                <node concept="2OqwBi" id="YrAPzEOkoU" role="2Oq$k0">
                  <node concept="2V_BSl" id="YrAPzEOjWw" role="2Oq$k0" />
                  <node concept="liA8E" id="YrAPzEOkMH" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Window.getOwnedWindows()" resolve="getOwnedWindows" />
                  </node>
                </node>
                <node concept="39bAoz" id="YrAPzEOlbd" role="2OqNvi" />
              </node>
              <node concept="3zZkjj" id="YrAPzEOpof" role="2OqNvi">
                <node concept="1bVj0M" id="YrAPzEOpoh" role="23t8la">
                  <node concept="3clFbS" id="YrAPzEOpoi" role="1bW5cS">
                    <node concept="3clFbF" id="YrAPzEOpw8" role="3cqZAp">
                      <node concept="2OqwBi" id="YrAPzEOpYk" role="3clFbG">
                        <node concept="37vLTw" id="YrAPzEOpw7" role="2Oq$k0">
                          <ref role="3cqZAo" node="YrAPzEOpoj" resolve="it" />
                        </node>
                        <node concept="liA8E" id="YrAPzEOsaV" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Component.isVisible()" resolve="isVisible" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="YrAPzEOpoj" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="YrAPzEOpok" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3goQfb" id="YrAPzEOlSH" role="2OqNvi">
              <node concept="1bVj0M" id="YrAPzEOlSJ" role="23t8la">
                <node concept="3clFbS" id="YrAPzEOlSK" role="1bW5cS">
                  <node concept="3clFbF" id="YrAPzEOlZC" role="3cqZAp">
                    <node concept="2OqwBi" id="YrAPzEOmBF" role="3clFbG">
                      <node concept="2ShNRf" id="YrAPzEOlZA" role="2Oq$k0">
                        <node concept="2HTt$P" id="YrAPzEOmh5" role="2ShVmc">
                          <node concept="3uibUv" id="YrAPzEOmkV" role="2HTBi0">
                            <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                          </node>
                          <node concept="37vLTw" id="YrAPzEOmoG" role="2HTEbv">
                            <ref role="3cqZAo" node="YrAPzEOlSL" resolve="it" />
                          </node>
                        </node>
                      </node>
                      <node concept="3QWeyG" id="YrAPzEOn3C" role="2OqNvi">
                        <node concept="2OqwBi" id="YrAPzEOnyW" role="576Qk">
                          <node concept="37vLTw" id="YrAPzEOn8c" role="2Oq$k0">
                            <ref role="3cqZAo" node="YrAPzEOlSL" resolve="it" />
                          </node>
                          <node concept="AQDAd" id="YrAPzEOoqP" role="2OqNvi">
                            <ref role="37wK5l" node="YrAPzEOjQd" resolve="getVisibleOwnedWindows" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="YrAPzEOlSL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="YrAPzEOlSM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="YrAPzEOjWm" role="aoRGl">
        <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
      </node>
    </node>
    <node concept="ATzpf" id="YrAPzEOsiL" role="a7sos">
      <property role="TrG5h" value="getWindow" />
      <node concept="3Tm1VV" id="YrAPzEOsiM" role="1B3o_S" />
      <node concept="3uibUv" id="YrAPzEOA0n" role="3clF45">
        <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
      </node>
      <node concept="3clFbS" id="YrAPzEOsiO" role="3clF47">
        <node concept="3clFbF" id="YrAPzEOssP" role="3cqZAp">
          <node concept="2YIFZM" id="YrAPzEOstk" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.getWindowAncestor(java.awt.Component)" resolve="getWindowAncestor" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2V_BSl" id="YrAPzEOsvC" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="YrAPzEOssC" role="aoRGl">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
    </node>
    <node concept="ATzpf" id="YrAPzEQPpz" role="a7sos">
      <property role="TrG5h" value="descendants" />
      <node concept="3Tm1VV" id="YrAPzEQPp$" role="1B3o_S" />
      <node concept="A3Dl8" id="YrAPzEQP$B" role="3clF45">
        <node concept="3uibUv" id="YrAPzEQP$C" role="A3Ik2">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="YrAPzEQPpA" role="3clF47">
        <node concept="3clFbJ" id="YrAPzEQS2s" role="3cqZAp">
          <node concept="2ZW3vV" id="YrAPzEQSl0" role="3clFbw">
            <node concept="3uibUv" id="YrAPzEQSoS" role="2ZW6by">
              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
            </node>
            <node concept="2V_BSl" id="YrAPzEQS2L" role="2ZW6bz" />
          </node>
          <node concept="3clFbS" id="YrAPzEQS2u" role="3clFbx">
            <node concept="3cpWs6" id="YrAPzEQSHc" role="3cqZAp">
              <node concept="2OqwBi" id="YrAPzERLQl" role="3cqZAk">
                <node concept="2OqwBi" id="YrAPzEQUYr" role="2Oq$k0">
                  <node concept="2OqwBi" id="YrAPzEQU3O" role="2Oq$k0">
                    <node concept="1eOMI4" id="YrAPzEQTwX" role="2Oq$k0">
                      <node concept="10QFUN" id="YrAPzEQTwW" role="1eOMHV">
                        <node concept="2V_BSl" id="YrAPzEQTwV" role="10QFUP" />
                        <node concept="3uibUv" id="YrAPzEQTJu" role="10QFUM">
                          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="YrAPzEQUQ9" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
                    </node>
                  </node>
                  <node concept="39bAoz" id="YrAPzEQVoz" role="2OqNvi" />
                </node>
                <node concept="3goQfb" id="YrAPzERMjf" role="2OqNvi">
                  <node concept="1bVj0M" id="YrAPzERMjh" role="23t8la">
                    <node concept="3clFbS" id="YrAPzERMji" role="1bW5cS">
                      <node concept="3clFbF" id="YrAPzERMsr" role="3cqZAp">
                        <node concept="2OqwBi" id="YrAPzERMP8" role="3clFbG">
                          <node concept="37vLTw" id="YrAPzERMsq" role="2Oq$k0">
                            <ref role="3cqZAo" node="YrAPzERMjj" resolve="it" />
                          </node>
                          <node concept="AQDAd" id="YrAPzERNib" role="2OqNvi">
                            <ref role="37wK5l" node="YrAPzEQP$P" resolve="descendantsAndSelf" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="YrAPzERMjj" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="YrAPzERMjk" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="YrAPzEQSpg" role="9aQIa">
            <node concept="3clFbS" id="YrAPzEQSph" role="9aQI4">
              <node concept="3cpWs6" id="YrAPzEQSGu" role="3cqZAp">
                <node concept="2ShNRf" id="YrAPzEQSGw" role="3cqZAk">
                  <node concept="kMnCb" id="YrAPzEQSGx" role="2ShVmc">
                    <node concept="3uibUv" id="YrAPzEQSGy" role="kMuH3">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="YrAPzEQP$s" role="aoRGl">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
    </node>
    <node concept="ATzpf" id="YrAPzEQP$P" role="a7sos">
      <property role="TrG5h" value="descendantsAndSelf" />
      <node concept="3Tm1VV" id="YrAPzEQP$Q" role="1B3o_S" />
      <node concept="A3Dl8" id="YrAPzEQP$R" role="3clF45">
        <node concept="3uibUv" id="YrAPzEQP$S" role="A3Ik2">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="YrAPzEQP$T" role="3clF47">
        <node concept="3clFbF" id="YrAPzEQPL7" role="3cqZAp">
          <node concept="2OqwBi" id="YrAPzEQQgl" role="3clFbG">
            <node concept="2ShNRf" id="YrAPzEQPL5" role="2Oq$k0">
              <node concept="2HTt$P" id="YrAPzEQQ3l" role="2ShVmc">
                <node concept="3uibUv" id="YrAPzEQQ3Y" role="2HTBi0">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
                <node concept="2V_BSl" id="YrAPzEQQ4_" role="2HTEbv" />
              </node>
            </node>
            <node concept="3QWeyG" id="YrAPzEQQAF" role="2OqNvi">
              <node concept="2OqwBi" id="YrAPzEQQUQ" role="576Qk">
                <node concept="2V_BSl" id="YrAPzEQQBZ" role="2Oq$k0" />
                <node concept="AQDAd" id="YrAPzEQRdb" role="2OqNvi">
                  <ref role="37wK5l" node="YrAPzEQPpz" resolve="descendants" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="YrAPzEQP$U" role="aoRGl">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
    </node>
  </node>
</model>

