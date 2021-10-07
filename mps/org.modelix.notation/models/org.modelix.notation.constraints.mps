<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ea0aedd8-6e1f-482a-b70a-d3e13f6507bb(org.modelix.notation.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="gsqd" ref="r:599c60e4-99d0-4ea8-9225-bd9adc3816a3(de.q60.mps.web.notation.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6IHVO0tjC8W">
    <ref role="1M2myG" to="gsqd:6IHVO0tjiO1" resolve="FlagCell" />
    <node concept="1N5Pfh" id="6IHVO0tjC98" role="1Mr941">
      <ref role="1N5Vy1" to="gsqd:6IHVO0tjiOt" resolve="property" />
      <node concept="3dgokm" id="6IHVO0tjCay" role="1N6uqs">
        <node concept="3clFbS" id="6IHVO0tjCaz" role="2VODD2">
          <node concept="3clFbF" id="6IHVO0tjEBq" role="3cqZAp">
            <node concept="2YIFZM" id="6IHVO0tjEGp" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6IHVO0tjIxO" role="37wK5m">
                <node concept="2OqwBi" id="6IHVO0tjDrT" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tjCWJ" role="2Oq$k0">
                    <node concept="2OqwBi" id="6IHVO0tjCyt" role="2Oq$k0">
                      <node concept="2rP1CM" id="6IHVO0tjCpo" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6IHVO0tjCFz" role="2OqNvi">
                        <node concept="1xMEDy" id="6IHVO0tjCF_" role="1xVPHs">
                          <node concept="chp4Y" id="6IHVO0tjCJv" role="ri$Ld">
                            <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="6IHVO0tknt_" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6IHVO0tjD7V" role="2OqNvi">
                      <ref role="3Tt5mk" to="gsqd:6IHVO0tjgc8" resolve="concept" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6IHVO0tjDNZ" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                  </node>
                </node>
                <node concept="3zZkjj" id="6IHVO0tjLZ8" role="2OqNvi">
                  <node concept="1bVj0M" id="6IHVO0tjLZa" role="23t8la">
                    <node concept="3clFbS" id="6IHVO0tjLZb" role="1bW5cS">
                      <node concept="3clFbF" id="6IHVO0tkjvt" role="3cqZAp">
                        <node concept="2OqwBi" id="6IHVO0tkjIN" role="3clFbG">
                          <node concept="37vLTw" id="6IHVO0tkjvs" role="2Oq$k0">
                            <ref role="3cqZAo" node="6IHVO0tjLZc" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="6IHVO0tkk3w" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hT23T2l" resolve="isPrimitiveBoolean" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6IHVO0tjLZc" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6IHVO0tjLZd" role="1tU5fm" />
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
  <node concept="1M2fIO" id="6IHVO0tkmsK">
    <ref role="1M2myG" to="gsqd:6IHVO0tjgb$" resolve="ChildrenCollectionCell" />
    <node concept="1N5Pfh" id="6IHVO0tkmsW" role="1Mr941">
      <ref role="1N5Vy1" to="gsqd:6IHVO0tmKfq" resolve="link" />
      <node concept="3dgokm" id="6IHVO0tkmtG" role="1N6uqs">
        <node concept="3clFbS" id="6IHVO0tkmtH" role="2VODD2">
          <node concept="3clFbF" id="6IHVO0tkmwQ" role="3cqZAp">
            <node concept="2YIFZM" id="6IHVO0tkm_p" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6IHVO0tkNhk" role="37wK5m">
                <node concept="2OqwBi" id="6IHVO0tksoK" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tkoMf" role="2Oq$k0">
                    <node concept="2OqwBi" id="6IHVO0tknZx" role="2Oq$k0">
                      <node concept="2OqwBi" id="6IHVO0tkmO4" role="2Oq$k0">
                        <node concept="2rP1CM" id="6IHVO0tkmBH" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="6IHVO0tkmZO" role="2OqNvi">
                          <node concept="1xMEDy" id="6IHVO0tkmZQ" role="1xVPHs">
                            <node concept="chp4Y" id="6IHVO0tknEv" role="ri$Ld">
                              <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="6IHVO0tknPz" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6IHVO0tkoqE" role="2OqNvi">
                        <ref role="3Tt5mk" to="gsqd:6IHVO0tjgc8" resolve="concept" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6IHVO0tkpfd" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6IHVO0tkvDU" role="2OqNvi">
                    <node concept="1bVj0M" id="6IHVO0tkvDW" role="23t8la">
                      <node concept="3clFbS" id="6IHVO0tkvDX" role="1bW5cS">
                        <node concept="3clFbF" id="6IHVO0tkvNd" role="3cqZAp">
                          <node concept="3fqX7Q" id="6IHVO0tkwYP" role="3clFbG">
                            <node concept="2OqwBi" id="6IHVO0tkwYR" role="3fr31v">
                              <node concept="37vLTw" id="6IHVO0tkwYS" role="2Oq$k0">
                                <ref role="3cqZAo" node="6IHVO0tkvDY" resolve="it" />
                              </node>
                              <node concept="2qgKlT" id="6IHVO0tkwYT" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6IHVO0tkvDY" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6IHVO0tkvDZ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="66VNe" id="6IHVO0tkNDD" role="2OqNvi">
                  <node concept="2ShNRf" id="6IHVO0tkTWL" role="576Qk">
                    <node concept="2HTt$P" id="6IHVO0tkUpA" role="2ShVmc">
                      <node concept="3Tqbb2" id="6IHVO0tkUy9" role="2HTBi0">
                        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="6IHVO0tkQkC" role="2HTEbv">
                        <node concept="2tJFMh" id="6IHVO0tkPk0" role="2Oq$k0">
                          <node concept="ZC_QK" id="6IHVO0tkPu0" role="2tJFKM">
                            <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <node concept="ZC_QK" id="6IHVO0tkPYq" role="2aWVGa">
                              <ref role="2aWVGs" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                            </node>
                          </node>
                        </node>
                        <node concept="Vyspw" id="6IHVO0tkQSc" role="2OqNvi">
                          <node concept="2OqwBi" id="6IHVO0tkT5z" role="Vysub">
                            <node concept="2OqwBi" id="6IHVO0tkSzL" role="2Oq$k0">
                              <node concept="2JrnkZ" id="6IHVO0tkSlN" role="2Oq$k0">
                                <node concept="2OqwBi" id="6IHVO0tkRni" role="2JrQYb">
                                  <node concept="2rP1CM" id="6IHVO0tlO_q" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="6IHVO0tkRKv" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6IHVO0tkSPW" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6IHVO0tkTvj" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
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
  <node concept="1M2fIO" id="6IHVO0tkxkW">
    <ref role="1M2myG" to="gsqd:6IHVO0tjgbo" resolve="PropertyCell" />
    <node concept="1N5Pfh" id="6IHVO0tkxl8" role="1Mr941">
      <ref role="1N5Vy1" to="gsqd:6IHVO0tjiNV" resolve="property" />
      <node concept="3dgokm" id="6IHVO0tkxlS" role="1N6uqs">
        <node concept="3clFbS" id="6IHVO0tkxlT" role="2VODD2">
          <node concept="3cpWs8" id="6IHVO0tl7Z4" role="3cqZAp">
            <node concept="3cpWsn" id="6IHVO0tl7Z5" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="6IHVO0tl7IC" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="2OqwBi" id="6IHVO0tl7Z6" role="33vP2m">
                <node concept="2OqwBi" id="6IHVO0tl7Z7" role="2Oq$k0">
                  <node concept="2JrnkZ" id="6IHVO0tl7Z8" role="2Oq$k0">
                    <node concept="2OqwBi" id="6IHVO0tl7Z9" role="2JrQYb">
                      <node concept="2rP1CM" id="6IHVO0tlqpX" role="2Oq$k0" />
                      <node concept="I4A8Y" id="6IHVO0tl7Zb" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6IHVO0tl7Zc" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                </node>
                <node concept="liA8E" id="6IHVO0tl7Zd" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6IHVO0tlejP" role="3cqZAp">
            <node concept="3cpWsn" id="6IHVO0tlejQ" role="3cpWs9">
              <property role="TrG5h" value="excludedProperties" />
              <node concept="A3Dl8" id="6IHVO0tleab" role="1tU5fm">
                <node concept="3Tqbb2" id="6IHVO0tleae" role="A3Ik2">
                  <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="6IHVO0tlejR" role="33vP2m">
                <node concept="2ShNRf" id="6IHVO0tlejS" role="2Oq$k0">
                  <node concept="Tc6Ow" id="6IHVO0tlejT" role="2ShVmc">
                    <node concept="2sp9CU" id="6IHVO0tlejU" role="HW$YZ">
                      <ref role="2sp9C9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                    </node>
                    <node concept="2tJFMh" id="6IHVO0tlejV" role="HW$Y0">
                      <node concept="ZC_QK" id="6IHVO0tlejW" role="2tJFKM">
                        <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        <node concept="ZC_QK" id="6IHVO0tlejX" role="2aWVGa">
                          <ref role="2aWVGs" to="tpck:gOOYnlO" resolve="shortDescription" />
                        </node>
                      </node>
                    </node>
                    <node concept="2tJFMh" id="6IHVO0tlejY" role="HW$Y0">
                      <node concept="ZC_QK" id="6IHVO0tlejZ" role="2tJFKM">
                        <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        <node concept="ZC_QK" id="6IHVO0tlek0" role="2aWVGa">
                          <ref role="2aWVGs" to="tpck:hnGE5uv" resolve="virtualPackage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="6IHVO0tlek1" role="2OqNvi">
                  <node concept="1bVj0M" id="6IHVO0tlek2" role="23t8la">
                    <node concept="3clFbS" id="6IHVO0tlek3" role="1bW5cS">
                      <node concept="3clFbF" id="6IHVO0tlek4" role="3cqZAp">
                        <node concept="2OqwBi" id="6IHVO0tlek5" role="3clFbG">
                          <node concept="37vLTw" id="6IHVO0tlek6" role="2Oq$k0">
                            <ref role="3cqZAo" node="6IHVO0tlek9" resolve="it" />
                          </node>
                          <node concept="Vyspw" id="6IHVO0tlek7" role="2OqNvi">
                            <node concept="37vLTw" id="6IHVO0tlek8" role="Vysub">
                              <ref role="3cqZAo" node="6IHVO0tl7Z5" resolve="repository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6IHVO0tlek9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6IHVO0tleka" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IHVO0tkxp2" role="3cqZAp">
            <node concept="2YIFZM" id="6IHVO0tkxty" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6IHVO0tl37r" role="37wK5m">
                <node concept="2OqwBi" id="6IHVO0tkySQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tkyh5" role="2Oq$k0">
                    <node concept="2OqwBi" id="6IHVO0tkxEE" role="2Oq$k0">
                      <node concept="2rP1CM" id="6IHVO0tkxvQ" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6IHVO0tkxTb" role="2OqNvi">
                        <node concept="1xMEDy" id="6IHVO0tkxTd" role="1xVPHs">
                          <node concept="chp4Y" id="6IHVO0tky2v" role="ri$Ld">
                            <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="6IHVO0tky77" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6IHVO0tkyxo" role="2OqNvi">
                      <ref role="3Tt5mk" to="gsqd:6IHVO0tjgc8" resolve="concept" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6IHVO0tkzsM" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                  </node>
                </node>
                <node concept="66VNe" id="6IHVO0tl6yh" role="2OqNvi">
                  <node concept="37vLTw" id="6IHVO0tlfvQ" role="576Qk">
                    <ref role="3cqZAo" node="6IHVO0tlejQ" resolve="excludedProperties" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6IHVO0tmX4M">
    <ref role="1M2myG" to="gsqd:6IHVO0tmKec" resolve="SingleChildCell" />
    <node concept="1N5Pfh" id="6IHVO0tmX4Y" role="1Mr941">
      <ref role="1N5Vy1" to="gsqd:6IHVO0tmKeo" resolve="link" />
      <node concept="3dgokm" id="6IHVO0tmX4Z" role="1N6uqs">
        <node concept="3clFbS" id="6IHVO0tmX50" role="2VODD2">
          <node concept="3clFbF" id="6IHVO0tmX51" role="3cqZAp">
            <node concept="2YIFZM" id="6IHVO0tmX52" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6IHVO0tmX53" role="37wK5m">
                <node concept="2OqwBi" id="6IHVO0tmX54" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tmX55" role="2Oq$k0">
                    <node concept="2OqwBi" id="6IHVO0tmX56" role="2Oq$k0">
                      <node concept="2OqwBi" id="6IHVO0tmX57" role="2Oq$k0">
                        <node concept="2rP1CM" id="6IHVO0tmX58" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="6IHVO0tmX59" role="2OqNvi">
                          <node concept="1xMEDy" id="6IHVO0tmX5a" role="1xVPHs">
                            <node concept="chp4Y" id="6IHVO0tmX5b" role="ri$Ld">
                              <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="6IHVO0tmX5c" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6IHVO0tmX5d" role="2OqNvi">
                        <ref role="3Tt5mk" to="gsqd:6IHVO0tjgc8" resolve="concept" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6IHVO0tmX5e" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6IHVO0tmX5f" role="2OqNvi">
                    <node concept="1bVj0M" id="6IHVO0tmX5g" role="23t8la">
                      <node concept="3clFbS" id="6IHVO0tmX5h" role="1bW5cS">
                        <node concept="3clFbF" id="6IHVO0tmX5i" role="3cqZAp">
                          <node concept="2OqwBi" id="6IHVO0tmX5k" role="3clFbG">
                            <node concept="37vLTw" id="6IHVO0tmX5l" role="2Oq$k0">
                              <ref role="3cqZAo" node="6IHVO0tmX5n" resolve="it" />
                            </node>
                            <node concept="2qgKlT" id="6IHVO0tmX5m" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6IHVO0tmX5n" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6IHVO0tmX5o" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="66VNe" id="6IHVO0tmX5p" role="2OqNvi">
                  <node concept="2ShNRf" id="6IHVO0tmX5q" role="576Qk">
                    <node concept="2HTt$P" id="6IHVO0tmX5r" role="2ShVmc">
                      <node concept="3Tqbb2" id="6IHVO0tmX5s" role="2HTBi0">
                        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="6IHVO0tmX5t" role="2HTEbv">
                        <node concept="2tJFMh" id="6IHVO0tmX5u" role="2Oq$k0">
                          <node concept="ZC_QK" id="6IHVO0tmX5v" role="2tJFKM">
                            <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <node concept="ZC_QK" id="6IHVO0tmX5w" role="2aWVGa">
                              <ref role="2aWVGs" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                            </node>
                          </node>
                        </node>
                        <node concept="Vyspw" id="6IHVO0tmX5x" role="2OqNvi">
                          <node concept="2OqwBi" id="6IHVO0tmX5y" role="Vysub">
                            <node concept="2OqwBi" id="6IHVO0tmX5z" role="2Oq$k0">
                              <node concept="2JrnkZ" id="6IHVO0tmX5$" role="2Oq$k0">
                                <node concept="2OqwBi" id="6IHVO0tmX5_" role="2JrQYb">
                                  <node concept="2rP1CM" id="6IHVO0tmX5A" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="6IHVO0tmX5B" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6IHVO0tmX5C" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6IHVO0tmX5D" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
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
  <node concept="1M2fIO" id="6IHVO0tn54Y">
    <ref role="1M2myG" to="gsqd:6IHVO0tn4Ep" resolve="ReferenceCell" />
    <node concept="1N5Pfh" id="6IHVO0tn55a" role="1Mr941">
      <ref role="1N5Vy1" to="gsqd:6IHVO0tn4E_" resolve="link" />
      <node concept="3dgokm" id="6IHVO0tn55d" role="1N6uqs">
        <node concept="3clFbS" id="6IHVO0tn55e" role="2VODD2">
          <node concept="3clFbF" id="6IHVO0tn57E" role="3cqZAp">
            <node concept="2YIFZM" id="6IHVO0tn57G" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6IHVO0tn57J" role="37wK5m">
                <node concept="2OqwBi" id="6IHVO0tn57K" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tn57L" role="2Oq$k0">
                    <node concept="2rP1CM" id="6IHVO0tn57M" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="6IHVO0tn57N" role="2OqNvi">
                      <node concept="1xMEDy" id="6IHVO0tn57O" role="1xVPHs">
                        <node concept="chp4Y" id="6IHVO0tn57P" role="ri$Ld">
                          <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="6IHVO0tn57Q" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6IHVO0tn57R" role="2OqNvi">
                    <ref role="3Tt5mk" to="gsqd:6IHVO0tjgc8" resolve="concept" />
                  </node>
                </node>
                <node concept="2qgKlT" id="6IHVO0tn62L" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5ERC3cg1QQj">
    <ref role="1M2myG" to="gsqd:7jIhq8MsXJ6" resolve="NotationNodeExpression" />
    <node concept="9S07l" id="5ERC3cg1QRE" role="9Vyp8">
      <node concept="3clFbS" id="5ERC3cg1QRF" role="2VODD2">
        <node concept="3clFbF" id="5ERC3cg1QV_" role="3cqZAp">
          <node concept="2OqwBi" id="5ERC3cg1RzS" role="3clFbG">
            <node concept="2OqwBi" id="5ERC3cg1R4_" role="2Oq$k0">
              <node concept="nLn13" id="5ERC3cg1QV$" role="2Oq$k0" />
              <node concept="2Xjw5R" id="5ERC3cg1Rfq" role="2OqNvi">
                <node concept="1xMEDy" id="5ERC3cg1Rfs" role="1xVPHs">
                  <node concept="chp4Y" id="5ERC3cg1RmR" role="ri$Ld">
                    <ref role="cht4Q" to="gsqd:6IHVO0tjoPC" resolve="NotationModule" />
                  </node>
                </node>
                <node concept="1xIGOp" id="5ERC3cg1RqF" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="5ERC3cg1RJL" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

