qx.Class.define("java_awt_event_ActionEvent", {
	extend: java_lang_Object,
	members:
	{
		qxEvent: 0,
		actionCommand: 0,
		source: 0,
		setQxEvent: function(qxEvent) {
			this.qxEvent = qxEvent;
		},
		$$init____java_lang_Object_int_java_lang_String: function(source, id, command) {
			this.source = source;
			//TODO:
			console.log("TODO: ActionEvent.init(source,id,command)");
		},
		$setSource: function(source) {
			this.source = source;
		},
		$getSource: function() {
			return this.source;
		},
		$getActionCommand: function() {
			return this.actionCommand;
		},
		$setActionCommand: function(command) {
			this.actionCommand = command;
		}
	}
});
