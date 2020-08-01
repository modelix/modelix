package org.modelix.model.lazy;

import org.modelix.model.persistent.CPElementRef;
import org.modelix.model.persistent.CPNode;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class CLNode extends CLElement {

  public CLNode(CLTree tree, CPNode data) {
    super(tree, data);
  }

  public CLNode(CLTree tree, long id, String concept, long parentId, String roleInParent, long[] childrenIds, String[] propertyRoles, String[] propertyValues, String[] referenceRoles, CPElementRef[] referenceTargets) {
    this(tree, CPNode.create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, referenceRoles, referenceTargets));
  }

  @Override
  public CPNode getData() {
    return (CPNode) super.getData();
  }

  public IBulkQuery.Value<Iterable<CLNode>> getChildren(IBulkQuery bulkQuery) {
    return tree.resolveElements(getData().getChildrenIds(), bulkQuery).map(elements -> elements);
  }

  public IBulkQuery.Value<Iterable<CLNode>> getDescendants(final IBulkQuery bulkQuery, boolean includeSelf) {
    if (includeSelf) {
      return getDescendants(bulkQuery, false)
              .map(descendants -> Stream.concat(
                      Stream.of(this),
                      StreamSupport.stream(descendants.spliterator(), false)
              )::iterator);
    } else {
      return getChildren(bulkQuery).mapBulk(children -> {
        IBulkQuery.Value<Iterable<CLNode>> d = bulkQuery
                .map(children, child -> child.getDescendants(bulkQuery, true))
                .map(it -> it.stream().flatMap(n -> StreamSupport.stream(n.spliterator(), false))::iterator);
        return d;
      });
    }
  }

  public String getConcept() {
    return getData().getConcept();
  }
}
