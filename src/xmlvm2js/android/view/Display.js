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

qx.Class.define("android_view_Display", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  $$$DEFAULT_DISPLAY: 0,
	  orientation: 1
  },
  members: {
	$getWidth: function() {
	    return android_view_Display.orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */ ? 480 : 320;
    },
    $getHeight: function() {
	    return android_view_Display.orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */ ? 320 : 480;
    }
  }
});