qx.Class.define("android_internal_SceneAssistant", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  theSceneAssistant: null,
	  enableFullScreenMode: function(flag) {
	      if (android_internal_SceneAssistant.theSceneAssistant) {
              android_internal_SceneAssistant.theSceneAssistant.controller.enableFullScreenMode(flag);
	      }
      }
  }
});