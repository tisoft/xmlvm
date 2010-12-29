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

qx.Class.define("org_xmlvm_clr_WinFormsLayoutManager", {
  extend: qx.core.Object,
  construct: function(form)
  {
  	this.form = form;
  },
  members:
  {
  	window: 0,
  	
  	changeWidth: function(e)
  	{
  		if (e.getOldValue() == 'auto')
  			return;
  		var dx = e.getValue() - e.getOldValue();
  		if (dx != 0)
	  		this.doLayout(dx, 0);
  	},
  	changeHeight: function(e)
  	{
  		if (e.getOldValue() == 'auto')
  			return;
  		var dy = e.getValue() - e.getOldValue();
  		if (dy != 0)
	  		this.doLayout(0, dy);
  	},
  	doLayout: function(dx, dy)
  	{
  		if(this.form._controlCollection._children == undefined)
	  	{
	  	//TODO: ??? why do i need to do this? suspendlayout?
	  	return;
	  	}
  		var children = this.form._controlCollection._children;
  		for (var i = 0; childern != null &&  i < children.length; i++) {
  			var child = children[i];
			var styles = child._styles._value__;
			var x      = child._x;
			var y      = child._y;
			var width  = child._width;
			var height = child._height;
            if ((styles & System_Windows_Forms_AnchorStyles.Right) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Left) == 0) {
                    // Align control with right border, but don't resize
                    x += dx;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Right) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Left) != 0) {
                    // Resize control to match new width
                    width += dx;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Bottom) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Top) == 0) {
                    // Align control with bottom border, but don't resize
                    y += dy;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Bottom) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Top) != 0) {
                    // Resize control to match new height
                    height += dy;
            }
            child.setLocation(x, y);
            child.setSize(width, height);
  		}
  	}
  }
});