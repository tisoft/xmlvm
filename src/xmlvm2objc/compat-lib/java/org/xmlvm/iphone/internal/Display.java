package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.awt.image.ImageObserver;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIResponder;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UITouchPhase;
import org.xmlvm.iphone.UIView;

class ViewSearchResult {
    public int    level;
    public UIView uiView;
}

public class Display extends UIView implements ImageObserver {

    private StatusBar         statusBar;
    private Gestures          gestures;
    private UIView            keyListener;
    private List<UIResponder> touchesListener;
    private UIAlertView       alertView;
    private Device            device;

    public Display(Device device) {
        this.device = device;
        gestures = new Gestures();
        statusBar = null;
        keyListener = null;
        touchesListener = new ArrayList<UIResponder>();
        this.addKeyListener(this);
    }

    public void addGestureListener(GestureListener listener) {
        gestures.addGestureListener(listener);
    }

    public void setStatusBar(StatusBar statusBar) {
        this.statusBar = statusBar;
    }

    public void drawRect(Graphics2D g2d) {

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        Rectangle savedClip = g2d.getClipBounds();
        Rectangle r = new Rectangle(0, 0, 320, 480);
        g2d.setClip(r);

        CGContext.setGraphicsContext(g2d);
        g2d.setBackground(Color.BLACK);
        g2d.clearRect(r.x, r.y, r.width, r.height);
        CGRect rect = new CGRect(r.x, r.y, r.width, r.height);

        for (UIView v : subViews) {
            v.drawRect(rect);
        }

        statusBar.drawRect(rect);

        if (alertView != null) {
            alertView.drawRect(rect);
        }

        g2d.setClip(savedClip);
    }

    private void deliverTouchesEvent(int phase, MouseEvent e) {
        // TODO
        UIView view = null;
        // TODO
        UIEvent event = null;

        int x = translateX(e.getX(), e.getY());
        int y = translateY(e.getX(), e.getY());

        // Ignore events outside of the display
        if (x < 0 || x > 319 || y < 0 || y > 479) {
            return;
        }

        // System.out.println("(Translated) X: " + x + ", Y: " + y);

        Set<UITouch> touches = new HashSet<UITouch>();
        UITouch touch = new UITouch(phase, view, x, y);
        touches.add(touch);

        // Find top most view touched
        ViewSearchResult result = new ViewSearchResult();
        findTouchedView(touches, alertView != null ? alertView : this, 0, result);
        UIResponder responder = result.uiView != null ? result.uiView : this.getSubviews().get(0);

        // Make a static array out of the current list to prevent concurrent
        // modification problems.
        // final UIResponder[] responders = touchesListener.toArray(new
        // UIResponder[0]);
        // for (UIResponder responder : responders) {
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
        // }
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
        this.deliverTouchesEvent(UITouchPhase.UITouchPhaseBegan, e);
    }

    public void mouseReleased(MouseEvent e) {
        gestures.mouseReleased(e);
        this.deliverTouchesEvent(UITouchPhase.UITouchPhaseEnded, e);
    }

    public void mouseDragged(MouseEvent e) {
        gestures.mouseDragged(e);
        this.deliverTouchesEvent(UITouchPhase.UITouchPhaseMoved, e);
    }

    public void mouseMoved(MouseEvent e) {
        gestures.mouseMoved(e);
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

    public void setAlertView(UIAlertView alertView) {
        this.alertView = alertView;
    }

    public UIAlertView getAlertView() {
        return this.alertView;
    }

    @Override
    public boolean imageUpdate(Image img, int infoflags, int x, int y, int width, int height) {
        return device.imageUpdate(img, infoflags, x, y, width, height);
    }

    private int translateX(int x, int y) {
        switch (Simulator.getStatusBarOrientation()) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            return x - 35;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            return 359 - y;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            return y - 40;
        }

        return x;
    }

    private int translateY(int x, int y) {
        switch (Simulator.getStatusBarOrientation()) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            return y - 107;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            return x - 112;

        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            return 479 - x + 112;
        }

        return y;
    }

    private void findTouchedView(Set<UITouch> touches, UIView uiView, int nesting,
            ViewSearchResult result) {
        for (UIView childView : uiView.getSubviews()) {
            findTouchedView(touches, childView, nesting + 1, result);
        }

        if (uiView.touchedInsideView(touches) && (nesting >= result.level || result.uiView == null)) {
            result.level = nesting;
            result.uiView = uiView;
        }
    }
}
