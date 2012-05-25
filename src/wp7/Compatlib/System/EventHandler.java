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

package Compatlib.System;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class EventHandler extends MulticastDelegate {

    @XMLVMIgnore
    public EventHandler(Object arg0, int arg1) {
        super(arg0, arg1);
    }

    public EventHandler(Object arg0, String arg1) {
        super();
    }

    public void Invoke(Object arg0, EventArgs arg1) {
        Object aobj[] = { arg0, arg1 };
        try {
            helpInvoke(aobj);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
