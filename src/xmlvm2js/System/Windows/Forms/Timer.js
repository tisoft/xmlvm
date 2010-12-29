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

qx.Class.define("System_Windows_Forms_Timer", {
  extend: System_Object,
  members:
  {
   	 _myTimer: 0,
   	 _onTick: 0,
  	 __init_: function()
  	 {
  	    var _this = this;
  	 	this._myTimer = new qx.client.Timer();
  	 	this._myTimer.addEventListener("interval", function(e)
  	 	{
  	 	_this.DoTheTimer();
  	 	}
  	 	);
  	 },
   	 _add_Tick___System_EventHandler: function(callBack)
  	 {
  	  this._onTick = callBack;
  	 },
  	 _set_Interval___int: function( newInterval)
  	 {
  	 	this._myTimer.setInterval(newInterval);
  	 },
  	 _set_Enabled___boolean: function(isEnabled)
  	 {
  	   
  	    this._myTimer.setEnabled(isEnabled ?true:false);
  	 },
  	 
  	 DoTheTimer:function()
	 {
	  if(this._onTick != 0)
	  {
	  		var idx = this._onTick.signatureIndex;
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "_" + method._str + "___System_Object_System_EventArgs";
            var cmd = "this._onTick.targetObj." + methodName + "(this, 0);";
            eval(cmd);
	  }
	  else
	  {
	  console.log("NOTICK");
	  }
	 },
  }
});