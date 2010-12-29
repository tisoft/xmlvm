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

qx.Class.define("java_lang_Enum", {
  extend: java_lang_Object,
  members: {
	name: "",
	ordinal: 0,
	$$init____java_lang_String_int: function(name, ordinal) {
	  this.name = name;
	  this.ordinal = ordinal;
    },
    $name: function() {
      return this.name;
    },
    $ordinal: function() {
      return this.ordinal;
    },
    $toString: function() {
      return this.$name();
    }
  }
});
