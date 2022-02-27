package org.modelix.buildtools

import java.nio.file.Path

class ModulePath(val origin: ModuleOrigin, val pathInOrigin: Path) {
    fun getLocalAbsolutePath(): Path {
        return origin.localPath.resolve(pathInOrigin).toAbsolutePath().normalize()
    }

    fun getWorkspaceRelativePath(): Path {
        return origin.workspaceRelativePath.resolve(pathInOrigin).normalize()
    }
}