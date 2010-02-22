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

qx.Class.define("javax_swing_JLabel", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.container.Composite(new qx.ui.layout.Basic());
		this.qxLabel = new qx.ui.basic.Label("");
		this.qxComponent.add(this.qxLabel);
	},
	members:
	{
		qxLabel: 0,
		qxImage: 0,
		$$init____javax_swing_Icon: function(icon) {
		//TODO
			this.qxImage = new qx.ui.basic.Image(icon.getFileName());
			this.qxImage.setZIndex(0);
			this.qxComponent.add(this.qxImage);
		}
	}
});