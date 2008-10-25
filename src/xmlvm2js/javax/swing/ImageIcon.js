checkClass("java.awt.Component");
qx.Class.define("javax_swing_ImageIcon", {
	extend: java_awt_Component,
	construct: function() {

	},
	members:
	{
		fileName: "",
		__init____java_lang_String: function(fileName) {
			console.log("ImageIcon: " + fileName._str);
			this.fileName = fileName._str;
		},
		_getIconWidth: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconWidth");
			return 0;
		},
		_getIconHeight: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconHeight");
			return 0;
		},
		getFileName: function() {
			return this.fileName;
		}
	}
});