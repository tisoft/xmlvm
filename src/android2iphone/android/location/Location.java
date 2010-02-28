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

package android.location;

import android.internal.Assert;

public class Location {

    public Location(String provider) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLongitude(double longitude) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLatitude(double latitude) {
        Assert.NOT_IMPLEMENTED();
    }
    
    public long getTime() {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }
    
    public boolean hasAccuracy() {
        Assert.NOT_IMPLEMENTED();
        return false;
    }
    
    public float getAccuracy() {
        Assert.NOT_IMPLEMENTED();
        return 0.0f;
    }
    
    public double getLongitude() {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }
    
    public double getLatitude() {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }
    
    public String getProvider() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
