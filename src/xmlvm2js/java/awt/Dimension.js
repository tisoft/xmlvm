qx.Class.define("java_awt_Dimension", {
	extend: java_lang_Object,
	members:
	{
		width:0,
		height:0,
		$$init____int_int: function(width, height) {
			this.width = width;
			this.height = height;
		},
		$getWidth: function() {
			return this.width;
		},
		$getHeight: function() {
			return this.height;
		}
	}
});