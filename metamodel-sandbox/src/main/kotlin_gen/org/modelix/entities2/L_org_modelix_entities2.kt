package org.modelix.entities2

import org.modelix.metamodel.GeneratedLanguage

public object L_org_modelix_entities2 : GeneratedLanguage("org.modelix.entities2") {
  public val INamedConcept: C_INamedConcept = org.modelix.entities2.C_INamedConcept

  public val Entity: C_Entity = org.modelix.entities2.C_Entity

  public val Property: C_Property = org.modelix.entities2.C_Property

  public override fun getConcepts() = listOf(INamedConcept, Entity, Property)
}
