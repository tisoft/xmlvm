package org.xmlvm.iphone;

import javax.swing.SwingUtilities;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;

public abstract class UIApplication extends UIResponder {

    private boolean idleTimerDisabled;
    private static UIApplication instance;

    public UIApplication() {
        super(false);
        instance = this;
        setIdleTimerDisabled(false);
        if (!Simulator.initialized)
            // We run on the desktop
            new SimulatorDesktop();
        Simulator.addTouchesListener(this);
        setStatusBarOrientation(UIInterfaceOrientation.UIInterfaceOrientationPortrait);
    }

    public static UIApplication getSharedApplication() {
        return instance;
    }
    
    public void setIdleTimerDisabled(boolean flag) {
        this.idleTimerDisabled = flag;
    }

    public boolean isIdleTimerDisabled() {
        return this.idleTimerDisabled;
    }

    public abstract void applicationDidFinishLaunching(UIApplication app);

    public void applicationWillTerminate(UIApplication app) {}
    
    public void applicationDidBecomeActive(UIApplication app) {}
    
    public void applicationWillResignActive(UIApplication app) {}

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
