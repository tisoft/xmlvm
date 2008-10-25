
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.*;



public class UIWindow
    extends UIView
{


    private UIView contentView;



    public UIWindow(CGRect rect)
    {
        super(rect);
        Simulator.addUIWindow(this);
        contentView = null;
    }



    public void orderFront(UIApplication app)
    {
        // TODO Auto-generated method stub

    }



    public void makeKey(UIApplication app)
    {
        // TODO Auto-generated method stub

    }



    public void _setHidden(boolean b)
    {
        // setVisible(!b);
    }



    public void setContentView(UIView mainView)
    {
        mainView.parent = this;
        contentView = mainView;
    }



    public void drawRect(CGRect r)
    {
        if (contentView != null)
            contentView.drawRect(r);
    }
}
