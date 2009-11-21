package org.xmlvm.iphone;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class NSData {

    private String data;

    public NSData(InputStream in) {
        readData(in);
    }

    protected NSData() {
        this.data = "";
    }

    private void readData(InputStream in) {
        data = "";
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
    }

    public InputStream getInputStream() {
        return new ByteArrayInputStream(data.getBytes());
    }

    public String toString() {
        return this.data;
    }

    public static NSData dataWithContentsOfFile(String path) {
        return new NSData(NSData.class.getResourceAsStream("/" + path));
    }
}
