package org.xmlvm.iphone;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.swing.SwingUtilities;

public class NSTimer implements Runnable {

    private Object  target;
    private String  method;
    private Object  userInfo;

    private boolean repeats;
    private Thread  thread;
    private long    milliInterval;

    public NSTimer(float timerInterval, Object target, String method, Object userInfo,
            boolean repeats) {
        this.target = target;
        this.method = method;
        this.userInfo = userInfo;
        this.repeats = repeats;
        this.milliInterval = (long) (timerInterval * 1000);
        thread = new Thread(this);
        thread.start();
    }

    public void run() {
        while (true) {
            try {
                Thread.sleep(milliInterval);
            } catch (InterruptedException e) {
                return;
            }
            timerTick();
            if (!repeats) {
                break;
            }
        }
    }

    private void timerTick() {
        Class[] paramTypes = { NSTimer.class };
        Object[] params = { this };
        Class targetClass = target.getClass();
        Method m = null;
        try {
            m = targetClass.getMethod(method, paramTypes);
        } catch (SecurityException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        } catch (NoSuchMethodException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        // TODO the following is denied by the applets Security Manager
        // if (!m.isAccessible())
        // m.setAccessible(true);

        final Method m1 = m;
        final Object[] p = params;
        Runnable r = new Runnable() {
            public void run() {
                try {
                    m1.invoke(target, p);
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
        };
        
        SwingUtilities.invokeLater(r);
    }

    public void invalidate() {
        thread.interrupt();
    }
}
