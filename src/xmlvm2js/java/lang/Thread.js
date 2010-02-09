qx.Class.define("java_lang_Thread", {
  extend: java_lang_Object,
  statics:
  {
	dummyThread: 0,
  	$sleep___long: function(millis) {
		// I think there is no way to implement this right now?
  	},
    $currentThread : function() {
  		if (java_lang_Thread.dummyThread == 0) {
  			java_lang_Thread.dummyThread = new java_lang_Thread();
  		}
  		return java_lang_Thread.dummyThread;
  	}
  }
});
