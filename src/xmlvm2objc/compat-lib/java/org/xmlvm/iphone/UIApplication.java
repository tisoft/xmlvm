
package org.xmlvm.iphone;

import javax.swing.SwingUtilities;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;



public abstract class UIApplication
{
//    static public UIApplication theApplication = null;



    public UIApplication()
    {
//        theApplication = this;
        if (!Simulator.initialized)
            // We run on the desktop
            new SimulatorDesktop();
    }



    public abstract void applicationDidFinishLaunching(
            NSNotification aNotification);




    public void setStatusBarHidden(boolean flag)
    {
    	Simulator.setStatusBarHidden(flag);
    }



    public static void main(String[] args, Class appClass)
    {
        try {
            final UIApplication theApp = (UIApplication) appClass.newInstance();
            Runnable r = new Runnable() {

                public void run() {
                    theApp.applicationDidFinishLaunching(null);
                } 
            };
            
            SwingUtilities.invokeLater(r);
        }
        catch (InstantiationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
