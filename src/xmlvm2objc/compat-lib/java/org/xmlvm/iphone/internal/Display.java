package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.swing.JPanel;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIResponder;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UITouchPhase;
import org.xmlvm.iphone.UIView;

public class Display extends JPanel implements MouseListener, MouseMotionListener, KeyListener {

    private List<UIView>      views;
    private StatusBar         statusBar;
    private Gestures          gestures;
    private UIView            keyListener;
    private List<UIResponder> touchesListener;

    public Display(int x, int y) {
        this.setLayout(null);
        this.setSize(320, 480);
        this.setLocation(x, y);
        this.setForeground(Color.BLACK);
        this.setBackground(Color.BLACK);
        gestures = new Gestures();
        this.addMouseListener(this);
        this.addMouseMotionListener(this);
        this.addKeyListener(this);
        this.setFocusable(true);
        views = new ArrayList<UIView>();
        statusBar = null;
        keyListener = null;
        touchesListener = new ArrayList<UIResponder>();
    }

    public void addView(UIView newView) {
        views.add(newView);
    }

    public void addGestureListener(GestureListener listener) {
        gestures.addGestureListener(listener);
    }

    public void setStatusBar(StatusBar statusBar) {
        this.statusBar = statusBar;
    }

    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        CGContext.setGraphicsContext(g2d);
        Rectangle r = g.getClipBounds();
        g2d.setBackground(Color.BLACK);
        g2d.clearRect(r.x, r.y, r.width, r.height);
        CGRect rect = new CGRect(r.x, r.y, r.width, r.height);
        for (UIView v : views) {
            v.drawRect(rect);
        }
        statusBar.drawRect(rect);
    }

    public void mouseClicked(MouseEvent e) {
        gestures.mouseClicked(e);
    }

    public void mouseEntered(MouseEvent e) {
        gestures.mouseEntered(e);
    }

    public void mouseExited(MouseEvent e) {
        gestures.mouseExited(e);
    }

    public void mousePressed(MouseEvent e) {
        gestures.mousePressed(e);
        deliverTouchesEvent(UITouchPhase.UITouchPhaseBegan, e);
    }

    public void mouseReleased(MouseEvent e) {
        gestures.mouseReleased(e);
        deliverTouchesEvent(UITouchPhase.UITouchPhaseEnded, e);
    }

    public void mouseDragged(MouseEvent e) {
        gestures.mouseDragged(e);
        deliverTouchesEvent(UITouchPhase.UITouchPhaseMoved, e);
    }

    public void mouseMoved(MouseEvent e) {
        gestures.mouseMoved(e);
    }

    private void deliverTouchesEvent(int phase, MouseEvent e) {
        // TODO
        UIView view = null;
        // TODO
        UIEvent event = null;
        Set<UITouch> touches = new HashSet<UITouch>();
        UITouch touch = new UITouch(phase, null, e.getX(), e.getY());
        touches.add(touch);
        for (UIResponder responder : touchesListener) {
            switch (phase) {
            case UITouchPhase.UITouchPhaseBegan:
                responder.touchesBegan(touches, event);
                break;
            case UITouchPhase.UITouchPhaseMoved:
                responder.touchesMoved(touches, event);
                break;
            case UITouchPhase.UITouchPhaseEnded:
                responder.touchesEnded(touches, event);
                break;
            case UITouchPhase.UITouchPhaseCancelled:
                responder.touchesCancelled(touches, event);
                break;
            }
        }
    }

    public void keyPressed(KeyEvent arg0) {
        // TODO Auto-generated method stub

    }

    public void keyReleased(KeyEvent arg0) {
        // TODO Auto-generated method stub

    }

    public void keyTyped(KeyEvent e) {
        if (keyListener != null)
            keyListener.keyTyped(e.getKeyChar());
    }

    public void addKeyListener(UIView listener) {
        // TODO right now only one key listener is allowed!
        this.keyListener = listener;
    }

    public void addTouchesListener(UIResponder listener) {
        touchesListener.add(listener);
    }
}
