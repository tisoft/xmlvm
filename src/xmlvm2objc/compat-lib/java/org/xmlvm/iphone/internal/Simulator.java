package org.xmlvm.iphone.internal;

import java.awt.Dimension;
import java.awt.geom.AffineTransform;

import javax.swing.JFrame;

import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIResponder;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class Simulator {

    static public boolean       initialized = false;
    static private SimulatorGUI simulatorGUI;
    static private JFrame       simulatorFrame;

    private Simulator() {
    }

    static public void setGUI(SimulatorGUI gui) {
        simulatorGUI = gui;
    }

    static public SimulatorGUI getGUI() {
        return simulatorGUI;
    }

    static public ImageLoader getImageLoader() {
        return simulatorGUI.getImageLoader();
    }

    static public void redrawDisplay() {
        simulatorGUI.redrawDisplay();
    }

    public static void redrawDisplay(int x, int y, int width, int height) {
        simulatorGUI.redrawDisplay(x, y, width, height);
    }

    static public void addUIWindow(UIWindow newWindow) {
        simulatorGUI.addUIWindow(newWindow);
    }

    static public void addGestureListener(GestureListener listener) {
        simulatorGUI.addGestureListener(listener);
    }

    static public void addKeyListener(UIView listener) {
        simulatorGUI.addKeyListener(listener);
    }

    static public void addTouchesListener(UIResponder listener) {
        simulatorGUI.addTouchesListener(listener);
    }

    static public float getStatusBarHeight() {
        return simulatorGUI.getStatusBarHeight();
    }

    static public void setStatusBarHidden(boolean flag) {
        simulatorGUI.getStatusBar().setStatusBarHidden(flag);
    }

    public static Display getDisplay() {
        return simulatorGUI.getDisplay();
    }

    static public void setAccelerated(double x, double y, double z) {
        simulatorGUI.setAccelerated(x, y, z);
    }

    public static void setStatusBarOrientation(int orientation) {
        simulatorGUI.getStatusBar().setStatusBarOrientation(orientation);
        Dimension frameSize = null;
        AffineTransform deviceTransform = new AffineTransform();
        AffineTransform displayTransform = new AffineTransform();

        switch (orientation) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            frameSize = new Dimension(580, 750);
            displayTransform.translate(35, 107);
            break;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            frameSize = new Dimension(883, 450);
            deviceTransform.rotate((float) ((Math.PI / 180) * 90), 580 / 2, 750 / 2);
            deviceTransform.translate(-85, -29);
            displayTransform.translate(35, 107);
            break;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            frameSize = new Dimension(883, 450);
            deviceTransform.rotate((float) ((Math.PI / 180) * -90), 580 / 2, 750 / 2);
            deviceTransform.translate(275, 85);
            displayTransform.translate(35, 107);
            break;

        case UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown:
            frameSize = new Dimension(580, 750);
            break;
        }

        if (simulatorFrame != null) {
            simulatorFrame.setSize(frameSize);
        }
        simulatorGUI.updateSize(frameSize, deviceTransform, displayTransform);
    }

    public static int getStatusBarOrientation() {
        return simulatorGUI.getStatusBar().getStatusBarOrientation();
    }

    public static JFrame getSimulatorFrame() {
        return simulatorFrame;
    }

    public static void setSimulatorFrame(JFrame simulatorFrame) {
        Simulator.simulatorFrame = simulatorFrame;
    }
}
