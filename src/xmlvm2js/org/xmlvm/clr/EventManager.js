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

qx.Class.define("org_xmlvm_clr_EventManager", {
  statics:
  {
    clickEventHandlers: new Array(),
  
    registerClickEventHandler: function(handler)
    {
        this.clickEventHandlers.push(handler);
    },
    
    raiseClickEvent: function(sender)
    {
    	var i = 0;
        for (i = 0; i < this.clickEventHandlers.length; i++) {
        	var handler = this.clickEventHandlers[i];
            var idx = handler.signatureIndex;
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            if (signature.$str != "void;System.Object;System.EventArgs")
               throw "Bad signature";
            if (sender != handler.senderObj)
                continue;
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "$" + method.$str + "___System_Object_System_EventArgs";
            var cmd = "handler.targetObj." + methodName + "(sender, 0);";
            eval(cmd);
        }
    }
  }
});