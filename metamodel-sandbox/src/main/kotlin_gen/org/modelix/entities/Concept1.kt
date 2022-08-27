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

public object C_Concept1 : GeneratedConcept<N_Concept1, IC_Concept1>(false) {
  public override val instanceClass: KClass<N_Concept1> = N_Concept1::class

  public override val language: ILanguage = L_org_modelix_entities

  public val propertyA: IProperty = newProperty("propertyA")

  public override fun wrap(node: INode) = N_Concept1(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
}

public interface IC_Concept1 : IConceptWrapper {
  public val propertyA: IProperty
}

public open class CW_Concept1 : IC_Concept1 {
  public override val propertyA: IProperty = C_Concept1.propertyA
}

public interface IN_Concept1 {
  public var propertyA: String?
}

public open class N_Concept1(
  node: INode,
) : GeneratedConceptInstance(node), IN_Concept1 {
  public override val concept: IConcept = C_Concept1

  public override var propertyA: String? by PropertyAccessor(node, "propertyA")
}
