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

public object C_PlusExpression : GeneratedConcept<N_PlusExpression, IC_PlusExpression>(false) {
  public override val instanceClass: KClass<N_PlusExpression> = N_PlusExpression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_PlusExpression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_BinaryExpression)
}

public interface IC_PlusExpression : IConceptWrapper, IC_BinaryExpression

public open class CW_PlusExpression : CW_BinaryExpression(), IC_PlusExpression

public interface IN_PlusExpression : IN_BinaryExpression

public open class N_PlusExpression(
  node: INode,
) : N_BinaryExpression(node), IN_PlusExpression {
  public override val concept: IConcept = C_PlusExpression
}
