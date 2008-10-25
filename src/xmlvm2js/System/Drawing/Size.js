checkClass("System.ValueType");

qx.Class.define("System_Drawing_Size", {
  extend: System_ValueType,
  members:
  {
  	 _x: 0,
  	 _y: 0,
  	 __init_: function()
  	 {
  	 	this._x = 0;
  	 	this._y = 0;
  	 },
  	 ___CONSTRUCTOR___int_int: function(x, y)
  	 {
  	 	this._x = x;
  	 	this._y = y;
  	 }
  },
   statics:
  {
  	___NEW___int_int: function(x, y)
  	{
  		return new System_Drawing_Size(x, y);
  	}
  }
});