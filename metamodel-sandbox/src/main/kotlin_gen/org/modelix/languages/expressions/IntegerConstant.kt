package org.modelix.languages.expressions

import kotlin.String
import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode
import org.modelix.model.api.IProperty

public object C_IntegerConstant : GeneratedConcept<N_IntegerConstant, IC_IntegerConstant>(false) {
  public override val instanceClass: KClass<N_IntegerConstant> = N_IntegerConstant::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public val `value`: IProperty = newProperty("value")

  public override fun wrap(node: INode) = N_IntegerConstant(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_Expression)
}

public interface IC_IntegerConstant : IConceptWrapper, IC_Expression {
  public val `value`: IProperty
}

public open class CW_IntegerConstant : CW_Expression(), IC_IntegerConstant {
  public override val `value`: IProperty = C_IntegerConstant.value
}

public interface IN_IntegerConstant : IN_Expression {
  public var `value`: String?
}

public open class N_IntegerConstant(
  node: INode,
) : N_Expression(node), IN_IntegerConstant {
  public override val concept: IConcept = C_IntegerConstant

  public override var `value`: String? by PropertyAccessor(node, "value")
}
