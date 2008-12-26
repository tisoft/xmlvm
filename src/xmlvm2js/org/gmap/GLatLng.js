qx.Class.define("org_gmap_GLatLng", {
	extend: java_lang_Object,
	members:
	{
		lat: 0,
		lng: 0,
		$$init____double_double: function(lat, lng) {
			this.lat = lat;
			this.lng = lng;
		},
		$lng: function() {
			return this.lng;
		},
		$lat: function() {
			return this.lat;
		}
	}
});
