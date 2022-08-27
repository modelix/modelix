package org.modelix.entities

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.ChildrenAccessor
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IChildLink
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode

public object C_Entity : GeneratedConcept<N_Entity, IC_Entity>(false) {
  public override val instanceClass: KClass<N_Entity> = N_Entity::class

  public override val language: ILanguage = L_org_modelix_entities

  public val properties: IChildLink = newChildLink("properties", true, true, C_Property)

  public override fun wrap(node: INode) = N_Entity(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_INamedConcept, C_Concept1)
}

public interface IC_Entity : IConceptWrapper, IC_INamedConcept, IC_Concept1 {
  public val properties: IChildLink
}

public open class CW_Entity : CW_INamedConcept(), IC_Concept1 by CW_Concept1(), IC_Entity {
  public override val properties: IChildLink = C_Entity.properties
}

public interface IN_Entity : IN_INamedConcept, IN_Concept1 {
  public val properties: ChildrenAccessor<N_Property>
}

public open class N_Entity(
  node: INode,
) : N_INamedConcept(node), IN_Concept1 by N_Concept1(node), IN_Entity {
  public override val concept: IConcept = C_Entity

  public override val properties: ChildrenAccessor<N_Property> = ChildrenAccessor(node,
      "properties", org.modelix.entities.L_org_modelix_entities.Property, N_Property::class)
}
