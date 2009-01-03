package org.xmlvm.iphone;

public class UIAccelerometer 
{
	public void setUpdateInterval(double i)
	{
		
	}
	IAccelerated toNotify; 
	public void setDelegate(IAccelerated app)
	{
		this.toNotify = app;
	}
	
	public void Accelerated(float x, float y, float z)
	{
		this.toNotify.OnAccelerate(x, y, z);
	}
	
}
