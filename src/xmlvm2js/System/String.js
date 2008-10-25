checkClass("System.Object");
qx.Class.define("System_String", {
  extend: System_Object,
  construct: function(str)
  {
        this._str = str;
  },
  statics:
  {
     _Concat___System_String_System_String: function(s1, s2)
     {
         return new System_String(s1._str + s2._str);
     },
     _Concat___System_String_System_String_System_String: function(s1, s2, s3)
     {
         return new System_String(s1._str + s2._str + s3._str);
     },
     _op_Equality___System_String_System_String: function(s1, s2)
     {
     	return s1._str == s2._str;
     }
  },
  members:
  {
  	 _str: 0,
  	 // TODO xmlvm2js stylesheet uses java.lang.String to wrap string
  	 // constants. That is a bit ugly, since because of that we need
  	 // the constructor below.
  	 __init____java_lang_String: function(s)
  	 {
  	 	this._str = s._str;
  	 },
  	 _get_Length: function()
  	 {
  		 return this._str.length;
  	 },
  	 _ToString: function()
  	 {
  	 	 return this;
  	 }
  }
});