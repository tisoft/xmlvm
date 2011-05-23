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

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

import javazoom.jlgui.basicplayer.BasicController;
import javazoom.jlgui.basicplayer.BasicPlayer;
import javazoom.jlgui.basicplayer.BasicPlayerEvent;
import javazoom.jlgui.basicplayer.BasicPlayerException;
import javazoom.jlgui.basicplayer.BasicPlayerListener;

@XMLVMSkeletonOnly
public class AVAudioPlayer extends NSObject {

    @XMLVMIgnore
    class AVAudioPlayerListener implements BasicPlayerListener {

        private AVAudioPlayer avAudioPlayer;


        AVAudioPlayerListener(AVAudioPlayer avAudioPlayer) {
            this.avAudioPlayer = avAudioPlayer;
        }

        @Override
        @XMLVMIgnore
        public void opened(Object arg0, Map arg1) {
        }

        @Override
        @XMLVMIgnore
        public void progress(int arg0, long arg1, byte[] arg2, Map arg3) {
        }

        @Override
        @XMLVMIgnore
        public void setController(BasicController arg0) {
        }

        @Override
        @XMLVMIgnore
        public void stateUpdated(BasicPlayerEvent event) {
            if (event.getCode() == BasicPlayerEvent.STOPPED) {
                try {
                    if (!stopRequested) {
                        if (url != null) {
                            player.open(url.xmlvmGetURL());
                        } else {
                            ByteArrayInputStream bis = new ByteArrayInputStream(data);
                            player.open(bis);
                        }
                    }

                    if (!stopRequested && loopsLeft != 0) {
                        if (loopsLeft > 0) {
                            loopsLeft--;
                        }
                        player.play();
                    } else {
                        playing = false;
                        if (delegate != null) {
                            delegate.audioPlayerDidFinishPlaying(avAudioPlayer, true);
                        }
                    }
                } catch (BasicPlayerException exc) {
                    System.err.println("Unable to start next playback loop: " + exc.getMessage());
                    exc.printStackTrace();

                }
            }

        }
    };


    private int                   numberOfLoops = 0;
    private int                   loopsLeft     = 0;
    private BasicPlayer           player        = null;
    private boolean               stopRequested = false;
    private NSURL                 url           = null;
    private NSData                nsData        = null;
    private AVAudioPlayerDelegate delegate      = null;
    private boolean               playing       = false;
    private byte[]                data          = null;


    private AVAudioPlayer(NSURL url) throws BasicPlayerException {
        this.url = url;
        player = new BasicPlayer();
        player.addBasicPlayerListener(new AVAudioPlayerListener(this));

        // If this marker appears in the path, then the resource needs to be
        // loaded out of a JAR file. We expect it in this case to be the JAR
        // file the app is run from.
        final String IN_JAR_MARKER = ".jar!";

        String urlStr = url.toString();
        // If the URL appears to be inside the jar the app is run from, then
        // load it via getResourceAsStream().
        if (urlStr.contains(IN_JAR_MARKER)) {
            int startOfResource = urlStr.indexOf(IN_JAR_MARKER) + IN_JAR_MARKER.length();
            player.open(AVAudioPlayer.class.getResourceAsStream(urlStr.substring(startOfResource)));
        } else {
            player.open(this.url.xmlvmGetURL());
        }
    }

    private AVAudioPlayer(NSData nsData) throws BasicPlayerException {
        this.nsData = nsData;
        player = new BasicPlayer();
        player.addBasicPlayerListener(new AVAudioPlayerListener(this));

        data = this.nsData.getBytes();
        ByteArrayInputStream bis = new ByteArrayInputStream(data, 0, this.nsData.length());
        player.open(new DataInputStream(bis));
    }

    private AVAudioPlayer(FileDescriptor fd, long offset, long length) throws BasicPlayerException,
            IOException {

        FileInputStream fis = new FileInputStream(fd);
        if (offset > 0) {
            fis.skip(offset);
        }

        data = new byte[(int) length];
        fis.read(data, 0, (int) length);

        ByteArrayInputStream bis = new ByteArrayInputStream(data, 0, (int) length);
        player = new BasicPlayer();
        player.addBasicPlayerListener(new AVAudioPlayerListener(this));
        player.open(new BufferedInputStream(bis));
    }

