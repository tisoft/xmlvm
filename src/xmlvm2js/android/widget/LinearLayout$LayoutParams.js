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

qx.Class.define("android_widget_LinearLayout$LayoutParams", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
  },
  members: {
    $$$width: 0,
    $$$height: 0,
    $$$left: 0,
    $$$top: 0,
    $$$right: 0,
    $$$bottom: 0,
    $$init____int_int: function(width, height) {
      this.$$$width = width;
      this.$$$height = height;
    },
    $setMargins___int_int_int_int: function(left, top, right, bottom) {
    	this.$$$left = left;
    	this.$$$top = top;
    	this.$$$right = right;
    	this.$$$bottom = bottom;
    }
  }
});