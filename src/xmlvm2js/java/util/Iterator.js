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

// Adapted from: http://stackoverflow.com/questions/2644966/javascript-iterator-class
function Iterator(o) {
    if(!(this instanceof arguments.callee))
      return new arguments.callee(o);
    var index = 0, keys = [];
    if(!o || typeof o != "object") return;
    if('splice' in o && 'join' in o) {
        while(keys.length < o.length) keys.push(keys.length);
    } else {
        for(p in o) if(o.hasOwnProperty(p)) keys.push(p);
    }
    this.next = function next() {
        if(index < keys.length) {
            var key = keys[index++];
            return o[key];
        } else throw { name: "StopIteration" };
    };
    this.hasNext = function hasNext() {
        return index < keys.length;
    };
}

qx.Class.define("java_util_Iterator", {
  extend: java_lang_Object,
  construct: function(jsArray) {
	this.iter = Iterator(jsArray);
  },
  members:
  {
	iter: 0,
	$hasNext: function() {
	    return this.iter.hasNext();
    },
    $next: function() {
    	return this.iter.next();
    }
  }
});