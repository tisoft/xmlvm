qx.Class.define("android_view_View", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  $getContext: function() {
	    // TODO
	    return new android_content_Context();
      },
      $invalidate: function() {
    	  // TODO
      }
  }
});