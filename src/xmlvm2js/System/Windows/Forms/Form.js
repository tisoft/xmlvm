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

qx.Class.define("System_Windows_Forms_Form", {
  extend: System_Windows_Forms_ContainerControl,
  members:
  {
  	 layoutManager: 0,
  	 onLoad: 0,
  	 $$init_: function()
  	 {
		this.anchor = document.getElementById("XML11_ROOT");
		if(this.anchor != undefined){
			console.log("Embedding Window into XML11_ROOT");
			this.xml11Embeded = true;
			this.component = new qx.ui.container.Composite(new qx.ui.layout.Basic());
			this.anchor.id = "XML11_ROOT_OCCUPIED";
		}else{
			this.xml11Embeded = false;
			this.component = new qx.ui.window.Window("...");
			this.component.setLayout(new qx.ui.layout.Basic());
			this.component.setContentPadding(0);
			//this.component = new qx.ui.container.Composite(new qx.ui.layout.Basic());
			//this.qxWindow.add(this.component);
			//XXXthis.component.setLocation(0,-10);
			//Right now we don't support minimizing, as windows would
			//go to nowhere
			this.component.setAllowMinimize(false);
		}
  	 	var _this = this;
		//this.layoutManager = new org_xmlvm_clr_WinFormsLayoutManager(this);
  	 	//this.component = new qx.ui.window.Window();
  	 	//this.component.addEventListener("changeWidth", function(e) {_this.layoutManager.changeWidth(e);});
  	 	//this.component.addEventListener("changeHeight", function(e) {_this.layoutManager.changeHeight(e);});
  	 	//this.component.addEventListener("appear", function(e) {_this.DoTheLoad();});
	 },
	 $set_Text___System_String: function(title)
  	 {
  	 	this.component.setCaption(title.str);
  	 },
  	 $set_ClientSize___System_Drawing_Size: function(size)
  	 {
  		 this.width = size.x;
  		 this.height = size.y;
		 // Compensates the native title bar of the window.
		 //this.component.setUserBounds(0, 0, this.width, this.height);//(-10, -30, this.width + 10, this.height + 30);
		 this.component.setWidth(this.width);
		 this.component.setHeight(this.height + 30);
	 },
	 DoTheLoad:function()
	 {
	  if(this.onLoad != 0)
	  {
	  		var idx = this.onLoad.signatureIndex;
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "$" + method._str + "___System_Object_System_EventArgs";
            var cmd = "this.onLoad.targetObj." + methodName + "(this, 0);";
            console.log(cmd);
            eval(cmd);
	  }
	  else
	  {
	  console.log("NOLOAD");
	  }
	 },
	 $add_Load___System_EventHandler:function (toAdd)
	 {
	   this.onLoad = toAdd;
	 },
	 
  	 $set_MinimumSize___System_Drawing_Size: function(size)
  	 {
  	 	// TODO not implemented
	 },
	 $set_AutoScaleBaseSize___System_Drawing_Size: function(size)
	 {
	 	// TODO not implemented
	 }
  }
});