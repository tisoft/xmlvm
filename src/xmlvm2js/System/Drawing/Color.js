checkClass("System.Object");

qx.Class.define("System_Drawing_Color", {
  extend: System_Object,
  members:
  {
  	 _color: 0,
  	 __init_: function()
  	 {
  	 	this._color = 0x0;
  	 },
  	 ___CONSTRUCTOR___int: function(x)
  	 {
  	 	_color = x;
  	 }
  },
   statics:
  {
  	_get_Black: function()
  	{
  		var temp = new System_Drawing_Color();
  		temp._color ="#000000";
  		return temp;
  	}
  }
});