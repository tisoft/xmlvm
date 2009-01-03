package android.widget;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
public class AbsoluteLayout extends ViewGroup {

	
	
	public AbsoluteLayout(Context c)
	{
		CGRect rect = UIScreen.fullScreenApplicationContentRect();
	     /* Initialize the main view */
        rect.origin.x = rect.origin.y = 0;
        mainView = new AbsView(rect);
        
	}
	
	public static class LayoutParams extends ViewGroup.LayoutParams
	{
		public int width;
		public int height;
		public int x;
		public int y;
		
		public LayoutParams(int width, int height, int x, int y)
		{
		this.width = width;
		this.height = height;
		this.x = x;
		this.y = y;
		}
		
	}
	
	
}

class AbsView extends UIView
{
	public AbsView(CGRect rect)
	{
		super(rect);
	}
    public void drawRect(CGRect rect)
    {
    	//Todo is this foobar on iphone?
    	float black[] = {0, 0, 0, 1};
 	    CGContext ctx = CGContext.UICurrentContext();
 	    ctx.setFillColor(black);
 	    ctx.fillRect(rect);
 	    super.drawRect(rect);
    }
}
