qx.Class.define("System_Convert", {
  extend: System_Object,
  statics:
  {
    $ToDouble___System_String: function(s)
    {
        return s.str * 1.0;
    },
    $ToString___double: function(d)
    {
    	var s = new System_String();
    	s.str = d + "";
        return s;
    }
  }
});