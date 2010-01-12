package org.xmlvm.iphone;

import java.util.ArrayList;
import java.util.List;

import javax.swing.SwingUtilities;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;

public abstract class UIApplication extends UIResponder {

    private boolean              idleTimerDisabled;
    private static UIApplication instance;
    List<UIWindow>               windows;
    UIWindow                     keyWindow;

    public UIApplication() {
        super(false);
        instance = this;
        setIdleTimerDisabled(false);
        if (!Simulator.initialized)
            // We run on the desktop
            new SimulatorDesktop();
        Simulator.addTouchesListener(this);
        setStatusBarOrientation(UIInterfaceOrientation.Portrait);
        windows = new ArrayList<UIWindow>();
    }

    public static UIApplication sharedApplication() {
        return instance;
    }

    public void setIdleTimerDisabled(boolean flag) {
        this.idleTimerDisabled = flag;
    }

    public boolean isIdleTimerDisabled() {
        return this.idleTimerDisabled;
    }

    public void setKeyWindow(UIWindow window) {
        if (!windows.contains(window))
            windows.add(window);
        keyWindow = window;
        Simulator.redrawDisplay();
    }

    public UIWindow getKeyWindow() {
        return keyWindow;
    }

    public List<UIWindow> getWindows() {
        return new ArrayList<UIWindow>(windows);
    }

    public abstract void applicationDidFinishLaunching(UIApplication app);

    public void applicationWillTerminate(UIApplication app) {
    }

    public void applicationDidBecomeActive(UIApplication app) {
    }

    public void applicationWillResignActive(UIApplication app) {
    }

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
                    theApp.applicationDidFinishLaunching(theApp);
                }
            };

            SwingUtilities.invokeLater(r);
        } catch (Throwable e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void xmlvmAddWindow(UIWindow window) {
        windows.add(window);
    }

    public void xmlvmRemoveWindow(UIWindow window) {
        windows.remove(window);
    }
}
