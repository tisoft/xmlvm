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

import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;

import org.xmlvm.acl.common.subsystems.CommonMediaPlayer;

import android.content.Context;
import android.internal.CommonDeviceAPIFinder;

public class MediaPlayer {

    public static interface OnCompletionListener {
        abstract void onCompletion(MediaPlayer mp);
    }

    private OnCompletionListener onCompletionListener = null;

    private CommonMediaPlayer mediaPlayerAdapter;


    public MediaPlayer() {
        this.mediaPlayerAdapter = CommonDeviceAPIFinder.instance().getMediaPlayer(this);
    }

    public static MediaPlayer create(Context context, int resId) {
        MediaPlayer player = new MediaPlayer();
        player.xmlvmGetMediaPlayerAdapter().create(context, resId);
        return player;
    }

    private CommonMediaPlayer xmlvmGetMediaPlayerAdapter() {
        return this.mediaPlayerAdapter;
    }

    public boolean isPlaying() {
        return this.mediaPlayerAdapter.isPlaying();
    }

    public void setDataSource(FileDescriptor fd, long offset, long length) throws IOException {
        this.mediaPlayerAdapter.setData(fd, offset, length);
    }

    public void setAudioStreamType(int streamtype) {
        // There's nothing appropriate on the iPhone so this implementation
        // will remain empty
    }

    public void prepare() throws IOException {
        this.mediaPlayerAdapter.prepare();
    }

    public void setLooping(boolean looping) {
        this.mediaPlayerAdapter.setLooping(looping);
    }

    public void setVolume(float leftVolume, float rightVolume) {
        this.mediaPlayerAdapter.setVolume(leftVolume, rightVolume);
    }

    public void start() throws IllegalStateException {
        this.mediaPlayerAdapter.start();
    }

    public void stop() {
        this.mediaPlayerAdapter.stop();
    }

    public void pause() {
        this.mediaPlayerAdapter.pause();
    }

    public void seekTo(int msec) {
        this.mediaPlayerAdapter.seekTo(msec);
    }

    public void release() {
        mediaPlayerAdapter.release();
        onCompletionListener = null;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.onCompletionListener = onCompletionListener;
    }

    public OnCompletionListener getOnCompletionListener() {
        return this.onCompletionListener;
    }

}
