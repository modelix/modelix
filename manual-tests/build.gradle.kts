// Ensure modelix was built
// Ensure the artifacts were retrieved
//
// Get the plugins from mps/build/distributions:
//
// org.modelix.buildscripts-2020.1.1-SNAPSHOT.zip    
// org.modelix.model.mpsplugin-2020.1.1-SNAPSHOT.zip
//
// Get the artifacts used by Modelix:
// copy artifacts/de.itemis.mps.extensions


val prepareDependenciesForManualTests by tasks.registering {
	dependsOn(":mps:setup", ":mps:packageMpsModelPlugin")
	doLast {
		val dependenciesDir = File("${rootDir.absolutePath}/manual-tests/dependencies")
        dependenciesDir.deleteRecursively()
	    copy {
	    	from("${rootDir.absolutePath}/artifacts/de.itemis.mps.extensions")
	    	into("${rootDir.absolutePath}/manual-tests/dependencies/de.itemis.mps.extensions")
		}
		val distributionsDir = File("${rootDir.absolutePath}/mps/build/distributions/")
		val distributionFiles = distributionsDir.listFiles()
			?.filter { it.name.startsWith("org.modelix.model.mpsplugin-") }
			?.toMutableList()
		if (distributionFiles == null || distributionFiles.size < 1) {
			throw RuntimeException("distribution not found")
		}
		distributionFiles.sortWith { a, b -> a.name.compareTo(b.name) }
		copy {
			from(zipTree(distributionFiles.last().absolutePath))
    		into("${rootDir.absolutePath})/manual-tests/dependencies")
		}
	}
}