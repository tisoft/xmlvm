checkClass("System.Object");

qx.Class.define("System_Random", {
  extend: System_Object,
  members:
	{
	    _NextDouble:function()
	    {
	    return Math.random();
	    }
	}
});
