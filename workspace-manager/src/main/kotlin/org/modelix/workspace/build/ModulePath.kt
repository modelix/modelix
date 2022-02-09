package org.modelix.workspace.build

import java.nio.file.Path

class ModulePath(val origin: ModuleOrigin, val pathInOrigin: Path) {
    fun getLocalAbsolutePath(): Path {
        return origin.localPath.resolve(pathInOrigin).toAbsolutePath()
    }

    fun getWorkspaceRelativePath(): Path {
        return origin.workspaceRelativePath.resolve(pathInOrigin)
    }
}