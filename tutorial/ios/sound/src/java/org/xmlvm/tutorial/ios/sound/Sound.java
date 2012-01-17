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

package org.xmlvm.tutorial.ios.sound;

import org.xmlvm.iphone.AVAudioPlayer;
import org.xmlvm.iphone.AVAudioPlayerDelegate;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSError;
import org.xmlvm.iphone.NSErrorHolder;
import org.xmlvm.iphone.NSURL;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UISwitch;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates the use of the AudioPlayer. A button is provided 
 * which allows the user to start and stop the audio playback. A switch is provided to 
 * enable/disable the looping of playback. The application needs to implement the
 * AVAudioPlayerDelegate which provides callbacks to respond to audio errors and completion
 * of audio playback.
 */
public class Sound extends UIApplicationDelegate implements AVAudioPlayerDelegate {

    private UIButton      button;
    private UISwitch      loopSwitch;
    private boolean       playing = false;
    private AVAudioPlayer audioPlayer;

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        setupUI();
    }

    /*
     * This method is called to setup the UI required for the application
     */
    private void setupUI() {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        mainView.setBackgroundColor(UIColor.lightGrayColor);
        window.addSubview(mainView);

        rect.origin.x = 50;
        rect.origin.y = 350;
        rect.size.width = 220;
        rect.size.height = 50;

        /*
         * Create a button which allows the user to start or stop the audio playback
         */
        button = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button.setFrame(rect);
        button.setTitle("Start playing ...", UIControlState.Normal);
        
        /*
         * Add a UIControlDelegate to the button and register for necessary events.
         * When the UIControlEvent.TouchUpInside event occurs, the raiseEvent() method
         * is invoked.
         */
        button.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                
                /*
                 * If the audio playback is playing then stop then stop the playback
                 * using stop() and set the appropriate text on the button
                 */
                if (playing) {
                    button.setTitle("Start playing ...", UIControlState.Normal);
                    playing = false;
                    audioPlayer.stop();
                } else {
                    /*
                     * If the audio playback is not playing then start the audio playback
                     * using play(). Set the number of loops that the audio stream should loop for.
                     * '0' indicates no looping. Any positive number indicates the number of times the
                     * audio stream should play again. Any negative number indicates indefinite looping.
                     */
                    button.setTitle("Stop playing ...", UIControlState.Normal);
                    playing = true;
                    audioPlayer.play();
                    audioPlayer.setNumberOfLoops(loopSwitch.isOn() ? -1 : 0);
                }
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(button);

        /*
         * Add a label to the loop switch provided
         */
        rect.origin.x = 50;
        rect.origin.y = 280;
        rect.size.height = 20;

        UILabel loopLabel = new UILabel(rect);
        loopLabel.setBackgroundColor(UIColor.clearColor);
        loopLabel.setText("Loop file:");
        mainView.addSubview(loopLabel);

        rect.origin.x = 176;
        rect.origin.y = 277;

        /*
         * A UIswitch class provides the On/Off functionality. Here, the looping
         * of the audio playback is managed using a switch. When the switch is 'On' it 
         * indicates that looping is enabled. When the Switch is 'Off' it indicates that
         * the looping is not enabled.
         */
        loopSwitch = new UISwitch(rect);
        loopSwitch.setOn(true);
        
        /*
         * Add an UIControlDelegate to the UISwitch object and register for the
         * UIControlEvent.ValueChanged which is generated when a user flips the 
         * switch control. Set the number of loops based on whether the switch was 
         * turned On/Off
         */
        loopSwitch.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                audioPlayer.setNumberOfLoops(loopSwitch.isOn() ? -1 : 0);
            }

        }, UIControlEvent.ValueChanged);
        mainView.addSubview(loopSwitch);

        initAudioPlayer("rain_thunders");

        window.makeKeyAndVisible();
    }

    /*
     * This method is called to initialize the AVAudioPlayer object
     */
    private void initAudioPlayer(String audioFile) {
        
        /*
         * A NSBundle object represents location in file system. Using pathForResource(), 
         * a file with specified extension and name can be looked for in a given bundle directory.
         * Here, mainBundle() returns NSBundle object corresponding to the directory where 
         * application executable is residing.
         */
        NSURL url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource(audioFile, "mp3"));
        NSErrorHolder errorHolder = new NSErrorHolder();
        
        /*
         * Initialize an audio player to play the audio file
         */
        audioPlayer = AVAudioPlayer.audioPlayerWithContentsOfURL(url, errorHolder);
        if (audioPlayer == null) {
            System.out.println("Error initializing player: " + errorHolder.description());
        }

        /*
         * Set indefinite number of loops
         */
        audioPlayer.setNumberOfLoops(-1);
        audioPlayer.setDelegate(this);
    }

    /*
     * Callback called when audio playback has finshed playing. Reset the button
     * when the audio playback has finished playing.
     */
    @Override
    public void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean successfully) {
        button.setTitle("Start playing ...", UIControlState.Normal);
        playing = false;
    }

    /*
     * Called when a audio decoding error occurs during the playback. In
     * this application, this error is not handled.
     */
    @Override
    public void audioPlayerDecodeErrorDidOccur(AVAudioPlayer player, NSError error) {
    }

    @Override
    public void audioPlayerBeginInterruption(AVAudioPlayer player) {
    }

    @Override
    public void audioPlayerEndInterruption(AVAudioPlayer player) {
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Sound.class);
    }

}
