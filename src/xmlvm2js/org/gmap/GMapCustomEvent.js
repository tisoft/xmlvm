qx.Class.define("org_gmap_GMapCustomEvent", {
  extend: org_gmap_GMapEvent,
  construct: function() {
  	this.base(arguments);
  },
  members:
  {
    $message: 0,
    $$init____java_lang_Object_java_lang_String : function(source,  message)
    {
		this.$message = message;
    },
    $getMessage : function()
    {
    	return this.$message;
    }
  }
});