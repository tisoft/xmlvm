checkClass("java.lang.Object");
qx.Class.define("java_lang_StringBuilder", {
  extend: java_lang_Object,
  members:
  {
  	_str: "",
  	__init_: function() {
		this._str = "";
  	},
  	__init____java_lang_String: function(s) {
  		if (s)
            this._str = s._str;
        else
        	this._str = "";
  	},
  	_toString: function() {
  		return new java_lang_String(this._str);
  	},
  	_append___java_lang_String: function(s) {
	    if((s == 0) || (s == undefined)) {
	    	this._str += "null";
	    	return this;
	    }
	   	if (s._str == undefined)
	    		this._str += "" + s;
	    	else
		    	this._str += s._str;
	        return this;
  	},
  	_append___java_lang_Object: function(s) {
  		if((!s) || (s == 0))
        	return this._append___java_lang_String("null");
      	else
    		 return this._append___java_lang_String(s._toString());
  	},
  	_append___boolean: function(b) {
		if(b == true)
		  return this._append___java_lang_String("true");
		else
		  return this._append___java_lang_String("false");
  	},
  	_append___int: function(i) {
		this._str += "" + i; 
  		return this;
  	},  	
  	_append___long: function(l) {
  		return this._append___int(l);
  	},
  	_append___double: function(d) {
      var _tempValue = "" + d;
      if((d % 1) == 0) {
        _tempValue += ".0";
      }
      this._str += "" + _tempValue;
      return this;
  	}
  }
});
