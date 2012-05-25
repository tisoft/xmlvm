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

package org.xmlvm.acl.ios.subsystems;

import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;

import org.xmlvm.acl.common.subsystems.CommonMediaPlayer;
import org.xmlvm.iphone.AVAudioPlayer;
import org.xmlvm.iphone.AVAudioPlayerDelegate;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSError;
import org.xmlvm.iphone.NSErrorHolder;
import org.xmlvm.iphone.NSMutableData;

import android.content.Context;
import android.media.MediaPlayer;

/**
 *
 */
public class IPhoneMediaPlayer implements CommonMediaPlayer, AVAudioPlayerDelegate {
    
    private static final int     BUF_SIZE             = 32767;
    private boolean              looping              = false;
    private WeakReference<MediaPlayer> mediaPlayer;
    private double                     currentPosition = 0.0d;


    public IPhoneMediaPlayer(MediaPlayer mediaPlayer) {
        this.mediaPlayer = new WeakReference<MediaPlayer>(mediaPlayer);
    }


    private AVAudioPlayer player = null;
    private NSData        data   = null;


    @Override
    public void audioPlayerBeginInterruption(AVAudioPlayer player) {
    }

    @Override
    public void audioPlayerDecodeErrorDidOccur(AVAudioPlayer player, NSError error) {
    }

    @Override
    public void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean successfully) {
        if (mediaPlayer.get().getOnCompletionListener() != null) {
            mediaPlayer.get().getOnCompletionListener().onCompletion(mediaPlayer.get());
        }
    }

    @Override
    public void audioPlayerEndInterruption(AVAudioPlayer player) {
    }

    @Override
    public void release() {
        if (player != null) {
            player.stop();
            player.setDelegate(null);
            player = null;
        }

        data = null;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#prepare()
     */
    @Override
    public void prepare() {
        if (player == null) {
            throw new IllegalStateException("Player not initialized");
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#setLooping(boolean)
     */
    @Override
    public void setLooping(boolean looping) {
        if (player != null) {
            player.setNumberOfLoops(looping ? -1 : 0);
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#setVolume(float, float)
     */
    @Override
    public void setVolume(float leftVolume, float rightVolume) {
        if (player != null) {
            player.setVolume((leftVolume + rightVolume) / 2.0f);
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#start()
     */
    @Override
    public void start() {
        if (player != null) {
            if (currentPosition != 0.0d) {
                player.setCurrentTime(currentPosition);
            }

            player.play();
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    private NSData readData(InputStream is, long offset, long length) {
        long remaining = length;
        NSMutableData nsData = new NSMutableData();
        try {

            if (offset > 0) {
                is.skip(offset);
            }

            int bytesRead;
            do {
                int toRead = remaining == -1 ? BUF_SIZE : (int) Math.min(BUF_SIZE, remaining);
                byte[] b = new byte[toRead];
                bytesRead = is.read(b, 0, toRead);

                if (bytesRead > 0) {
                    nsData.appendBytes(b);
                }

                if (remaining > 0) {
                    remaining -= bytesRead;
                }
            } while (bytesRead > 0);
        } catch (IOException e) {
            // Do nothing, just return what we've read so far
        }

        return nsData;
    }

    @Override
    public void seekTo(int msec) {
        if (player != null) {
            currentPosition = Math.round(msec / 1000);

            if (player.isPlaying()) {
                player.setCurrentTime(currentPosition);
            }
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#pause()
     */
    @Override
    public void pause() {
        if (player != null) {
            player.stop();
            currentPosition = player.getCurrentTime();

            // Create new player
            try {
                createPlayer();
            } catch (IOException exc) {
                // Should not happen since all data has already been loaded
            }
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#stop()
     */
    @Override
    public void stop() {
        if (player != null) {
            player.stop();
            currentPosition = 0.0d;

            // Create new player
            try {
                createPlayer();
            } catch (IOException exc) {
                // Should not happen since all data has already been loaded
            }
        } else {
            throw new IllegalStateException("Player not initialized");
        }
    }

    private void createPlayer() throws IOException {
        NSErrorHolder error = new NSErrorHolder();
        player = AVAudioPlayer.audioPlayerWithData(data, error);
        if (player == null) {
            throw new IOException(error.description());
        }

        player.setNumberOfLoops(looping ? -1 : 0);
        player.setDelegate(this);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.adapter.MediaPlayerAdapter#isPlaying()
     */
    @Override
    public boolean isPlaying() {
        return player != null && player.isPlaying();
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.xmlvm.common.adapter.MediaPlayerAdapter#create(android.content.Context
     * , int)
     */
    @Override
    public void create(Context context, int resId) {
        InputStream is = context.getResources().openRawResource(resId);
        data = readData(is, 0, -1);

        try {
            is.close();
        } catch (IOException exc) {
            // Nothing to do here
        }

        try {
            createPlayer();
        } catch (IOException exc) {
            player = null;

        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.xmlvm.common.adapter.MediaPlayerAdapter#setData(java.io.FileDescriptor
     * , long, long)
     */
    @Override
    public void setData(FileDescriptor fd, long offset, long length) throws IOException {
        FileInputStream fis = new FileInputStream(fd);
        data = readData(fis, offset, length);
        fis.close();
        createPlayer();
    }
}
