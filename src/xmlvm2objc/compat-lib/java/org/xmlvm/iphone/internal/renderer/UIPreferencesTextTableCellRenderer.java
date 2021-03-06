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
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIPreferencesTextTableCell;

@XMLVMIgnore
public class UIPreferencesTextTableCellRenderer extends UIViewRenderer<UIPreferencesTextTableCell> {

    public UIPreferencesTextTableCellRenderer(UIPreferencesTextTableCell view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        g.setColor(Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) (displayRect.origin.x + view.getFrame().size.width / 2);
        int y = (int) displayRect.origin.y + ((int) view.getFrame().size.height + fm.getHeight())
                / 2 - fm.getDescent();
        g.drawString(view.getValue(), x, y);
        x += fm.stringWidth(view.getValue());
        g.drawLine(x, y - fm.getHeight(), x, y);

    }
}
