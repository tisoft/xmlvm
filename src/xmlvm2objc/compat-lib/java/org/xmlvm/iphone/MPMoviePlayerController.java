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

/**
 * Placeholder for video player
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
