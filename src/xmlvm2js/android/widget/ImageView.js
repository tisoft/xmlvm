qx.Class.define("android_widget_ImageView", {
  extend: android_view_View,
  construct: function() {
    this.base(arguments);
    this.qx = new qx.ui.basic.Image(null);
  },
  members: {
    $$init____android_content_Context: function(context) {
    },
    $setImageResource___int: function(resId) {
        android_internal_ResourceMapper.setImageWithId(this.qx, resId);
    	//this.qxImage.setZIndex(0);
    }
  }
});