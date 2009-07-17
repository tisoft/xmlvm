qx.Class.define("android_os_Handler", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  // TODO Kludge
	  theRunnable: 0
  },
  members: {
	  $postDelayed___java_lang_Runnable_long: function(runnable, delay) {
	    android_os_Handler.theRunnable = runnable;
	    setTimeout("android_os_Handler.theRunnable.$run()", delay);
      }
  }
});