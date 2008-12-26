qx.Class.define("javax_swing_ImageIcon", {
	extend: java_awt_Component,
	construct: function() {

	},
	members:
	{
		fileName: "",
		$$init____java_lang_String: function(fileName) {
			console.log("ImageIcon: " + fileName.$str);
			this.fileName = fileName.$str;
		},
		$getIconWidth: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconWidth. Defaulting to 20");
			return 20;
		},
		$getIconHeight: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconHeight. Defaulting to 20");
			return 20;
		},
		getFileName: function() {
			return this.fileName;
		}
	}
});