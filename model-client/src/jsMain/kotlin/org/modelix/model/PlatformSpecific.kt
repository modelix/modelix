package org.modelix.model

import kotlin.reflect.KClass

actual fun sleep(milliseconds: Long) {
    TODO("Not yet implemented")
}

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

actual fun bitCount(bits: Int): Int {
    var i = bits
    i -= (i ushr 1 and 0x55555555)
    i = (i and 0x33333333) + (i ushr 2 and 0x33333333)
    i = i + (i ushr 4) and 0x0f0f0f0f
    i += (i ushr 8)
    i += (i ushr 16)
    return i and 0x3f
}

actual fun <K, V> createLRUMap(size: Int): MutableMap<K, V> {
    return HashMap()
}

@JsModule("uuid")
@JsNonModule
external object uuid {
    fun v4(): String
}

actual fun randomUUID(): String {
    return uuid.v4()
}

actual inline fun <R> runSynchronized(lock: Any, block: () -> R): R {
    return block()
}
