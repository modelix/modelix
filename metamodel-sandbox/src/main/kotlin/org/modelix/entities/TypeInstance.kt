package org.modelix.entities

import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.model.api.INode

public class TypeInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities.Type =
      org.modelix.entities.L_org_modelix_entities.Type
}
