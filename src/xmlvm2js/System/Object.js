checkClass("java.lang.Object");
qx.Class.define("System_Object", {
  extend: java_lang_Object,
  members:
  {
    __init_: function() {
      // alert("System.Object initialized");
    },
    _ToString: function() {
    	return new System_String("" + this);
    }
  }
});
