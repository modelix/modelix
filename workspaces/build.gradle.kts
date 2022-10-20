plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

val modelixCoreVersion: String by rootProject

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation("org.eclipse.jgit:org.eclipse.jgit:5.8.0.202006091008-r")
    implementation("org.apache.maven.shared:maven-invoker:3.1.0")
    implementation("org.zeroturnaround:zt-zip:1.14")
    implementation("org.apache.commons:commons-text:1.9")
    implementation("org.jasypt:jasypt:1.9.3")
    implementation("org.modelix:model-client:$modelixCoreVersion")
    implementation("org.modelix:authorization:$modelixCoreVersion")
}
