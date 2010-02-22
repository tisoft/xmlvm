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

qx.Class.define("org_xmlvm_clr_DelegateManager", {
  extend: System_Object,
  statics:
  {
      signatures: new Array(),
  	 $registerFunctionPtr___java_lang_String_java_lang_String_java_lang_String:
  	     function(classType, method, signature)
  	 {
  	    var idx = this.signatures.length;
  	    var delegate = new org_xmlvm_clr_Delegate(classType, method, signature);
        this.signatures.push(delegate);
        return idx;
  	 },
  	 getClassType: function(i)
     {
        return this.signatures[i].classType;
     },
     getMethod: function(i)
     {
        return this.signatures[i].method;
     },
     getSignature: function(i)
     {
        return this.signatures[i].signature;
     }
  }
});