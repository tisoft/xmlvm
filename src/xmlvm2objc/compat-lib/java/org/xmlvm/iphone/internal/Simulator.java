package org.xmlvm.iphone.internal;

import java.awt.Component;
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
    static private Component    rootWindow;

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
            frameSize = new Dimension(883, 455);
            deviceTransform.rotate((float) ((Math.PI / 180) * 90), 580 / 2, 750 / 2);
            deviceTransform.translate(-80, -34);
            displayTransform.translate(35, 107);
            break;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            frameSize = new Dimension(883, 455);
            deviceTransform.rotate((float) ((Math.PI / 180) * -90), 580 / 2, 750 / 2);
            deviceTransform.translate(270, 90);
            displayTransform.translate(35, 107);
            break;

        case UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown:
            frameSize = new Dimension(580, 750);
            frameSize = new Dimension(580, 750);
            deviceTransform.rotate((float) ((Math.PI / 180) * 180), 580 / 2, 750 / 2);
            deviceTransform.translate(190, 55);
            displayTransform.translate(35, 107);
            break;
        }

        rootWindow.setSize(frameSize);
        simulatorGUI.updateSize(frameSize, deviceTransform, displayTransform);
    }

    public static int getStatusBarOrientation() {
        return simulatorGUI.getStatusBar().getStatusBarOrientation();
    }

    public static Component getRootWindow() {
        return rootWindow;
    }

    public static void setRootWindow(Component rootWindow) {
        Simulator.rootWindow = rootWindow;
    }
}
