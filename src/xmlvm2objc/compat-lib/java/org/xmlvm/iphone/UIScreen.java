
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;


public class UIScreen
{
	CGRect bounds;
	CGRect applicationFrame;
	
	
	public UIScreen()
	{
		bounds = new CGRect(0.0f, 0.0f, 320.0f, 480.0f);
        float offset = Simulator.getStatusBarHeight();
		applicationFrame = new CGRect(0.0f, offset, 320.0f, 480.0f - offset);
	}

	
	public static UIScreen mainScreen()
	{
		return new UIScreen();
	}
	
	
	public CGRect bounds()
	{
		return new CGRect(this.bounds);
	}
	
	
	public CGRect applicationFrame()
	{
		return new CGRect(this.applicationFrame);
	}
}
