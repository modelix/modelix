package org.modelix.model.util

actual class ContextValue<E> {
    actual constructor() {
        TODO("Not yet implemented")
    }

    actual constructor(defaultValue: E) {
        TODO("Not yet implemented")
    }

    actual fun getValue(): E? {
        TODO("Not yet implemented")
    }

    actual fun runWith(newValue: E, r: () -> Unit) {
    }

    actual fun <T> computeWith(newValue: E, r: () -> T): T {
        TODO("Not yet implemented")
    }
}
