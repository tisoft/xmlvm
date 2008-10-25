checkClass("java.lang.Object");
qx.Class.define("org_xmlvm_client_Timer", {
  extend: java_lang_Object,
  construct: function() {
  	this.listeners = new Array();
  },
  members:
  {
  	listeners: 0,
  	_addActionListener___java_awt_event_ActionListener: function(listener) {
  		this.listeners.push(listener);
  	},
  	_runOnce___int: function(millis) {
  		var timer = this;
		setTimeout(function() {
			timer.fire();
		}, millis);  	
  	},
  	_runRepeating___int: function(millis) {
  		var timer = this;
		setInterval(function() {
			timer.fire();
		}, millis);  	
  	},
  	fire: function() {
  		for(i=0; i<this.listeners.length; ++i) {
  			this.listeners[i]._actionPerformed___java_awt_event_ActionEvent(new java_lang_null());
  		}
  	}
  }
});