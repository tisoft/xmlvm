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

qx.Class.define("android_app_Activity", {
  extend: android_content_Context, // TODO not quite right base class
  construct: function() {
    this.base(arguments);
    this.qxComposite = new qx.ui.container.Composite(new qx.ui.layout.Basic());
    // TODO: Hardcoded
    this.qxComposite.setUserBounds(0, 0, 320, 480);
    // Android has a black background as default
    this.qxComposite.setBackgroundColor("black");
    //window.qxApp.getRoot().add(this.qxComposite);
    qx.core.Init.getApplication().getRoot().add(this.qxComposite);
  },
  statics: {
	  theActivityClassName: 0
  },
  members: {
    qxComposite: 0,
    $onContentChanged: function() {
    },
    $onCreate___android_os_Bundle: function(bundle) {
    },
    $setContentView___android_view_View: function(view) {
      this.qxComposite.add(view.getQX(), {});
    },
    $requestWindowFeature___int: function(feature) {
    	// TODO
    },
    $setRequestedOrientation___int: function(orientation) {
    	// TODO
    	android_view_Display.orientation = orientation;
    	if (orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */) {
    		this.qxComposite.setUserBounds(0, 0, 480, 320);
    		android_internal_MojoProxy.setWindowOrientation('left');
    	}
    },
    $getWindow: function() {
    	// TODO
    	return new android_view_Window();
    },
    $getWindowManager: function() {
    	return new android_view_WindowManager();
    },
    $getPreferences___int: function(mode) {
    	return new android_content_SharedPreferences();
    }
  }
});