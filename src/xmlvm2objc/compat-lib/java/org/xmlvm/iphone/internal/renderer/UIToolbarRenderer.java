
package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.internal.UIGenericToolbar;

/**
 * 
 * @author teras
 */
public class UIToolbarRenderer extends UIViewRenderer<UIGenericToolbar> {

    public final static int      HEIGHT_NOPROMT   = 44;
    public final static int      HEIGHT_WITHPROMT = 74;
    private final static float   TRANSLUCENT      = 0.9f;
    public final static UIColor  defaultColor     = UIColor.colorWithRGBA(98f / 255f, 124f / 255f,
                                                          159f / 255f, 1f);
    private final static UIColor upline           = UIColor.colorWithRGBA(55f / 255f, 58f / 255f,
                                                          61f / 255f, 1f);
    public static final float    INIT_OFFSET      = -4;
    public static final float    OFFSET           = 10;
    public static final float    PROMPT_DIFF      = 30;
    public static final float    TOP_OFFSET       = 9;
    public static final float    BOTTOM_OFFSET    = 6;

    public UIToolbarRenderer(UIGenericToolbar view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect rect = view.getFrame();
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;
        UIColor base = RendererUtilities.getUIColor(view.getTintColor(),
                view.isTranslucent() ? TRANSLUCENT : 1);
        g.setPaint(RendererUtilities.getHalfPaint(base, rect, false));
        g.fillRect(x, y, w, h);
        g.setPaint(RendererUtilities.getTransColor(base, 1, 0.5f, 0.5f));
        g.drawLine(x, y + h, x + w, y + h);
        g.setPaint(RendererUtilities.getTransColor(base, 1, 0.5f, 1.5f));
        g.drawLine(x, y + 1, x + w, y + 1);
        g.setPaint(upline.xmlvmGetPaint());
        g.drawLine(x, y, x + w, y);
    }
}
