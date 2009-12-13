package org.xmlvm.iphone;

import java.net.MalformedURLException;
import java.net.URL;

public class NSURL {

    private URL    url;
    private String urlString;

    private NSURL(String u) {
        this.urlString = u;
        this.url = null;
        try {
            this.url = new URL(u);
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    static public NSURL URLWithString(String u) {
        return new NSURL(u);
    }

    public URL getURL() {
        return url;
    }

    public String xmlvmGetURLString() {
        return this.urlString;
    }
}
