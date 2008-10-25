checkClass("java.lang.Object");
qx.Class.define("org_jdom_Document", {
	extend: java_lang_Object,
	statics:
	{
		//We use this instance to be able to create new Elements
		helperDocument : qx.xml.Document.create(),
		createElement: function(name) {
			return org_jdom_Document.helperDocument.createElement(name);
		},
		createTextNode: function(name) {
			return org_jdom_Document.helperDocument.createTextNode(name);
		}
	},
	members:
	{
		xmlDocument: 0,
		__init_: function() {
			this.xmlDocument = qx.xml.Document.create();
		},
		//Not part of the official API
		setXmlDocument: function(xmlDoc) {
			this.xmlDocument = xmlDoc;
		},
		//Not part of the official API
		getXmlDocument: function() {
			return this.xmlDocument;
		},
		_getRootElement: function() {
			checkClass("org.jdom.Element");
			var result = new org_jdom_Element();
			result.setXmlElement(this.xmlDocument.documentElement);
			return result;
		},
		_setRootElement___org_jdom_Element: function(element) {
			//TODO: Carefully try this on every browser
			this.xmlDocument = qx.xml.Document.create();
			this.xmlDocument.appendChild(element.getXmlElement());
		}
	}
});
