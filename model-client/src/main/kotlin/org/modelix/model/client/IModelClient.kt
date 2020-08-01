package org.modelix.model.client

import org.modelix.model.IKeyValueStore
import org.modelix.model.api.IIdGenerator
import org.modelix.model.lazy.IDeserializingKeyValueStore

interface IModelClient : IKeyValueStore {
    val clientId: Int
    val idGenerator: IIdGenerator?
    val storeCache: IDeserializingKeyValueStore?
    val asyncStore: IKeyValueStore?
}
