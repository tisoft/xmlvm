qx.Class.define("android_view_MotionEvent", {
  extend: android_view_View,
  construct: function(action, x, y) {
  	this.base(arguments);
  	this.action = action;
  	this.x = x;
  	this.y = y;
  },
  members: {
	  $getAction: function() {
	      return this.action;
      },
      $getX: function() {
    	  return this.x;
      },
      $getY: function() {
    	  return this.y;
      }
  }
});