<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0cd5e68f-034a-4a03-8011-e57fcc7cce60(de.q60.mps.web.notation.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="gsqd" ref="r:599c60e4-99d0-4ea8-9225-bd9adc3816a3(de.q60.mps.web.notation.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="13h7C7" id="6IHVO0tpdfR">
    <ref role="13h7C2" to="gsqd:6IHVO0tjiO1" resolve="FlagCell" />
    <node concept="13hLZK" id="6IHVO0tpdfS" role="13h7CW">
      <node concept="3clFbS" id="6IHVO0tpdfT" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="w8XdrMW0HI">
    <ref role="13h7C2" to="gsqd:6IHVO0tjiNF" resolve="StaticCollectionCell" />
    <node concept="13i0hz" id="w8XdrMW0I4" role="13h7CS">
      <property role="TrG5h" value="isVerticalLayout" />
      <node concept="3Tm1VV" id="w8XdrMW0I5" role="1B3o_S" />
      <node concept="10P_77" id="w8XdrMW0Ik" role="3clF45" />
      <node concept="3clFbS" id="w8XdrMW0I7" role="3clF47">
        <node concept="3clFbF" id="w8XdrMW0IY" role="3cqZAp">
          <node concept="2OqwBi" id="w8XdrMW1kT" role="3clFbG">
            <node concept="2OqwBi" id="w8XdrMW0Uy" role="2Oq$k0">
              <node concept="13iPFW" id="w8XdrMW0IX" role="2Oq$k0" />
              <node concept="3TrEf2" id="w8XdrMW16U" role="2OqNvi">
                <ref role="3Tt5mk" to="gsqd:w8XdrMVXx8" resolve="layout" />
              </node>
            </node>
            <node concept="1mIQ4w" id="w8XdrMW1xz" role="2OqNvi">
              <node concept="chp4Y" id="w8XdrMW1Bx" role="cj9EA">
                <ref role="cht4Q" to="gsqd:w8XdrMVXwW" resolve="VerticalLayout" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="w8XdrMW0HJ" role="13h7CW">
      <node concept="3clFbS" id="w8XdrMW0HK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7zDl3zklnqW">
    <ref role="13h7C2" to="gsqd:6IHVO0tjiOd" resolve="OptionalCell" />
    <node concept="13i0hz" id="7zDl3zklnsg" role="13h7CS">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="7zDl3zklnsh" role="1B3o_S" />
      <node concept="17QB3L" id="7zDl3zklnsw" role="3clF45" />
      <node concept="3clFbS" id="7zDl3zklnsj" role="3clF47">
        <node concept="3cpWs8" id="7zDl3zklnXh" role="3cqZAp">
          <node concept="3cpWsn" id="7zDl3zklnXi" role="3cpWs9">
            <property role="TrG5h" value="conceptNotation" />
            <node concept="3Tqbb2" id="7zDl3zklnWT" role="1tU5fm">
              <ref role="ehGHo" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
            </node>
            <node concept="2OqwBi" id="7zDl3zklnXj" role="33vP2m">
              <node concept="13iPFW" id="7zDl3zklnXk" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7zDl3zklnXl" role="2OqNvi">
                <node concept="1xMEDy" id="7zDl3zklnXm" role="1xVPHs">
                  <node concept="chp4Y" id="7zDl3zklnXn" role="ri$Ld">
                    <ref role="cht4Q" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7zDl3zklnZm" role="3cqZAp">
          <node concept="2OqwBi" id="7zDl3zkluNF" role="3clFbG">
            <node concept="2OqwBi" id="7zDl3zkltxF" role="2Oq$k0">
              <node concept="2OqwBi" id="7zDl3zklqeD" role="2Oq$k0">
                <node concept="2OqwBi" id="7zDl3zklo97" role="2Oq$k0">
                  <node concept="13iPFW" id="7zDl3zklnZk" role="2Oq$k0" />
                  <node concept="z$bX8" id="7zDl3zklom0" role="2OqNvi">
                    <node concept="1xIGOp" id="7zDl3zklq74" role="1xVPHs" />
                  </node>
                </node>
                <node concept="66VNe" id="7zDl3zklrCm" role="2OqNvi">
                  <node concept="2OqwBi" id="7zDl3zklrU7" role="576Qk">
                    <node concept="37vLTw" id="7zDl3zklrG3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7zDl3zklnXi" resolve="conceptNotation" />
                    </node>
                    <node concept="z$bX8" id="7zDl3zkls8i" role="2OqNvi">
                      <node concept="1xIGOp" id="7zDl3zkltkY" role="1xVPHs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="7zDl3zkltKP" role="2OqNvi">
                <node concept="1bVj0M" id="7zDl3zkltKR" role="23t8la">
                  <node concept="3clFbS" id="7zDl3zkltKS" role="1bW5cS">
                    <node concept="3clFbF" id="7zDl3zkltQq" role="3cqZAp">
                      <node concept="3cpWs3" id="7zDl3zkluqL" role="3clFbG">
                        <node concept="Xl_RD" id="7zDl3zkluuA" role="3uHU7B">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="2OqwBi" id="7zDl3zklu21" role="3uHU7w">
                          <node concept="37vLTw" id="7zDl3zkltQp" role="2Oq$k0">
                            <ref role="3cqZAo" node="7zDl3zkltKT" resolve="it" />
                          </node>
                          <node concept="2bSWHS" id="7zDl3zkluci" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7zDl3zkltKT" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7zDl3zkltKU" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="7zDl3zklveT" role="2OqNvi">
              <node concept="Xl_RD" id="7zDl3zklvS8" role="3uJOhx">
                <property role="Xl_RC" value="_" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7zDl3zklnqX" role="13h7CW">
      <node concept="3clFbS" id="7zDl3zklnqY" role="2VODD2" />
    </node>
  </node>
</model>

