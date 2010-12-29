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