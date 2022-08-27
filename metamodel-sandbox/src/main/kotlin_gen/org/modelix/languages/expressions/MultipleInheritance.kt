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

public object C_MultipleInheritance :
    GeneratedConcept<N_MultipleInheritance, IC_MultipleInheritance>(false) {
  public override val instanceClass: KClass<N_MultipleInheritance> = N_MultipleInheritance::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_MultipleInheritance(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf(C_BinaryExpression,
      C_IntegerConstant)
}

public interface IC_MultipleInheritance : IConceptWrapper, IC_BinaryExpression, IC_IntegerConstant

public open class CW_MultipleInheritance : CW_BinaryExpression(), IC_IntegerConstant by
    CW_IntegerConstant(), IC_MultipleInheritance

public interface IN_MultipleInheritance : IN_BinaryExpression, IN_IntegerConstant

public open class N_MultipleInheritance(
  node: INode,
) : N_BinaryExpression(node), IN_IntegerConstant by N_IntegerConstant(node), IN_MultipleInheritance
    {
  public override val concept: IConcept = C_MultipleInheritance
}
