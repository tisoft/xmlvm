package org.xmlvm.iphone;

import java.net.URL;

public class NSMutableURLRequest {

    private NSURL url;

    public NSMutableURLRequest(NSURL url) {
        this.url = url;
    }

    public URL getURL() {
        return url.getURL();
    }
}
