qx.Class.define("android_widget_CheckBox", {
  extend: android_view_View, // TODO not the correct base class
  construct: function() {
    this.base(arguments);
    this.qx = new qx.ui.form.CheckBox();
  },
  members: {
    $$init____android_content_Context: function(context) {
    },
    $setChecked___boolean: function(flag) {
    	this.qx.setChecked(flag == 1);
    },
    $isChecked: function() {
    	return this.qx.isChecked() ? 1 : 0;
    }
  }
});