checkClass("System.Enum");

qx.Class.define("System_Windows_Forms_AnchorStyles", {
  extend: System_Enum,
  construct: function(styles)
  {
  	this._value__ = styles;
  },
  statics:
  {
     None   : 0x0000,
     Top    : 0x0001,
     Bottom : 0x0002,
     Left   : 0x0004,
     Right  : 0x0008,

  	 ___BOX___int: function(styles)
  	 {
  	 	return new System_Windows_Forms_AnchorStyles(styles);
  	 }
  },
  members:
  {
  	 _value__: 0,
  	 _getStyles: function()
  	 {
  	 	return this._value__;
  	 }
  }
});