package org.modelix.entities2

import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.metamodel.NodeChildren
import org.modelix.model.api.INode

public class EntityInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities2.Entity =
      org.modelix.entities2.L_org_modelix_entities2.Entity

  public val properties: NodeChildren<EntityInstance, PropertyInstance> = NodeChildren(this,
      "properties", org.modelix.entities2.L_org_modelix_entities2.Property, PropertyInstance::class)
}
