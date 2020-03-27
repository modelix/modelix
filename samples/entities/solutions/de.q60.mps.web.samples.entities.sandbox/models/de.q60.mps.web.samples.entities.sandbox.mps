<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5d56df86-9b89-40e7-a17f-675bb0dc9ae2(de.q60.mps.web.samples.entities.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="363848cf-91df-484c-9066-7089821cb609" name="de.q60.mps.web.samples.entities" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="363848cf-91df-484c-9066-7089821cb609" name="de.q60.mps.web.samples.entities">
      <concept id="579439372628304764" name="de.q60.mps.web.samples.entities.structure.EntityType" flags="ng" index="uq3pQ">
        <reference id="579439372628304981" name="entity" index="uq35v" />
      </concept>
      <concept id="579439372628239967" name="de.q60.mps.web.samples.entities.structure.StringType" flags="ng" index="uqNdl" />
      <concept id="7680480780028988222" name="de.q60.mps.web.samples.entities.structure.Entity" flags="ng" index="3ZgkuH">
        <child id="7680480780028993238" name="properties" index="3Zgl95" />
      </concept>
      <concept id="7680480780028993068" name="de.q60.mps.web.samples.entities.structure.Property" flags="ng" index="3ZglaZ">
        <child id="579439372628240412" name="type" index="uqNOm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3ZgkuH" id="wa_gCmopcC">
    <property role="TrG5h" value="EntityA" />
    <node concept="3ZglaZ" id="wa_gCmo$wi" role="3Zgl95">
      <property role="TrG5h" value="a" />
      <node concept="uqNdl" id="wa_gCmo$wm" role="uqNOm" />
    </node>
    <node concept="3ZglaZ" id="wa_gCmoEag" role="3Zgl95">
      <property role="TrG5h" value="b" />
      <node concept="uqNdl" id="wa_gCmoEam" role="uqNOm" />
    </node>
    <node concept="3ZglaZ" id="wa_gCmoEap" role="3Zgl95">
      <property role="TrG5h" value="c" />
      <node concept="uq3pQ" id="wa_gCmoKO6" role="uqNOm">
        <ref role="uq35v" node="wa_gCmopcC" resolve="EntityA" />
      </node>
    </node>
    <node concept="3ZglaZ" id="HabLxtWIaw" role="3Zgl95">
      <property role="TrG5h" value="d" />
      <node concept="uq3pQ" id="HabLxtWIay" role="uqNOm">
        <ref role="uq35v" node="lpnKkXX1BR" resolve="EntityB" />
      </node>
    </node>
  </node>
  <node concept="3ZgkuH" id="lpnKkXX1BR">
    <property role="TrG5h" value="EntityB" />
    <node concept="3ZglaZ" id="lpnKkY07hH" role="3Zgl95">
      <property role="TrG5h" value="e" />
      <node concept="uq3pQ" id="lpnKkY07hL" role="uqNOm">
        <ref role="uq35v" node="wa_gCmopcC" resolve="EntityA" />
      </node>
    </node>
  </node>
  <node concept="3ZgkuH" id="lpnKkXX1BS" />
</model>

