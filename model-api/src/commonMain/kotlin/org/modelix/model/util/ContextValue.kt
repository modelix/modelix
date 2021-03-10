package org.modelix.model.util

expect class ContextValue<E> {

    constructor()
    constructor(defaultValue: E)

    fun getValue(): E?
    fun runWith(newValue: E, r: () -> Unit)
    fun <T> computeWith(newValue: E, r: () -> T): T
}
