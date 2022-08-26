package org.modelix.entities.editor

import org.modelix.entities.L_org_modelix_entities
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.IProperty
import org.modelix.model.api.IReferenceLink

class EntityEditor {

    val editors = languageEditors(L_org_modelix_entities) {
        conceptEditor(L_org_modelix_entities.Entity) {
            vertical {
                horizontal {
                    constant("entity")
                    property(concept.name)
                    curlyBrackets {

                    }
                    constant("{")
                }
                horizontal {
                    constant("}")
                }
                modelAccess {
                    get { node.name }
                    set { node.name = it }
                }
                modelAccess(
                    getter = { node.name },
                    setter = { node.name = it }
                )
            }
        }
        conceptEditor(L_org_modelix_entities.EntityType) {
            reference(concept.entity)
        }
    }

    fun register() {
        editors.register()
    }
}

open class Cell {
    val children: MutableList<Cell> = ArrayList()
}

class TextCell(val text: String): Cell()


fun <LanguageT : ILanguage> languageEditors(language: LanguageT, body: LanguageEditors<LanguageT>.()->Unit): LanguageEditors<LanguageT> {
    TODO("Not implemented yet")
}

class LanguageEditors<LanguageT : ILanguage>(val language: LanguageT) {

    fun <NodeT : GeneratedConceptInstance, ConceptT : GeneratedConcept<NodeT>> conceptEditor(concept: ConceptT, body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit): CellBuilder<Cell, NodeT, ConceptT> {
        TODO("Not implemented yet")
    }

    fun register() {
        TODO("Not implemented yet")
    }
}

class CellBuilder<CellT : Cell, NodeT, ConceptT : IConcept>(val node: NodeT, val concept: ConceptT) {
    fun constant(text: String, body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun color(color: String) {
        TODO("Not implemented yet")
    }

    fun vertical(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun horizontal(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun brackets(leftSymbol: String, rightSymbol: String, body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        horizontal {
            constant(leftSymbol)
            body()
            constant(rightSymbol)
        }
    }

    fun parentheses(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        brackets("(", ")", body)
    }

    fun curlyBrackets(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        brackets("{", "}", body)
    }

    fun squareBrackets(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        brackets("[", "]", body)
    }

    fun indented(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun property(property: IProperty): Cell {
        TODO("Not implemented yet")
    }

    fun reference(link: IReferenceLink) {
        TODO("Not implemented yet")
    }

    fun modelAccess(body: ModelAccessBuilder.()->Unit) {
        TODO("Not implemented yet")
    }

    fun modelAccess(getter: ()->String?, setter: (String?)->Unit) {
        TODO("Not implemented yet")
    }


    fun build(): CellT {
        TODO("Not implemented yet")
    }
}

class ModelAccessBuilder {
    fun get(body: ()->String?) {

    }

    fun set(body: (String?)->Unit) {

    }
}