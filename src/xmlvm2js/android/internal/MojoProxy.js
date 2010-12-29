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

qx.Class.define("android_internal_MojoProxy", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  theSceneAssistant: null,
	  theStageAssistant: null,
	  enableFullScreenMode: function(flag) {
	      if (android_internal_MojoProxy.theSceneAssistant) {
              android_internal_MojoProxy.theSceneAssistant.controller.enableFullScreenMode(flag);
	      }
      },
      setWindowOrientation: function(orientation) {
    	  android_internal_MojoProxy.theStageAssistant.controller.setWindowOrientation(orientation);
      },
      showAlertDialog: function(dialog) {
    	  android_internal_MojoProxy.dialog = dialog;
    	  var buttons = [];
    	  if (dialog.positiveButtonLabel) {
    		  buttons.push({label:$L(dialog.positiveButtonLabel.$str), value:0});
    	  }
    	  if (dialog.button1Label) {
    		  buttons.push({label:$L(dialog.button1Label.$str), value:1});
    	  }
    	  if (dialog.button3Label) {
    		  buttons.push({label:$L(dialog.button3Label.$str), value:3});
    	  }
    	  if (dialog.button2Label) {
    		  buttons.push({label:$L(dialog.button2Label.$str), value:2});
    	  }

    	  android_internal_MojoProxy.theSceneAssistant.controller.showAlertDialog({
  		    onChoose: function(value) {
    		  switch(value) {
    		  case 0:
      	    	  android_internal_MojoProxy.dialog.positiveButtonListener.$onClick___android_content_DialogInterface_int(null, 0); // TODO
      	    	  break;
    		  case 1:
      	    	  android_internal_MojoProxy.dialog.button1Listener.$onClick___android_content_DialogInterface_int(null, -1); // TODO
      	    	  break;
    		  case 2:
      	    	  android_internal_MojoProxy.dialog.button2Listener.$onClick___android_content_DialogInterface_int(null, -2); // TODO
      	    	  break;
    		  case 3:
      	    	  android_internal_MojoProxy.dialog.button3Listener.$onClick___android_content_DialogInterface_int(null, -3); // TODO
      	    	  break;
    		  }
    		},
  		    title: $L(dialog.title.$str),
  		    message: $L(""),
  		    choices: buttons
  		  });
      }
  }
});