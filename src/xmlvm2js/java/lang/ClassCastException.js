checkClass("java.lang.Object");
qx.Class.define("java_lang_ClassCastException", {
  extend: java_lang_Object,
	construct: function(message) {
		this._message = message;
	},
	members:
	{
		_message: ""
	}
	
});