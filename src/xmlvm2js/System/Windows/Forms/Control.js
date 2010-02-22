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

qx.Class.define("System_Windows_Forms_Control", {
  extend: System_Object,
  members:
  {
  	 component: 0,
  	 controlCollection: 0,
  	 styles: 0,
  	 
  	 x: 0,
  	 y: 0,
  	 width: 0,
  	 height: 0,
  	 
  	 $$init_: function()
  	 {
  	 	this.x = 0;
  	 	this.y = 0;
  	 	this.width = 0;
  	 	this.height = 0;
  	 },
  	 $set_Text___System_String: function(text)
  	 {
  	 	// Abstract method
  	 },
  	 $set_Location___System_Drawing_Point: function(point)
  	 {
  	 	
  	 	this.setLocation(point.x, point.y);
  	 },
  	 $set_Size___System_Drawing_Size: function(size)
  	 {
  	 	this.setSize(size.x, size.y);
	 },
  	 setLocation: function(_x, _y)
  	 {
  	 	this.x = _x;
  	 	this.y = _y;
  	 	this.component.setUserBounds(_x, _y, this.width, this.height);
  	 },
  	 setSize: function(_width, _height)
  	 {
  	 	this.width = _width;
  	 	this.height = _height;
  	 	this.component.setUserBounds(this.x, this.y, _width, _height);
	 },
	 $set_TabIndex___int: function(idx)
	 {
	 	// TODO not implemented
	 },
	 $set_Anchor___System_Windows_Forms_AnchorStyles: function(_styles)
	 {
	 	this.styles = _styles;
	 },
	 $SuspendLayout: function()
	 {
		console.log("UnImp: SuspendLayout");
	 },
	 $ResumeLayout___boolean: function(boolSomething)
	 {
		console.log("UnImp: ResumeLayout" + boolSomething);
	 },
	 $set_BackColor___System_Drawing_Color:function(c)
	 {
	 	this.component.setBackgroundColor(c.color);
	 },
	 $SetBounds___int_int_int_int:function(_x, _y, _width, _height)
	 {
	 this.setLocation(_x, _y);
	 this.setSize(_width,_height);
	 },
	 $get_Controls: function()
	 {
  	 	if (this.controlCollection == 0)
	  	 	this.controlCollection = new System_Windows_Forms_Control$ControlCollection(this);
	 	return this.controlCollection;
	 },
	 $set_Name___System_String:function(name)
	 {
	 	console.log("UnImp: set_Name");
	 },
	 $set_Width___int: function(w)
	 {
	    this.setSize(w,this.height);
	 },
	 $set_Height___int: function(h)
	 {
	    this.setSize(this.width,h);
	 },
	 $add_Click___System_EventHandler: function(handler)
	 {
	 	handler.senderObj = this;
	 	org_xmlvm_clr_EventManager.registerClickEventHandler(handler);
	 	var _this = this;
		this.component.addListener("execute", function(e) {
		  	org_xmlvm_clr_EventManager.raiseClickEvent(_this);
		});
	 }
  }
});