qx.Class.define("java_lang_StringBuffer", {
  extend: java_lang_Object,
  members:
  {
  	$str: "",
  	$$init____java_lang_StringBuffer: function(s) {
	  	if (s)
	        this.$str = s.$str;
	    else
	        this.$str = "";	
  	},
  	$$init____java_lang_String: function(s) {
  		this.$str = s.$str;
  	},
  	$toString: function() {
  		return new java_lang_String(this.$str);
  	},
  	$append___java_lang_String: function(s) {
  		if (s.$str == undefined)
    		this.$str = "" + s;
    	else
	    	this.$str += s.$str;
        return this;	
  	},
  	$append___char: function(charCode) {
  	 	this.$str += String.fromCharCode(charCode);
  	 	return this;
  	 }
  }
});