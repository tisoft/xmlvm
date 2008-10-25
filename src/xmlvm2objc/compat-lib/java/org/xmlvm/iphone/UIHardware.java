
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;


public class UIHardware
{

    public static CGRect fullScreenApplicationContentRect()
    {
        float offset = Simulator.getStatusBarHeight();
        return new CGRect(0.0f, offset, 320.0f, 480.0f - offset);
    }



    public static void _setStatusBarHeight(float height)
    {
        Simulator.setStatusBarHeight(height);
    }

}
