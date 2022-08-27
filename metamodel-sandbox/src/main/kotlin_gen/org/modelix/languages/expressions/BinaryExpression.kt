package org.modelix.languages.expressions

import kotlin.collections.List
import kotlin.reflect.KClass
import org.modelix.metamodel.ChildrenAccessor
import org.modelix.metamodel.GeneratedConcept
import org.modelix.metamodel.IConceptWrapper
import org.modelix.metamodel.PropertyAccessor
import org.modelix.metamodel.ReferenceAccessor
import org.modelix.model.api.IChildLink
import org.modelix.model.api.IConcept
import org.modelix.model.api.ILanguage
import org.modelix.model.api.INode

public object C_BinaryExpression : GeneratedConcept<N_BinaryExpression, IC_BinaryExpression>(false)
    {
  public override val instanceClass: KClass<N_BinaryExpression> = N_BinaryExpression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public val left: IChildLink = newChildLink("left", false, false, C_Expression)

  public val right: IChildLink = newChildLink("right", false, false, C_Expression)

  public override fun wrap(node: INode) = N_BinaryExpression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_Expression)
}

public interface IC_BinaryExpression : IConceptWrapper, IC_Expression {
  public val left: IChildLink

  public val right: IChildLink
}

public open class CW_BinaryExpression : CW_Expression(), IC_BinaryExpression {
  public override val left: IChildLink = C_BinaryExpression.left

  public override val right: IChildLink = C_BinaryExpression.right
}

public interface IN_BinaryExpression : IN_Expression {
  public val left: ChildrenAccessor<N_Expression>

  public val right: ChildrenAccessor<N_Expression>
}

public open class N_BinaryExpression(
  node: INode,
) : N_Expression(node), IN_BinaryExpression {
  public override val concept: IConcept = C_BinaryExpression

  public override val left: ChildrenAccessor<N_Expression> = ChildrenAccessor(node, "left",
      org.modelix.languages.expressions.L_org_modelix_languages_expressions.Expression,
      N_Expression::class)

  public override val right: ChildrenAccessor<N_Expression> = ChildrenAccessor(node, "right",
      org.modelix.languages.expressions.L_org_modelix_languages_expressions.Expression,
      N_Expression::class)
}
