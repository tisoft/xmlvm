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

qx.Class.define("android_internal_ResourceMapper", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  imageMap: {},
	  
	  setImageWithId: function(image, resourceId) {
		 var fileName = android_internal_ResourceMapper.imageMap[resourceId];
	     if (!fileName) {
             fileName = android_internal_ResourceMapper.findVariableById(resourceId);
             fileName += ".png";
             android_internal_ResourceMapper.imageMap[resourceId] = fileName;
	     }
	     image.setSource(fileName);
     },
     findVariableById: function(resourceId) {
    	 var activityPackageName = android_app_Activity.theActivityClassName;
    	 var i = activityPackageName.lastIndexOf('_');
         activityPackageName = activityPackageName.substring(0, i);

         var rClassName = activityPackageName + "_R$drawable";
         var clazz = qx.Class.getByName(rClassName);
         for (var m in clazz) {
    		if (clazz[m] == resourceId) {
    			// String off leading '$$$'
    			return m.substring(3);
    		}
         }
         return "";
    }
  }
});