checkClass("java.lang.Object");
qx.Class.define("java_net_URL", {
  extend: java_lang_Object,
  members:
  {
  
  	url: 0,
  	__init____java_lang_String: function(url) {
  		this.url = url._str;
  	},
  	_openStream: function() {
  		checkClass("java.io.InputStream");
  		var result = new java_io_InputStream();
  		
  		var response = XHRFunc.getURL(this.url, "", "", "", [['Content-Type','text/plain']]);
    	if (response.status == 200) {
    		result.setTextContent(response.responseText);
    	}

		//TODO: Not sure if returning null if length==0 is the right thing to do for all situations
    	if((response.status != 200) || (response.responseText.length == 0)) {
    		return new java_lang_null();
    	}
    	//console.log("XHR Response - status:" + response.status + " repsonseText.length:" + response.responseText.length);
    	return result;
    		
  	}
  }
});