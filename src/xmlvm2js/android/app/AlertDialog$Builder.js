qx.Class.define("android_app_AlertDialog$Builder", {
  extend: java_lang_Object, // TODO not quite right base class
  construct: function() {
    this.base(arguments);
  },
  members: {
	title: null,
	positiveButtonLabel: null,
	positiveButtonListener: null,
    $$init____android_content_Context: function(context) {
    },
    $setTitle___java_lang_String: function(title) {
    	this.title = title;
    	return this;
    },
    $setPositiveButton___java_lang_String_android_content_DialogInterface$OnClickListener: function(label, listener) {
    	this.positiveButtonLabel = label;
    	this.positiveButtonListener = listener;
    	return this;
    },
    $create: function() {
    	return new android_app_AlertDialog(this);
    }

  }
});