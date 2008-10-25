checkClass("java.lang.Object");
qx.Class.define("java_awt_event_ItemEvent", {
	extend: java_lang_Object,
	statics: {
		SELECTED: 1,
		DESELECTED: 2
	},
	members:
	{
		listIndex: 0,
		kind: 0,
		_getStateChange: function() {
			console.log("TODO: ItemEvent.getStateChange()");
			return this.kind;
		},
		_getItem: function() {
			checkClass("java.lang.Integer");
			var result = new java_lang_Integer();
			result.__init____int(this.listIndex);
			return result;
		},
		// Not part of the official API
		setListIndex: function(index) {
			this.listIndex = index;
		},
		// Not part of the official API
		setKind: function(kind) {
			this.kind = kind;
		}
	}
});
