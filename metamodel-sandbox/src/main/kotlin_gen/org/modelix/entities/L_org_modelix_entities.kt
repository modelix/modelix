package org.modelix.entities

import org.modelix.metamodel.GeneratedLanguage

public object L_org_modelix_entities : GeneratedLanguage("org.modelix.entities") {
  public val INamedConcept: C_INamedConcept = org.modelix.entities.C_INamedConcept

  public val Concept1: C_Concept1 = org.modelix.entities.C_Concept1

  public val Entity: C_Entity = org.modelix.entities.C_Entity

  public val Property: C_Property = org.modelix.entities.C_Property

  public val Type: C_Type = org.modelix.entities.C_Type

  public val EntityType: C_EntityType = org.modelix.entities.C_EntityType

  public override fun getConcepts() = listOf(INamedConcept, Concept1, Entity, Property, Type,
      EntityType)
}
