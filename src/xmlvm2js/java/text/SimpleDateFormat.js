checkClass("java.lang.Object");
qx.Class.define("java_text_SimpleDateFormat", {
  extend: java_lang_Object,
  members:
  {
  	_format: "",
  	__init____java_text_SimpleDateFormat: function(format) {
  		if (format) this._format = format;
  	},
  	_format___java_util_Date: function(date) {
  		return new java_lang_String(date._date);
  	}
  }
});