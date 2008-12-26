qx.Class.define("java_lang_Float", {
  extend: java_lang_Object,
  construct: function() {
  	this.$float = null;
  },
  statics:
  {
  	$valueOf___java_lang_String: function(s) {
  		var f = new java_lang_Float();
  		f.$float = s.$str * 1; // Make sure we convert the string to a number
      	return f;	
  	},
  	$toString___float: function(f) {
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
  	$float: 0,
  	$$init____float: function(f) {
  		$float = f;
  	},
  	$floatValue: function() {
  		return this.$float;
  	}
  }
});
