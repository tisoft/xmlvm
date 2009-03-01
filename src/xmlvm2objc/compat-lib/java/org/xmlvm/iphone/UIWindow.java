
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.*;



public class UIWindow
    extends UIView
{


    public UIWindow(CGRect rect)
    {
        super(rect);
        Simulator.addUIWindow(this);
    }



	public void makeKeyAndVisible()
	{
		// TODO Auto-generated method stub
	}
}
