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
 * Placeholder for video player
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class MPMoviePlayerController extends NSObject {

    private NSURL   contentURL;
    private UIColor backgroundColor;
    private double  initialPlaybackTime = 0;
    private int     scalingMode;
    private int     movieControlMode;

    private MPMoviePlayerController(NSURL contentURL) {
        // TODO : Java implementation
    }

    public static MPMoviePlayerController initWithContentURL(NSURL contentURL) {
        return new MPMoviePlayerController(contentURL);
    }

    public void play() {
        // TODO : Java implementation
    }

    public void stop() {
        // TODO : Java implementation
    }

    public NSURL getContentURL() {
        return contentURL;
    }

    public UIColor getBackgroundColor() {
        return backgroundColor;
    }

    public void setBackgroundColor(UIColor backgroundColor) {
        this.backgroundColor = backgroundColor;
    }

    public double getInitialPlaybackTime() {
        return initialPlaybackTime;
    }

    public void setInitialPlaybackTime(double initialPlaybackTime) {
        this.initialPlaybackTime = initialPlaybackTime;
    }

    public int getScalingMode() {
        return scalingMode;
    }

    public void setScalingMode(int MPMovieScalingMode) {
        this.scalingMode = MPMovieScalingMode;
    }

    public int getMovieControlMode() {
        return movieControlMode;
    }

    public void setMovieControlMode(int MPMovieControlMode) {
        this.movieControlMode = MPMovieControlMode;
    }
}
