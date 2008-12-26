qx.Class.define("org_gmap_GMarker", {
	extend: java_lang_Object,
	members:
	{
		gLatLng: 0,
		html: 0,
		$$init____org_gmap_GLatLng: function(latLng) {
			this.gLatLng = latLng;
		},
		$setHTML___java_lang_String: function(html) {
			this.html =html.$str;
		},
		$getPoint: function() {
			return this.gLatLng;
		},
		getLongitude: function() {
			return this.gLatLng._lng();
		},
		getLatitude: function() {
			return this.gLatLng._lat();
		},
		getHTML: function() {
			return this.html;
		}
	}
});
