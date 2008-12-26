qx.Class.define("System_DateTime", {
  extend: System_ValueType,
  construct: function()
  {
  	this.date = new Date();
  },
  statics:
  {
    _get_Now: function()
  	{
  		return new System_DateTime();
  	}
  },
  members:
  {
  	date: 0,

	_ToString___System_String: function(format)
	{
		// TODO we ignore the format string for now
		return new System_String(this.date + "");
	}  	
  }
});