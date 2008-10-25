checkClass("java.lang.Object");
qx.Class.define("java_lang_StringBuffer", {
  extend: java_lang_Object,
  members:
  {
  	_str: "",
  	__init____java_lang_StringBuffer: function(s) {
	  	if (s)
	        this._str = s._str;
	    else
	        this._str = "";	
  	},
  	__init____java_lang_String: function(s) {
  		this._str = s._str;
  	},
  	_toString: function() {
  		return new java_lang_String(this._str);
  	},
  	_append___java_lang_String: function(s) {
  		if (s._str == undefined)
    		this._str = "" + s;
    	else
	    	this._str += s._str;
        return this;	
  	},
  	_append___char: function(charCode) {
  	 	this._str += String.fromCharCode(charCode);
  	 	return this;
  	 }
  }
});