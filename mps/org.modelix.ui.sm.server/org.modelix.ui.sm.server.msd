<?xml version="1.0" encoding="UTF-8"?>
<solution name="org.modelix.ui.sm.server" uuid="eb8d1040-bff5-4126-8949-fdd95ef4c502" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">87f4b21e-a3a5-459e-a54b-408fd9eb7350(org.modelix.lib)</dependency>
    <dependency reexport="true">e52a4835-844d-46a1-99f8-c06129db796f(de.q60.mps.shadowmodels.runtime)</dependency>
    <dependency reexport="false">78874af2-5dd2-42a7-a21d-42fab3737d1d(org.modelix.ui.sm)</dependency>
    <dependency reexport="false">6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)</dependency>
    <dependency reexport="false">94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)</dependency>
    <dependency reexport="false">a7322769-ef64-4daa-a2f4-fd4228fb713e(de.q60.mps.shadowmodels.target.text)</dependency>
    <dependency reexport="false">0f2359af-040e-43bb-b438-cf024da41518(org.modelix.ui.sm.json)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="true">fc3c2aa8-0d4b-463f-a774-40d450aa04a0(org.modelix.jetty)</dependency>
    <dependency reexport="false">da981293-1ec2-4df0-95e4-df162984154c(org.modelix.ui.common)</dependency>
    <dependency reexport="false">1008a5ca-654c-4f3d-bc8c-6d9e8a72a38c(de.q60.mps.explorer)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">883c431a-2ba7-415a-a318-5eb9b7eb3672(de.q60.mps.shadowmodels.debugview)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">95085166-3236-4dd7-bd8e-e753c8d20885(de.q60.mps.incremental.runtime)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">0a2651ab-f212-45c2-a2f0-343e76cbc26b(org.modelix.model.client)</dependency>
    <dependency reexport="false">cceec75f-de6e-4ee7-bd91-29a3a99bfede(org.modelix.ui.svg)</dependency>
    <dependency reexport="false">c5e5433e-201f-43e2-ad14-a6cba8c80cd6(org.modelix.model.mpsplugin)</dependency>
    <dependency reexport="false">5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)</dependency>
    <dependency reexport="false">db058d09-86d2-48ce-b33c-595801a97e6c(org.modelix.ui.state)</dependency>
    <dependency reexport="false">cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)</dependency>
    <dependency reexport="false">0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)</dependency>
    <dependency reexport="false">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
    <dependency reexport="false">8e98f4e2-decf-4e97-bf80-9109e8b759ee(jetbrains.mps.lang.constraints.rules.runtime)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:da8e6b62-7ca3-4489-86bc-b70a501ca28f:de.q60.mps.incremental" version="0" />
    <language slang="l:bc963c22-d419-49b6-8543-ea411eb9d3a1:de.q60.mps.polymorphicfunctions" version="0" />
    <language slang="l:94b64715-a263-4c36-a138-8da14705ffa7:de.q60.mps.shadowmodels.transformation" version="1" />
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
    <language slang="l:774bf8a0-62e5-41e1-af63-f4812e60e48b:jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:817e4e70-961e-4a95-98a1-15e9f32231f1:jetbrains.mps.ide.httpsupport" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="5" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="19" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
    <module reference="1008a5ca-654c-4f3d-bc8c-6d9e8a72a38c(de.q60.mps.explorer)" version="0" />
    <module reference="95085166-3236-4dd7-bd8e-e753c8d20885(de.q60.mps.incremental.runtime)" version="0" />
    <module reference="ecfb9949-7433-4db5-85de-0f84d172e4ce(de.q60.mps.libs)" version="0" />
    <module reference="18463265-6d45-4514-82f1-cf7eb1222492(de.q60.mps.polymorphicfunctions.runtime)" version="0" />
    <module reference="883c431a-2ba7-415a-a318-5eb9b7eb3672(de.q60.mps.shadowmodels.debugview)" version="0" />
    <module reference="e52a4835-844d-46a1-99f8-c06129db796f(de.q60.mps.shadowmodels.runtime)" version="0" />
    <module reference="a7322769-ef64-4daa-a2f4-fd4228fb713e(de.q60.mps.shadowmodels.target.text)" version="0" />
    <module reference="94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)" version="0" />
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
    <module reference="8e98f4e2-decf-4e97-bf80-9109e8b759ee(jetbrains.mps.lang.constraints.rules.runtime)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
    <module reference="fc3c2aa8-0d4b-463f-a774-40d450aa04a0(org.modelix.jetty)" version="0" />
    <module reference="87f4b21e-a3a5-459e-a54b-408fd9eb7350(org.modelix.lib)" version="0" />
    <module reference="cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)" version="0" />
    <module reference="0a2651ab-f212-45c2-a2f0-343e76cbc26b(org.modelix.model.client)" version="0" />
    <module reference="5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)" version="0" />
    <module reference="c5e5433e-201f-43e2-ad14-a6cba8c80cd6(org.modelix.model.mpsplugin)" version="0" />
    <module reference="0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)" version="0" />
    <module reference="da981293-1ec2-4df0-95e4-df162984154c(org.modelix.ui.common)" version="0" />
    <module reference="78874af2-5dd2-42a7-a21d-42fab3737d1d(org.modelix.ui.sm)" version="1" />
    <module reference="6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)" version="0" />
    <module reference="0f2359af-040e-43bb-b438-cf024da41518(org.modelix.ui.sm.json)" version="0" />
    <module reference="eb8d1040-bff5-4126-8949-fdd95ef4c502(org.modelix.ui.sm.server)" version="0" />
    <module reference="db058d09-86d2-48ce-b33c-595801a97e6c(org.modelix.ui.state)" version="0" />
    <module reference="cceec75f-de6e-4ee7-bd91-29a3a99bfede(org.modelix.ui.svg)" version="0" />
  </dependencyVersions>
</solution>

