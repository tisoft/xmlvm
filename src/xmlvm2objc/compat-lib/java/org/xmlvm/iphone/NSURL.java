package org.xmlvm.iphone;

import java.net.MalformedURLException;
import java.net.URL;

public class NSURL {

    private URL    url;
    private String urlString;

    private NSURL(String u) {
        System.out.println("URL: " + u);
        this.urlString = u;
        this.url = null;
        try {
            if (u.startsWith("jar://")) {
                this.url = new URL("jar", "", u.substring("jar://".length()));
            } else {
                this.url = new URL(u);
            }
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static NSURL URLWithString(String u) {
        return new NSURL(u);
    }

    public static NSURL fileURLWithPath(String path) {
        String newPath = path.startsWith("file:") ? newPath = path.substring(5) : path;
        String str = newPath.indexOf('!') < 0 ? "file://" : "jar://";
        return new NSURL(str + newPath);
    }

    public URL getURL() {
        return url;
    }

    public String xmlvmGetURLString() {
        return this.urlString;
    }
}
