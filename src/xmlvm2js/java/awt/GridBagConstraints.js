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

qx.Class.define("java_awt_GridBagConstraints", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $$$RELATIVE: 0,
    $$$REMAINDER: 0,
    $$$NONE: 0,
    $$$BOTH: 0,
    $$$HORIZONTAL: 0,
    $$$VERTICAL: 0,
    $$$CENTER: 0,
    $$$NORTH: 0,
    $$$NORTHEAST: 0,
    $$$EAST: 0,
    $$$SOUTHEAST: 0,
    $$$SOUTH: 0,
    $$$SOUTHWEST: 0,
    $$$WEST: 0,
    $$$NORTHWEST: 0,
    $$$PAGE_START: 0,
    $$$PAGE_END: 0,
    $$$LINE_START: 0,
    $$$LINE_END: 0,
    $$$FIRST_LINE_START: 0,
    $$$FIRST_LINE_END: 0,
    $$$LAST_LINE_START: 0,
    $$$LAST_LINE_END: 0,
    $$$BASELINE: 0,
    $$$BASELINE_LEADING: 0,
    $$$BASELINE_TRAILING: 0,
    $$$ABOVE_BASELINE: 0,
    $$$ABOVE_BASELINE_LEADING: 0,
    $$$ABOVE_BASELINE_TRAILING: 0,
    $$$BELOW_BASELINE: 0,
    $$$BELOW_BASELINE_LEADING: 0,
    $$$BELOW_BASELINE_TRAILING: 0,
    $$$serialVersionUID: 0
  }, //statics

  members:
  {
    $$$gridx: 0,
    $$$gridy: 0,
    $$$gridwidth: 0,
    $$$gridheight: 0,
    $$$weightx: 0,
    $$$weighty: 0,
    $$$anchor: 0,
    $$$fill: 0,
    $$$insets: 0,
    $$$ipadx: 0,
    $$$ipady: 0,
    $$$tempX: 0,
    $$$tempY: 0,
    $$$tempWidth: 0,
    $$$tempHeight: 0,
    $$$minWidth: 0,
    $$$minHeight: 0,
    $$$ascent: 0,
    $$$descent: 0,
    $$$baselineResizeBehavior: 0,
    $$$centerPadding: 0,
    $$$centerOffset: 0,
    $$init_ : function()
    {
        this.$gridheight = 1;
        this.$gridwidth = 1;
    },
    $$init____int_int_int_int_double_double_int_int_java_awt_Insets_int_int : function( __arg1,  __arg2,  __arg3,  __arg4,  __arg5,  __arg6,  __arg7,  __arg8,  __arg9,  __arg10,  __arg11)
    {
    	throw "NOT IMPLEMENTED";
    },
    $clone : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $isVerticallyResizable : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
