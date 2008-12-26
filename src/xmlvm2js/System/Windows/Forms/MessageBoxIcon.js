qx.Class.define("System_Windows_Forms_MessageBoxIcon", {
	extend :System_Enum,
	construct : function(in_val) {
		this._value__ = in_val;
	},
	statics : {
		None :0,
		Hand :16,
		Error :16,
		Stop :16,
		Question :32,
		Exclamation :48,
		Warning :48,
		Asterisk :64,
		Information :64,
		___BOX___int : function(in_val) {
			return new System_Windows_Forms_MessageBoxIcon(in_val);
		}
	},
	members : {
		_value__ :0
	}
});
