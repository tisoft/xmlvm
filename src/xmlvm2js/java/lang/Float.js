checkClass("java.lang.Object");
qx.Class.define("java_lang_Float", {
  extend: java_lang_Object,
  construct: function() {
  	this._float = null;
  },
  statics:
  {
  	_valueOf___java_lang_String: function(s) {
  		var f = new java_lang_Float();
  		f._float = s._str * 1; // Make sure we convert the string to a number
      	return f;	
  	},
  	_toString___float: function(f) {
	  	// By concatenating "" we make sure we get a string
	  	var s = f + "";
	  	if (s.indexOf(".") < 0)
	  		// Concatenate ".0" for Java compatibility
	  		s += ".0";
	  	return new java_lang_String(s);	
  	}
  },
  members:
  {
  	_float: 0,
  	__init____float: function(f) {
  		_float = f;
  	},
  	_floatValue: function() {
  		return this._float;
  	}
  }
});
