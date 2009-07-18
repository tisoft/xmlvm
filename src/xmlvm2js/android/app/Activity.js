qx.Class.define("android_app_Activity", {
  extend: android_content_Context, // TODO not quite right base class
  construct: function() {
    this.base(arguments);
    this.qxComposite = new qx.ui.container.Composite(new qx.ui.layout.Basic());
    // TODO: Hardcoded
    this.qxComposite.setUserBounds(0, 0, 320, 480);
    // Android has a black background as default
    this.qxComposite.setBackgroundColor("black");
    //window.qxApp.getRoot().add(this.qxComposite);
    qx.core.Init.getApplication().getRoot().add(this.qxComposite);
    // TODO hack
    android_app_Activity.theActivity = "org_xmlvm_demo_afireworks_AndroidFireworks";
  },
  statics: {
	  theActivity: 0
  },
  members: {
    qxComposite: 0,
    $onCreate___android_os_Bundle: function(bundle) {
    },
    $setContentView___android_view_View: function(view) {
      this.qxComposite.add(view.getQX(), {});
    },
    $requestWindowFeature___int: function(feature) {
    	// TODO
    },
    $getWindow: function() {
    	// TODO
    	return new android_view_Window();
    },
    $getWindowManager: function() {
    	return new android_view_WindowManager();
    }
  }
});