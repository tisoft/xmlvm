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

qx.Class.define("java_awt_Container", {
	extend: java_awt_Component,
	members:
	{
		$$init_: function() {
		},
		layoutManager: 0,
		$setLayout___java_awt_LayoutManager: function(manager) {
			this.layoutManager = manager;
			if (manager instanceof java_lang_null)
				this.qxComponent.setLayout(new qx.ui.layout.Basic())
			else
				this.qxComponent.setLayout(manager.$getQXLayoutManager());
		},
		$add___java_awt_Component: function(component) {
			var qxLayoutProperties = {};
			if (!(this.layoutManager instanceof java_lang_null))
				qxLayoutProperties = this.layoutManager.$getQXLayoutProperties___java_awt_Component_java_lang_Object(component, new java_lang_null());
			this.qxComponent.add(component.getQX(), qxLayoutProperties);
		},
		$add___java_awt_Component_java_lang_Object: function(component, constraints) {
			var qxLayoutProperties = this.layoutManager.$getQXLayoutProperties___java_awt_Component_java_lang_Object(component, constraints);
			this.qxComponent.add(component.getQX(), qxLayoutProperties);
		},
		$add___java_awt_Component_int: function(component, zIndex) {
			component.getQX().setZIndex(zIndex);
			this.qxComponent.add(component.getQX());
		}
	}
});
