package org.modelix.model.api

class ReadTransaction(override var tree: ITree?, branch: IBranch?) : Transaction(branch), IReadTransaction
