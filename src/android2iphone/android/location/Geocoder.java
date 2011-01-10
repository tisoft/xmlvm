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

import java.io.IOException;
import java.util.List;
import java.util.Locale;

import android.content.Context;
import android.internal.Assert;

public class Geocoder {

    public Geocoder(Context context, Locale locale) {
        Assert.NOT_IMPLEMENTED();
    }

    public List<Address> getFromLocation(double latitude, double longitude, int maxResults)
            throws IOException {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public List<Address> getFromLocationName(String locationName, int maxResults)
            throws IOException {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
