package org.xmlvm.iphone.internal;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.geom.AffineTransform;

import javax.swing.JPanel;

import org.xmlvm.iphone.UIResponder;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class SimulatorGUI extends JPanel {

    private ImageLoader        imageLoader;
    private AccelerometerPanel accelerometer;
    private Device             device;

    final static private int   simulatorPositionX = 15;
    final static private int   simulatorPositionY = 15;

    public SimulatorGUI(Component rootWindow, ImageLoader imageLoader) {
        Simulator.setGUI(this);
        Simulator.setRootWindow(rootWindow);
        this.imageLoader = imageLoader;
        this.setLayout(null);
        this.setSize(580, 750);
        addDevice();
        addAccelerometerPanel();
    }

    public ImageLoader getImageLoader() {
        return imageLoader;
    }

    private void addDevice() {
        device = new Device(imageLoader);
        device.setLocation(simulatorPositionX, simulatorPositionY);
        this.add(device, 0);
    }

    public void redrawDisplay() {
        // TODO: Eliminate this ugly workaround
        Simulator.getRootWindow().repaint();
        
//        if (device != null) {
//            device.repaint();
//        }
    }

    public void redrawDisplay(int x, int y, int width, int height) {
        // TODO: Eliminate this ugly workaround
        Simulator.getRootWindow().repaint();
        
        // TODO Use computed clipping rect after fixing its computation in
        // UIView
        // display.repaint(x, y, width, height);
//        if (device != null) {
//            device.repaint();
//        }
    }

    private void addAccelerometerPanel() {
        accelerometer = new AccelerometerPanel();
        accelerometer
                .setLocation(this.getBounds().width - accelerometer.getBounds().width - 30, 50);
        this.add(accelerometer);
    }

    public void addUIWindow(UIWindow newWindow) {
        device.addUIWindow(newWindow);
    }

    public void addGestureListener(GestureListener listener) {
        device.addGestureListener(listener);
    }

    public void addKeyListener(UIView listener) {
        device.addKeyListener(listener);
    }

    public void addTouchesListener(UIResponder listener) {
        if (device != null) {
            device.addTouchesListener(listener);
        }
    }

    public float getStatusBarHeight() {
        return device.getStatusBarHeight();
    }

    public Display getDisplay() {
        return device.getDisplay();
    }

    public StatusBar getStatusBar() {
        return device.getStatusBar();
    }

    public void setAccelerated(double x, double y, double z) {
        if (accelerometer != null)
            accelerometer.setAccelerated(x, y, z);
    }

    void updateSize(Dimension d, AffineTransform deviceTransform) {
        this.setSize(d);
        accelerometer
                .setLocation(this.getBounds().width - accelerometer.getBounds().width - 30, 50);
        device.setSize((int) d.getWidth() - 160, (int) d.getHeight());
        device.setDeviceTransform(deviceTransform);
    }
}
