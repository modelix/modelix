package org.modelix.entities2

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode

public object C_Property : GeneratedConcept<N_Property, IC_Property>(false) {
  public override val instanceClass: KClass<N_Property> = N_Property::class

  public override val language: ILanguage = L_org_modelix_entities2

  public override fun wrap(node: INode) = N_Property(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_INamedConcept)
}

public interface IC_Property : IConceptWrapper, IC_INamedConcept

public open class CW_Property : CW_INamedConcept(), IC_Property

public interface IN_Property : IN_INamedConcept

public open class N_Property(
  node: INode,
) : N_INamedConcept(node), IN_Property {
  public override val concept: IConcept = C_Property
}
