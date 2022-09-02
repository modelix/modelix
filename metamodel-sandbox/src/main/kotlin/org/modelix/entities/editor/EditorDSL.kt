package org.modelix.entities.editor

import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.ITypedConcept
import org.modelix.metamodel.ITypedNode
import org.modelix.model.api.*


fun <LanguageT : ILanguage> languageEditors(language: LanguageT, body: LanguageEditors<LanguageT>.()->Unit): LanguageEditors<LanguageT> {
    TODO("Not implemented yet")
}

class LanguageEditors<LanguageT : ILanguage>(val language: LanguageT) {

    fun <NodeT : ITypedNode, ConceptT : GeneratedConcept<NodeT, TypedConceptT>, TypedConceptT : ITypedConcept> conceptEditor(concept: ConceptT, body: CellBuilder<Cell, NodeT, TypedConceptT>.()->Unit): CellBuilder<Cell, NodeT, TypedConceptT> {
        TODO("Not implemented yet")
    }

    fun register() {
        TODO("Not implemented yet")
    }
}

class CellBuilder<CellT : Cell, NodeT : ITypedNode, ConceptT : ITypedConcept>(val node: NodeT, val concept: ConceptT) {
    val properties = CellProperties()

    fun String.cell(body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}) {
        constant(this, body)
    }

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

    fun optional(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun brackets(singleLine: Boolean, leftSymbol: String, rightSymbol: String, body: CellBuilder<CellT, NodeT, ConceptT>.()->Unit = {}) {
        if (singleLine) {
            constant(leftSymbol)
            noSpace()
            body()
            noSpace()
            constant(rightSymbol)
        } else {
            constant(leftSymbol)
            newLine()
            indented {
                body()
            }
            newLine()
            constant(rightSymbol)
        }
    }

    fun parentheses(singleLine: Boolean = false, body: CellBuilder<CellT, NodeT, ConceptT>.()->Unit = {}) {
        brackets(true, "(", ")", body)
    }

    fun curlyBrackets(singleLine: Boolean = false, body: CellBuilder<CellT, NodeT, ConceptT>.()->Unit = {}) {
        brackets(singleLine, "{", "}", body)
    }

    fun angleBrackets(singleLine: Boolean = false, body: CellBuilder<CellT, NodeT, ConceptT>.()->Unit = {}) {
        brackets(singleLine, "<", ">", body)
    }

    fun squareBrackets(singleLine: Boolean = false, body: CellBuilder<CellT, NodeT, ConceptT>.()->Unit = {}) {
        brackets(singleLine, "[", "]", body)
    }

    /**
     * The next cell appears on a new line.
     * Multiple consecutive newLine's are merged to a single one. See also emptyLine()
     */
    fun newLine() {
        TODO("Not implemented yet")
    }

    /**
     * The next cell appears two lines below the current line.
     */
    fun emptyLine() {
        TODO("Not implemented yet")
    }

    fun noSpace() {
        TODO("Not implemented yet")
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
        propertyCell(body)
    }

    fun IProperty.propertyCell(body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun IProperty.flagCell(text: String? = null, body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}) {
        TODO("Not implemented yet")
    }

    fun flags(vararg properties: IProperty) {

    }

    fun IReferenceLink.cell(body: CellBuilder<TextCell, NodeT, ConceptT>.()->Unit = {}): Cell {
        TODO("Not implemented yet")
    }

    fun IChildLink.cell(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}): Cell {
        TODO("Not implemented yet")
    }

    fun IChildLink.vertical(body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}): Cell {
        TODO("Not implemented yet")
    }

    fun IChildLink.horizontal(separator: String = ",", body: CellBuilder<Cell, NodeT, ConceptT>.()->Unit = {}): Cell {
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