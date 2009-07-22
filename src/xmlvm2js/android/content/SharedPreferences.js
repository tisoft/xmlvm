qx.Class.define("android_content_SharedPreferences", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
  },
  members: {
	$edit: function() {
	    return new android_content_SharedPreferences$Editor();
    },
    $getInt___java_lang_String_int: function(key, defValue) {
	    // TODO
	    return defValue;
    },
    $getBoolean___java_lang_String_boolean: function(key, defValue) {
  	    // TODO
  	    return defValue;
    }
  }
});