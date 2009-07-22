qx.Class.define("android_view_ViewGroup", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
    this.qx = new qx.ui.container.Composite(new qx.ui.layout.Basic());
    // TODO: How can we make this composite to enlarge itself?
    if (android_view_Display.orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */) {
    	this.qx.setUserBounds(0, 0, 480, 320);
    } else {
        this.qx.setUserBounds(0, 0, 320, 480);
    }
    this.qx.set({allowGrowX: true, allowGrowY: true,
      allowShrinkX: true, allowShrinkY: true,
      margin: 0});
  },
  members: {
      $addView___android_view_View: function(view) {
        this.qx.add(view.getQX(), {});
      },
      $addView___android_view_View_android_view_ViewGroup$LayoutParams: function(view, params) {
        this.qx.add(view.getQX(), {});
        view.$setLayoutParams___android_view_ViewGroup$LayoutParams(params);
      },
      $addView___android_view_View_int: function(view, index) {
	      //this.qx.addAt(view.getQX(), qxIndex, {});
	      this.qx.add(view.getQX(), {});
    	  var qxIndex = -(this.qx.getChildren().length - index);
    	  view.getQX().setZIndex(qxIndex);
	  },
      $removeView___android_view_View: function(view) {
	      this.qx.remove(view.getQX());
	  },
	  $removeAllViews: function() {
		  this.qx.removeAll();
	  }
	  
  }
});