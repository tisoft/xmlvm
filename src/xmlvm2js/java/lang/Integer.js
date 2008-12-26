qx.Class.define("java_lang_Integer", {
  extend: java_lang_Object,
  statics:
  {
  	$parseInt___java_lang_String: function(s) {
  		return s.$str * 1;
  	},
  	$valueOf___int: function(v) {
		var result = new java_lang_Integer();
		result.$$init____int(v);
		return result;
	}
  },
  members:
  {
  	$value: 0,
	$$init____int: function(initValue) {
		this.$value = initValue;
	},
	$toString: function() {
		return this.$value;
	},
	$intValue: function() {
		return this.$value;
	}
  }
});
