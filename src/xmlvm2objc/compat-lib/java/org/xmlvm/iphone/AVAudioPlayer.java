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

import java.net.URL;
import java.util.Map;

import javazoom.jlgui.basicplayer.BasicController;
import javazoom.jlgui.basicplayer.BasicPlayer;
import javazoom.jlgui.basicplayer.BasicPlayerEvent;
import javazoom.jlgui.basicplayer.BasicPlayerException;
import javazoom.jlgui.basicplayer.BasicPlayerListener;

public class AVAudioPlayer {

    class Listener implements BasicPlayerListener {

        private AVAudioPlayer player;

        Listener(AVAudioPlayer player) {
            this.player = player;
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
                if (!stopRequested && loopsLeft != 0) {
                    if (loopsLeft > 0) {
                        loopsLeft--;
                    }

                    try {
                        controller.open(url);
                        controller.play();
                    } catch (BasicPlayerException exc) {
                        System.err.println("Unable to start next playback loop: "
                                + exc.getMessage());
                        exc.printStackTrace();
                    }
                } else {
                    delegate.audioPlayerDidFinishPlaying(player, true);
                }
            }
        }

    };

    private int                   numberOfLoops = 0;
    private int                   loopsLeft     = 0;
    private BasicController       controller    = null;
    private boolean               stopRequested = false;
    private URL                   url           = null;
    private AVAudioPlayerDelegate delegate      = null;

    private AVAudioPlayer(URL url) throws BasicPlayerException {
        this.url = url;
        BasicPlayer player = new BasicPlayer();
        controller = player;
        player.addBasicPlayerListener(new Listener(this));
        controller.open(this.url);
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

    public void play() {
        try {
            loopsLeft = numberOfLoops;
            stopRequested = false;
            controller.play();
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to start playback: " + exc.getMessage());
            exc.printStackTrace();
        }
    }

    public void stop() {
        try {
            stopRequested = true;
            controller.stop();
        } catch (BasicPlayerException exc) {
            System.err.println("Unable to stop playback: " + exc.getMessage());
            exc.printStackTrace();
        }
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
}
