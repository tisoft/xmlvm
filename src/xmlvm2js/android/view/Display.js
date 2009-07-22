qx.Class.define("android_view_Display", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  orientation: 1
  },
  members: {
	$getWidth: function() {
	    return android_view_Display.orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */ ? 480 : 320;
    },
    $getHeight: function() {
	    return android_view_Display.orientation == 0 /* SCREEN_ORIENTATION_LANDSCAPE */ ? 320 : 480;
    }
  }
});