package org.xmlvm.iphone;

import javax.swing.SwingUtilities;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;

public abstract class UIApplication {

    private boolean idleTimerDisabled;

    public UIApplication() {
        setIdleTimerDisabled(false);
        if (!Simulator.initialized)
            // We run on the desktop
            new SimulatorDesktop();
        setStatusBarOrientation(UIInterfaceOrientation.UIInterfaceOrientationPortrait);
    }

    public void setIdleTimerDisabled(boolean flag) {
        this.idleTimerDisabled = flag;
    }

    public boolean isIdleTimerDisabled() {
        return this.idleTimerDisabled;
    }

    public abstract void applicationDidFinishLaunching(NSNotification aNotification);

    public void setStatusBarOrientation(int orientation) {
        Simulator.setStatusBarOrientation(orientation);
    }

    public void setStatusBarHidden(boolean flag) {
        Simulator.setStatusBarHidden(flag);
    }

    public static void main(String[] args, Class appClass) {
        try {
            final UIApplication theApp = (UIApplication) appClass.newInstance();
            Runnable r = new Runnable() {

                public void run() {
                    theApp.applicationDidFinishLaunching(null);
                }
            };

            SwingUtilities.invokeLater(r);
        } catch (Throwable e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
