package org.xmlvm.iphone;

import java.net.MalformedURLException;
import java.net.URL;

public class NSURL {

    private URL url;

    private NSURL(String u) {
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
}
