package org.xmlvm.iphone;

import java.awt.Graphics2D;
import java.nio.ByteBuffer;

public class CGBitmapContext extends CGContext {

    public static CGBitmapContext createWithSize(int x, int y, CGImage image) {
        return new CGBitmapContext(x, y);
    }

    public static CGBitmapContext createWithSize(int x, int y) {
        return new CGBitmapContext(x, y);
    }

    CGBitmapContext(Graphics2D g) {
        super(g);
    }

    private CGBitmapContext(int x, int y) {
        super((Graphics2D) null);
    }

    public void release() {
    }

    public ByteBuffer getData() {
        return null;
    }
}
