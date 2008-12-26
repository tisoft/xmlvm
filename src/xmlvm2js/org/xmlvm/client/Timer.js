qx.Class.define("org_xmlvm_client_Timer", {
  extend: java_lang_Object,
  construct: function() {
  	this.listeners = new Array();
  },
  members:
  {
  	listeners: 0,
  	$addActionListener___java_awt_event_ActionListener: function(listener) {
  		this.listeners.push(listener);
  	},
  	$runOnce___int: function(millis) {
  		var timer = this;
		setTimeout(function() {
			timer.fire();
		}, millis);  	
  	},
  	$runRepeating___int: function(millis) {
  		var timer = this;
		setInterval(function() {
			timer.fire();
		}, millis);  	
  	},
  	fire: function() {
  		for(i=0; i<this.listeners.length; ++i) {
  			this.listeners[i].$actionPerformed___java_awt_event_ActionEvent(new java_lang_null());
  		}
  	}
  }
});