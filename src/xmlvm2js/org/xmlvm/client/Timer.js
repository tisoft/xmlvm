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

qx.Class.define("org_xmlvm_client_Timer", {
  extend: java_lang_Object,
  construct: function() {
  	this.listeners = new Array();
  },
  members:
  {
  	listeners: 0,
  	$addActionListener___java_awt_event_ActionListener: function(listener) {
  		this.listeners.push(listener);
  	},
  	$runOnce___int: function(millis) {
  		var timer = this;
		setTimeout(function() {
			timer.fire();
		}, millis);  	
  	},
  	$runRepeating___int: function(millis) {
  		var timer = this;
		setInterval(function() {
			timer.fire();
		}, millis);  	
  	},
  	fire: function() {
  		for(i=0; i<this.listeners.length; ++i) {
  			this.listeners[i].$actionPerformed___java_awt_event_ActionEvent(new java_lang_null());
  		}
  	}
  }
});