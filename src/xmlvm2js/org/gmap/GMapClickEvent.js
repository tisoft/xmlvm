checkClass("org.gmap.GMapEvent");

qx.Class.define("org_gmap_GMapClickEvent", {
  extend: org_gmap_GMapEvent,
  construct: function() {
  	this.base(arguments);
  },
  members:
  {
    _point: 0,
    __init____java_lang_Object_org_gmap_GLatLng : function(source,  point)
    {
		this._point = point;
    },
    _getPoint : function()
    {
		console.log(this._point);
    	return this._point;
    }
  }
});