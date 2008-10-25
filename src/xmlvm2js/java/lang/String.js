checkClass("java.lang.Object");
qx.Class.define("java_lang_String", {
  extend: java_lang_Object,
  construct: function(str) {
  	this._str = str;
  },
  statics:
  {
  	_valueOf___java_lang_Object: function(val) {
  		//alert("Error: String.valueOf(Object) not supported yet");
  		return val._toString();
		/*if(Clazz.instanceOf(val, java_lang_String))
			// val is already a string
			return val;
		else
			return new java_lang_String(val);*/
	 },
	 _valueOf___int: function(val) {
	 	return new java_lang_String(""+val);
	 },
	 _valueOf___long: function(val) {
	 	return new java_lang_String(""+val);
	 },
	 _valueOf___double: function(val) {
        var _tempValue = "" + val;
        if((val % 1) == 0)
          _tempValue += ".0";
        return new java_lang_String("" + _tempValue);
	 },
	 _valueOf___boolean: function(val) {
        if(val == true)
          return new java_lang_String("true");
        else
          return new java_lang_String("false");
	 }
	 
  },
  members:
  {
  	_str: 0,
  	_equals___java_lang_Object: function(o) {
        var toCompare;

        if (o._str == undefined)
          toCompare = o; 
        else
          toCompare = o._str;
        
        if(this._str == toCompare)
            return true;
        else
            return false;
	 },
	 _charAt___int: function(i) {
	 	return this._str.charCodeAt(i);
	 },
  	 _length: function() {
  		return this._str.length;
  	 },
  	 _toString: function() {
  	 	return this;
  	 },
  	 _replace___char_char: function(replace, by) {
  	 	//TODO:
  	 	console.log("TODO: replace(char, char)");
  	 	//return new java_lang_String(this._str.replace(replace, by));
  	 	return this;
  	 },
  	 _toLowerCase: function() {
  	 	return new java_lang_String(this._str.toLowerCase());
  	 },
  	 _toUpperCase: function() {
  	 	return new java_lang_String(this._str.toUpperCase());
  	 },
  	 _indexOf___java_lang_String: function(text) {
  	 	return this._str.indexOf(text._str);
  	 },
  	 _lastIndexOf___java_lang_String: function(text) {
  	 	return this._str.lastIndexOf(text._str);
  	 },
  	 _split___java_lang_String: function(regex) {
  	 	var s = this._str.split(regex._str);
  	 	var result = new Array();
  	 	for(i=0; i<s.length; ++i) {
  	 		result.push(new java_lang_String(s[i]));
  	 	}
  	 	return result;
  	 },
  	 _endsWith___java_lang_String: function(pattern) {
  	    // Implementation from Prototype framework.
  	    var d = this._str.length - pattern._str.length;
        return d >= 0 && this._str.lastIndexOf(pattern._str) === d;
  	 },
  	 _replace___java_lang_CharSequence_java_lang_CharSequence: function(replace, by) {
  	 	var toEval = "var result = this._str.replace(/"+replace._str+"/g, \"" + by._str +"\");";
  	 	eval(toEval);
  	 	return new java_lang_String(result);
  	 },
  	 _substring___int_int: function(from, to) {
  	 	return new java_lang_String(this._str.substring(from, to));
  	 },
  	 _substring___int: function(from) {
  	 	return new java_lang_String(this._str.substring(from));
  	 },
  	 _startsWith___java_lang_String: function(text) {
  	   return (this._str.indexOf(text._str) == 0);
  	 }
  }
});