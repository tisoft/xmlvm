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

qx.Class.define("android_app_AlertDialog$Builder", {
  extend: java_lang_Object, // TODO not quite right base class
  construct: function() {
    this.base(arguments);
  },
  members: {
	title: null,
	positiveButtonLabel: null,
	positiveButtonListener: null,
    $$init____android_content_Context: function(context) {
    },
    $setTitle___java_lang_String: function(title) {
    	this.title = title;
    	return this;
    },
    $setPositiveButton___java_lang_String_android_content_DialogInterface$OnClickListener: function(label, listener) {
    	this.positiveButtonLabel = label;
    	this.positiveButtonListener = listener;
    	return this;
    },
    $create: function() {
    	return new android_app_AlertDialog(this);
    }

  }
});