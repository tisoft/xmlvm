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

qx.Class.define("java_awt_Insets", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $$$serialVersionUID: 0
  }, //statics

  members:
  {
    $$$top: 0,
    $$$left: 0,
    $$$bottom: 0,
    $$$right: 0,
    $$init____int_int_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
        this.$$$top = __arg1;
        this.$$$left = __arg2;
        this.$$$bottom = __arg3;
        this.$$$right = __arg4;
    },
    $set___int_int_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $equals___java_lang_Object : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $hashCode : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $clone : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
