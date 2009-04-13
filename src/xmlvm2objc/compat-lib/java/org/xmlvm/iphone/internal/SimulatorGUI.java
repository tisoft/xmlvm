
package org.xmlvm.iphone.internal;



import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;



public class SimulatorGUI
    extends JPanel
{

    private ImageLoader        imageLoader;
    private Display            display;
    private AccelerometerPanel accelerometer;
    public StatusBar           statusBar;

    final static private int   simulatorPositionX = 50;
    final static private int   simulatorPositionY = 120;



    public SimulatorGUI(ImageLoader imageLoader)
    {
        Simulator.setGUI(this);
        this.imageLoader = imageLoader;
        this.setLayout(null);
        this.setSize(580, 750);
        addChassis();
        addDisplay();
        addStatusBar();
        addAccelerometerPanel();
    }



    public ImageLoader getImageLoader()
    {
        return imageLoader;
    }



    private void addDisplay()
    {
        display = new Display(simulatorPositionX, simulatorPositionY);
        this.add(display, 0);
    }



    public void redrawDisplay()
    {
        display.repaint();
    }



    public void redrawDisplay(int x, int y, int width, int height)
    {
        display.repaint(x, y, width, height);
    }



    private void addStatusBar()
    {
        statusBar = new StatusBar(new CGRect(0, 0, 320, 20));
        display.setStatusBar(statusBar);
    }



    private void addAccelerometerPanel()
    {
        accelerometer = new AccelerometerPanel();
        accelerometer.setLocation(430, 50);
        this.add(accelerometer);
    }



    private void addChassis()
    {
        Image image = imageLoader.loadImage("chassis.png");
        ImageIcon chassisIcon = new ImageIcon(image);
        JLabel chassis = new JLabel(chassisIcon);
        chassis.setBounds(simulatorPositionX - 35, simulatorPositionY - 110,
                chassisIcon.getIconWidth(), chassisIcon.getIconHeight());
        this.add(chassis);
    }



    public void addUIWindow(UIWindow newWindow)
    {
        display.addView(newWindow);
        display.validate();
    }



    public void addGestureListener(GestureListener listener)
    {
        display.addGestureListener(listener);
    }



    public void addKeyListener(UIView listener)
    {
        display.addKeyListener(listener);
    }



    public float getStatusBarHeight()
    {
        return statusBar.getStatusBarHeight();
    }



    public JPanel getDisplay()
    {
        return display;
    }



    public void setAccelerated(double x, double y, double z)
    {
        if (accelerometer != null)
            accelerometer.setAccelerated(x, y, z);
    }
}
