qx.Class.define("System_Int32", {
  extend: System_Object,
  construct: function(value)
  {
  	this._value = value;
  },
  statics:
  {
    ___BOX___int: function(i)
    {
    	return new System_Int32(i);
    }
  },
  members:
  {
  	 _value: 0,
  	 _ToString: function()
  	 {
  	 	return new System_String("" + this._value);
  	 }
  }
});