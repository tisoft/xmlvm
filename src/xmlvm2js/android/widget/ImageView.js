qx.Class.define("android_widget_ImageView", {
  extend: android_view_View,
  construct: function() {
    this.base(arguments);
    this.qx = new qx.ui.basic.Image(null);
    
    // // Need to mention it here so Qooxdoo picks the class up.
    android_widget_ImageView$ScaleType;
  },
  members: {
    $$init____android_content_Context: function(context) {
    },
    $setImageResource___int: function(resId) {
        android_internal_ResourceMapper.setImageWithId(this.qx, resId);
    	//this.qxImage.setZIndex(0);
    },
    $setScaleType___android_widget_ImageView$ScaleType: function(scaleType) {
    	WARN("ImageView.$setScaleType___android_widget_ImageView$ScaleType not implemented yet.");
    	//TODO: Implement.
    }
  }
});