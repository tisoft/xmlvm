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