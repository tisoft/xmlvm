qx.Class.define("org_jdom_output_XMLOutputter", {
	extend: java_lang_Object,
	members:
	{
		format: 0,
		$$init____org_jdom_output_Format: function(format) {
			this.format = format;
		},
		$outputString___org_jdom_Document: function(doc) {
			var xmlDocument = doc.getXmlDocument();
			var output = qx.xml.Element.serialize(xmlDocument);
			return new java_lang_String(output);
		}
	}
});