qx.Class.define("System_Windows_Forms_DockStyle", {
	extend :System_Enum,
	construct : function(in_val) {
		this._value__ = in_val;
	},
	statics : {
		None :0,
		Top :1,
		Bottom :2,
		Left :3,
		Right :4,
		Fill :5,
		___BOX___int : function(in_val) {
			return new System_Windows_Forms_DockStyle(in_val);
		}
	},
	members : {
		_value__ :0
	}
});