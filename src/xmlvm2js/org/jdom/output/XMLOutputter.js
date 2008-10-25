checkClass("java.lang.Object");
qx.Class.define("org_jdom_output_XMLOutputter", {
	extend: java_lang_Object,
	members:
	{
		format: 0,
		__init____org_jdom_output_Format: function(format) {
			this.format = format;
		},
		_outputString___org_jdom_Document: function(doc) {
			var xmlDocument = doc.getXmlDocument();
			var output = qx.xml.Element.serialize(xmlDocument);
			return new java_lang_String(output);
		}
	}
});