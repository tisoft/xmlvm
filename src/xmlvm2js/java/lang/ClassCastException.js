qx.Class.define("java_lang_ClassCastException", {
  extend: java_lang_Object,
	construct: function(message) {
		this.message = message;
	},
	members:
	{
		message: new java_lang_String("");
	}
	
});