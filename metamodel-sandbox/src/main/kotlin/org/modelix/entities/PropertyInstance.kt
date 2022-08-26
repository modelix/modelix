package org.modelix.entities

import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.metamodel.NodeChildren
import org.modelix.model.api.INode

public class PropertyInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities.Property =
      org.modelix.entities.L_org_modelix_entities.Property

  public val type: NodeChildren<PropertyInstance, TypeInstance> = NodeChildren(this, "type",
      org.modelix.entities.L_org_modelix_entities.Type, TypeInstance::class)
}
