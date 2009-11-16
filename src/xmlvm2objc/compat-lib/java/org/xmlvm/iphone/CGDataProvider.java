package org.xmlvm.iphone;

import java.io.InputStream;

public class CGDataProvider {

    public InputStream in;

    private CGDataProvider(String ref) {
        in = Thread.currentThread().getContextClassLoader().getResourceAsStream(ref);
    }

    public static CGDataProvider providerToPath(String path) {
        return new CGDataProvider(path);
    }
}
