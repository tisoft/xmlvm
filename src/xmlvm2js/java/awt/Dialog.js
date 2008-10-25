checkClass("java.awt.Frame");
qx.Class.define("java_awt_Dialog", {
	extend: java_awt_Frame,
	members:
	{
		parent: 0,
		__init____java_awt_Frame: function(parent){
			this.qxWindow.setParent(parent.getQx());
			this.parent = parent;
		},
		__init____java_awt_Dialog_java_lang_String: function(parent, title) {
			this.__init____java_lang_String(title);
			this.__init____java_awt_Frame(parent);
		},
		__init____java_awt_Window_java_lang_String: function(parent, title) {
			this.__init____java_awt_Dialog_java_lang_String(parent, title);
		},
		_setModal___boolean: function(modal) {
			modal = (modal == 0) ? false : true;
			this.qxWindow.setModal(modal);
		}
	}
});