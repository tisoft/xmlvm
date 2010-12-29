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

qx.Class.define("android_view_MotionEvent", {
  extend: android_view_View,
  construct: function(action, x, y) {
  	this.base(arguments);
  	this.action = action;
  	this.x = x;
  	this.y = y;
  },
  members: {
	  $getAction: function() {
	      return this.action;
      },
      $getX: function() {
    	  return this.x;
      },
      $getY: function() {
    	  return this.y;
      }
  }
});