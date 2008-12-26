qx.Class.define("java_net_URLEncoder", {
  extend: java_lang_Object,
  statics:
  {
  	$encode___java_lang_String: function(str) {
  		return new java_lang_String(encodeURI(str.$str));
  	}
  }
});