package org.modelix.languages.expressions

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode

public object C_MinusExpression : GeneratedConcept<N_MinusExpression, IC_MinusExpression>(false) {
  public override val instanceClass: KClass<N_MinusExpression> = N_MinusExpression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_MinusExpression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_BinaryExpression)
}

public interface IC_MinusExpression : IConceptWrapper, IC_BinaryExpression

public open class CW_MinusExpression : CW_BinaryExpression(), IC_MinusExpression

public interface IN_MinusExpression : IN_BinaryExpression

public open class N_MinusExpression(
  node: INode,
) : N_BinaryExpression(node), IN_MinusExpression {
  public override val concept: IConcept = C_MinusExpression
}
