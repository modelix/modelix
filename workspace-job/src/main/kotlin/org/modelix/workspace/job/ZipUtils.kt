/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.workspace.job

import org.zeroturnaround.zip.ZipUtil
import java.io.BufferedInputStream
import java.io.File
import java.io.FileInputStream
import java.io.InputStream
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream
import kotlin.io.path.Path
import kotlin.io.path.extension
import kotlin.io.path.isDirectory

fun ZipOutputStream.copyFiles(inputDir: File,
                              filter: (Path) -> Boolean = { true },
                              mapPath: (Path) -> Path = { inputDir.toPath().relativize(it) },
                              extractZipFiles: Boolean = true) {
    Files.walk(inputDir.toPath()).filter { !it.isDirectory() && filter(it) }.forEach { inputFile ->
        if (extractZipFiles && inputFile.extension.lowercase() == "zip") {
            copyZipContent(inputFile.toFile(), mapPath(inputFile))
        } else {
            FileInputStream(inputFile.toFile()).use { input ->
                copyFile(input, mapPath(inputFile))
            }
        }

    }
}

private fun ZipOutputStream.copyFile(input: InputStream, outputPath: Path) {
    BufferedInputStream(input).use { origin ->
        val entry = ZipEntry(outputPath.toString())
        putNextEntry(entry)
        origin.copyTo(this, 1024)
    }
}

fun ZipOutputStream.copyZipContent(input: File, outputDir: Path) {
    ZipUtil.iterate(input) {stream, entry ->
        if (entry.isDirectory) return@iterate
        copyFile(stream, outputDir.resolve(entry.name))
    }
}
