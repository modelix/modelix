package org.modelix.gradle.model;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.util.LinkedList;
import java.util.List;
import org.gradle.api.tasks.JavaExec;

class StreamGobbler {
    private final OutputStream internalOutput;
    private final OutputStream externalOutput;
    private final List<String> lines;
    private ByteArrayOutputStream baos;

    public static StreamGobbler go(JavaExec javaExec, OutputStream externalOutput) {
        ByteArrayOutputStream baos =new ByteArrayOutputStream();
        BufferedOutputStream bos = new BufferedOutputStream(baos);
        OutputStream internalOutput = new OutputStream() {
            @Override
            public void write(int b) throws IOException {
                externalOutput.write(b);
                bos.write(b);
            }
        };
        final StreamGobbler gob = new StreamGobbler(internalOutput, externalOutput, baos);
        javaExec.setStandardOutput(internalOutput);
        return gob;
    }

    private StreamGobbler(OutputStream internalOutput, OutputStream os, ByteArrayOutputStream baos) {
        this.internalOutput = internalOutput;
        this.externalOutput = os;
        this.baos = baos;
        this.lines = new LinkedList<String>();
    }

    public List<String> getContent() {
        try {
            ByteArrayInputStream bais = new ByteArrayInputStream(this.baos.toByteArray());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bais));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                lines.add(line);
            }
            return this.lines;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

//    public void run() {
//        try {
//            final PrintWriter pw = ((externalOutput == null) ? null : new PrintWriter(externalOutput));
//            final InputStreamReader isr = new InputStreamReader(is);
//            final BufferedReader br = new BufferedReader(isr);
//            String line = null;
//            while ((line = br.readLine()) != null) {
//                if (pw != null) {
//                    pw.println(line);
//                }
//                lines.add(line);
//            }
//            if (pw != null) {
//                pw.flush();
//            }
//        } catch (IOException ioe) {
//            ioe.printStackTrace();
//        }
//    }
}
