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

qx.Class.define("org_eclipse_swt_widgets_List",{
	extend: org_eclipse_swt_widgets_Scrollable,
	construct: function(){
		this.qxComponent=new qx.ui.form.List();
	},
	members:
	{
		$$init____org_eclipse_swt_widgets_Composite_int: function(parentComposite, type){
		
		},
		$getSelection: function(){
			return this.qxComponent.getSelection();
			//return (java_lang_String_ARRAYTYPE)this.qxComponent.getSelection();
		},
		$deselectAll: function(){
			this.qxComponent.clearSelection();
		},
		$addSelectionListener___org_eclipse_swt_events_SelectionListener: function(selectionListener){
			
		},
		$removeAll: function(){
			this.qxComponent.removeAll();
		},
		$add___java_lang_String: function(str){
			var text=new qx.ui.basic.Label(str.$str);
			this.qxComponent.add(text);
		}
	}
});