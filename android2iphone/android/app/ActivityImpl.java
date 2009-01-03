package android.app;

import org.xmlvm.iphone.NSNotification;
import org.xmlvm.iphone.UIApplication;


public class ActivityImpl extends UIApplication
{	
	public static ActivityImpl rootApp; 
	public Activity parent; 
	

	public ActivityImpl(Activity parent)
	{
		this.parent = parent;
	}
    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
	   parent.onCreate(null);  
    }

    
    public ActivityImpl()
    {
    
    }

}