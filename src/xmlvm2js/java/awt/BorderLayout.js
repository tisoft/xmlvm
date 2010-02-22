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

qx.Class.define("java_awt_BorderLayout", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $$$NORTH: "NORTH",
    $$$SOUTH: "SOUTH",
    $$$EAST: "EAST",
    $$$WEST: "WEST",
    $$$CENTER: "CENTER",
    $$$BEFORE_FIRST_LINE: "BEFORE_FIRST_LINE",
    $$$AFTER_LAST_LINE: "AFTER_LAST_LINE",
    $$$BEFORE_LINE_BEGINS: "BEFORE_LINE_BEGINS",
    $$$AFTER_LINE_ENDS: "AFTER_LINE_ENDS",
    $$$PAGE_START: "PAGE_START",
    $$$PAGE_END: "PAGE_END",
    $$$LINE_START: "LINE_START",
    $$$LINE_END: "LINE_END"
  }, //statics

  members:
  {
    $$$hgap: 0,
    $$$vgap: 0,
    $$$north: 0,
    $$$west: 0,
    $$$east: 0,
    $$$south: 0,
    $$$center: 0,
    $$$firstLine: 0,
    $$$lastLine: 0,
    $$$firstItem: 0,
    $$$lastItem: 0,
    $$init_ : function()
    {
		this.layout = new qx.ui.layout.Grid();
		this.layout.setColumnFlex(1, 1);
		this.layout.setRowFlex(1, 1);
    },
    $$init____int_int : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getQXLayoutManager : function()
    {
        return this.layout;
    },
    $getQXLayoutProperties___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
        var loc = __arg2.$str;
        __arg1.getQX().set({allowGrowX: true, allowGrowY: true});
        if (loc == "Center") {
          return {row: 1, column: 1};
        }
        else if (loc == "South") {
          __arg1.getQX().set({allowGrowX: true, allowGrowY: true});
          return {row: 2, column: 0, colSpan: 3};
        }
        else if (loc == "North") {
          __arg1.getQX().set({allowGrowX: true, allowGrowY: true});
          return {row: 0, column: 0, colSpan: 3};
        }
        else {
          console.log("BorderLayout: unknown location '" + loc + "'");
          return {};
        }
    },
    $getHgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setHgap___int : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getVgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setVgap___int : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $addLayoutComponent___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $addLayoutComponent___java_lang_String_java_awt_Component : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $removeLayoutComponent___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutComponent___java_lang_Object : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutComponent___java_awt_Container_java_lang_Object : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getConstraints___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $minimumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $preferredLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $maximumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutAlignmentX___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutAlignmentY___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $invalidateLayout___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $layoutContainer___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getChild___java_lang_String_boolean : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
