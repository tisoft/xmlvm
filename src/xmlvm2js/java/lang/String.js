qx.Class.define("java_lang_String", {
  extend: java_lang_Object,
  construct: function(str) {
  	this.$str = str;
  },
  statics:
  {
  	$valueOf___java_lang_Object: function(val) {
  		return val.$toString();
	 },
	 $valueOf___int: function(val) {
	 	return new java_lang_String(""+val);
	 },
	 $valueOf___long: function(val) {
	 	return new java_lang_String(""+val);
	 },
	 $valueOf___double: function(val) {
        var tempValue = "" + val;
        if((val % 1) == 0)
          tempValue += ".0";
        return new java_lang_String("" + tempValue);
	 },
	 $valueOf___boolean: function(val) {
        if(val == true)
          return new java_lang_String("true");
        else
          return new java_lang_String("false");
	 }
  },
  members:
  {
  	$str: 0,
  	$equals___java_lang_Object: function(o) {
        var toCompare;

        if (o.$str == undefined)
          toCompare = o; 
        else
          toCompare = o.$str;
        
        if(this.$str == toCompare)
            return true;
        else
            return false;
	 },
	 $charAt___int: function(i) {
	 	return this.$str.charCodeAt(i);
	 },
  	 $length: function() {
  		return this.$str.length;
  	 },
  	 $toString: function() {
  	 	return this;
  	 },
  	 $replace___char_char: function(replace, by) {
  	 	//TODO:
  	 	console.log("TODO: replace(char, char)");
  	 	//return new java_lang_String(this.$str.replace(replace, by));
  	 	return this;
  	 },
  	 $toLowerCase: function() {
  	 	return new java_lang_String(this.$str.toLowerCase());
  	 },
  	 $toUpperCase: function() {
  	 	return new java_lang_String(this.$str.toUpperCase());
  	 },
  	 $indexOf___java_lang_String: function(text) {
  	 	return this.$str.indexOf(text.$str);
  	 },
  	 $lastIndexOf___java_lang_String: function(text) {
  	 	return this.$str.lastIndexOf(text.$str);
  	 },
  	 $split___java_lang_String: function(regex) {
  	 	var s = this.$str.split(regex.$str);
  	 	var result = new Array();
  	 	for(var i = 0; i < s.length; ++i) {
  	 		result.push(new java_lang_String(s[i]));
  	 	}
  	 	return result;
  	 },
  	 $endsWith___java_lang_String: function(pattern) {
  	    // Implementation from Prototype framework.
  	    var d = this.$str.length - pattern.$str.length;
        return d >= 0 && this.$str.lastIndexOf(pattern.$str) === d;
  	 },
  	 $replace___java_lang_CharSequence_java_lang_CharSequence: function(replace, by) {
  		var result;
  	 	var toEval = "result = this.$str.replace(/"+replace.$str+"/g, \"" + by.$str +"\");";
  	 	eval(toEval);
  	 	return new java_lang_String(result);
  	 },
  	 $substring___int_int: function(from, to) {
  	 	return new java_lang_String(this.$str.substring(from, to));
  	 },
  	 $substring___int: function(from) {
  	 	return new java_lang_String(this.$str.substring(from));
  	 },
  	 $startsWith___java_lang_String: function(text) {
  	   return (this.$str.indexOf(text.$str) == 0);
  	 }
  }
});