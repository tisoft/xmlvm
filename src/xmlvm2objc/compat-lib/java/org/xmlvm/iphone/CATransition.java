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
