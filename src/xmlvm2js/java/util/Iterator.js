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