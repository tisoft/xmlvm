checkClass("java.lang.Object");
qx.Class.define("org_gmap_GLatLng", {
	extend: java_lang_Object,
	members:
	{
		lat: 0,
		lng: 0,
		__init____double_double: function(lat, lng) {
			this.lat = lat;
			this.lng = lng;
		},
		_lng: function() {
			return this.lng;
		},
		_lat: function() {
			return this.lat;
		}
	}
});
