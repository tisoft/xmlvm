qx.Class.define("org_apache_commons_httpclient_methods_GetMethod", {
	extend: java_lang_Object,
	members:
	{
		url: 0,
		responseBodyStr: 0,
		$$init____java_lang_String: function(url) {
			this.url = url.$str;
		},
		$getResponseBodyAsString: function() {
			return new java_lang_String(this.responseBodyStr);
		},
		
		//Not part of official API
		setRespsonseBody: function(value) {
			this.responseBodyStr = value;
		},
		
		//Not part of official API
		getURL: function() {
			return this.url;
		}
	}
});