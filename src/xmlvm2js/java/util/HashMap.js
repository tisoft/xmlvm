checkClass("java.lang.Object");
checkClass("java_lang_null");
qx.Class.define("java_util_HashMap", {
  extend: java_lang_Object,
  construct: function() {
  	this.jsArray = new Array();
  },
  members:
  {
  	jsArray: 0,
  	_put___java_lang_Object_java_lang_Object: function(key, value) {
  		this.jsArray[key._toString()._str] = value;
  	},
  	_get___java_lang_Object: function(key) {
  	  var temp = this.jsArray[key._toString()._str];
  	  if (temp == undefined) {
  	    return new java_lang_null;
  	  } else {
  	    return temp;
  	  }
  	}
  }
});