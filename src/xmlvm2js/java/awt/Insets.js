
qx.Class.define("java_awt_Insets", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $serialVersionUID: 0
  }, //statics

  members:
  {
    $top: 0,
    $left: 0,
    $bottom: 0,
    $right: 0,
    $$init____int_int_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
        this.$top = __arg1;
        this.$left = __arg2;
        this.$bottom = __arg3;
        this.$right = __arg4;
    },
    $set___int_int_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $equals___java_lang_Object : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $hashCode : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $clone : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
