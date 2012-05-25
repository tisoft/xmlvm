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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class String extends Object {

    public java.lang.String value;

    public static String    Empty = new String("");


    public String(java.lang.String value) {
        this.value = value;
    }

    public String ToString() {
        return this;
    }

    /*
     * (non-Javadoc)
     * 
     * @see java.lang.Object#toString()
     */
    @Override
    public java.lang.String toString() {
        return value.toString();
    }

    /**
     * @param string
     * @return
     */
    public boolean Equals(String string) {
        // TODO Auto-generated method stub
        return false;
    }

    /**
     * @param i
     * @return
     */
    public char __access(int i) {
        // TODO Auto-generated method stub
        return 0;
    }

    /**
     * @param string
     * @return
     */
    public boolean EndsWith(String string) {
        // TODO Auto-generated method stub
        return false;
    }

    /**
     * @return
     */
    public int getLength() {
        // TODO Auto-generated method stub
        return 0;
    }
}
