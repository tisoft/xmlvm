qx.Class.define("java_lang_System", {
  extend: java_lang_Object,
  statics:
  {
  	$out :  new java_io_PrintStream(),
  	$currentTimeMillis: function() {
  		return (new Date()).getTime();
  	},
  	$setOut___java_io_PrintStream: function(ps) {
  		java_lang_System.$out = ps;
  	}
  }
});