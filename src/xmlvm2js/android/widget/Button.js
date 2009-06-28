qx.Class.define("android_widget_Button", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
    this.qxButton = new qx.ui.form.Button("Button");
  },
  members: {
    qxButton: 0,
    getQX: function() {
      return this.qxButton;
    },
    $$init____android_content_Context: function(context) {
    },
    $setText___java_lang_CharSequence: function(text) {
      this.qxButton.setLabel(text.$str);
    },
    $setLayoutParams___android_view_ViewGroup$LayoutParams: function(params) {
      // TODO: Width and height may have special case like -1 and -2 ...
      this.qxButton.setUserBounds(params.x, params.y, params.width, params.height);
    }
  }
});