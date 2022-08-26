package org.modelix.entities

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.GeneratedLanguage
import org.modelix.model.api.IChildLink
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode
import org.modelix.model.api.IProperty
import org.modelix.model.api.IReferenceLink

public object L_org_modelix_entities : GeneratedLanguage("org.modelix.entities") {
  public override fun getConcepts() = listOf(Entity, Property, Type, EntityType)

  public object Entity : GeneratedConcept<EntityInstance>(false) {
    public override val instanceClass: KClass<EntityInstance> = EntityInstance::class

    public override val language: ILanguage = L_org_modelix_entities

    public val name: IProperty = newProperty("name")

    public val properties: IChildLink = newChildLink("properties", true, true, Property)

    public override fun wrap(node: INode) = EntityInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
  }

  public object Property : GeneratedConcept<PropertyInstance>(false) {
    public override val instanceClass: KClass<PropertyInstance> = PropertyInstance::class

    public override val language: ILanguage = L_org_modelix_entities

    public val type: IChildLink = newChildLink("type", false, false, Type)

    public override fun wrap(node: INode) = PropertyInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
  }

  public object Type : GeneratedConcept<TypeInstance>(false) {
    public override val instanceClass: KClass<TypeInstance> = TypeInstance::class

    public override val language: ILanguage = L_org_modelix_entities

    public override fun wrap(node: INode) = TypeInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
  }

  public object EntityType : GeneratedConcept<EntityTypeInstance>(false) {
    public override val instanceClass: KClass<EntityTypeInstance> = EntityTypeInstance::class

    public override val language: ILanguage = L_org_modelix_entities

    public val entity: IReferenceLink = newReferenceLink("entity", false, Entity)

    public override fun wrap(node: INode) = EntityTypeInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf(Type)
  }
}
