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

actual fun logDebug(message: () -> String, contextClass: KClass<*>) {
    console.log(message())
}

actual fun bitCount(bits: Int): Int {
    TODO("Not yet implemented")
}

actual fun <K, V> createLRUMap(size: Int): MutableMap<K, V> {
    TODO("Not yet implemented")
}

actual fun randomUUID(): String {
    TODO("Not yet implemented")
}