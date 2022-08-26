package org.modelix.entities

import kotlin.String
import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.metamodel.NodeChildren
import org.modelix.model.api.INode

public class EntityInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities.Entity =
      org.modelix.entities.L_org_modelix_entities.Entity

  public var name: String? by PropertyAccessor("name")

  public val properties: NodeChildren<EntityInstance, PropertyInstance> = NodeChildren(this,
      "properties", org.modelix.entities.L_org_modelix_entities.Property, PropertyInstance::class)
}
