package org.modelix.model.mpsplugin;



import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import java.util.concurrent.atomic.AtomicLong;

public class IdGenerator implements IIdGenerator {
  protected final AtomicLong idSequence;

  private long clientId;

  public IdGenerator(int clientId) {
    this.clientId = clientId;
    idSequence = new AtomicLong(this.clientId << 32);
  }

  @Override
  public long generate() {
    long id = idSequence.incrementAndGet();
    if (id >>> 32 != clientId) {
      throw new RuntimeException("End of ID range");
    }
    return id;
  }
}
