package android.app;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSNotification;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIScreen;

import org.xmlvm.iphone.UIWindow;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;

 
public class Activity extends ContextThemeWrapper
{	
	public UIWindow window;
	public CGRect rect;
	public ActivityImpl myIphoneWrapper;
	protected void onCreate(Bundle savedInstanceState)
	{
	   rect = UIScreen.fullScreenApplicationContentRect();

       /* Initialize the main window */
       window = new UIWindow(rect);
       window.orderFront(this.myIphoneWrapper);
       window.makeKey(this.myIphoneWrapper);
       window._setHidden(false);
	}
	public View mainView;
	public void setContentView(View view)
	{
		mainView = view;  
		window.setContentView(view.mainView);	
	}
	
	
}

