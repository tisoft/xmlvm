
package org.xmlvm.iphone.internal;

import javax.swing.JPanel;

import org.xmlvm.iphone.IAccelerated;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;



public class Simulator
{

    static public boolean       initialized = false;
    static private SimulatorGUI simulatorGUI;



    private Simulator()
    {
    }



    static public void setGUI(SimulatorGUI gui)
    {
        simulatorGUI = gui;
    }



    static public SimulatorGUI getGUI()
    {
        return simulatorGUI;
    }



    static public ImageLoader getImageLoader()
    {
        return simulatorGUI.getImageLoader();
    }



    static public void redrawDisplay()
    {
        simulatorGUI.redrawDisplay();
    }



    public static void redrawDisplay(int x, int y, int width, int height)
    {
        simulatorGUI.redrawDisplay(x, y, width, height);
    }



    static public void addUIWindow(UIWindow newWindow)
    {
        simulatorGUI.addUIWindow(newWindow);
    }



    static public void addGestureListener(GestureListener listener)
    {
        simulatorGUI.addGestureListener(listener);
    }



    static public void addKeyListener(UIView listener)
    {
        simulatorGUI.addKeyListener(listener);
    }



    static public void setStatusBarHeight(float newHeight)
    {
        simulatorGUI.setStatusBarHeight(newHeight);
    }



    static public float getStatusBarHeight()
    {
        return simulatorGUI.statusBar.getStatusBarHeight();
    }



    public static JPanel getDisplay()
    {
        return simulatorGUI.getDisplay();
    }



//    static public void setAccelerated(float xAxis, float yAxis, float zAxis)
//    {
//   
//    	if(UIApplication.theApplication instanceof IAccelerated  )
//    	{
//    	 	IAccelerated accel = (IAccelerated) UIApplication.theApplication;
//        	accel.OnAccelerate(xAxis, yAxis, zAxis);
//        	simulatorGUI.setAccelerated(xAxis, yAxis, zAxis);
//    	}
//    }
}
