/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Paint;
import java.awt.TexturePaint;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIColor extends NSObject {

    private Paint               color;
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
        float red = 0.0f;
        float green = 0.0f;
        float blue = 0.0f;

        final float hf = (hue - (int) hue) * 6.0f;
        final int ihf = (int) hf;
        final float f = hf - ihf;
        final float pv = brightness * (1.0f - saturation);
        final float qv = brightness * (1.0f - saturation * f);
        final float tv = brightness * (1.0f - saturation * (1.0f - f));

        switch (ihf) {
        case 0: // Red is the dominant color
            red = brightness;
            green = tv;
            blue = pv;
            break;
        case 1: // Green is the dominant color
            red = qv;
            green = brightness;
            blue = pv;
            break;
        case 2:
            red = pv;
            green = brightness;
            blue = tv;
            break;
        case 3: // Blue is the dominant color
            red = pv;
            green = qv;
            blue = brightness;
            break;
        case 4:
            red = tv;
            green = pv;
            blue = brightness;
            break;
        case 5: // Red is the dominant color
            red = brightness;
            green = pv;
            blue = qv;
            break;
        }
        return new UIColor(red, green, blue, alpha);
    }

    public static UIColor colorWithRGBA(float red, float green, float blue, float alpha) {
        return new UIColor(red, green, blue, alpha);
    }

    public static UIColor colorWithPatternImage(UIImage patternImage) {
        BufferedImage img = patternImage.xmlvmGetImage();
        Paint paint = new TexturePaint(img, new Rectangle2D.Float(0, 0, img.getWidth(), img
                .getHeight()));
        return new UIColor(paint);
    }

    @XMLVMIgnore
    public Paint xmlvmGetPaint() {
        return color;
    }
}
