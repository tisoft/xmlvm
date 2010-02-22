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

qx.Class.define("android_widget_ImageView", {
  extend: android_view_View,
  construct: function() {
    this.base(arguments);
    this.qx = new qx.ui.basic.Image(null);
    
    // // Need to mention it here so Qooxdoo picks the class up.
    android_widget_ImageView$ScaleType;
  },
  members: {
    $$init____android_content_Context: function(context) {
    },
    $setImageResource___int: function(resId) {
        android_internal_ResourceMapper.setImageWithId(this.qx, resId);
    	//this.qxImage.setZIndex(0);
    },
    $setScaleType___android_widget_ImageView$ScaleType: function(scaleType) {
    	WARN("ImageView.$setScaleType___android_widget_ImageView$ScaleType not implemented yet.");
    	//TODO: Implement.
    }
  }
});