qx.Class.define("System_Windows_Forms_ScrollBars", {
  extend: System_Enum,
  construct: function(styles)
  {
  	 this._value__ = styles;
  },
  statics:
  {
     None       : 0,
     Horizontal : 1,
     Vertical   : 2,
     Both       : 3,
  
  	 ___BOX___int: function(styles)
  	 {
  	 	return new System_Windows_Forms_ScrollBars(styles);
  	 }
  },
  members:
  {
  	 _value__: 0
  }
});