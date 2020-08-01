package org.modelix.model.api

import java.util.concurrent.atomic.AtomicLong

class DefaultIdGenerator private constructor() : IIdGenerator {
    protected val ID_SEQUENCE = AtomicLong(Math.round(Math.abs(Math.random()) * 1000000000.0) * 1000000000L)
    override fun generate(): Long {
        return ID_SEQUENCE.incrementAndGet()
    }

    companion object {
        val instance = DefaultIdGenerator()
    }
}