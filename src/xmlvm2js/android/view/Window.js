qx.Class.define("android_view_Window", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  $setFlags___int_int: function(flags, mask) {
	      var maskedFlags = (flags & mask);
	      if ((maskedFlags & 1024 /*WindowManager.LayoutParams.FLAG_FULLSCREEN*/) != 0) {
	          android_internal_MojoProxy.enableFullScreenMode(true);
          }
      }
  }
});