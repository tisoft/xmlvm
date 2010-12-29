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

package org.xmlvm.demo.iremote;

import org.xmlvm.iphone.*;

public class SettingTableCell extends UITableViewCell {

    private static final float kCellLeftOffset = 8.0f;
    private static final float kCellTopOffset  = 12.0f;
    private static final float kCellHeight     = 25.0f;

    private UILabel            label;
    private UIView             view;


    public SettingTableCell() {
        view = null;
        label = new UILabel();
        this.getContentView().addSubview(label);
    }

    public void setLabelText(String text) {
        label.setText(text);
    }

    public void setView(UIView view) {
        this.view = view;
        this.getContentView().addSubview(view);
        // this.layoutSubviews();
    }

    @Override
    public void layoutSubviews() {
        super.layoutSubviews();
        CGRect contentRect = this.getContentView().getBounds();
        CGRect frame = new CGRect(kCellLeftOffset, kCellTopOffset, contentRect.size.width
                - kCellLeftOffset, kCellHeight);
        label.setFrame(frame);
        if (view != null) {
            float width = this.view.getBounds().size.width;
            float height = this.view.getBounds().size.height;
            CGRect viewFrame = new CGRect(contentRect.size.width - width - kCellLeftOffset,
                    ((contentRect.size.height - height) / 2), width, height);
            view.setFrame(viewFrame);
        }
    }
}
