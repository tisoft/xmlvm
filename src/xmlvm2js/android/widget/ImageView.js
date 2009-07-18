qx.Class.define("android_widget_ImageView", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
    this.qxImage = new qx.ui.basic.Image(null);
  },
  members: {
    qxImage: 0,
    x: 0,
    y: 0,
    rnd: 0,
    width: 20, // TODO
    height: 20, // TODO
    getQX: function() {
      return this.qxImage;
    },
    $$init____android_content_Context: function(context) {
    },
    $setLayoutParams___android_view_ViewGroup$LayoutParams: function(params) {
      this.x = params.$x;
      this.y = params.$y;
      //TODO this.width = params.width;
      //TODO this.height = params.height;
      // TODO: Width and height may have special case like -1 and -2 ...
      this.qxImage.setUserBounds(this.x, this.y, this.width, this.height);
    },
    $getLayoutParams: function() {
    	var p = new android_widget_AbsoluteLayout$LayoutParams();
    	p.$x = this.x;
    	p.$y = this.y;
    	p.$width = this.width;
    	p.$height = this.height;
    	return p;
    },
    $setImageResource___int: function(resId) {
        android_internal_ResourceMapper.setImageWithId(this.qxImage, resId);
    	//this.qxImage.setZIndex(0);
    }
  }
});