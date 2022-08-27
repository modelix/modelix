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

public object C_DivExpression : GeneratedConcept<N_DivExpression, IC_DivExpression>(false) {
  public override val instanceClass: KClass<N_DivExpression> = N_DivExpression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_DivExpression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_BinaryExpression)
}

public interface IC_DivExpression : IConceptWrapper, IC_BinaryExpression

public open class CW_DivExpression : CW_BinaryExpression(), IC_DivExpression

public interface IN_DivExpression : IN_BinaryExpression

public open class N_DivExpression(
  node: INode,
) : N_BinaryExpression(node), IN_DivExpression {
  public override val concept: IConcept = C_DivExpression
}
