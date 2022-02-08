/*
 * Copyright 2003-2022 JetBrains s.r.o.
 *
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
package org.modelix.workspace.manager

enum class WorkspaceBuildStatus {
    New, // The job was created, but is not yet queued for building
    Queued, // The job is queued for building, but there is currently some other job running.
    Running, // The job is currently executed.
    FailedBuild, // If the build failed we still create the ZIP to let users fix the modules.
    FailedZip, // Failed to create the ZIP file. There is nothing to download.
    AllSuccessful, // The modules were built successfully and the ZIP is ready for download.
    ZipSuccessful // The build failed, but the ZIP is ready for download.
}