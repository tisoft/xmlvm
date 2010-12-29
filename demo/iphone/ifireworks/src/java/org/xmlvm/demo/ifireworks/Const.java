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

package org.xmlvm.demo.ifireworks;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;

public class Const {

    static {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        HEIGHT = (int) rect.size.height;
        WIDTH = (int) rect.size.width;
    }

    static int         HEIGHT;
    static int         WIDTH;

    final static int   BOMB_COUNT      = 6;
    final static int   SPARKS_PER_BOMB = 10;

    final static int   IMAGE_SIZE      = 15;

    final static float MAX2V           = 70.0f;
    final static float T               = 0.3f;
    final static float G               = 9.81f;
    final static float DV              = T * G;
}
