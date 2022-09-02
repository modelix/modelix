/*
 * Copyright 2003-2022 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.entities.editor

import jetbrains.mps.baseLanguage.L_jetbrains_mps_baseLanguage

class BaseLanguageEditor {


    val editors = languageEditors(L_jetbrains_mps_baseLanguage) {
        conceptEditor(language.ClassConcept) {
            concept.visibility.cell()
            concept.isStatic.flagCell("static")
            concept.isFinal.flagCell("final")
            "class".cell()
            angleBrackets {
                concept.typeVariableDeclaration.horizontal(",")
            }
            concept.name.propertyCell()
            optional {
                constant("extends")
                concept.superclass.cell()
            }
            optional {
                constant("implements")
                concept.implementedInterface.horizontal(",")
            }
            curlyBrackets {
                concept.member.vertical()
            }
        }
        conceptEditor(language.FieldDeclaration) {
            concept.visibility.cell()
            concept.isFinal.flagCell("final")
            concept.isTransient.flagCell("transient")
            concept.isVolatile.flagCell("volatile")
            concept.type.cell()
            concept.name.cell()
            optional {
                "=".cell()
                concept.initializer.cell()
            }
            semicolon()
        }
    }

    private fun CellBuilder<*, *, *>.semicolon() {
        noSpace()
        ";".cell()
    }

    fun register() {
        editors.register()
    }
}
