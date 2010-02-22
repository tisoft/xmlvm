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

qx.Class.define("System_Windows_Forms_ListBox", {
  extend: System_Windows_Forms_ListControl,
  members:
  {
	 listData: 0,
	 appeared: 0,
	 selectedIndex: 0,
  
  	 __init_: function()
  	 {
  	 	var _this = this;
	    var column =
      	{
        	name : { width:"100%", height:0 }
      	};
		this.listData = new Array();
		this.appeared = false;
		this.selectedIndex = -1;
		this._component = new qx.ui.listview.ListView(this.listData, column);
		this._component.addEventListener("appear", function(e) { _this.controlAppeared(); });
  	 },
  	 controlAppeared: function()
  	 {
  	 	this.appeared = true;
  	 	if (this.selectedIndex != -1)
  	 		this.setSelectedIndex(this.selectedIndex);
  	 },
  	 _BeginUpdate: function()
  	 {
  	 },
  	 _EndUpdate: function()
  	 {
  	 	// TODO this should only be executed if the ListBox was previously created
		//this._component.updateContent();
		this._component.update();
  	 },
  	 _set_SelectedIndex___int: function(idx)
  	 {
  	 	if (!this.appeared) {
  	 		this.selectedIndex = idx;
  	 		return;
  	 	}
  	 	this.setSelectedIndex(idx);
  	 },
  	 setSelectedIndex: function(idx)
  	 {
		this._component.getPane().getManager().setItemSelected(this.listData[idx], true);
  	 },
  	 _get_SelectedItem: function()
  	 {
  	 	var selectedItem = this._component.getPane().getSelectedItem();
		if(selectedItem == undefined)
			return null;
		var strValue = selectedItem.name.text;
		return new System_String(strValue);
  	 },
  	 _get_Items: function()
  	 {
  	 	return new System_Windows_Forms_ListBox$ObjectCollection(this);
  	 }
  }
});