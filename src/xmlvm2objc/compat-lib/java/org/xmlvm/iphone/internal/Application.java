package org.xmlvm.iphone.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Application implements Runnable {

    private String appl;
    private String androidClassName;

    public Application(String appl, String androidClassName) {
        this.appl = appl;
        this.androidClassName = androidClassName;
    }

    public void run() {
        try {
            Class clazz = Class.forName(appl);
            Class[] paramTypes = { String[].class };
            Object[] params = { new String[] { androidClassName } };
            Method m = null;
            m = clazz.getMethod("main", paramTypes);
            m.invoke(null, params);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SecurityException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
