
qx.Class.define("System_Object", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },

  members:
  {
    $$init_ : function()
    {
    },
    $ToString : function()
    {
    	return new System_String("" + this);
    }
  } //members
}); //qx.Class.define

