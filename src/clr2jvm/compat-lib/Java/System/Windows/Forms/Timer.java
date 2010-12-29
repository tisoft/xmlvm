/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

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
