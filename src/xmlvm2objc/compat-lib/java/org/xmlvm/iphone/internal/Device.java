package org.xmlvm.iphone.internal;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.geom.AffineTransform;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIResponder;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class Device extends JPanel implements KeyListener, MouseListener, MouseMotionListener {

    private ImageLoader     imageLoader;
    private Display         display;
    private AffineTransform deviceTransform;
    private AffineTransform displayTransform;
    public StatusBar        statusBar;

    public Device(ImageLoader imageLoader) {
        this.imageLoader = imageLoader;
        this.setLayout(null);
        this.setSize(580, 750);
        addChassis();
        addDisplay();
        addStatusBar();

        this.addMouseListener(this);
        this.addMouseMotionListener(this);
        this.addKeyListener(this);
        this.setFocusable(true);
    }

    public ImageLoader getImageLoader() {
        return imageLoader;
    }

    private void addDisplay() {
        display = new Display(this);
    }

    public void redrawDisplay() {
        // TODO: Limit repaint to the display area
        this.repaint();
    }

    public void redrawDisplay(int x, int y, int width, int height) {
        // TODO Use computed clipping rect after fixing its computation in
        // UIView
        // display.repaint(x, y, width, height);

        // TODO: Limit repaint to the specified display area
        this.repaint();
    }

    private void addStatusBar() {
        statusBar = new StatusBar(new CGRect(0, 0, 320, 20));
        display.setStatusBar(statusBar);
    }

    private void addChassis() {
        Image image = imageLoader.loadImage("chassis.png");
        ImageIcon chassisIcon = new ImageIcon(image);
        int width = chassisIcon.getIconWidth();
        int height = chassisIcon.getIconHeight();
        JLabel chassis = new JLabel(chassisIcon);
        chassis.setBounds(0, 0, width, height);
        this.setSize(width, height);
        this.add(chassis);
    }

    public void addUIWindow(UIWindow newWindow) {
        display.addSubview(newWindow);
        this.validate();
    }

    public void addGestureListener(GestureListener listener) {
        display.addGestureListener(listener);
    }

    public void addKeyListener(UIView listener) {
        display.addKeyListener(listener);
    }

    public void addTouchesListener(UIResponder listener) {
        display.addTouchesListener(listener);
    }

    public float getStatusBarHeight() {
        return statusBar.getStatusBarHeight();
    }

    public Display getDisplay() {
        return display;
    }

    public StatusBar getStatusBar() {
        return this.statusBar;
    }

    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D) g;
        AffineTransform savedTransform = g2d.getTransform();
        g2d.transform(deviceTransform);
        super.paint(g);

        g2d.transform(displayTransform);
        display.drawRect(g2d);

        g2d.setTransform(savedTransform);
    }

    public void mouseClicked(MouseEvent e) {
        display.mouseClicked(e);
    }

    public void mouseEntered(MouseEvent e) {
        display.mouseEntered(e);
    }

    public void mouseExited(MouseEvent e) {
        display.mouseExited(e);
    }

    public void mousePressed(MouseEvent e) {
        display.mousePressed(e);
    }

    public void mouseReleased(MouseEvent e) {
        display.mouseReleased(e);
    }

    public void mouseDragged(MouseEvent e) {
        display.mouseDragged(e);
    }

    public void mouseMoved(MouseEvent e) {
        // System.out.println("X: " + e.getX() + ", Y: " + e.getY());
        display.mouseMoved(e);
    }

    public void keyPressed(KeyEvent arg0) {
        display.keyPressed(arg0);
    }

    public void keyReleased(KeyEvent arg0) {
        display.keyReleased(arg0);
    }

    public void keyTyped(KeyEvent e) {
        display.keyTyped(e);
    }

    public AffineTransform getDeviceTransform() {
        return deviceTransform;
    }

    public void setDeviceTransform(AffineTransform deviceTransform) {
        this.deviceTransform = deviceTransform;
    }

    public AffineTransform getDisplayTransform() {
        return displayTransform;
    }

    public void setDisplayTransform(AffineTransform displayTransform) {
        this.displayTransform = displayTransform;
    }

}
