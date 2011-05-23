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
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Path2D;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;

@XMLVMIgnore
public class UIAlertButtonRenderer extends UIButtonRenderer {
    // This is for the simulator, to distinguish that this button is
    // from an alert view
    public static final int AlertViewType          = 8000;

    private Color           pressedBackgroundColor = null;
    private Color           pressedTitleColor      = null;
    private Color           upperLightPressedColor = null;
    private Color           upperDarkPressedColor  = null;
    private Color           lowerLightPressedColor = null;
    private Color           lowerDarkPressedColor  = null;
    private Color           upperLightColor        = null;
    private Color           upperDarkColor         = null;
    private Color           lowerLightColor        = null;
    private Color           lowerDarkColor         = null;
    private Color           typeColor              = null;


    public UIAlertButtonRenderer(UIButton view) {
        super(view);
    }

    @Override
    protected void drawButton(Graphics2D g, CGRect displayRect) {

        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width - 2;
        int h = (int) displayRect.size.height - 2;

        // Draw the button's upper part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D upperShape = new Path2D.Double();
        upperShape.moveTo(x, y + h / 2);
        upperShape.lineTo(x, y + edgeDiameter / 2);
        upperShape.quadTo(x, y, x + edgeDiameter / 2, y);
        upperShape.lineTo(x + w - edgeDiameter / 2 + 1, y);
        upperShape.quadTo(x + w + 1, y, x + w + 1, y + edgeDiameter / 2);
        upperShape.lineTo(x + w + 1, y + h / 2);
        upperShape.closePath();

        GradientPaint lightGradient = new GradientPaint(0, y,
                isHighlighted() ? upperLightPressedColor : upperLightColor, 0, y + h / 2,
                isHighlighted() ? upperDarkPressedColor : upperDarkColor);
        g.setPaint(lightGradient);
        g.fill(upperShape);

        // Draw the button's lower part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D lowerShape = new Path2D.Double();
        lowerShape.moveTo(x, y + h / 2);
        lowerShape.lineTo(x, y + h - edgeDiameter / 2 + 1);
        lowerShape.quadTo(x, y + h + 1, x + edgeDiameter / 2, y + h + 1);
        lowerShape.lineTo(x + w - edgeDiameter / 2 + 1, y + h + 1);
        lowerShape.quadTo(x + w + 1, y + h + 1, x + w + 1, y + h - edgeDiameter / 2 + 1);
        lowerShape.lineTo(x + w + 1, y + h / 2);
        lowerShape.closePath();

        GradientPaint darkGradient = new GradientPaint(0, y + h + 1,
                isHighlighted() ? lowerDarkPressedColor : lowerDarkColor, 0, y + h + 1,
                isHighlighted() ? lowerLightPressedColor : lowerLightColor);
        g.setPaint(darkGradient);
        g.fill(lowerShape);

        // Draw surrounding dark gray line
        g.setPaint(Color.BLACK);
        g.drawRoundRect((int) x, (int) y, (int) w + 1, (int) h + 1, edgeDiameter, edgeDiameter);

        // Draw upper light line
        if (!isHighlighted()) {
            Color c = new Color((int) Math.min(typeColor.getRed() * 1.3, 255), (int) Math.min(
                    typeColor.getGreen() * 1.3, 255), (int) Math
                    .min(typeColor.getBlue() * 1.3, 255));
            g.setPaint(c);
            g.drawLine(x + 2, y + 1, x + w - 3, y + 1);
        }

        UIButton bt = (UIButton) view;
        if (bt.getCurrentTitle() != null) {
            g.setPaint(bt.getCurrentTitleColor().xmlvmGetPaint());
            drawTitle(g, displayRect);
        }
    }

    @Override
    public void updateButtonElements() {
        upperDarkColor = new Color((int) (Math.min(typeColor.getRed() * 1.125, 255)), (int) Math
                .min(typeColor.getGreen() * 1.125, 255), (int) Math.min(
                typeColor.getBlue() * 1.125, 255), getAlphaAsInt());
        lowerDarkColor = new Color((int) (typeColor.getRed() * 0.875),
                (int) (typeColor.getGreen() * 0.875), (int) (typeColor.getBlue() * 0.875),
                getAlphaAsInt());
        upperLightColor = new Color((int) Math.min(upperDarkColor.getRed() * 1.1, 255), (int) Math
                .min(upperDarkColor.getGreen() * 1.1, 255), (int) Math.min(
                upperDarkColor.getBlue() * 1.1, 255), getAlphaAsInt());
        lowerLightColor = new Color((int) (lowerDarkColor.getRed() * 1.1), (int) (lowerDarkColor
                .getGreen() * 1.1), (int) (lowerDarkColor.getBlue() * 1.1), getAlphaAsInt());

        if (pressedBackgroundColor == null) {
            upperDarkPressedColor = new Color((int) (upperDarkColor.getRed() * 0.2),
                    (int) (upperDarkColor.getGreen() * 0.2),
                    (int) (upperDarkColor.getBlue() * 0.2), getAlphaAsInt());
            upperLightPressedColor = new Color((int) (upperLightColor.getRed() * 0.2),
                    (int) (upperLightColor.getGreen() * 0.2),
                    (int) (upperLightColor.getBlue() * 0.2), getAlphaAsInt());
            lowerDarkPressedColor = new Color((int) (lowerDarkColor.getRed() * 0.1),
                    (int) (lowerDarkColor.getGreen() * 0.2),
                    (int) (lowerDarkColor.getBlue() * 0.2), getAlphaAsInt());
            lowerLightPressedColor = new Color((int) (lowerLightColor.getRed() * 0.1),
                    (int) (lowerLightColor.getGreen() * 0.2),
                    (int) (lowerLightColor.getBlue() * 0.2), getAlphaAsInt());
        } else {
            upperDarkPressedColor = new Color((int) (Math.min(
                    pressedBackgroundColor.getRed() * 1.125, 255)), (int) Math.min(
                    pressedBackgroundColor.getGreen() * 1.125, 255), (int) Math.min(
                    pressedBackgroundColor.getBlue() * 1.125, 255), getAlphaAsInt());
            lowerDarkPressedColor = new Color((int) (pressedBackgroundColor.getRed() * 0.875),
                    (int) (pressedBackgroundColor.getGreen() * 0.875),
                    (int) (pressedBackgroundColor.getBlue() * 0.875), getAlphaAsInt());
            upperLightPressedColor = new Color((int) Math.min(upperDarkPressedColor.getRed() * 1.1,
                    255), (int) Math.min(upperDarkPressedColor.getGreen() * 1.1, 255), (int) Math
                    .min(upperDarkPressedColor.getBlue() * 1.1, 255), getAlphaAsInt());
            lowerLightPressedColor = new Color((int) (lowerDarkPressedColor.getRed() * 1.1),
                    (int) (lowerDarkPressedColor.getGreen() * 1.1), (int) (lowerDarkPressedColor
                            .getBlue() * 1.1), getAlphaAsInt());
        }
    }

    public void setBackgroundTypeColor(Color typeColor) {
        this.typeColor = typeColor;
        updateButtonElements();
    }
}
