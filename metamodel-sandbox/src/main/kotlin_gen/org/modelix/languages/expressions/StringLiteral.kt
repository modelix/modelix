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

public object C_StringLiteral : GeneratedConcept<N_StringLiteral, IC_StringLiteral>(false) {
  public override val instanceClass: KClass<N_StringLiteral> = N_StringLiteral::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public val `value`: IProperty = newProperty("value")

  public override fun wrap(node: INode) = N_StringLiteral(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_Expression)
}

public interface IC_StringLiteral : IConceptWrapper, IC_Expression {
  public val `value`: IProperty
}

public open class CW_StringLiteral : CW_Expression(), IC_StringLiteral {
  public override val `value`: IProperty = C_StringLiteral.value
}

public interface IN_StringLiteral : IN_Expression {
  public var `value`: String?
}

public open class N_StringLiteral(
  node: INode,
) : N_Expression(node), IN_StringLiteral {
  public override val concept: IConcept = C_StringLiteral

  public override var `value`: String? by PropertyAccessor(node, "value")
}
