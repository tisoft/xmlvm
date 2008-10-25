checkClass("java.lang.Object");
checkClass("java.io.PrintStream");

qx.Class.define("java_lang_System", {
  extend: java_lang_Object,
  statics:
  {
  	_out :  new java_io_PrintStream(),
  	_currentTimeMillis: function() {
  		return (new Date()).getTime();
  	},
  	_setOut___java_io_PrintStream: function(ps) {
  		java_lang_System._out = ps;
  	}
  }
});