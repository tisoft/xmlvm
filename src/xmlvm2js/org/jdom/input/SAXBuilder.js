checkClass("java.lang.Object");
qx.Class.define("org_jdom_input_SAXBuilder", {
	extend: java_lang_Object,
	members:
	{
		_build___java_io_InputStream: function(stream) {
			if(stream instanceof java_lang_null)
				return new java_lang_null();
			checkClass("org.jdom.Document");
			var text = stream.getTextContent();
			//alert("SAXBuilder: About to build document of size: " + text.length);
			var result = new org_jdom_Document();
			var xmlDoc = qx.xml.Document.fromString(text);
			result.setXmlDocument(xmlDoc)
			return result
		}
	}
});