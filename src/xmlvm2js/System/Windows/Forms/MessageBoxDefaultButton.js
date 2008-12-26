qx.Class.define("System_Windows_Forms_MessageBoxDefaultButton", {
	extend :System_Enum,
	construct : function(in_val) {
		this._value__ = in_val;
	},
	statics : {
		Button1 :0,
		Button2 :256,
		Button3 :512,
		___BOX___int : function(in_val) {
			return new System_Windows_Forms_MessageBoxDefaultButton(in_val);
		}
	},
	members : {
		_value__ :0
	}
});