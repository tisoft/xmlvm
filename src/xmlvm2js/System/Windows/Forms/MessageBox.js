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

qx.Class.define("System_Windows_Forms_MessageBox", {
    extend: System_Object,
    statics:
  {
      _Show___System_String_System_String_System_Windows_Forms_MessageBoxButtons_System_Windows_Forms_MessageBoxIcon_System_Windows_Forms_MessageBoxDefaultButton:
  	 function(prompt,
			 title,
			 buttons,
			 icon,
			 defaultButton) {

  	     var myWindow = new qx.ui.window.Window(title);
  	     // Create the Main Window
  	     myWindow.setSpace("auto", 850, "auto", 700);
  	     myWindow.setCentered(true)
  	     myWindow.setModal(true);
  	     myWindow.setShowClose(true);
  	     myWindow.setShowMaximize(false);
  	     myWindow.setShowMinimize(false);
  	 }
  }
});
