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

package android.media;

import java.io.FileDescriptor;

import android.internal.Assert;

public class MediaPlayer {

    public boolean isPlaying() {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public void setDataSource(FileDescriptor fd, long offset, long length) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setAudioStreamType(int streamtype) {
        Assert.NOT_IMPLEMENTED();
    }

    public void prepare() {
        Assert.NOT_IMPLEMENTED();
    }

    public void setLooping(boolean looping) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setVolume(float leftVolume, float rightVolume) {
        Assert.NOT_IMPLEMENTED();
    }

    public void start() {
        Assert.NOT_IMPLEMENTED();
    }

    public void stop() {
        Assert.NOT_IMPLEMENTED();
    }

    public void release() {
        Assert.NOT_IMPLEMENTED();
    }
}
