<?xml version="1.0" encoding="UTF-8"?>
<solution name="org.modelix.model.server.mpsplugin" uuid="d5d0bab3-0d1d-4161-b322-a85b0528a69a" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}/lib" type="java_classes">
      <sourceRoot location="alpn-api.jar" />
      <sourceRoot location="config.jar" />
      <sourceRoot location="jansi.jar" />
      <sourceRoot location="kotlin-reflect.jar" />
      <sourceRoot location="kotlinx-coroutines-core-jvm.jar" />
      <sourceRoot location="kotlinx-coroutines-jdk8.jar" />
      <sourceRoot location="ktor-events-jvm.jar" />
      <sourceRoot location="ktor-http-cio-jvm.jar" />
      <sourceRoot location="ktor-http-jvm.jar" />
      <sourceRoot location="ktor-io-jvm.jar" />
      <sourceRoot location="ktor-network-jvm.jar" />
      <sourceRoot location="ktor-serialization-jvm.jar" />
      <sourceRoot location="ktor-server-core-jvm.jar" />
      <sourceRoot location="ktor-server-cors-jvm.jar" />
      <sourceRoot location="ktor-server-host-common-jvm.jar" />
      <sourceRoot location="ktor-server-netty-jvm.jar" />
      <sourceRoot location="ktor-server-websockets-jvm.jar" />
      <sourceRoot location="ktor-utils-jvm.jar" />
      <sourceRoot location="ktor-websocket-serialization-jvm.jar" />
      <sourceRoot location="ktor-websockets-jvm.jar" />
      <sourceRoot location="light-model-server.jar" />
      <sourceRoot location="model-server-api-jvm.jar" />
      <sourceRoot location="netty-buffer.jar" />
      <sourceRoot location="netty-codec-http.jar" />
      <sourceRoot location="netty-codec-http2.jar" />
      <sourceRoot location="netty-codec.jar" />
      <sourceRoot location="netty-common.jar" />
      <sourceRoot location="netty-handler.jar" />
      <sourceRoot location="netty-resolver.jar" />
      <sourceRoot location="netty-transport-classes-epoll.jar" />
      <sourceRoot location="netty-transport-classes-kqueue.jar" />
      <sourceRoot location="netty-transport-native-epoll.jar" />
      <sourceRoot location="netty-transport-native-kqueue.jar" />
      <sourceRoot location="netty-transport-native-unix-common.jar" />
      <sourceRoot location="netty-transport.jar" />
      <sourceRoot location="kotlinx-coroutines-swing.jar" />
      <sourceRoot location="incremental-jvm.jar" />
      <sourceRoot location="kotlinx-benchmark-runtime-jvm.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/alpn-api.jar" />
    <stubModelEntry path="${module}/lib/config.jar" />
    <stubModelEntry path="${module}/lib/incremental-jvm.jar" />
    <stubModelEntry path="${module}/lib/jansi.jar" />
    <stubModelEntry path="${module}/lib/kotlin-reflect.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-benchmark-runtime-jvm.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-coroutines-core-jvm.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-coroutines-jdk8.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-coroutines-swing.jar" />
    <stubModelEntry path="${module}/lib/ktor-events-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-http-cio-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-http-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-io-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-network-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-serialization-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-server-core-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-server-cors-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-server-host-common-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-server-netty-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-server-websockets-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-utils-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-websocket-serialization-jvm.jar" />
    <stubModelEntry path="${module}/lib/ktor-websockets-jvm.jar" />
    <stubModelEntry path="${module}/lib/light-model-server.jar" />
    <stubModelEntry path="${module}/lib/model-server-api-jvm.jar" />
    <stubModelEntry path="${module}/lib/netty-buffer.jar" />
    <stubModelEntry path="${module}/lib/netty-codec-http.jar" />
    <stubModelEntry path="${module}/lib/netty-codec-http2.jar" />
    <stubModelEntry path="${module}/lib/netty-codec.jar" />
    <stubModelEntry path="${module}/lib/netty-common.jar" />
    <stubModelEntry path="${module}/lib/netty-handler.jar" />
    <stubModelEntry path="${module}/lib/netty-resolver.jar" />
    <stubModelEntry path="${module}/lib/netty-transport-classes-epoll.jar" />
    <stubModelEntry path="${module}/lib/netty-transport-classes-kqueue.jar" />
    <stubModelEntry path="${module}/lib/netty-transport-native-epoll.jar" />
    <stubModelEntry path="${module}/lib/netty-transport-native-kqueue.jar" />
    <stubModelEntry path="${module}/lib/netty-transport-native-unix-common.jar" />
    <stubModelEntry path="${module}/lib/netty-transport.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)</dependency>
    <dependency reexport="false">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
    <dependency reexport="false">5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">7197c640-b458-406b-8636-40c7936ef8c8(com.mbeddr.mpsutil.modellisteners.runtime)</dependency>
    <dependency reexport="true">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="12" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="1" />
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
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="7197c640-b458-406b-8636-40c7936ef8c8(com.mbeddr.mpsutil.modellisteners.runtime)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="9e98f4e2-decf-4e97-bf80-9109e8b759aa(jetbrains.mps.lang.feedback.context)" version="0" />
    <module reference="cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)" version="0" />
    <module reference="5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)" version="0" />
    <module reference="0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)" version="0" />
    <module reference="d5d0bab3-0d1d-4161-b322-a85b0528a69a(org.modelix.model.server.mpsplugin)" version="0" />
  </dependencyVersions>
</solution>

