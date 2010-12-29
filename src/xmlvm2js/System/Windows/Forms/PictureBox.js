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

qx.Class.define("System_Windows_Forms_PictureBox", {
  extend: System_Windows_Forms_Control,
	members:
	{
		qxImage: 0,

  	 	__init_: function()
  	 	{
			this._component = new qx.ui.layout.CanvasLayout();
  		},
  		_set_Image___System_Drawing_Image: function(image)
  	 	{
			this.qxImage = new qx.ui.basic.Image(image.fileName._str);
			this._component.add(this.qxImage);
  	 	}
  }
});