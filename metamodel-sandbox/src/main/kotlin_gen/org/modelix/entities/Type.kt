package org.modelix.entities

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode

public object C_Type : GeneratedConcept<N_Type, IC_Type>(false) {
  public override val instanceClass: KClass<N_Type> = N_Type::class

  public override val language: ILanguage = L_org_modelix_entities

  public override fun wrap(node: INode) = N_Type(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
}

public interface IC_Type : IConceptWrapper

public open class CW_Type : IC_Type

public interface IN_Type

public open class N_Type(
  node: INode,
) : GeneratedConceptInstance(node), IN_Type {
  public override val concept: IConcept = C_Type
}
