qx.Class.define("System_Windows_Forms_MessageBoxButtons", {
	extend :System_Enum,
	construct : function(in_val) {
		this._value__ = in_val;
	},
	statics : {
		OK :0,
		OKCancel :1,
		AbortRetryIgnore :2,
		YesNoCancel :3,
		YesNo :4,
		RetryCancel :5,
		___BOX___int : function(in_val) {
			return new System_Windows_Forms_MessageBoxButtons(in_val);
		}
	},
	members : {
		_value__ :0
	}
});
