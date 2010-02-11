/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone;

import java.awt.Graphics2D;

public class UITableViewCell extends UIView {

    protected boolean selected = false;
    private UIView    contentView;

    public UITableViewCell() {
        super(new CGRect(0, 0, 0, 0));
        init();
    }

    public UITableViewCell(CGRect rect) {
        super(rect);
        init();
    }

    private void init() {
        this.contentView = new UIView();
    }

    protected void drawCellBackground(Graphics2D g, CGRect displayRect) {
        /*
         * g.setBackground(selected ? Color.blue : Color.WHITE);
         * g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
         * (int) displayRect.size.width, (int) displayRect.size.height); int
         * sepY = (int) displayRect.origin.y + (int) displayRect.size.height -
         * 1; g.setColor(Color.LIGHT_GRAY); switch (((UITableView)
         * parent).getSeparatorStyle()) { case 1: // 1px gray g.drawLine(0,
         * sepY, (int) displayRect.size.width, sepY); break; case 2: // 2px gray
         * g.drawLine(0, sepY - 1, (int) displayRect.size.width, sepY - 1);
         * g.drawLine(0, sepY, (int) displayRect.size.width, sepY); break; case
         * 3: // Do nothing break; } g.setColor(selected ? Color.WHITE :
         * Color.BLACK);
         */
    }

    public void setSelected(boolean sel) {
        selected = sel;
    }

    public boolean isSelected() {
        return selected;
    }

    public UIView getContentView() {
        return this;// this.contentView;
    }
}
