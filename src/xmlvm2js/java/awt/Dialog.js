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

qx.Class.define("java_awt_Dialog", {
	extend: java_awt_Frame,
	members:
	{
		parent: 0,
		$$init____java_awt_Frame: function(parent){
			this.qxWindow.setParent(parent.getQx());
			this.parent = parent;
		},
		$$init____java_awt_Dialog_java_lang_String: function(parent, title) {
			this.$$init____java_lang_String(title);
			this.$$init____java_awt_Frame(parent);
		},
		$$init____java_awt_Window_java_lang_String: function(parent, title) {
			this.$$init____java_awt_Dialog_java_lang_String(parent, title);
		},
		$setModal___boolean: function(modal) {
			modal = (modal == 0) ? false : true;
			this.qxWindow.setModal(modal);
		}
	}
});