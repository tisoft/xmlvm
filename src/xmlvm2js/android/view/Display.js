qx.Class.define("android_view_Display", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	$getWidth: function() {
	    return 320;
    },
    $getHeight: function() {
	    return 480;
    }
  }
});