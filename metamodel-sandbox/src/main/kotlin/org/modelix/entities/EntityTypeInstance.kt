package org.modelix.entities

import org.modelix.metamodel.GeneratedConceptInstance
import org.modelix.model.api.INode

public class EntityTypeInstance(
  node: INode,
) : GeneratedConceptInstance(node) {
  public override val concept: L_org_modelix_entities.EntityType =
      org.modelix.entities.L_org_modelix_entities.EntityType

  public var entity: EntityInstance? by ReferenceAccessor("entity", EntityInstance::class)
}