    /**
     * 
     * Creates a new AVAudioPlayer based on a provided URL.
     * audioPlayerWithContentsOfURL is not part of the original Cocoa class.
     * Cocoa instead uses constructors to create new AVAudioPlayers which can
     * return nil in case of errors. Since this is not possible in Java this is
     * mapped to a static factory method following the naming conventions of
     * other Cocoa classes (i.e NSData.initWithBytes is a constructor whereas
     * NSData.dataWithBytes is the corresponding factory method.).
     * 
     * @param url
     *            The URL of the file to be played by the AVAudioPlayer.
     * 
     * @param error
     *            Output parameters providing error information. If no error
     *            occurs the encapsulated error value is null.
     * 
     * @return The created AVAudioPlayer or null in case of errors.
     * 
     */

    public static AVAudioPlayer audioPlayerWithContentsOfURL(NSURL url, NSErrorHolder error) {
        try {
            AVAudioPlayer player = new AVAudioPlayer(url);
            error.error = null;
            return player;
        } catch (BasicPlayerException exc) {
            error.error = new NSError(exc.getMessage(), -1, null);
            return null;
        }
    }

    /**
     * 
     * Creates a new AVAudioPlayer based on provided sound data.
     * audioPlayerWithData is not part of the original Cocoa class. Cocoa
     * instead uses constructors to create new AVAudioPlayers which can return
     * nil in case of errors. Since this is not possible in Java this is mapped
     * to a static factory method following the naming conventions of other
     * Cocoa classes (i.e NSData.initWithBytes is a constructor whereas
     * NSData.dataWithBytes is the corresponding factory method.).
     * 
     * @param nsData
     *            The sound data to be played by the AVAudioPlayer.
     * 
     * @param error
     *            Output parameters providing error information. If no error
     *            occurs the encapsulated error value is null.
     * 
     * @return The created AVAudioPlayer or null in case of errors.
     * 
     */

    public static AVAudioPlayer audioPlayerWithData(NSData nsData, NSErrorHolder error) {
        try {
            AVAudioPlayer player = new AVAudioPlayer(nsData);
            error.error = null;
            return player;
        } catch (BasicPlayerException exc) {
            error.error = new NSError(exc.getMessage(), -1, null);
            return null;
        }
    }

    public boolean play() {
        boolean success = true;
        try {
            stopRequested = false;
            if (player.getStatus() == BasicPlayer.PAUSED) {
                player.resume();
            } else {
                loopsLeft = numberOfLoops;
                player.play();
            }
            playing = true;
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to start playback: " + exc.getMessage());
            exc.printStackTrace();
            success = false;
        }

        return success;
    }

    public boolean playAtTime(double time) {
        // The Java simulator's player only supports playing from the beginning
        return play();
    }

    public void stop() {
        try {
            stopRequested = true;
            player.stop();
            playing = false;
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to stop playback: " + exc.getMessage());
            exc.printStackTrace();
        }
    }

    public void pause() {
        try {
            player.pause();
            playing = false;
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to pause playback: " + exc.getMessage());
            exc.printStackTrace();
        }
    }

    public void prepareToPlay() {
        // Intentionally left empty
    }

    public int getNumberOfLoops() {
        return this.numberOfLoops;
    }

    public void setNumberOfLoops(int numberOfLoops) {
        this.loopsLeft = numberOfLoops;
        this.numberOfLoops = numberOfLoops;
    }

    public AVAudioPlayerDelegate getDelegate() {
        return this.delegate;
    }

    public void setDelegate(AVAudioPlayerDelegate delegate) {
        this.delegate = delegate;
    }

    public boolean isPlaying() {
        return playing;
    }

    /**
     * 
     * @param currentTime
     *            Unused, as currently only restarting from the beginning is
     *            supported
     */
    public void setCurrentTime(double currentTime) {
        // Currently only restarting from the beginning is supported
        int status = player.getStatus();

        try {
            if (status == BasicPlayer.PLAYING) {
                stop();
            }
            if (url != null) {
                player.open(url.xmlvmGetURL());
            } else {
                ByteArrayInputStream bis = new ByteArrayInputStream(data);
                player.open(bis);
            }

            if (status == BasicPlayer.PLAYING) {
                player.play();
            }
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to restart playback: " + exc.getMessage());
            exc.printStackTrace();
        }
    }

    public double getCurrentTime() {
        // Since setting the current time is not supported getCurrentTime
        // always reports 0.0 (the beginning of the track)
        return 0.0d;
    }

    public void setVolume(float volume) {
        try {
            player.setGain(volume);
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to set volume: " + exc.getMessage());
            exc.printStackTrace();
        }
    }

    public float getVolume() {
        return player.getGainValue();
    }

    public int getNumberOfChannels() {
        // TODO : implement the actual number of channels
        return 2;
    }

    public double getDuration() {
        // TODO : implement the actual duration time
        return 0;
    }

    public NSURL getURL() {
        return url;
    }

    public NSData getData() {
        return nsData;
    }
}
