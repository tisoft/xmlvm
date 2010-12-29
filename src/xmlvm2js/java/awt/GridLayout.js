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

qx.Class.define("java_awt_GridLayout", {
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
    $$$hgap: 0,
    $$$vgap: 0,
    $$$rows: 0,
    $$$cols: 0,
    $$$componentCount: 0,
    $$init_ : function()
    {
   		this.layout = new qx.ui.layout.Grid();
   		this.$$$componentCount = 0;
   		this.$$$rows = 1;
   		this.$$$cols = 0;
    },
    $$init____int_int : function( __arg1,  __arg2)
    {
   		this.layout = new qx.ui.layout.Grid();
   		this.$$$componentCount = 0;
   		this.$$$rows = __arg1;
   		this.$$$cols = __arg2;
    },
    $$init____int_int_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getQXLayoutManager : function()
    {
        return this.layout;
    },
    $getQXLayoutProperties___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
        var currentRow = 0;
        var currentCol = 0;
        if (this.$$$rows == 0) {
        	currentRow = this.$$$componentCount / this.$$$cols;
        	currentCol = this.$$$componentCount % this.$$$cols;
        }
        else {
        	currentRow = this.$$$componentCount % this.$$$rows;
        	currentCol = this.$$$componentCount / this.$$$rows;
        }
        this.$componentCount++;
        var constraints = __arg2;
        if (constraints instanceof java_lang_null) {
          __arg1.getQX().set({allowGrowX: true, allowGrowY: true});
          this.layout.setColumnFlex(currentCol, 1);
		  this.layout.setRowFlex(currentRow, 1);
		  if (this.$$$hgap > 0 && currentCol > 0)
		    __arg1.getQX().setMarginLeft(this.$$$hgap);
          return {row: currentRow, column: currentCol};
        }
        else {
          console.log("GridLayout: unknown constraint '" + constraints + "'");
          return {};
        }
    },
    $getRows : function()
    {
        return this.$$$rows;
    },
    $setRows___int : function( __arg1)
    {
        this.$$$rows = __arg1;
    },
    $getColumns : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setColumns___int : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getHgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setHgap___int : function( __arg1)
    {
        this.$$$hgap = __arg1;
    },
    $getVgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setVgap___int : function( __arg1)
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
    $preferredLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $minimumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $layoutContainer___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
