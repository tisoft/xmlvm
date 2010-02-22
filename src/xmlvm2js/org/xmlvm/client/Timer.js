/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
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