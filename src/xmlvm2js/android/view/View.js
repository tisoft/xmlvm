qx.Class.define("android_view_View", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  qx: 0,
	  getQX: function() {
	    return this.qx;
      },
      $setLayoutParams___android_view_ViewGroup$LayoutParams: function(params) {
          // TODO: Width and height may have special case like -1 and -2 ...
    	  this.qx.setMarginLeft(params.$x);
    	  this.qx.setMarginTop(params.$y);
    	  if (params.$width >=0) {
    		  this.qx.setWidth(params.$width);
    	  }
    	  if (params.$height >=0) {
    		  this.qx.setHeight(params.$height);
    	  }
      },
      $getLayoutParams: function() {
      	var p = new android_widget_AbsoluteLayout$LayoutParams();
    	p.$x = this.qx.getLeftMargin();
    	p.$y = this.qx.getTopMargin();
    	p.$width = this.qx.getWidth();
    	p.$height = this.qx.getHeight();
    	return p;
      },
	  $getContext: function() {
	    // TODO
	    return new android_content_Context();
      },
      $invalidate: function() {
    	  // TODO
      },

	  touchListener: 0,
	  mouseDown: 0,

	  $setOnTouchListener___android_view_View$OnTouchListener: function(listener) {
  	    this.touchListener = listener;
  	    this.qx.addListener("mousedown", this.onMouseDown, this);
  	    this.qx.addListener("mousemove", this.onMouseMove, this);
  	    this.qx.addListener("mouseup", this.onMouseUp, this);
      },
      onMouseDown: function(event) {
    	this.mouseDown = 1;
        var e = new android_view_MotionEvent(0 /*ACTION_DOWN*/, event.getDocumentLeft(), event.getDocumentTop());
        this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
      },
      onMouseMove: function(event) {
    	if (this.mouseDown) {
          var e = new android_view_MotionEvent(2 /*ACTION_MOVE*/, event.getDocumentLeft(), event.getDocumentTop());
          this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
    	}
      },
      onMouseUp: function(event) {
    	this.mouseDown = 0;
        var e = new android_view_MotionEvent(1 /*ACTION_UP*/, event.getDocumentLeft(), event.getDocumentTop());
        this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
      },

	  clickListener: 0,

	  $setOnClickListener___android_view_View$OnClickListener: function(listener) {
  	    this.clickListener = listener;
  	    this.qx.addListener("execute", this.onClick, this);
      },
      onClick: function(event) {
        this.clickListener.$onClick___android_view_View(this.qx);
      }

  }
});