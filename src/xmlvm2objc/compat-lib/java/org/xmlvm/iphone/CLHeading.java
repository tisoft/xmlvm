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
public class CLHeading extends NSObject {

    private double magneticHeading;
    private double trueHeading;
    private double headingAccuracy;
    private NSDate timestamp;
    private double x;
    private double y;
    private double z;


    private CLHeading() {
    }

    public double getHeadingAccuracy() {
        return headingAccuracy;
    }

    public double getMagneticHeading() {
        return magneticHeading;
    }

    public NSDate getTimestamp() {
        return timestamp;
    }

    public double getTrueHeading() {
        return trueHeading;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getZ() {
        return z;
    }

    public String description() {
        return toString();
    }

    @Override
    public String toString() {
        StringBuilder out = new StringBuilder();
        out.append("magneticHeading ").append(magneticHeading);
        out.append(" trueHeading ").append(trueHeading);
        out.append(" accuracy ").append(headingAccuracy);
        out.append(" x ").append(x);
        out.append(" y ").append(y);
        out.append(" z ").append(z);
        out.append(" @ ").append(timestamp.toString());
        return out.toString();
    }
}
