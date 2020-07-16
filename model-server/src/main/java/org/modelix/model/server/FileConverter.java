package org.modelix.model.server;

import com.beust.jcommander.IStringConverter;

import java.io.File;

class FileConverter implements IStringConverter<File> {
    @Override
    public File convert(String value) {
        System.out.println("Converting " + value);
        if (value == null) {
            return null;
        }
        return new File(value);
    }
}
