qx.Class.define("org_gmap_GPoint", {
	extend: java_lang_Object,
	members:
	{
		x: 0,
		y: 0,
		$$init____double_double: function(x, y) {
			this.x = x;
			this.y = y;
		},
		getLongitude: function() {
			return this.x;
		},
		getLatitude: function() {
			return this.y;
		}
	}
});
