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

package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Paint;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;

public class RendererUtilities {

    private final static float BRIGHTNESS = 1.3f;
    private final static float SATURATION = 0.5f;


    public static Paint getHalfPaint(UIColor basecolor, CGRect frame, boolean topDark) {
        return getGradientPaint(basecolor, frame, topDark, true);
    }

    public static Paint getGradientPaint(UIColor basecolor, CGRect frame, boolean topDark,
            boolean halfpaint) {
        Color base, top, bottom;
        int height;

        if (!(basecolor.xmlvmGetPaint() instanceof Color))
            return basecolor.xmlvmGetPaint();

        /* It's safe to cast, since we already checked if this is a real color */
        base = (Color) basecolor.xmlvmGetPaint();
        if (topDark) {
            top = (Color) getTransColor(basecolor, 1, SATURATION, 1 / BRIGHTNESS);
            if (halfpaint)
                bottom = base;
            else
                bottom = (Color) getTransColor(basecolor, 1, SATURATION, BRIGHTNESS);
        } else {
            top = (Color) getTransColor(basecolor, 1, SATURATION, BRIGHTNESS);
            if (halfpaint)
                bottom = base;
            else
                bottom = (Color) getTransColor(basecolor, 1, SATURATION, 1 / BRIGHTNESS);
        }

        height = halfpaint ? (int) frame.size.height / 2 : (int) frame.size.height;
        return new GradientPaint(0, frame.origin.y, top, 0, frame.origin.y + height, bottom);
    }

    public static Paint getTransColor(UIColor base, float hc, float sc, float bc) {
        if (!(base.xmlvmGetPaint() instanceof Color))
            return base.xmlvmGetPaint();
        Color c = (Color) base.xmlvmGetPaint();
        float[] hsb = Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), null);
        float h = hsb[0] * hc;
        float s = hsb[1] * sc;
        float b = hsb[2] * bc;
        if (h < 0)
            h = 0;
        if (h > 1)
            h = 1;
        if (s < 0)
            s = 0;
        if (s > 1)
            s = 1;
        if (b < 0)
            b = 0;
        if (b > 1)
            b = 1;
        if (b <= 0.5 && bc > 1)
            b = 0.5f;
        int RGB = Color.HSBtoRGB(h, s, b);
        int red = (RGB & 0xFF0000) >> 16;
        int green = (RGB & 0xFF00) >> 8;
        int blue = (RGB & 0xFF);
        return new Color(red, green, blue, c.getAlpha());
    }

    public static UIColor getUIColor(UIColor uic, float alpha) {
        Paint p = uic.xmlvmGetPaint();
        if (p instanceof Color) {
            Color c = (Color) p;
            UIColor res = UIColor.colorWithRGBA(((float) c.getRed()) / 255f,
                    ((float) c.getGreen()) / 255f, ((float) c.getBlue()) / 255f, alpha);
            return res;
        }
        return uic;
    }
}
