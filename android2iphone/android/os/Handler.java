package android.os;

import org.xmlvm.iphone.NSTimer;

public class Handler {


	Runnable toRun; 
	public void run(NSTimer timer)
	{
		toRun.run();
		
	}
 	public final boolean postDelayed(Runnable r, long delayMillis)
 	{
 		this.toRun = r;
 		new NSTimer( ((float)delayMillis)/1000 , this, "run", null, false);
 		return true;
 	}
}


