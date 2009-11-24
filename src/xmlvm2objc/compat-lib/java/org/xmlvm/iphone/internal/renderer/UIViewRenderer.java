package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.AffineTransform;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.Simulator;

/**
 * 
 * @author teras
 */
public class UIViewRenderer<T extends UIView> {

    protected final T       view;
    /**
     * The affine transform of this view, before altering it from this view view
     */
    private AffineTransform savedTransform;
    private Shape           savedClip;

    public UIViewRenderer(T view) {
        if (view == null)
            throw new NullPointerException("UIViewGUI should not be null");
        this.view = view;
    }

    public void initPaint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        savedTransform = g.getTransform();
        savedClip = g.getClip();
        AffineTransform trans = getJavaAffineTransformation();
        if (trans != null)
            g.transform(trans);
        if (view.clipsToBounds()) {
            CGRect rect = view.getFrame();
            g.setClip((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                    (int) rect.size.height);
        }
    }

    public void finishPaint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        g.setTransform(savedTransform);
        g.setClip(savedClip);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        UIColor backgroundColor = view.getBackgroundColor();
        if (backgroundColor != UIColor.clearColor) {
            if (backgroundColor.xmlvmGetPatternImage() != null) {
                UIImage backgroundPatternImage = backgroundColor.xmlvmGetPatternImage();
                float offset = displayRect.size.height - backgroundPatternImage.getSize().height;
                CGRect backgroundRect = new CGRect(displayRect);
                backgroundRect.origin.y += offset;
                backgroundPatternImage.drawInRect(backgroundRect);
            } else {
                g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
                g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                        (int) displayRect.size.width, (int) displayRect.size.height);
            }
        }
        UIImage backgroundImage = view.getBackgroundImage();
        if (backgroundImage != null) {
            backgroundImage.drawInRect(displayRect);
        }

    }

    // TODO (arno) Fix the clipping rect computation
    // TODO teras: find exactly which part to redraw
    public void redraw() {
        CGRect rect = view.getFrame();
        CGRect displayRect = view.getFrame();
        int x = (int) (displayRect.origin.x + rect.origin.x);
        int y = (int) (displayRect.origin.y + rect.origin.y);
        Simulator.redrawDisplay(x, y, (int) rect.size.width, (int) rect.size.height);
    }

    protected int getAlphaAsInt() {
        return (int) (255f * view.getAlpha());
    }

    public AffineTransform getJavaAffineTransformation() {
        if (view.getTransform() == null)
            return null;
        float X = view.getFrame().origin.x + view.getBounds().size.width / 2f;
        float Y = view.getFrame().origin.y + view.getBounds().size.height / 2f;
        AffineTransform current = AffineTransform.getTranslateInstance(X, Y);
        current.concatenate(view.getTransform().xmlvmGetAffine());
        current.concatenate(AffineTransform.getTranslateInstance(-X, -Y));
        return current;
    }
}
