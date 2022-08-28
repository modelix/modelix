package org.modelix.entities.editor

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
    }

    fun register() {
        editors.register()
    }
}
