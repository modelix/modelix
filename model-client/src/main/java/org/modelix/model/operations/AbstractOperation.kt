package org.modelix.model.operations

abstract class AbstractOperation : IOperation {
    abstract inner class Applied {
        override fun toString(): String {
            return "applied:" + this@AbstractOperation.toString()
        }
    }
}