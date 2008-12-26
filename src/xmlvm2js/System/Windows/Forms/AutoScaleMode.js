qx.Class.define("System_Windows_Forms_AutoScaleMode", {
	extend: System_Enum,
	construct: function(in_val)
	{
	 this._value__ = in_val;
	},
	statics:
	{
	None : 0,
	Font : 1,
	Dpi : 2,
	Inherit : 3,
	___BOX___int: function(in_val)
	{
	return new System_Windows_Forms_AutoScaleMode(in_val);
	}
	},
	members:
	{
	_value__: 0
	}
});
