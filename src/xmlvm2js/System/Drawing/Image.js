qx.Class.define("System_Drawing_Image", {
  extend: System_MarshalByRefObject,
  construct: function(fn)
  {
  	this.fileName = fn;
  },
  statics:
  {
  	 _FromFile___System_String: function(fn)
  	 {
  	 	return new System_Drawing_Image(fn);
  	 }
  },
  members:
  {
  	fileName: 0
  }
});