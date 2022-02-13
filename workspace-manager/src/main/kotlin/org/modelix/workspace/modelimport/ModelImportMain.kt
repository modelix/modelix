package org.modelix.workspace.modelimport

import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import java.io.File
import java.net.URLClassLoader
import java.nio.charset.StandardCharsets

object ModelImportMain {
    val ENVIRONMENT_ARG_KEY = "--environment"

    @JvmStatic
    fun main(args: Array<String>) {
        var envFile: File? = null
        val itr = args.iterator()
        while (itr.hasNext()) {
            when (val arg = itr.next()) {
                ENVIRONMENT_ARG_KEY -> envFile = File(itr.next())
                else -> throw IllegalArgumentException("Unknown argument: $arg")
            }
        }

        if (envFile == null) throw IllegalArgumentException("$ENVIRONMENT_ARG_KEY argument is missing")
        val environmentSpec = Json.decodeFromString<EnvironmentSpec>(envFile.readText(StandardCharsets.UTF_8))
        println("Loading environment")
        //Thread.currentThread().contextClassLoader = URLClassLoader(environmentSpec.classPath.map { File(it).toURI().toURL() }.toTypedArray())
        val mpsEnvironment = EnvironmentLoader(environmentSpec).loadEnvironment()
    }

}