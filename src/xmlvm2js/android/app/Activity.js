qx.Class.define("android_app_Activity", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
    this.qxComposite = new qx.ui.container.Composite(new qx.ui.layout.Basic());
    // TODO: Hardcoded
    this.qxComposite.setUserBounds(0, 0, 320, 480);
    window.qxApp.getRoot().add(this.qxComposite);
  },  
  members: {
    qxComposite: 0,
    $onCreate___android_os_Bundle: function(bundle) {
    },
    $setContentView___android_view_View: function(view) {
      this.qxComposite.add(view.getQX(), {});
    }
  }
});