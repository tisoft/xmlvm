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
public final class NSSearchPathDirectory {

    public static final int Application          = 1;
    public static final int DemoApplication      = 2;
    public static final int DeveloperApplication = 3;
    public static final int AdminApplication     = 4;
    public static final int Library              = 5;
    public static final int Developer            = 6;
    public static final int User                 = 7;
    public static final int Documentation        = 8;
    public static final int Document             = 9;
    public static final int CoreService          = 10;
    public static final int AutosavedInformation = 11;
    public static final int Desktop              = 12;
    public static final int Caches               = 13;
    public static final int ApplicationSupport   = 14;
    public static final int Downloads            = 15;
    public static final int InputMethods         = 16;
    public static final int Movies               = 17;
    public static final int Music                = 18;
    public static final int Pictures             = 19;
    public static final int PrinterDescription   = 20;
    public static final int SharedPublic         = 21;
    public static final int PreferencePanes      = 22;
    public static final int ItemReplacement      = 99;
    public static final int AllApplications      = 100;
    public static final int AllLibraries         = 101;

    private NSSearchPathDirectory() {
    }
}
