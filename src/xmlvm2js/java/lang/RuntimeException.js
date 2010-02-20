qx.Class.define("java_lang_RuntimeException", {
  extend: java_lang_Object,
  members: {
	message: new java_lang_String(""),
	$$init____java_lang_String: function(message) {
	  this.message = message;
    },
    $getMessage: function() {
      return this.message;
    }
  }
});
