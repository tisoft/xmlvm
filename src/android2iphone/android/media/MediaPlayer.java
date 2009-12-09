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
import android.util.Log;

public class MediaPlayer {

    public boolean isPlaying() {
        Log.w("xmlvm", "MediaPlayer.isPlaying() not implemented");
        return false;
    }

    public void setDataSource(FileDescriptor fd, long offset, long length) {
        Log.w("xmlvm", "MediaPlayer.setDataSource() not implemented");
    }

    public void setAudioStreamType(int streamtype) {
        Log.w("xmlvm", "MediaPlayer.setAudioStreamType() not implemented");
    }

    public void prepare() {
        Log.w("xmlvm", "MediaPlayer.prepare() not implemented");
    }

    public void setLooping(boolean looping) {
        Log.w("xmlvm", "MediaPlayer.setLooping() not implemented");
    }

    public void setVolume(float leftVolume, float rightVolume) {
        Log.w("xmlvm", "MediaPlayer.setVolume() not implemented");
    }

    public void start() {
        Log.w("xmlvm", "MediaPlayer.start() not implemented");
    }

    public void stop() {
        Log.w("xmlvm", "MediaPlayer.stop() not implemented");
    }

    public void release() {
        Log.w("xmlvm", "MediaPlayer.release() not implemented");
    }
}
