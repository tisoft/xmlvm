checkClass("java.lang.Object");
qx.Class.define("java_lang_Boolean", {
	extend: java_lang_Object,
	construct: function() {
	},
	members:
	{
		_value: 0,
		__init____boolean: function(initValue) {
			this._value = initValue;
		},
		_toString: function() {
			if(this._value != 0)
				return "true";
			else
				return "false";	
		}
	}
});