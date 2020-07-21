<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b50a408d-f48c-4aa2-b27f-8ef56a3217d6(main@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="a4f1" ref="r:57e0ef4e-444e-409c-91ca-d4217a35bc2e(org.modelix.buildhacks.structure)" />
    <import index="7kwb" ref="r:54537613-52b5-40a8-b223-e87f0960b04f(jetbrains.mps.build.mps.generator.template.main@generator)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="27MnIratv6M">
    <property role="TrG5h" value="main" />
  </node>
  <node concept="jVnub" id="27MnIraud$i">
    <property role="TrG5h" value="switch_ExternalJar_hack" />
    <ref role="phYkn" to="7kwb:4gIjTorxzAe" resolve="switch_ExternalJar" />
    <node concept="3aamgX" id="27MnIraud$j" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="a4f1:27MnIratvuB" resolve="BuildLayout_Hack" />
      <node concept="b5Tf3" id="27MnIraud$n" role="1lVwrX" />
    </node>
    <node concept="1N15co" id="27MnIraud$C" role="1s_3oS">
      <property role="TrG5h" value="currentModule" />
      <node concept="3Tqbb2" id="27MnIraud$D" role="1N15GL">
        <ref role="ehGHo" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
      </node>
    </node>
    <node concept="1N15co" id="27MnIraud$E" role="1s_3oS">
      <property role="TrG5h" value="jarPath" />
      <node concept="17QB3L" id="27MnIraud$F" role="1N15GL" />
    </node>
  </node>
</model>

