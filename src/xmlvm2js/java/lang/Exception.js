checkClass("java.lang.Object");
qx.Class.define("java_lang_Exception", {
  construct: function() {
  	this._message = new java_lang_String("");
  },
  extend: java_lang_Object,
  members:
  {
  	_message: 0,
  	__init_: function() {
  		this._message = new java_lang_String("no message");
  	}
  }
});
