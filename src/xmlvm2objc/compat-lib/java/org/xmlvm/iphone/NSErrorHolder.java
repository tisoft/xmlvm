package org.xmlvm.iphone;

public class NSErrorHolder {
    public NSError error;

    public String description() {
        return error.description();
    }
}
