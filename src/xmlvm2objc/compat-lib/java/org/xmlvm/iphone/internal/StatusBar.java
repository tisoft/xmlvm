
package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;



public class StatusBar
    extends UIImageView
{

	private boolean isHidden;
	private float fullHeight;
	
    public StatusBar(CGRect rect)
    {
        super(rect);
        UIImage image = UIImage.imageAtPath("statusbar.png");
        this.setImage(image);
        isHidden = false;
        fullHeight = frame.size.height;
    }



    public void drawRect(CGRect rect)
    {
        if (frame.size.height != 0)
            super.drawRect(rect);
    }



    public void setStatusBarHidden(boolean flag)
    {
    	isHidden = flag;
        frame.size.height = isHidden ? 0.0f : fullHeight;
    }



    public float getStatusBarHeight()
    {
        return frame.size.height;
    }
}
