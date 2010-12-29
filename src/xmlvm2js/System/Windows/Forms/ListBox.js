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