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
public class CLLocation extends NSObject {

    private CLLocationCoordinate2D coordinate;
    private double                 altitude;
    private double                 horizontalAccuracy;
    private double                 verticalAccuracy;
    private NSDate                 timestamp;
    private double                 speed;
    private double                 course;


    public CLLocation(double latitude, double longitude) {
        coordinate = new CLLocationCoordinate2D(latitude, longitude);
        altitude = 0;
        horizontalAccuracy = 0;
        verticalAccuracy = -1;
        timestamp = NSDate.date();
    }

    public CLLocation(CLLocationCoordinate2D coordinate, double altitude,
            double horizontalAccuracy, double verticalAccuracy, NSDate timestamp) {
        this.coordinate = coordinate;
        this.altitude = altitude;
        this.horizontalAccuracy = horizontalAccuracy;
        this.verticalAccuracy = verticalAccuracy;
        this.timestamp = timestamp;
    }

    public double getAltitude() {
        return altitude;
    }

    public CLLocationCoordinate2D getCoordinate() {
        return coordinate;
    }

    public double getCourse() {
        return course;
    }

    public double getHorizontalAccuracy() {
        return horizontalAccuracy;
    }

    public double getSpeed() {
        return speed;
    }

    public NSDate getTimestamp() {
        return timestamp;
    }

    public double getVerticalAccuracy() {
        return verticalAccuracy;
    }

    public double distanceFromLocation(CLLocation location) {
        double R = 6371000; // m
        double dLat = Math.toRadians(coordinate.latitude - location.coordinate.latitude);
        double dLon = Math.toRadians(coordinate.longitude - location.coordinate.longitude);

        double a = Math.sin(dLat / 2) * Math.sin(dLat / 2)
                + Math.cos(Math.toRadians(coordinate.latitude))
                * Math.cos(Math.toRadians(location.coordinate.latitude)) * Math.sin(dLon / 2)
                * Math.sin(dLon / 2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        double d = R * c;
        return d;
    }
}
