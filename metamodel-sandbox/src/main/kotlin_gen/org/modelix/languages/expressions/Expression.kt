package org.modelix.languages.expressions

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

public object C_Expression : GeneratedConcept<N_Expression, IC_Expression>(false) {
  public override val instanceClass: KClass<N_Expression> = N_Expression::class

  public override val language: ILanguage = L_org_modelix_languages_expressions

  public override fun wrap(node: INode) = N_Expression(node)

  public override fun getDirectSuperConcepts(): List<IConcept> = listOf()
}

public interface IC_Expression : IConceptWrapper

public open class CW_Expression : IC_Expression

public interface IN_Expression

public open class N_Expression(
  node: INode,
) : GeneratedConceptInstance(node), IN_Expression {
  public override val concept: IConcept = C_Expression
}
