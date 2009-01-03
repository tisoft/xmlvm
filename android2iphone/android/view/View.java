package android.view;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIView;


public class View {

	public UIView mainView;
	public ViewGroup.LayoutParams curLayout; 
	public void invalidate()
	{
		mainView.setNeedsDisplay();
	}
	public void setLayoutParams(ViewGroup.LayoutParams l)
	{
		curLayout = l;
	}
}
