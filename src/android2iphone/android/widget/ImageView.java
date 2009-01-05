package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;


public class ImageView extends View {

	public void setImageResource(int resId)
	{
		
	}

	protected OneImageView myImage;
	
	public void setLayoutParams(ViewGroup.LayoutParams l)
	{
		super.setLayoutParams(l);
		AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams)l;
		int width = a.width;
		int height = a.height;
		
		if(width == LayoutParams.WRAP_CONTENT)
		{
		width = 15;
		}
		if(height == LayoutParams.WRAP_CONTENT)
		{
		height = 15;
		}
		
		
		myImage.SetBounds(new CGRect(a.x,a.y,width,height));
		myImage.setFrame(new CGRect(a.x,a.y,width,height));
		
	}
	public ImageView(Context c)
	{	
		myImage = new OneImageView(((Activity)c).rect);
		this.mainView = myImage;
	}
}

class OneImageView
extends UIImageView
{

	void setNeedsUpdate()
	{
		this.setNeedsDisplayInRect(myLoc);
	}
	UIImage _img;

	OneImageView(CGRect windowRect)
	{
		super(windowRect);
	    
		//TODO A little kludge until Joshua cleans up resource mapping
		double rand = (Math.random() * 4);
        if (rand < 1) {
            _img = UIImage.imageAtPath("star1.png");
        }
        else if (rand < 2) {
            _img = UIImage.imageAtPath("star2.png");
        }
        else if (rand < 3) {
            _img = UIImage.imageAtPath("star3.png");
        }
        else {
            _img = UIImage.imageAtPath("star4.png");
        }
		
	    setImage(_img);
	}
	
	void SetBounds(CGRect bounds )
	{
	this.myLoc = bounds;
	}
	private CGRect myLoc = new CGRect(20,20,15,15);


	public void drawRect(CGRect rect)
	{
	   
	    CGRect toDraw = myLoc;
	    _img.draw1PartImageInRect(toDraw);
	    
	}
}