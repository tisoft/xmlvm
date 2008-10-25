package System.Windows.Forms;

import java.util.TimerTask;

import System.EventArgs;
import System.EventHandler;
import System.Object;

public class Timer extends Object {

	java.util.Timer timer = new java.util.Timer();
	
	EventHandler onTick;
	
	public void add_Tick(EventHandler toAdd)
	{
		onTick = toAdd;
	}
	public int timerInt;
	public void set_Interval(int ms)
	{
		timerInt = ms;
	}
	
	public void set_Enabled(boolean enabled)
	{
	timer.scheduleAtFixedRate(
			new TimerTask(){

				@Override
				public void run() {
					if(onTick != null)
					{
					 onTick.Invoke(Timer.this,EventArgs.Empty);
					}
				}},
	
	 0, timerInt);	
	
	}
	
}
