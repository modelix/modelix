package org.modelix.entities

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode
import org.modelix.model.api.IReferenceLink

public object C_EntityType : GeneratedConcept<N_EntityType, IC_EntityType>(false) {
  public override val instanceClass: KClass<N_EntityType> = N_EntityType::class

  public override val language: ILanguage = L_org_modelix_entities

  public val entity: IReferenceLink = newReferenceLink("entity", false, Entity)

  public override fun wrap(node: INode) = N_EntityType(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_Type)
}

public interface IC_EntityType : IConceptWrapper, IC_Type {
  public val entity: IReferenceLink
}

public open class CW_EntityType : CW_Type(), IC_EntityType {
  public override val entity: IReferenceLink = C_EntityType.entity
}

public interface IN_EntityType : IN_Type {
  public var entity: N_Entity?
}

public open class N_EntityType(
  node: INode,
) : N_Type(node), IN_EntityType {
  public override val concept: IConcept = C_EntityType

  public override var entity: N_Entity? by ReferenceAccessor(node, "entity", N_Entity::class)
}
