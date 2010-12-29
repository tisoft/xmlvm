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
