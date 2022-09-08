package org.modelix.entities.editor

import jetbrains.mps.baseLanguage.L_jetbrains_mps_baseLanguage
import org.modelix.entities.L_org_modelix_entities
import kotlin.reflect.KMutableProperty0

class EntityEditor {

    val editors = languageEditors(L_org_modelix_entities) {
        conceptEditor(L_org_modelix_entities.Entity) {
            vertical {
                horizontal {
                    constant("entity")
                    concept.name.cell()
                    curlyBrackets() {

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

        conceptEditor(L_jetbrains_mps_baseLanguage.ClassConcept) {
            concept.isFinal.flagCell()
            "class".cell()
            angleBrackets {
                concept.typeVariableDeclaration.horizontal(",")
            }
            concept.name.propertyCell()

            curlyBrackets {
                concept.member.vertical()
            }
        }
    }

    fun register() {
        editors.register()
    }
}
