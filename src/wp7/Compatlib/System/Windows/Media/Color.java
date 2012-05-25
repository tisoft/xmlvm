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

package Compatlib.System.Windows.Media;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Object;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class Color extends Object {

    private short R, G, B;


    /**
     * @return the r
     */
    public short getR() {
        return R;
    }

    /**
     * @param r
     *            the r to set
     */
    public void setR(short r) {
        R = r;
    }

    /**
     * @return the g
     */
    public short getG() {
        return G;
    }

    /**
     * @param g
     *            the g to set
     */
    public void setG(short g) {
        G = g;
    }

    /**
     * @return the b
     */
    public short getB() {
        return B;
    }

    /**
     * @param b
     *            the b to set
     */
    public void setB(short b) {
        B = b;
    }

    private Color(short r, short g, short b) {
        this.R = r;
        this.G = g;
        this.B = b;
    }

    /**
     * @param i
     * @param j
     * @param k
     * @return
     */
    public static Color FromRgb(short r, short g, short b) {
        return new Color(r, g, b);
    }

    /**
     * @param red
     * @param green
     * @param blue
     * @return
     */
    public static Color FromArgb(int alpha, int red, int green, int blue) {
        // TODO Auto-generated method stub
        return null;
    }

}
