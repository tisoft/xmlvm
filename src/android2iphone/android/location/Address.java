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

import java.util.Locale;

import android.internal.Assert;

public class Address {

    public Address(Locale locate) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setAddressLine(int index, String line) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLocality(String locality) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setPostalCode(String postalCode) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setCountryName(String countryName) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLongitude(double longitude) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLatitude(double latitude) {
        Assert.NOT_IMPLEMENTED();
    }
    
    public String getAddressLine(int index) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
    
    public String getPostalCode() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
    
    public String getLocality() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
    
    public double getLongitude() {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }
    
    public double getLatitude() {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }
}
