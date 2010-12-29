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
