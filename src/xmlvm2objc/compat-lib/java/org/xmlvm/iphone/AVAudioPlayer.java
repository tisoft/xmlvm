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

import java.io.ByteArrayInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Map;

import javazoom.jlgui.basicplayer.BasicController;
import javazoom.jlgui.basicplayer.BasicPlayer;
import javazoom.jlgui.basicplayer.BasicPlayerEvent;
import javazoom.jlgui.basicplayer.BasicPlayerException;
import javazoom.jlgui.basicplayer.BasicPlayerListener;

public class AVAudioPlayer {

    class Listener implements BasicPlayerListener {

        private AVAudioPlayer avAudioPlayer;


        Listener(AVAudioPlayer avAudioPlayer) {
            this.avAudioPlayer = avAudioPlayer;
        }

        @Override
        public void opened(Object arg0, Map arg1) {
        }

        @Override
        public void progress(int arg0, long arg1, byte[] arg2, Map arg3) {
        }

        @Override
        public void setController(BasicController arg0) {
        }

        @Override
        public void stateUpdated(BasicPlayerEvent event) {
            if (event.getCode() == BasicPlayerEvent.STOPPED) {
                try {
                    if (!stopRequested) {
                        if (url != null) {
                            player.open(url);
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
    private URL                   url           = null;
    private AVAudioPlayerDelegate delegate      = null;
    private boolean               playing       = false;
    private byte[]                data          = null;


    private AVAudioPlayer(URL url) throws BasicPlayerException {
        this.url = url;
        player = new BasicPlayer();
        player.addBasicPlayerListener(new Listener(this));

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
            player.open(this.url);
        }
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
        player.addBasicPlayerListener(new Listener(this));
        player.open(bis);
    }

    public static AVAudioPlayer initWithContentsOfURL(NSURL url, NSErrorHolder error) {
        try {
            AVAudioPlayer player = new AVAudioPlayer(url.getURL());
            error.error = null;
            return player;
        } catch (BasicPlayerException exc) {
            error.error = new NSError(exc.getMessage(), -1, null);
            return null;
        }
    }

    public static AVAudioPlayer initWithContentsOfFileDescriptor(FileDescriptor fd, long offset,
            long length, NSErrorHolder error) {
        try {
            AVAudioPlayer player = new AVAudioPlayer(fd, offset, length);
            error.error = null;
            return player;
        } catch (BasicPlayerException exc) {
            error.error = new NSError(exc.getMessage(), -1, null);
            return null;
        } catch (IOException exc) {
            error.error = new NSError(exc.getMessage(), -1, null);
            return null;
        }
    }

    public void play() {
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
        }
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

    public void setCurrentTime(double currentTime) {
        // Currently only restarting from the beginning is supported
        int status = player.getStatus();

        try {
            if (status == BasicPlayer.PLAYING) {
                stop();
            }
            if (url != null) {
                player.open(url);
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

}
