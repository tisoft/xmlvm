qx.Class.define("android_view_ViewGroup", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  listener: 0,
	  $setOnTouchListener___android_view_View$OnTouchListener: function(listener) {
	    this.listener = listener;
	    this.qxComposite.addListener("mousedown", this.onMouseDown, this);
	    this.qxComposite.addListener("mousemove", this.onMouseMove, this);
	    this.qxComposite.addListener("mouseup", this.onMouseUp, this);
      },
      onMouseDown: function(event) {
    	  var e = new android_view_MotionEvent(0 /*ACTION_DOWN*/, event.getDocumentLeft(), event.getDocumentTop());
          this.listener.$onTouch___android_view_View_android_view_MotionEvent(this.qxComposite, e);
      },
      onMouseMove: function(event) {
    	  var e = new android_view_MotionEvent(2 /*ACTION_MOVE*/, event.getDocumentLeft(), event.getDocumentTop());
          this.listener.$onTouch___android_view_View_android_view_MotionEvent(this.qxComposite, e);
      },
      onMouseUp: function(event) {
    	  var e = new android_view_MotionEvent(1 /*ACTION_UP*/, event.getDocumentLeft(), event.getDocumentTop());
          this.listener.$onTouch___android_view_View_android_view_MotionEvent(this.qxComposite, e);
      }
  }
});