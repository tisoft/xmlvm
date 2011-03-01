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

import java.util.Map;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class MKPlacemark extends MKAnnotation {

    private CLLocationCoordinate2D    coordinate;
    private final Map<String, Object> addressDictionary;
    private final String              thoroughfare;
    private final String              subThoroughfare;
    private final String              locality;
    private final String              subLocality;
    private final String              administrativeArea;
    private final String              subAdministrativeArea;
    private final String              postalCode;
    private final String              country;
    private final String              countryCode;


    public MKPlacemark(CLLocationCoordinate2D coordinate, Map addressDictionary) {
        this.coordinate = coordinate;
        this.addressDictionary = addressDictionary;

        // TODO: Java implementation
        this.thoroughfare = "";
        this.subThoroughfare = "";
        this.locality = "";
        this.subLocality = "";
        this.administrativeArea = "";
        this.subAdministrativeArea = "";
        this.postalCode = "";
        this.country = "";
        this.countryCode = "";
    }

    public Map<String, Object> getAddressDictionary() {
        return addressDictionary;
    }

    public String getAdministrativeArea() {
        return administrativeArea;
    }

    public String getCountry() {
        return country;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public String getLocality() {
        return locality;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public String getSubAdministrativeArea() {
        return subAdministrativeArea;
    }

    public String getSubLocality() {
        return subLocality;
    }

    public String getSubThoroughfare() {
        return subThoroughfare;
    }

    public String getThoroughfare() {
        return thoroughfare;
    }

    @Override
    public CLLocationCoordinate2D getCoordinate() {
        return coordinate;
    }

    @Override
    public String title() {
        return locality;
    }

    @Override
    public String subtitle() {
        return coordinate.toString();
    }
}
