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

/**
 * 
 * @author teras
 */
public class UIControlEvent {

    public static final int TouchDown           = 1 << 0;
    public static final int TouchDownRepeat     = 1 << 1;
    public static final int TouchDragInside     = 1 << 2;
    public static final int TouchDragOutside    = 1 << 3;
    public static final int TouchDragEnter      = 1 << 4;
    public static final int TouchDragExit       = 1 << 5;
    public static final int TouchUpInside       = 1 << 6;
    public static final int TouchUpOutside      = 1 << 7;
    public static final int TouchCancel         = 1 << 8;
    public static final int ValueChanged        = 1 << 12;
    public static final int EditingDidBegin     = 1 << 16;
    public static final int EditingChanged      = 1 << 17;
    public static final int EditingDidEnd       = 1 << 18;
    public static final int EditingDidEndOnExit = 1 << 19;
    public static final int AllTouchEvents      = 0x00000FFF;
    public static final int AllEditingEvents    = 0x000F0000;
    public static final int ApplicationReserved = 0x0F000000;
    public static final int SystemReserved      = 0xF0000000;
    public static final int AllEvents           = 0xFFFFFFFF;
}
