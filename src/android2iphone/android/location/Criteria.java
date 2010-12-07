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

/**
 * Criteria not supported under iPhone
 * 
 * @author teras
 */
public class Criteria {

    public static final int NO_REQUIREMENT = 0;
    public static final int ACCURACY_FINE = 1;
    public static final int ACCURACY_COARSE = 2;
    public static final int POWER_HIGH = 3;
    public static final int POWER_MEDIUM = 2;
    public static final int POWER_LOW = 1;
    private int accuracy = NO_REQUIREMENT;
    private int powerRequirement = NO_REQUIREMENT;
    private boolean altitudeRequired = false;
    private boolean bearingRequired = false;
    private boolean costAllowed = false;
    private boolean speedRequired = false;

    public Criteria() {
    }

    public Criteria(Criteria criteria) {
        this.accuracy = criteria.accuracy;
        this.powerRequirement = criteria.powerRequirement;
        this.altitudeRequired = criteria.altitudeRequired;
        this.bearingRequired = criteria.bearingRequired;
        this.costAllowed = criteria.costAllowed;
        this.speedRequired = criteria.speedRequired;
    }

    public int getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(int accuracy) {
        this.accuracy = accuracy;
    }

    public boolean isAltitudeRequired() {
        return altitudeRequired;
    }

    public void setAltitudeRequired(boolean altitudeRequired) {
        this.altitudeRequired = altitudeRequired;
    }

    public boolean isBearingRequired() {
        return bearingRequired;
    }

    public void setBearingRequired(boolean bearingRequired) {
        this.bearingRequired = bearingRequired;
    }

    public boolean isCostAllowed() {
        return costAllowed;
    }

    public void setCostAllowed(boolean costAllowed) {
        this.costAllowed = costAllowed;
    }

    public int getPowerRequirement() {
        return powerRequirement;
    }

    public void setPowerRequirement(int powerRequirement) {
        this.powerRequirement = powerRequirement;
    }

    public boolean isSpeedRequired() {
        return speedRequired;
    }

    public void setSpeedRequired(boolean speedRequired) {
        this.speedRequired = speedRequired;
    }
}
