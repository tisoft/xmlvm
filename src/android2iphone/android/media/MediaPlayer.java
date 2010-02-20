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
import java.io.IOException;

import org.xmlvm.iphone.AVAudioPlayer;
import org.xmlvm.iphone.NSErrorHolder;

public class MediaPlayer {

    private AVAudioPlayer player  = null;
    private boolean       looping = false;

    public boolean isPlaying() {
        return player != null && player.isPlaying();
    }

    public void setDataSource(FileDescriptor fd, long offset, long length) throws IOException {
        NSErrorHolder error = new NSErrorHolder();
        player = AVAudioPlayer.initWithContentsOfFileDescriptor(fd, offset, length, error);
        if (player == null) {
            throw new IOException(error.description());
        }

        player.setNumberOfLoops(looping ? -1 : 0);
    }

    public void setAudioStreamType(int streamtype) {
        // There's nothing appropriate on the iPhone so this implementation
        // will remain empty
    }

    public void prepare() {
        if (player == null) {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void setLooping(boolean looping) {
        this.looping = looping;
        if (player != null) {
            player.setNumberOfLoops(looping ? -1 : 0);
        }
    }

    public void setVolume(float leftVolume, float rightVolume) {
        if (player != null) {
            player.setVolume((leftVolume + rightVolume) / 2.0f);
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void start() throws IllegalStateException {
        if (player != null) {
            player.play();
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void stop() {
        if (player != null) {
            player.setCurrentTime(0.0);
            player.stop();
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void pause() {
        if (player != null) {
            player.stop();
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void seekTo(int msec) {
        if (player != null) {
            player.setCurrentTime(Math.round(msec / 1000));
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    public void release() {
        player = null;
    }
}
