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

/**
 *
 * @author teras
 */

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIProgressView;
import org.xmlvm.iphone.UIProgressViewStyle;

/**
 * 
 * @author teras
 */
public class UIProgressViewRenderer extends UIViewRenderer<UIProgressView> {

    public static final float  kMinimum            = 0.0f;
    public static final float  kMaximum            = 1.0f;
    public static final float  kProgressViewWidth  = 150.0f;
    public static final float  kProgressViewHeight = 8.0f;
    private static final float kColorOffset        = 2.0f;


    public UIProgressViewRenderer(UIProgressView view) {
        super(view);
    }

    @Override
    public void paint() {
        float progress = view.getProgress();
        int style = view.getProgressViewStyle();

        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        if (view.getBackgroundColor() != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }
        int v = (int) (((displayRect.size.width - kProgressViewHeight) * progress) + kProgressViewHeight);
        GradientPaint blueLightGradient = new GradientPaint(0, y + kColorOffset, new Color(104,
                165, 245), 0, y + h - kColorOffset, new Color(42, 93, 148));
        GradientPaint blueDarkGradient = new GradientPaint(0, y + kColorOffset, new Color(34, 62,
                99), 0, y + h - kColorOffset, new Color(75, 107, 150));
        GradientPaint whiteGradient = new GradientPaint(0, y + kColorOffset, new Color(188, 188,
                188), 0, y + h - kColorOffset, Color.WHITE);

        if (style == UIProgressViewStyle.Default) {
            g.setPaint(whiteGradient);
            g.fillRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            g.setColor(new Color(147, 147, 147));
            g.drawRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
        } else {
            g.setPaint(blueDarkGradient);
            g.fillRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            g.setColor(new Color(34, 62, 99));
            g.drawRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
        }

        if (progress > 0.00001f)
            if (style == UIProgressViewStyle.Default) {
                g.setPaint(blueLightGradient);
                g.fillRoundRect(x, y, v, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
                g.setColor(new Color(42, 93, 148));
                g.drawRoundRect(x, y, v, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            } else {
                g.setPaint(whiteGradient);
                g.fillRoundRect(x + 1, y + 1, v - 1, h - 1, (int) kProgressViewHeight,
                        (int) kProgressViewHeight);
            }
    }
}
