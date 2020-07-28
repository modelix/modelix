package de.q60.mps.shadowmodels.runtime.model;

public interface IConcept {
  boolean isSubconceptOf(IConcept superConcept);
  boolean isExactly(IConcept concept);

  Iterable<IProperty> getProperties();
  Iterable<IChildLink> getChildLinks();
  Iterable<IReferenceLink> getReferenceLinks();

  IProperty getProperty(String name);
  IChildLink getChildLink(String name);
  IReferenceLink getReferenceLink(String name);
}
