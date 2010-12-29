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
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIPreferencesTable;
import org.xmlvm.iphone.UIPreferencesTableCell;
import org.xmlvm.iphone.UIPreferencesTableDataSource;

public class UIPreferencesTableRenderer extends UIViewRenderer<UIPreferencesTable> {

    private List<CGRect> groupFrames;
    final static int     INSET = 15;


    public UIPreferencesTableRenderer(UIPreferencesTable view) {
        super(view);
        groupFrames = new ArrayList<CGRect>();
    }

    public void reloadData() {
        UIPreferencesTableDataSource datasource = view.getDataSource();
        view.getSubviews().clear();
        groupFrames.clear();
        float width = view.getFrame().size.width * 0.9f;
        float x = view.getFrame().origin.x + view.getFrame().size.width * 0.05f;
        int numOfGroups = datasource.numberOfGroupsInPreferencesTable(view);
        int y = 0;
        for (int g = 0; g < numOfGroups; g++) {
            UIPreferencesTableCell group = datasource.cellForGroup(view, g);
            float proposedHeight = datasource.heightForRow(view, -1, g, 40);
            CGRect rect = new CGRect(x, y, width, proposedHeight);
            y += proposedHeight;
            group.setFrame(rect);
            group.setGroupCell(true);
            view.addSubview(group);
            if (datasource.isLabelGroup(view, g))
                continue;
            int numRows = datasource.numberOfRowsInGroup(view, g);
            CGRect groupRect = new CGRect(x, y, width, 0);
            for (int r = 0; r < numRows; r++) {
                y += 5;
                UIPreferencesTableCell cell = datasource.cellForRow(view, r, g);
                proposedHeight = datasource.heightForRow(view, r, g, 40);
                rect = new CGRect(x, y, width, proposedHeight);
                y += proposedHeight;
                cell.setFrame(rect);
                view.addSubview(cell);
            }
            groupRect.size.height = y - groupRect.origin.y;
            groupFrames.add(groupRect);
        }
    }

    @Override
    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        g.setBackground(new Color(220, 220, 220));
        g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < view.getFrame().size.width; i += 10)
            g.drawLine((int) displayRect.origin.x + i, (int) displayRect.origin.y,
                    (int) displayRect.origin.x + i,
                    (int) (displayRect.origin.y + displayRect.size.height));
        for (CGRect groupRect : groupFrames) {
            g.setColor(Color.WHITE);
            g.fillRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y), (int) groupRect.size.width,
                    (int) groupRect.size.height, INSET, INSET);
            g.setColor(Color.LIGHT_GRAY);
            g.drawRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y), (int) groupRect.size.width,
                    (int) groupRect.size.height, INSET, INSET);
        }
        g.setColor(Color.BLACK);
    }
}
