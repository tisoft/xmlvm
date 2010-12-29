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

qx.Class.define("android_app_AlertDialog", {
  extend: java_lang_Object, // TODO not quite right base class
  construct: function(builder) {
    this.base(arguments);
    this.title = builder.title;
    this.positiveButtonLabel = builder.positiveButtonLabel;
    this.positiveButtonListener = builder.positiveButtonListener;
  },
  members: {
	popup: 0,
	title: null,
	positiveButtonLabel: null,
	positiveButtonListener: null,
	button1Label: null,
	button1Listener: null,
	button2Label: null,
	button2Listener: null,
	button3Label: null,
	button3Listener: null,
	
	$setTitle___java_lang_String: function(title) {
	    this.title = title;
    },
    $setButton___java_lang_String_android_content_DialogInterface$OnClickListener: function(label, listener) {
    	this.button1Label = label;
    	this.button1Listener = listener;
    },
    $setButton2___java_lang_String_android_content_DialogInterface$OnClickListener: function(label, listener) {
    	this.button2Label = label;
    	this.button2Listener = listener;
    },
    $setButton3___java_lang_String_android_content_DialogInterface$OnClickListener: function(label, listener) {
    	this.button3Label = label;
    	this.button3Listener = listener;
    },

    $show: function() {
    	  if (android_internal_MojoProxy.theSceneAssistant) {
    		  android_internal_MojoProxy.showAlertDialog(this);
    		  return;
    	  }
    	  /*
    	   // QX version
          var layout = new qx.ui.layout.VBox();
          layout.setSpacing(10);
          this.popup = new qx.ui.popup.Popup(layout);
          this.popup.setMargin(10);

          if (this.title) {
	        this.popup.add(new qx.ui.basic.Label(this.title.$str));
          }
          
          if (this.button1Label) {
	        var button1 = new qx.ui.form.Button(this.button1Label.$str);
	        button1.addListener("click", function(e) {
	    	  this.popup.hide();
	    	  this.button1Listener.$onClick___android_content_DialogInterface_int(null, -1); // TODO
	        }, this);
	        this.popup.add(button1);
          }

          if (this.button2Label) {
  	        var button2 = new qx.ui.form.Button(this.button2Label.$str);
  	        button2.addListener("click", function(e) {
  	    	  this.popup.hide();
  	    	  this.button2Listener.$onClick___android_content_DialogInterface_int(null, -2); // TODO
  	        }, this);
  	        this.popup.add(button2);
          }

          if (this.button3Label) {
    	        var button3 = new qx.ui.form.Button(this.button3Label.$str);
    	        button3.addListener("click", function(e) {
    	    	  this.popup.hide();
    	    	  this.button3Listener.$onClick___android_content_DialogInterface_int(null, -3); // TODO
    	        }, this);
    	        this.popup.add(button3);
          }

          if (this.positiveButtonLabel) {
    	        var button = new qx.ui.form.Button(this.positiveButtonLabel.$str);
    	        button.addListener("click", function(e) {
    	    	  this.popup.hide();
    	    	  this.positiveButtonListener.$onClick___android_content_DialogInterface_int(null, 0); // TODO
    	        }, this);
    	        this.popup.add(button);
            }

	      this.popup.show();
	      */
    },
    $dismiss: function() {
    	/*
    	if (this.popup != 0) {
    	    this.popup.hide();
    	}
    	*/
    }

  }
});