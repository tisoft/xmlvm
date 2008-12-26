qx.Class.define("java_awt_Dialog", {
	extend: java_awt_Frame,
	members:
	{
		parent: 0,
		$$init____java_awt_Frame: function(parent){
			this.qxWindow.setParent(parent.getQx());
			this.parent = parent;
		},
		$$init____java_awt_Dialog_java_lang_String: function(parent, title) {
			this.$$init____java_lang_String(title);
			this.$$init____java_awt_Frame(parent);
		},
		$$init____java_awt_Window_java_lang_String: function(parent, title) {
			this.$$init____java_awt_Dialog_java_lang_String(parent, title);
		},
		$setModal___boolean: function(modal) {
			modal = (modal == 0) ? false : true;
			this.qxWindow.setModal(modal);
		}
	}
});