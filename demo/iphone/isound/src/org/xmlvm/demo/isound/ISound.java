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

package org.xmlvm.demo.isound;

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

public class ISound extends UIApplicationDelegate implements AVAudioPlayerDelegate {

    private UIButton      button;
    private UISwitch      loopSwitch;
    private boolean       playing = false;
    private AVAudioPlayer audioPlayer;

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        setupUI();
    }

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

        button = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button.setFrame(rect);
        button.setTitle("Start playing ...", UIControlState.Normal);
        button.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                if (playing) {
                    button.setTitle("Start playing ...", UIControlState.Normal);
                    playing = false;
                    audioPlayer.stop();
                } else {
                    button.setTitle("Stop playing ...", UIControlState.Normal);
                    playing = true;
                    audioPlayer.play();
                    audioPlayer.setNumberOfLoops(loopSwitch.isOn() ? -1 : 0);
                }
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(button);

        rect.origin.x = 50;
        rect.origin.y = 280;
        rect.size.height = 20;

        UILabel loopLabel = new UILabel(rect);
        loopLabel.setBackgroundColor(UIColor.clearColor);
        loopLabel.setText("Loop file:");
        mainView.addSubview(loopLabel);

        rect.origin.x = 176;
        rect.origin.y = 277;

        loopSwitch = new UISwitch(rect);
        loopSwitch.setOn(true);
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

    private void initAudioPlayer(String audioFile) {
        NSURL url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource(audioFile, "mp3"));
        NSErrorHolder errorHolder = new NSErrorHolder();
        audioPlayer = AVAudioPlayer.initWithContentsOfURL(url, errorHolder);
        if (audioPlayer == null) {
            System.out.println("Error initializing player: " + errorHolder.description());
        }

        audioPlayer.setNumberOfLoops(-1);
        audioPlayer.setDelegate(this);
    }

    @Override
    public void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean successfully) {
        button.setTitle("Start playing ...", UIControlState.Normal);
        playing = false;
    }

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
        UIApplication.main(args, null, ISound.class);
    }

}
