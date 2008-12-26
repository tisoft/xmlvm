qx.Class.define("org_gmap_GMapClickEvent", {
  extend: org_gmap_GMapEvent,
  construct: function() {
  	this.base(arguments);
  },
  members:
  {
    $point: 0,
    $$init____java_lang_Object_org_gmap_GLatLng : function(source,  point)
    {
		this.$point = point;
    },
    $getPoint : function()
    {
		console.log(this._point);
    	return this.$point;
    }
  }
});