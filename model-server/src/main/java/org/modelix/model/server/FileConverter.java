package org.modelix.model.server;

import com.beust.jcommander.IStringConverter;

import java.io.File;

public class FileConverter implements IStringConverter<File> {
    @Override
    public File convert(String value) {
        if (value == null) {
            return null;
        }
        return new File(value);
    }
}
