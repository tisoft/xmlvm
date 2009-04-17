package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;

public class NSUserDefaults {

    private Map<String, Object> preferences = new HashMap<String, Object>();

    public static NSUserDefaults standardUserDefaults() {
        return new NSUserDefaults();
    }

    public Object objectForKey(String key) {
        return preferences.get(key);
    }

    public void setInteger(int value, String key) {
        preferences.put(key, value);
    }

    public int integerForKey(String key) {
        return (Integer) preferences.get(key);
    }

    public void synchronize() {
        // do nothing
    }

    public void setBool(boolean value, String key) {
        preferences.put(key, value);
    }

    public boolean boolForKey(String key) {
        return (Boolean) preferences.get(key);
    }

    public void setFloat(float value, String key) {
        preferences.put(key, value);
    }

    public float floatForKey(String key) {
        return (Float) preferences.get(key);
    }
}
