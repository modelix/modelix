<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b1e92551-f846-4668-9f66-61b263fc8f5c(de.q60.mps.web.aspect.genplan)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="1" />
  </languages>
  <imports>
    <import index="genq" ref="r:1197b083-0595-448a-92bb-6bb8b4393987(de.q60.mps.shadowmodels.genplan)" />
  </imports>
  <registry>
    <language id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan">
      <concept id="3705377275350227759" name="jetbrains.mps.lang.generator.plan.structure.IncludePlan" flags="ng" index="NozSJ">
        <reference id="3705377275350227762" name="plan" index="NozSM" />
      </concept>
      <concept id="1820634577908471803" name="jetbrains.mps.lang.generator.plan.structure.Plan" flags="ng" index="2VgMpV">
        <child id="1820634577908471815" name="steps" index="2VgMA7" />
      </concept>
      <concept id="1820634577908471810" name="jetbrains.mps.lang.generator.plan.structure.Transform" flags="ng" index="2VgMA2">
        <child id="2944629966652439181" name="languages" index="1t_9vn" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2VgMpV" id="wa_gCmoOgo">
    <property role="TrG5h" value="WebAspectPlan" />
    <node concept="2VgMA2" id="wa_gCmoOjz" role="2VgMA7">
      <node concept="2V$Bhx" id="wa_gCmoTRx" role="1t_9vn">
        <property role="2V$B1T" value="375af171-bd4b-4bfb-bc9f-418fb996740b" />
        <property role="2V$B1Q" value="de.q60.mps.web.aspect" />
      </node>
      <node concept="2V$Bhx" id="5Nhi$S9QAIP" role="1t_9vn">
        <property role="2V$B1T" value="25fcb6ab-d05a-4950-8cdf-251526bdf513" />
        <property role="2V$B1Q" value="de.q60.mps.web.notation" />
      </node>
    </node>
    <node concept="2VgMA2" id="2XNuosbiBnp" role="2VgMA7">
      <node concept="2V$Bhx" id="2XNuosbiBnK" role="1t_9vn">
        <property role="2V$B1T" value="63650c59-16c8-498a-99c8-005c7ee9515d" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.access" />
      </node>
    </node>
    <node concept="2VgMA2" id="2XNuosbiBo8" role="2VgMA7">
      <node concept="2V$Bhx" id="2XNuosbiBox" role="1t_9vn">
        <property role="2V$B1T" value="760a0a8c-eabb-4521-8bfd-65db761a9ba3" />
        <property role="2V$B1Q" value="jetbrains.mps.baseLanguage.logging" />
      </node>
    </node>
    <node concept="NozSJ" id="3XNyhUa87wa" role="2VgMA7">
      <ref role="NozSM" to="genq:q2F95_HSDf" resolve="ShadowmodelsGenplan" />
    </node>
  </node>
</model>

