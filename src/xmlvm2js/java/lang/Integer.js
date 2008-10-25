checkClass("java.lang.Object");
qx.Class.define("java_lang_Integer", {
  extend: java_lang_Object,
  statics:
  {
  	_parseInt___java_lang_String: function(s) {
  		return s._str * 1;
  	},
  	_valueOf___int: function(v) {
		var result = new java_lang_Integer();
		result.__init____int(v);
		return result;
	}
  },
  members:
  {
  	_value: 0,
	__init____int: function(initValue) {
		this._value = initValue;
	},
	_toString: function() {
		return this._value;
	},
	_intValue: function() {
		return this._value;
	}
  }
});
