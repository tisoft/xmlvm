checkClass("System.Object");
checkClass("System.String");

qx.Class.define("System_Convert", {
  extend: System_Object,
  statics:
  {
    _ToDouble___System_String: function(s)
    {
        return s._str * 1.0;
    },
    _ToString___double: function(d)
    {
        return new System_String(d + "");
    }
  }
});