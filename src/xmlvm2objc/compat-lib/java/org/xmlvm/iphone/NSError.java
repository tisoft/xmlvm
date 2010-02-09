package org.xmlvm.iphone;

import java.util.Map;

public class NSError {
    private String              domain;
    private int                 code;
    private Map<Object, Object> userInfo;

    public NSError(String domain, int code, Map<Object, Object> userInfo) {
        this.domain = domain;
        this.code = code;
        this.userInfo = userInfo;
    }

    public static NSError error(String domain, int code, Map<Object, Object> userInfo) {
        return new NSError(domain, code, userInfo);
    }

    public String domain() {
        return domain;
    }

    public int code() {
        return code;
    }

    public Map<Object, Object> userInfo() {
        return userInfo;
    }

    public String description() {
        return "Error: <" + code + "> <" + domain + ">";
    }

}
