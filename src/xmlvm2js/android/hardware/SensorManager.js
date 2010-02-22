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

qx.Class.define("android_hardware_SensorManager", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  $registerListener___android_hardware_SensorListener_int_int: function(l, f1, f2) {
	  	// TODO
      },
      $unregisterListener___android_hardware_SensorListener: function(l) {
    	  // TODO
      },
      $getDefaultSensor___int: function(type) {
    	  WARN("Missing: SensorManager.getDefaultSensor___int");
      },
      $registerListener___android_hardware_SensorEventListener_android_hardware_Sensor_int: function(listener, sensor, rate) {
    	  WARN("Missing: SensorManager.registerListener___android_hardware_SensorEventListener_android_hardware_Sensor_int");
      }
  }
});