checkClass("java.lang.Object");
qx.Class.define("org_apache_commons_httpclient_methods_StringRequestEntity", {
	extend: java_lang_Object,
	members:
	{
		content: 0,
		type: 0,
		encoding: 0,
		__init____java_lang_String_java_lang_String_java_lang_String: function(content, type, encoding) {
			this.content = content._str;
			this.type = type._str;
			this.encoding = encoding._str;
		},
		//Not part of official API
		getContent: function() {
			return this.content;
		},
		//Not part of official API
		getType: function() {
			return this.type;
		},
		//Not part of official API
		getEncoding: function() {
			return this.encoding;
		}
	}
});