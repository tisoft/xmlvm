qx.Class.define("android_view_WindowManager", {
  extend: android_view_View,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  $getDefaultDisplay: function() {
	    return new android_view_Display();
      }
  }
});