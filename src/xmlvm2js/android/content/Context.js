qx.Class.define("android_content_Context", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	$getSystemService___java_lang_String: function(service) {
    	if (service.$str == "sensor") {
    		return new android_hardware_SensorManager();
    	}
    	if (service.$str == "power") {
    		return new android_os_PowerManager();
    	}
    }
  }
});
