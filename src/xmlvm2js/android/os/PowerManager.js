qx.Class.define("android_os_PowerManager", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
  },
  members: {
    $newWakeLock___int_java_lang_String: function(flag, tag) {
	    return new android_os_PowerManager$WakeLock();
    }
  }
});