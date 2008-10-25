checkClass("java.lang.Object");
qx.Class.define("java_awt_Dimension", {
	extend: java_lang_Object,
	members:
	{
		width:0,
		height:0,
		__init____int_int: function(width, height) {
			this.width = width;
			this.height = height;
		},
		_getWidth: function() {
			return this.width;
		},
		_getHeight: function() {
			return this.height;
		}
	}
});