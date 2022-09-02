package org.modelix.entities.editor

open class Cell {
    val children: MutableList<Cell> = ArrayList()
    val actions: MutableList<ICellAction> = ArrayList()
    val properties = CellProperties()
}

class CellProperties {
    val properties: MutableMap<CellPropertyKey<*>, Any?> = HashMap<CellPropertyKey<*>, Any?>()
    operator fun <T> get(key: CellPropertyKey<T>): T {
        return properties[key] as T
    }

    operator fun <T> set(key: CellPropertyKey<T>, value: T) {
        properties[key] = value
    }
}

class CellPropertyKey<E>(val name: String)

interface ICellAction {

}

class TextCell(val text: String): Cell()
