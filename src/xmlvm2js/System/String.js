
qx.Class.define("System_String", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $Concat___System_String_System_String : function( __arg1,  __arg2)
    {
    	var s = new System_String();
    	s.str = __arg1.str + __arg2.str;
    	return s;
    },

    $Concat___System_String_System_String_System_String : function( __arg1,  __arg2,  __arg3)
    {
    	var s = new System_String();
    	s.str = __arg1.str + __arg2.str + __arg3.str;
    	return s;
    },

    $op_Equality___System_String_System_String : function( __arg1,  __arg2)
    {
    	return __arg1.str == __arg2.str;
    }
  }, //statics

  members:
  {
    $$init____java_lang_String : function( __arg1)
    {
	  this.str = __arg1.$str;

    },
    $get_Length : function()
    {
    	return this.str.length;
    },
    $ToString : function()
    {
    	return this;
    }
  } //members
}); //qx.Class.define
