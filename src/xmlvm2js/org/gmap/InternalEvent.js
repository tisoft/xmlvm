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