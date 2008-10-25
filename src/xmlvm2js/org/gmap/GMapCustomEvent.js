checkClass("java.awt.event.ActionEvent");

qx.Class.define("org_gmap_GMapCustomEvent", {
  extend: org_gmap_GMapEvent,
  construct: function() {
  	this.base(arguments);
  },
  members:
  {
    _message: 0,
    __init____java_lang_Object_java_lang_String : function(source,  message)
    {
		this._message = message;
    },
    _getMessage : function()
    {
    	return this._message;
    }
  }
});