package org.modelix.model

import kotlin.reflect.KClass

actual fun logError(message: String, exception: Exception, contextClass: KClass<*>) {
    console.error(message, exception)
}

actual fun logWarning(message: String, exception: Exception, contextClass: KClass<*>) {
    console.warn(message, exception)
}

actual fun logDebug(message: () -> String?, contextClass: KClass<*>) {
    val msg = message()
    if (!msg.isNullOrEmpty()) console.log(msg)
}

actual fun logTrace(message: () -> String?, contextClass: KClass<*>) {
//    console.log(message())
}

actual inline fun <R> runSynchronized(lock: Any, block: () -> R): R {
    return block()
}