
package org.xmlvm.iphone.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;



public class Application
    implements Runnable
{

    private String appl;



    public Application(String appl)
    {
        this.appl = appl;
    }



    public void run()
    {
        try {
            Class clazz = Class.forName(appl);
            Class[] paramTypes = {String[].class};
            Object[] params = {new String[0]};
            Method m = null;
            m = clazz.getMethod("main", paramTypes);
            m.invoke(null, params);
        }
        catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (SecurityException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (NoSuchMethodException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
