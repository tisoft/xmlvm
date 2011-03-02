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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public final class UIControlEvent {

    @SuppressWarnings("PointlessBitwiseExpression")
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
    
    private UIControlEvent() {        
    }
}
