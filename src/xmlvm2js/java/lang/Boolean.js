qx.Class.define("java_lang_Boolean", {
	extend: java_lang_Object,
	construct: function() {
	},
	members:
	{
		$value: 0,
		$$init____boolean: function(initValue) {
			this.$value = initValue;
		},
		$toString: function() {
			if(this.$value != 0)
				return "true";
			else
				return "false";	
		}
	}
});