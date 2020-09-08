package org.modelix.model.client

import org.modelix.model.api.IIdGenerator

class IdGeneratorDummy : IIdGenerator {
    override fun generate(): Long {
        throw UnsupportedOperationException("Unexpected generation of IDs")
    }
}