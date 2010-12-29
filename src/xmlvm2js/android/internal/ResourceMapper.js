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