checkClass("java.lang.Object");
qx.Class.define("org_apache_commons_httpclient_methods_PutMethod", {
	extend: java_lang_Object,
	members:
	{
		url: 0,
		entity: 0,
		__init____java_lang_String: function(url) {
			this.url = url._str;
		},
		_setRequestEntity___org_apache_commons_httpclient_methods_RequestEntity: function(entity) {
			this.entity = entity;
		},
		//Not part of official API
		getURL: function() {
			return this.url;
		},
		//Not part of official API
		getEntity: function() {
			return this.entity;
		}
	}
});