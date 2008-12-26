qx.Class.define("java_text_SimpleDateFormat", {
  extend: java_lang_Object,
  members:
  {
  	$format: "",
  	$$init____java_text_SimpleDateFormat: function(format) {
  		if (format) this.$format = format;
  	},
  	$$init____java_lang_String: function(format) {
  		this.$format = format.$str;
  	},
  	$format___java_util_Date: function(date) {
  		return new java_lang_String(date.$date);
  	}
  }
});