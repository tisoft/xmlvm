qx.Class.define("java_util_HashMap", {
  extend: java_lang_Object,
  construct: function() {
  	this.jsArray = new Array();
  },
  members:
  {
  	jsArray: 0,
  	$put___java_lang_Object_java_lang_Object: function(key, value) {
  		this.jsArray[key.$toString().$str] = value;
  	},
  	$get___java_lang_Object: function(key) {
  	  var temp = this.jsArray[key.$toString().$str];
  	  if (temp == undefined) {
  	    return new java_lang_null;
  	  } else {
  	    return temp;
  	  }
  	}
  }
});