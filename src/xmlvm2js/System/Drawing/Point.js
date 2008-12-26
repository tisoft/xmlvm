qx.Class.define("System_Drawing_Point", {
  extend: System_ValueType,
  members:
  {
  	 x: 0,
  	 y: 0,
  	 $$init_: function()
  	 {
  	 	this.x = 0;
  	 	this.y = 0;
  	 },
  	 $__CONSTRUCTOR___int_int: function(_x, _y)
  	 {
  	 	this.x = _x;
  	 	this.y = _y;
  	 }
  },
   statics:
  {
  	$__NEW___int_int: function(_x, _y)
  	{
  		return new System_Drawing_Point(_x, _y);
  	}
  }
});