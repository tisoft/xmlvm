
package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;



public class StatusBar
    extends UIImageView
{

    public StatusBar(CGRect rect)
    {
        super(rect);
        UIImage image = UIImage.imageAtPath("/statusbar.png");
        this.setImage(image);
    }



    public void drawRect(CGRect rect)
    {
        if (viewRect.size.height != 0)
            super.drawRect(rect);
    }



    public void setStatusBarHeight(float newHeight)
    {
        viewRect.size.height = newHeight;
    }



    public float getStatusBarHeight()
    {
        return viewRect.size.height;
    }
}
