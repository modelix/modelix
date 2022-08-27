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

public object C_MulExpression : GeneratedConcept<N_MulExpression, IC_MulExpression>(false) {
  public override val instanceClass: KClass<N_MulExpression> = N_MulExpression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_MulExpression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_BinaryExpression)
}

public interface IC_MulExpression : IConceptWrapper, IC_BinaryExpression

public open class CW_MulExpression : CW_BinaryExpression(), IC_MulExpression

public interface IN_MulExpression : IN_BinaryExpression

public open class N_MulExpression(
  node: INode,
) : N_BinaryExpression(node), IN_MulExpression {
  public override val concept: IConcept = C_MulExpression
}
