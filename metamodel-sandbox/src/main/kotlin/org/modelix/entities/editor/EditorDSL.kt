package org.modelix.entities.editor

import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.metamodel.IConceptWrapper
import org.modelix.model.api.*


fun <LanguageT : ILanguage> languageEditors(language: LanguageT, body: LanguageEditors<LanguageT>.()->Unit): LanguageEditors<LanguageT> {
    TODO("Not implemented yet")
}

class LanguageEditors<LanguageT : ILanguage>(val language: LanguageT) {

    fun <NodeT : GeneratedConceptInstance, ConceptT : GeneratedConcept<NodeT, WrapperT>, WrapperT : IConceptWrapper> conceptEditor(concept: ConceptT, body: CellBuilder<Cell, NodeT, WrapperT>.()->Unit): CellBuilder<Cell, NodeT, WrapperT> {
        TODO("Not implemented yet")
    }

    fun register() {
        TODO("Not implemented yet")
    }
}

class CellBuilder<CellT : Cell, NodeT, ConceptT : IConceptWrapper>(val node: NodeT, val concept: ConceptT) {
    val properties = CellProperties()

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

    fun property(getter: ConceptT.()->IProperty) {
        TODO("Not implemented yet")
    }

    fun IProperty.cell(body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun IReferenceLink.cell(body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}): Cell {
        TODO("Not implemented yet")
    }

    fun IChildLink.cell(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}): Cell {
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