qx.Class.define("java_util_Vector", {
  extend: java_lang_Object,
  construct: function() {
  	this.jsArray = new Array();
  },
  members:
  {
  	jsArray: 0,
  	$add___java_lang_Object: function(obj) {
  		this.jsArray.push(obj);
  	},
  	$get___int: function(index) {
  		return this.jsArray[index];
  	},
  	$size: function() {
  		//alert("Vector.size: " + this.jsArray.length);
  		return this.jsArray.length;
  	}
  }
});