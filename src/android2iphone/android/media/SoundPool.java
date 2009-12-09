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

import android.content.res.AssetFileDescriptor;
import android.util.Log;

public class SoundPool {

    public SoundPool(int maxStreams, int streamType, int srcQuality) {
        Log.w("xmlvm", "SoundPool(int,int,int) not implemented");
    }

    public int load(AssetFileDescriptor afd, int priority) {
        Log.w("xmlvm", "SoundPool.load() not implemented");
        return 0;
    }

    public final int play(int soundID, float leftVolume, float rightVolume, int priority, int loop,
            float rate) {
        Log.w("xmlvm", "SoundPool.play() not implemented");
        return 0;
    }

    public final void stop(int streamID) {
        Log.w("xmlvm", "SoundPool.stop() not implemented");
    }
}
