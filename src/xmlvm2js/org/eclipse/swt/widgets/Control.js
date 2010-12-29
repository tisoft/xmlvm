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

qx.Class.define("org_eclipse_swt_widgets_Control",{
  extend: org_eclipse_swt_widgets_Widget,
  construct: function(){
	
  },
  members:
  {
	x: 0,
	y: 0,
	width: 0,
	height: 0,
	qxComponent: 0,
	$$init_: function(){
	  
  	},
	$pack: function(){
	  //
    },
    $setSize___int_int: function(width, height){
    	
      this.width=width;
      this.height=height;
    },
    $setLocation__int_int: function(x, y){
    	this.x=x;
    	this.y=y;
    },
    $setBounds___int_int_int_int: function(x, y, width, height){
    	this.qxComponent.setUserBounds(x, y, width, height);
    },
    $setVisible___boolean: function(visible){
    	return visible? true:false;
    },
    $setEnabled___boolean: function(enabled){
    	return enabled? true:false;
    },
    $setFocus: function(){
    	return true;
    },
    $setBackground___org_eclipse_swt_graphics_Color: function(color){
    	
    }
  }
});