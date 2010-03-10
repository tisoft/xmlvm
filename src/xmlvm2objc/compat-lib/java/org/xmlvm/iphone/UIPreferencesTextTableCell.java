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

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UIPreferencesTextTableCellRenderer;

public class UIPreferencesTextTableCell extends UIPreferencesTableCell {

    private String text;

    public UIPreferencesTextTableCell() {
        super();
        xmlvmSetRenderer(new UIPreferencesTextTableCellRenderer(this));
        text = "";
        Simulator.addKeyListener(this);
    }

    public void setValue(String value) {
        text = value;
    }

    public String getValue() {
        return text;
    }

    /* TODO teras: again even handling here */
    @Override
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }

}
