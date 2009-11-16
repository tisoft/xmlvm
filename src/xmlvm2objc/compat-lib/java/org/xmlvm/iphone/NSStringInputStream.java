package org.xmlvm.iphone;

import java.io.IOException;
import java.io.InputStream;

public class NSStringInputStream extends InputStream {
    private InputStream in;

    public NSStringInputStream(String ref) {
        in = NSStringInputStream.class.getResourceAsStream(ref);
    }

    public int available() throws IOException {
        return in.available();
    }

    public void close() throws IOException {
        in.close();
    }

    public synchronized void mark(int readlimit) {
        in.mark(readlimit);
    }

    public boolean markSupported() {
        return in.markSupported();
    }

    public int read(byte[] b, int off, int len) throws IOException {
        return in.read(b, off, len);
    }

    public int read(byte[] b) throws IOException {
        return in.read(b);
    }

    public synchronized void reset() throws IOException {
        in.reset();
    }

    public long skip(long n) throws IOException {
        return in.skip(n);
    }

    public int read() throws IOException {
        return in.read();
    }

}
