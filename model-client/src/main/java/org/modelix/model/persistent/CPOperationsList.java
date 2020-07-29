package org.modelix.model.persistent;

import org.apache.commons.lang3.StringUtils;
import org.modelix.model.operations.IOperation;

import java.util.stream.Stream;

public class CPOperationsList {
  public final IOperation[] operations;

  public CPOperationsList(IOperation[] operations) {
    this.operations = operations;
  }

  public String serialize() {
    return Stream.of(operations)
            .map(OperationSerializer.INSTANCE::serialize)
            .reduce((a, b) -> a + "," + b)
            .orElse("");
  }

  public static CPOperationsList deserialize(String input) {
    return new CPOperationsList(
            Stream.of(input.split(","))
            .filter(StringUtils::isNotEmpty)
            .map(OperationSerializer.INSTANCE::deserialize)
            .toArray(IOperation[]::new)
    );
  }

  public String getHash() {
    return HashUtil.sha256(this.serialize());
  }

}
