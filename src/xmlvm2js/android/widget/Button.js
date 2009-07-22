qx.Class.define("android_widget_Button", {
  extend: android_view_View, // TODO not the correct base class
  construct: function() {
    this.base(arguments);
    this.qx = new qx.ui.form.Button();
  },
  members: {
    $$init____android_content_Context: function(context) {
    },
    $setText___java_lang_CharSequence: function(text) {
        this.qx.setLabel(text.$str);
    },
    $setText___java_lang_String: function(text) {
        this.qx.setLabel(text.$str);
    }
  }
});