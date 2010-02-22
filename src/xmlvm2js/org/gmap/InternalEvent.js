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

// Internal Events are stored in an queue of GMap2. This is necessary, as it is
// possible to call methods like addOverlay on the Map, while the map is not
// yet added to the DOM (because it is not yet set visible). It doesn't seem to
// be possible to create the GMap before it is set to its final destination
// easily.
qx.Class.define("org_gmap_InternalEvent", {
	extend: qx.core.Object,
	construct: function(_eventType, _obj) {
		this.eventType = _eventType;
		this.obj = _obj;
	},
	statics:
	{
		EVENT_ADD_OVERLAY: 1,
		EVENT_CLEAR_OVERLAYS: 2,
		EVENT_PAN_TO: 3
	},
	members:
	{
		eventType: 0,
		obj: 0
	}
});