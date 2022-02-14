package org.modelix.gradle.model;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;
import org.gradle.api.tasks.JavaExec;

class StreamContentCapture {
    private List<String> lines;
    private final ByteArrayOutputStream baos;

    public static StreamContentCapture go(JavaExec javaExec, OutputStream externalOutput) {
        ByteArrayOutputStream baos =new ByteArrayOutputStream();
        BufferedOutputStream bos = new BufferedOutputStream(baos);
        OutputStream internalOutput = new OutputStream() {
            @Override
            public void write(int b) throws IOException {
                externalOutput.write(b);
                bos.write(b);
            }
        };
        final StreamContentCapture gob = new StreamContentCapture(baos);
        javaExec.setStandardOutput(internalOutput);
        return gob;
    }

    private StreamContentCapture(ByteArrayOutputStream baos) {
        this.baos = baos;
        this.lines = null;
    }

    public List<String> getContent() {
        try {
            if (this.lines == null) {
                this.lines = new LinkedList<>();
                ByteArrayInputStream bais = new ByteArrayInputStream(this.baos.toByteArray());
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bais));
                String line;
                while ((line = bufferedReader.readLine()) != null) {
                    lines.add(line.strip());
                }
            }
            return this.lines;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
