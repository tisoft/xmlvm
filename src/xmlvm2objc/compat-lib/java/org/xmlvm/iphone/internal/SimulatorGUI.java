package org.xmlvm.iphone.internal;

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

    public SimulatorGUI(ImageLoader imageLoader) {
        Simulator.setGUI(this);
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
        if (device != null) {
            device.repaint();
        }
    }

    public void redrawDisplay(int x, int y, int width, int height) {
        // TODO Use computed clipping rect after fixing its computation in
        // UIView
        // display.repaint(x, y, width, height);
        if (device != null) {
            device.repaint();
        }
    }

    private void addAccelerometerPanel() {
        accelerometer = new AccelerometerPanel();
        accelerometer.setLocation(430, 50);
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

    public JPanel getDisplay() {
        return device.getDisplay();
    }

    public StatusBar getStatusBar() {
        return device.getStatusBar();
    }

    public void setAccelerated(double x, double y, double z) {
        if (accelerometer != null)
            accelerometer.setAccelerated(x, y, z);
    }
}
