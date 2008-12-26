
qx.Class.define("System_Console", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $WriteLine___System_String : function( __arg1)
    {
	  alert(__arg1.str);
    }
  } //statics

}); //qx.Class.define

