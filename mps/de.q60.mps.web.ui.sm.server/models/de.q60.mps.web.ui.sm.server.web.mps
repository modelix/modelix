<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7a4d7ed2-9d22-4615-b536-63269a84b9a5(de.q60.mps.web.ui.sm.server.web)">
  <persistence version="9" />
  <languages>
    <use id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions" version="0" />
  </languages>
  <imports>
    <import index="m2xw" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:org.eclipse.jetty.server(de.q60.mps.web.jetty/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="bc963c22-d419-49b6-8543-ea411eb9d3a1" name="de.q60.mps.polymorphicfunctions">
      <concept id="1700528364959225008" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionsModule" flags="ng" index="3khU$T">
        <child id="1700528364959226185" name="content" index="3khUj0" />
      </concept>
      <concept id="1700528364959224885" name="de.q60.mps.polymorphicfunctions.structure.PolymorphicFunctionDeclaration" flags="ng" index="3khUAW">
        <property id="6393752169615662762" name="multiple" index="1rq3kj" />
        <child id="1700528364959690262" name="returnBaseType" index="3kv9ev" />
      </concept>
      <concept id="1700528364959225676" name="de.q60.mps.polymorphicfunctions.structure.EmptyLine" flags="ng" index="3khUF5" />
    </language>
  </registry>
  <node concept="3khU$T" id="1z8Uup0q61q">
    <property role="TrG5h" value="HttpHandlers" />
    <node concept="3khUF5" id="1z8Uup0q61r" role="3khUj0" />
    <node concept="3khUAW" id="1z8Uup0q61$" role="3khUj0">
      <property role="TrG5h" value="getHandlers" />
      <property role="1rq3kj" value="true" />
      <node concept="3uibUv" id="1z8Uup0qeNd" role="3kv9ev">
        <ref role="3uigEE" to="m2xw:~Handler" resolve="Handler" />
      </node>
    </node>
    <node concept="3khUF5" id="1z8Uup0q61w" role="3khUj0" />
  </node>
</model>

