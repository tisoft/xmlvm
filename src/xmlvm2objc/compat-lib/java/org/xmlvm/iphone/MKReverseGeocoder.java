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

@XMLVMSkeletonOnly
public class MKReverseGeocoder extends NSObject {

    private MKReverseGeocoderDelegate    delegate;
    private final CLLocationCoordinate2D coordinate;
    private final MKPlacemark            placemark;
    private boolean                      querying;


    public MKReverseGeocoder(CLLocationCoordinate2D coordinate) {
        this.coordinate = coordinate;

        // TODO: Java implementation
        placemark = null;
    }

    public CLLocationCoordinate2D getCoordinate() {
        return coordinate;
    }

    public MKPlacemark getPlacemark() {
        return placemark;
    }

    public boolean isQuerying() {
        return querying;
    }

    public MKReverseGeocoderDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(MKReverseGeocoderDelegate delegate) {
        this.delegate = delegate;
    }

    public void start() {
        // TODO: Java implementation
    }

    public void cancel() {
        // TODO: Java implementation
    }
}
