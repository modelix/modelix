package org.modelix.model.util;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class ContextValue<E> {

  private E defaultValue;
  private final ThreadLocal<List<E>> value = new ThreadLocal<>();

  public ContextValue() {
  }

  public ContextValue(E defaultValue) {
    this.defaultValue = defaultValue;
  }

  private List<E> getStack() {
    List<E> stack = value.get();
    if (stack == null) {
      stack = new ArrayList<>();
      value.set(stack);
    }
    return stack;
  }

  public void runWith(E newValue, Runnable r) {
    try {
      getStack().add(newValue);
      r.run();
    } finally {
      List<E> stack = getStack();
      stack.remove(stack.size() - 1);
    }
  }

  public <T> T computeWith(E newValue, Supplier<T> r) {
    try {
      getStack().add(newValue);
      return r.get();
    } finally {
      List<E> stack = getStack();
      stack.remove(stack.size() - 1);
    }
  }

  public E getValue() {
    List<E> stack = getStack();
    return stack.isEmpty() ? defaultValue : stack.get(stack.size() - 1);
  }

  public Iterable<E> getAllValues() {
    return getStack();
  }

}
