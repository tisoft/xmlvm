package org.xmlvm.demo.ifireworks;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;

public class Const {

    static {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        HEIGHT = (int) rect.size.height;
        WIDTH = (int) rect.size.width;
    }
    
    static int         HEIGHT;
    static int         WIDTH;

    final static int   BOMB_COUNT      = 6;
    final static int   SPARKS_PER_BOMB = 10;

    final static int   IMAGE_SIZE      = 15;

    final static float MAX2V           = 70.0f;
    final static float T               = 0.3f;
    final static float G               = 9.81f;
    final static float DV              = T * G;
}
