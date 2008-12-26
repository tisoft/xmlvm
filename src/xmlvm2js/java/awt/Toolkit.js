qx.Class.define("java_awt_Toolkit", {
	extend: java_lang_Object,
	statics:
	{
		defaultToolkit: 0,
		$getDefaultToolkit: function() {
			if(java_awt_Toolkit.defaultToolkit == 0) {
				java_awt_Toolkit.defaultToolkit = new java_awt_Toolkit();
			}
			return java_awt_Toolkit.defaultToolkit;
		}
	},
	members:
	{
		$getScreenSize: function() {
			var result = new java_awt_Dimension();
			//TODO: This might not work on every browser? Is there a qooxdoo
			//      function for obtaining this size?
			result.$$init____int_int(document.body.clientWidth,document.body.clientHeight);
			return result;
		}
	}
});