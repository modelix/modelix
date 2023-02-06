<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:af27d5f7-cdc0-46a0-9e1c-a19e86f516d6(test.org.modelix.ui.diff@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lvkz" ref="r:ab9ceea2-f32a-4ea6-be78-3e6c2d4ef84b(org.modelix.ui.diff)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="5qbHjZpIBlo">
    <property role="TrG5h" value="HeadlessDiffImageTest" />
    <node concept="1LZb2c" id="5qbHjZpIBmJ" role="1SL9yI">
      <property role="TrG5h" value="createDiffImage" />
      <node concept="3cqZAl" id="5qbHjZpIBmK" role="3clF45" />
      <node concept="3clFbS" id="5qbHjZpIBmO" role="3clF47">
        <node concept="3cpWs8" id="5qbHjZpJx0E" role="3cqZAp">
          <node concept="3cpWsn" id="5qbHjZpJx0F" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="5qbHjZpIBEH" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="_YKpA" id="5qbHjZpIBFc" role="11_B2D">
                <node concept="3uibUv" id="5qbHjZpIBFd" role="_ZDj9">
                  <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                  <node concept="_YKpA" id="5qbHjZpIBFe" role="11_B2D">
                    <node concept="3uibUv" id="5qbHjZpIBFf" role="_ZDj9">
                      <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                      <node concept="3uibUv" id="5qbHjZpIBFg" role="11_B2D">
                        <ref role="3uigEE" to="lvkz:27MnIr9Ypso" resolve="DiffImage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5qbHjZpJx0G" role="33vP2m">
              <node concept="liA8E" id="5qbHjZpJx0I" role="2OqNvi">
                <ref role="37wK5l" to="lvkz:2XovqnGUhMw" resolve="diffRevisions" />
                <node concept="Xl_RD" id="5qbHjZpJzC$" role="37wK5m">
                  <property role="Xl_RC" value="4a09a7160149196ae66c32f060450be2135757be" />
                </node>
                <node concept="Xl_RD" id="5qbHjZpJzRy" role="37wK5m">
                  <property role="Xl_RC" value="b75eaea117b970e75ae2c57cb291e5e2c7ad00d0" />
                </node>
              </node>
              <node concept="2ShNRf" id="5qbHjZpKLrc" role="2Oq$k0">
                <node concept="1pGfFk" id="5qbHjZpKLrd" role="2ShVmc">
                  <ref role="37wK5l" to="lvkz:4kPMkltJSq1" resolve="DiffImages" />
                  <node concept="2YIFZM" id="2_VYLT0fb$9" role="37wK5m">
                    <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="1jxXqW" id="2_VYLT0fbVQ" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qbHjZpKzqh" role="3cqZAp" />
        <node concept="3cpWs8" id="5qbHjZpKF2b" role="3cqZAp">
          <node concept="3cpWsn" id="5qbHjZpKF2c" role="3cpWs9">
            <property role="TrG5h" value="images" />
            <node concept="_YKpA" id="5qbHjZpKIKt" role="1tU5fm">
              <node concept="3uibUv" id="5qbHjZpKIKv" role="_ZDj9">
                <ref role="3uigEE" to="lvkz:27MnIr9Ypso" resolve="DiffImage" />
              </node>
            </node>
            <node concept="2OqwBi" id="5qbHjZpKGnF" role="33vP2m">
              <node concept="2OqwBi" id="5qbHjZpKF2d" role="2Oq$k0">
                <node concept="2OqwBi" id="5qbHjZpKF2e" role="2Oq$k0">
                  <node concept="2YIFZM" id="5qbHjZpKF2f" role="2Oq$k0">
                    <ref role="37wK5l" to="lvkz:5qbHjZpKv8N" resolve="futureGet" />
                    <ref role="1Pybhc" to="lvkz:27MnIra3H8T" resolve="DiffServlet" />
                    <node concept="37vLTw" id="5qbHjZpKF2g" role="37wK5m">
                      <ref role="3cqZAo" node="5qbHjZpJx0F" resolve="result" />
                    </node>
                  </node>
                  <node concept="3goQfb" id="5qbHjZpKF2h" role="2OqNvi">
                    <node concept="1bVj0M" id="5qbHjZpKF2i" role="23t8la">
                      <node concept="3clFbS" id="5qbHjZpKF2j" role="1bW5cS">
                        <node concept="3clFbF" id="5qbHjZpKF2k" role="3cqZAp">
                          <node concept="2YIFZM" id="5qbHjZpKF2l" role="3clFbG">
                            <ref role="37wK5l" to="lvkz:5qbHjZpKv8N" resolve="futureGet" />
                            <ref role="1Pybhc" to="lvkz:27MnIra3H8T" resolve="DiffServlet" />
                            <node concept="37vLTw" id="5qbHjZpKF2m" role="37wK5m">
                              <ref role="3cqZAo" node="5qbHjZpKF2n" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5qbHjZpKF2n" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5qbHjZpKF2o" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="5qbHjZpKF2p" role="2OqNvi">
                  <node concept="1bVj0M" id="5qbHjZpKF2q" role="23t8la">
                    <node concept="3clFbS" id="5qbHjZpKF2r" role="1bW5cS">
                      <node concept="3clFbF" id="5qbHjZpKF2s" role="3cqZAp">
                        <node concept="2YIFZM" id="5qbHjZpKF2t" role="3clFbG">
                          <ref role="37wK5l" to="lvkz:5qbHjZpKv8N" resolve="futureGet" />
                          <ref role="1Pybhc" to="lvkz:27MnIra3H8T" resolve="DiffServlet" />
                          <node concept="37vLTw" id="5qbHjZpKF2u" role="37wK5m">
                            <ref role="3cqZAo" node="5qbHjZpKF2v" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5qbHjZpKF2v" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5qbHjZpKF2w" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5qbHjZpKIrg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qbHjZpKMRw" role="3cqZAp" />
        <node concept="3vlDli" id="5qbHjZpKNhT" role="3cqZAp">
          <node concept="2OqwBi" id="5qbHjZpKOXp" role="3tpDZA">
            <node concept="37vLTw" id="5qbHjZpKO0$" role="2Oq$k0">
              <ref role="3cqZAo" node="5qbHjZpKF2c" resolve="images" />
            </node>
            <node concept="34oBXx" id="5qbHjZpKQcb" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="5qbHjZpNfjG" role="3tpDZB">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="5qbHjZpLzBr">
    <property role="2XOHcw" value="${modelix.home}/mps" />
  </node>
</model>

