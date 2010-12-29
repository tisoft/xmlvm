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