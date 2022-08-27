package org.modelix.entities

import kotlin.String
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
import org.modelix.model.api.IProperty

public object C_INamedConcept : GeneratedConcept<N_INamedConcept, IC_INamedConcept>(false) {
  public override val instanceClass: KClass<N_INamedConcept> = N_INamedConcept::class

  public override val language: ILanguage = L_org_modelix_entities

  public val name: IProperty = newProperty("name")

  public override fun wrap(node: INode) = N_INamedConcept(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
}

public interface IC_INamedConcept : IConceptWrapper {
  public val name: IProperty
}

public open class CW_INamedConcept : IC_INamedConcept {
  public override val name: IProperty = C_INamedConcept.name
}

public interface IN_INamedConcept {
  public var name: String?
}

public open class N_INamedConcept(
  node: INode,
) : GeneratedConceptInstance(node), IN_INamedConcept {
  public override val concept: IConcept = C_INamedConcept

  public override var name: String? by PropertyAccessor(node, "name")
}
