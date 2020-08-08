<?xml version="1.0" encoding="UTF-8"?>
<solution name="org.modelix.model.client" uuid="0a2651ab-f212-45c2-a2f0-343e76cbc26b" moduleVersion="0" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}/lib" type="java_classes">
      <sourceRoot location="kotlin-stdlib-1.3.72.jar" />
      <sourceRoot location="kotlin-stdlib-common-1.3.72.jar" />
      <sourceRoot location="jersey-client-2.31.jar" />
      <sourceRoot location="jakarta.ws.rs-api-2.1.6.jar" />
      <sourceRoot location="aopalliance-repackaged-2.6.1.jar" />
      <sourceRoot location="hk2-api-2.6.1.jar" />
      <sourceRoot location="hk2-locator-2.6.1.jar" />
      <sourceRoot location="hk2-utils-2.6.1.jar" />
      <sourceRoot location="javassist-3.25.0-GA.jar" />
      <sourceRoot location="jersey-hk2-2.31.jar" />
      <sourceRoot location="jakarta.validation-api-2.0.2.jar" />
      <sourceRoot location="javax.activation-api-1.2.0.jar" />
      <sourceRoot location="jaxb-api-2.3.1.jar" />
      <sourceRoot location="jersey-media-jaxb-2.31.jar" />
      <sourceRoot location="jersey-media-sse-2.31.jar" />
      <sourceRoot location="jersey-server-2.31.jar" />
      <sourceRoot location="model-client-jvm-2020.1-SNAPSHOT.jar" />
      <sourceRoot location="kotlin-stdlib-jdk7-1.3.72.jar" />
      <sourceRoot location="kotlin-stdlib-jdk8-1.3.72.jar" />
      <sourceRoot location="annotations-13.0.jar" />
      <sourceRoot location="log4j-1.2.17.jar" />
      <sourceRoot location="model-client-js-2020.1-SNAPSHOT.jar" />
      <sourceRoot location="model-client-metadata-2020.1-SNAPSHOT.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet languageLevel="JAVA_8" type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/aopalliance-repackaged-2.6.1.jar" />
    <stubModelEntry path="${module}/lib/checker-qual-2.11.1.jar" />
    <stubModelEntry path="${module}/lib/commons-collections4-4.4.jar" />
    <stubModelEntry path="${module}/lib/commons-io-2.7.jar" />
    <stubModelEntry path="${module}/lib/commons-lang3-3.11.jar" />
    <stubModelEntry path="${module}/lib/error_prone_annotations-2.3.4.jar" />
    <stubModelEntry path="${module}/lib/failureaccess-1.0.1.jar" />
    <stubModelEntry path="${module}/lib/guava-29.0-jre.jar" />
    <stubModelEntry path="${module}/lib/hk2-api-2.6.1.jar" />
    <stubModelEntry path="${module}/lib/hk2-locator-2.6.1.jar" />
    <stubModelEntry path="${module}/lib/hk2-utils-2.6.1.jar" />
    <stubModelEntry path="${module}/lib/j2objc-annotations-1.3.jar" />
    <stubModelEntry path="${module}/lib/jakarta.annotation-api-1.3.5.jar" />
    <stubModelEntry path="${module}/lib/jakarta.inject-2.6.1.jar" />
    <stubModelEntry path="${module}/lib/jakarta.validation-api-2.0.2.jar" />
    <stubModelEntry path="${module}/lib/jakarta.ws.rs-api-2.1.6.jar" />
    <stubModelEntry path="${module}/lib/javassist-3.25.0-GA.jar" />
    <stubModelEntry path="${module}/lib/javax.activation-api-1.2.0.jar" />
    <stubModelEntry path="${module}/lib/jaxb-api-2.3.1.jar" />
    <stubModelEntry path="${module}/lib/jersey-client-2.31.jar" />
    <stubModelEntry path="${module}/lib/jersey-common-2.31.jar" />
    <stubModelEntry path="${module}/lib/jersey-hk2-2.31.jar" />
    <stubModelEntry path="${module}/lib/jersey-media-jaxb-2.31.jar" />
    <stubModelEntry path="${module}/lib/jersey-media-sse-2.31.jar" />
    <stubModelEntry path="${module}/lib/jersey-server-2.31.jar" />
    <stubModelEntry path="${module}/lib/json-20200518.jar" />
    <stubModelEntry path="${module}/lib/jsr305-3.0.2.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-1.3.72.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-common-1.3.72.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-jdk7-1.3.72.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-jdk8-1.3.72.jar" />
    <stubModelEntry path="${module}/lib/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar" />
    <stubModelEntry path="${module}/lib/model-client-js-2020.1-SNAPSHOT.jar" />
    <stubModelEntry path="${module}/lib/model-client-jvm-2020.1-SNAPSHOT.jar" />
    <stubModelEntry path="${module}/lib/model-client-metadata-2020.1-SNAPSHOT.jar" />
    <stubModelEntry path="${module}/lib/osgi-resource-locator-1.0.3.jar" />
    <stubModelEntry path="${module}/lib/trove4j-3.0.3.jar" />
    <stubModelEntry path="${module}/lib/vavr-0.10.3.jar" />
    <stubModelEntry path="${module}/lib/vavr-match-0.10.3.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="0a2651ab-f212-45c2-a2f0-343e76cbc26b(org.modelix.model.client)" version="0" />
  </dependencyVersions>
</solution>

