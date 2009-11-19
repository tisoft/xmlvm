package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Paint;

public class UIColor {

    private Paint               color;
    private UIImage             patternImage;
    public final static UIColor blackColor                    = new UIColor(Color.BLACK);
    public final static UIColor darkGrayColor                 = new UIColor(Color.DARK_GRAY);
    public final static UIColor lightGrayColor                = new UIColor(Color.LIGHT_GRAY);
    public final static UIColor whiteColor                    = new UIColor(Color.WHITE);
    public final static UIColor grayColor                     = new UIColor(Color.GRAY);
    public final static UIColor redColor                      = new UIColor(Color.RED);
    public final static UIColor greenColor                    = new UIColor(Color.GREEN);
    public final static UIColor blueColor                     = new UIColor(Color.BLUE);
    public final static UIColor cyanColor                     = new UIColor(Color.CYAN);
    public final static UIColor yellowColor                   = new UIColor(Color.YELLOW);
    public final static UIColor magentaColor                  = new UIColor(Color.MAGENTA);
    public final static UIColor orangeColor                   = new UIColor(Color.ORANGE);
    public final static UIColor purpleColor                   = new UIColor(new Color(128, 0, 128));
    public final static UIColor brownColor                    = new UIColor(new Color(153, 102, 51));
    public final static UIColor clearColor                    = new UIColor(new Color(0, 0, 0, 0));
    public final static UIColor lightTextColor                = new UIColor(183f / 255, 183f / 255,
                                                                      183f / 255, 1);
    public final static UIColor darkTextColor                 = new UIColor(Color.BLACK);
    public final static UIColor groupTableViewBackgroundColor = new UIColor(197f / 255, 204f / 255,
                                                                      212f / 255, 1);
    public final static UIColor viewFlipsideBackgroundColor   = new UIColor(Color.BLACK);

    private UIColor(Paint c) {
        if (c == null)
            c = clearColor.xmlvmGetPaint();
        color = c;
    }

    private UIColor(UIImage patternImage) {
        this.patternImage = patternImage;
    }

    private UIColor(int RGB, float alpha) {
        int r = (RGB & 0xFF0000) >> 16;
        int g = (RGB & 0xFF00) >> 8;
        int b = (RGB & 0xFF);
        int a = (int) (alpha * 255);
        if (a > 255)
            a = 255;
        if (a < 0)
            a = 0;
        color = new Color(r, g, b, a);
    }

    private UIColor(float red, float green, float blue, float alpha) {
        color = new Color(red, green, blue, alpha);
    }

    public static UIColor colorWithWhiteAlpha(float white, float alpha) {
        return new UIColor(white, white, white, alpha);
    }

    public static UIColor colorWithHSBA(float hue, float saturation, float brightness, float alpha) {
        return new UIColor(Color.HSBtoRGB(hue, saturation, brightness), alpha);
    }

    public static UIColor colorWithRGBA(float red, float green, float blue, float alpha) {
        return new UIColor(red, green, blue, alpha);
    }

    public static UIColor colorWithPatternImage(UIImage patternImage) {
        return new UIColor(patternImage);
    }

    public Paint xmlvmGetPaint() {
        return color;
    }
    
    public UIImage xmlvmGetPatternImage() {
        return patternImage;
    }
}
