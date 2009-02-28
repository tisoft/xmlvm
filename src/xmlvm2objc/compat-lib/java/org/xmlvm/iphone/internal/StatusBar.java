
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
        fullHeight = viewRect.size.height;
    }



    public void drawRect(CGRect rect)
    {
        if (viewRect.size.height != 0)
            super.drawRect(rect);
    }



    public void setStatusBarHidden(boolean flag)
    {
    	isHidden = flag;
        viewRect.size.height = isHidden ? 0.0f : fullHeight;
    }



    public float getStatusBarHeight()
    {
        return viewRect.size.height;
    }
}
