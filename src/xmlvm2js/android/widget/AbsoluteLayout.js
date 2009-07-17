qx.Class.define("android_widget_AbsoluteLayout", {
  extend: android_view_ViewGroup,
  construct: function() {
    this.base(arguments);
    this.qxComposite = new qx.ui.container.Composite(new qx.ui.layout.Basic());
    // TODO: How can we make this composite to enlarge itself?
    this.qxComposite.setUserBounds(0, 0, 320, 480);
    this.qxComposite.set({allowGrowX: true, allowGrowY: true,
      allowShrinkX: true, allowShrinkY: true,
      margin: 0});
  },
  members: {
    qxComposite: 0,
    getQX: function() {
      return this.qxComposite;
    },
    $$init____android_content_Context: function(context) {
    },
    $addView___android_view_View: function(view) {
      this.qxComposite.add(view.getQX(), {});
    }
  }
});
