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

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public abstract class CATransition extends CAAnimation {

    private float              startProgress;
    private float              endProgress;
    private String             type;
    private String             subtype;

    //
    public static final String Fade       = "fade";
    public static final String MoveIn     = "moveIn";
    public static final String Push       = "push";
    public static final String Reveal     = "reveal";
    public static final String FromRight  = "fromRight";
    public static final String FromLeft   = "fromLeft";
    public static final String FromTop    = "fromTop";
    public static final String FromBottom = "fromBottom";


    public static CATransition animation() {
        // TODO: Java implementation
        return null;
    }

    public float getEndProgress() {
        return endProgress;
    }

    public void setEndProgress(float endProgress) {
        this.endProgress = endProgress;
    }

    public float getStartProgress() {
        return startProgress;
    }

    public void setStartProgress(float startProgress) {
        this.startProgress = startProgress;
    }

    public String getSubtype() {
        return subtype;
    }

    public void setSubtype(String subtype) {
        this.subtype = subtype;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
