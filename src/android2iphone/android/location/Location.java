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

public class Location {

    private String provider;
    private double longitude = 0;
    private double latitude = 0;
    private double altitude = 0;
    private float accuracy = 0;
    private float bearing = 0;
    private float speed = 0;
    private boolean hasAltitude = false;
    private boolean hasSpeed = false;
    private boolean hasBearing = false;

    public Location(String provider) {
        this.provider = provider;
    }

    public boolean hasAltitude() {
        return hasAltitude;
    }

    public double getAltitude() {
        return altitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
        hasAltitude = true;
    }

    public boolean hasBearing() {
        return hasBearing;
    }

    public float getBearing() {
        return bearing;
    }

    public void setBearing(float bearing) {
        this.bearing = bearing;
        hasBearing = true;
    }

    public boolean hasSpeed() {
        return hasSpeed;
    }

    public float getSpeed() {
        return speed;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
        hasSpeed = true;
    }

    public float getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(float accuracy) {
        this.accuracy = accuracy;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }
}
