package org.modelix.model.persistent;

public interface IPersistable {
  String calcHash();
  void serialize();
}
