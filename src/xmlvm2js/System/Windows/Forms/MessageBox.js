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
