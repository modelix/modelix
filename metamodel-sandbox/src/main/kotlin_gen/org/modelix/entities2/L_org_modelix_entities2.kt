package org.modelix.entities2

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.GeneratedLanguage
import org.modelix.model.api.IChildLink
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode
import org.modelix.model.api.IProperty

public object L_org_modelix_entities2 : GeneratedLanguage("org.modelix.entities2") {
  public override fun getConcepts() = listOf(INamedConcept, Entity, Property)

  public object INamedConcept : GeneratedConcept<INamedConceptInstance>(false) {
    public override val instanceClass: KClass<INamedConceptInstance> = INamedConceptInstance::class

    public override val language: ILanguage = L_org_modelix_entities2

    public val name: IProperty = newProperty("name")

    public override fun wrap(node: INode) = INamedConceptInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
  }

  public object Entity : GeneratedConcept<EntityInstance>(false) {
    public override val instanceClass: KClass<EntityInstance> = EntityInstance::class

    public override val language: ILanguage = L_org_modelix_entities2

    public val properties: IChildLink = newChildLink("properties", true, true, Property)

    public override fun wrap(node: INode) = EntityInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf(INamedConcept)
  }

  public object Property : GeneratedConcept<PropertyInstance>(false) {
    public override val instanceClass: KClass<PropertyInstance> = PropertyInstance::class

    public override val language: ILanguage = L_org_modelix_entities2

    public override fun wrap(node: INode) = PropertyInstance(node)

    public override fun getDirectSuperConcepts(): List<IConcept> = listOf(INamedConcept)
  }
}
