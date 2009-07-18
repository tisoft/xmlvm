qx.Class.define("android_internal_SceneAssistant", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  theSceneAssistant: 0,
	  enableFullScreenMode: function(flag) {
          android_internal_SceneAssistant.theSceneAssistant.enableFullScreenMode(flag);
      }
  }
});