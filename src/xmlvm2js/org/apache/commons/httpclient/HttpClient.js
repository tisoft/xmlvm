checkClass("java.lang.Object");
checkClass("org.apache.commons.httpclient.methods.GetMethod");
checkClass("org.apache.commons.httpclient.methods.PutMethod");
qx.Class.define("org_apache_commons_httpclient_HttpClient", {
	extend: java_lang_Object,
	members:
	{
		_executeMethod___org_apache_commons_httpclient_HttpMethod: function(method) {
			if(method instanceof org_apache_commons_httpclient_methods_GetMethod) {
		  		var response = XHRFunc.getURL(method.getURL(), "", "", "", [['Content-Type','text/plain']]);
    			if (response.status == 200) {
					method.setRespsonseBody(response.responseText);
    			}

				return response.status;
			}else if(method instanceof org_apache_commons_httpclient_methods_PutMethod) {
				var entity = method.getEntity();
				if(!(entity instanceof org_apache_commons_httpclient_methods_StringRequestEntity)) {
					console.log("ERROR: Only StringRequestEntity supported");
					return;
				}
				var contentType = entity.getType() + "; charset=" + entity.getEncoding();
				var response = XHRFunc.putURL(method.getURL(), "", "", entity.getContent(), [['Content-Type', contentType]]);
				console.log("PUT RETURNED: " + response.status);
				return response.status;
			}else {
				console.log("TODO: HttpClient.executeMethod(): UNKNOWN METHOD");
			}
		}
	}
});