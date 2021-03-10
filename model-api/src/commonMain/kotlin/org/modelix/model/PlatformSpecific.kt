package org.modelix.model

import kotlin.reflect.KClass

expect fun logError(message: String, exception: Exception, contextClass: KClass<*>)
expect fun logDebug(message: () -> String?, contextClass: KClass<*>)
expect fun logTrace(message: () -> String?, contextClass: KClass<*>)
expect fun logWarning(message: String, exception: Exception, contextClass: KClass<*>)
expect inline fun <R> runSynchronized(lock: Any, block: () -> R): R