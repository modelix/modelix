package org.modelix.entities2

import kotlin.String
import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.model.api.INode

public class INamedConceptInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities2.INamedConcept =
      org.modelix.entities2.L_org_modelix_entities2.INamedConcept

  public var name: String? by PropertyAccessor("name")
}
