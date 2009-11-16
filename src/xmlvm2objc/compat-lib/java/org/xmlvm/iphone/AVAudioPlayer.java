package org.xmlvm.iphone;

import java.applet.Applet;
import java.applet.AudioClip;

public class AVAudioPlayer {
    private AudioClip clip;

    public AVAudioPlayer() {
    }

    public void load(String ref) {
        clip = Applet.newAudioClip(Thread.currentThread().getContextClassLoader().getResource(ref));
    }

    public void playSound() {
        clip.stop();
        clip.play();
    }
}
