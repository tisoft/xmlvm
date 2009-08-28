package org.xmlvm.iphone;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class NSData {

    private InputStream in;

    public NSData(InputStream in) {
        this.in = in;
    }

    public InputStream getInputStream() {
        return this.in;
    }

    public String toString() {
        String data = "";
        String line;
        BufferedReader reader = new BufferedReader(new InputStreamReader(in));
        try {
            while ((line = reader.readLine()) != null) {
                data += line;
                data += System.getProperty("line.separator");
            }
            reader.close();
        } catch (IOException e) {
            // do nothing
        }
        return data;
    }

    public static NSData dataWithContentsOfFile(String path) {
        return new NSData(NSData.class.getResourceAsStream("/" + path));
    }
}
