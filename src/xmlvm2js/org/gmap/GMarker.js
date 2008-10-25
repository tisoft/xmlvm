checkClass("java.lang.Object");
qx.Class.define("org_gmap_GMarker", {
	extend: java_lang_Object,
	members:
	{
		gLatLng: 0,
		html: 0,
		__init____org_gmap_GLatLng: function(latLng) {
			this.gLatLng = latLng;
		},
		_setHTML___java_lang_String: function(html) {
			this.html =html._str;
		},
		_getPoint: function() {
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
