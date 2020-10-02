package org.modelix.gradle.model;

import jetbrains.mps.smodel.adapter.structure.FormatException;
import jetbrains.mps.smodel.adapter.structure.concept.SAbstractConceptAdapter;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.modelix.model.api.IChildLink;
import org.modelix.model.api.IConcept;
import org.modelix.model.api.IProperty;
import org.modelix.model.api.IReferenceLink;
import org.modelix.model.lazy.IConceptSerializer;

import java.util.Objects;

public class SConceptAdapter implements IConcept {
  private static final Logger LOG = LogManager.getLogger(SConceptAdapter.class);
  public static final IConceptSerializer SERIALIZER = new IConceptSerializer() {
    @Nullable
    @Override
    public String serialize(@NotNull IConcept concept) {
      return check_z0e54t_a0a0a0a0(((SAbstractConceptAdapter) check_z0e54t_a0a0a0a0a0a(as_z0e54t_a0a0a0a0a0a0b(concept, SConceptAdapter.class))));
    }

    @Nullable
    @Override
    public IConcept deserialize(@NotNull String serialized) {
      try {
        return wrap(SAbstractConceptAdapter.deserialize(serialized));
      } catch (FormatException ex) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("Failed to deserialize " + serialized, ex);
        }
        return null;
      }
    }
  };

  public static SAbstractConcept unwrap(IConcept concept) {
    if (concept == null) {
      return null;
    }
    return ((SConceptAdapter) concept).getAdapted();
  }

  public static IConcept wrap(SAbstractConcept concept) {
    if (concept == null) {
      return null;
    }
    return new SConceptAdapter(concept);
  }

  private SAbstractConcept concept;

  public SConceptAdapter(SAbstractConcept concept1) {
    concept = concept1;
  }

  public SAbstractConcept getAdapted() {
    return concept;
  }

  @Override
  public boolean isSubconceptOf(IConcept superConcept) {
    return concept.isSubConceptOf(((SConceptAdapter) superConcept).concept);
  }

  @Override
  public boolean isExactly(IConcept otherConcept) {
    return Objects.equals(concept, ((SConceptAdapter) otherConcept).concept);
  }

  @Override
  public Iterable<IProperty> getProperties() {
    throw new UnsupportedOperationException();
  }

  @Override
  public Iterable<IChildLink> getChildLinks() {
    throw new UnsupportedOperationException();
  }

  @Override
  public Iterable<IReferenceLink> getReferenceLinks() {
    throw new UnsupportedOperationException();
  }

  @Override
  public IChildLink getChildLink(final String name) {
    throw new UnsupportedOperationException();
  }

  @Override
  public IProperty getProperty(final String name) {
    throw new UnsupportedOperationException();
  }

  @Override
  public IReferenceLink getReferenceLink(final String name) {
    throw new UnsupportedOperationException();
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    SConceptAdapter that = (SConceptAdapter) o;
    if ((concept != null ? !(concept.equals(that.concept)) : that.concept != null)) {
      return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + ((concept != null ? ((Object) concept).hashCode() : 0));
    return result;
  }

  @Override
  public String toString() {
    return concept.getName();
  }
  private static String check_z0e54t_a0a0a0a0(SAbstractConceptAdapter checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.serialize();
    }
    return null;
  }
  private static SAbstractConcept check_z0e54t_a0a0a0a0a0a(SConceptAdapter checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getAdapted();
    }
    return null;
  }
  private static <T> T as_z0e54t_a0a0a0a0a0a0b(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }
}
