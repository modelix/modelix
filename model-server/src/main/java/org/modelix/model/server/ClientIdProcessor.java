package org.modelix.model.server;

import javax.cache.processor.EntryProcessor;
import javax.cache.processor.EntryProcessorException;
import javax.cache.processor.MutableEntry;

public class ClientIdProcessor implements EntryProcessor<String, String, Long> {
    @Override
    public Long process(MutableEntry<String, String> mutableEntry, Object... objects) throws EntryProcessorException {
        String idStr = mutableEntry.getValue();
        long id = idStr == null ? 0 : Long.parseLong(idStr);
        id++;
        mutableEntry.setValue(Long.toString(id));
        return id;
    }
}
