qx.Class.define("android_internal_ResourceMapper", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics: {
	  imageMap: {},
	  
	  setImageWithId: function(image, resourceId) {
		 var fileName = android_internal_ResourceMapper.imageMap[resourceId];
	     if (!fileName) {
             fileName = android_internal_ResourceMapper.findVariableById(resourceId);
             fileName += ".png";
             android_internal_ResourceMapper.imageMap[resourceId] = fileName;
	     }
	     image.setSource(fileName);
     },
     findVariableById: function(resourceId) {
    	 var activityPackageName = android_app_Activity.theActivityClassName;
    	 var i = activityPackageName.lastIndexOf('_');
         activityPackageName = activityPackageName.substring(0, i);

         var rClassName = activityPackageName + "_R$drawable";
         var clazz = qx.Class.getByName(rClassName);
         for (var m in clazz) {
    		if (clazz[m] == resourceId) {
    			// String off leading '$'
    			return m.substring(1);
    		}
         }
         return "";
    }
  }
});