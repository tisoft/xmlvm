checkClass("java.lang.Object");
checkClass("org.jdom.Document");
qx.Class.define("org_jdom_Element", {
	extend: java_lang_Object,
	members:
	{
		xmlElement: 0,
		//Not part of the official API
		setXmlElement: function(xmlElem) {
			this.xmlElement = xmlElem;
		},
		//Not part of the official API
		getXmlElement: function() {
			return this.xmlElement;
		},
		__init____java_lang_String: function(name) {
			//This is a helper function we are using to create XML DOM Elements
			this.xmlElement = org_jdom_Document.createElement(name._str);
			console.log(this.xmlElement);
		},
		_getChildren: function() {
			var jsArray = new Array();
			for(i=0; i<this.xmlElement.childNodes.length; ++i) {
				//1 -> document.ELEMENT_NODE or Node.ELEMENT_NODE  (doesn't exist in IE)
				if(this.xmlElement.childNodes[i].nodeType == 1) {
					var e = new org_jdom_Element();
					e.setXmlElement(this.xmlElement.childNodes[i]);
					jsArray.push(e);
				}
			}
			checkClass("java.util.ArrayList");
			var result = new java_util_ArrayList();
			result.setJsArray(jsArray);
			return result;
		},
		_getChild___java_lang_String: function(tagName) {
			if(this.xmlElement.getElementsByTagName(tagName._str)[0] == undefined) {
				return new java_lang_null;
			}
			var result = new org_jdom_Element();
			result.setXmlElement(this.xmlElement.getElementsByTagName(tagName._str)[0]);
			return result;
		},
		_getText: function() {
			checkClass("java.lang.String");
			return new java_lang_String(qx.xml.Element.getText(this.xmlElement));
		},
		_getAttributeValue___java_lang_String: function(attrName) {
			checkClass("java.lang.String");			
			return new java_lang_String(this.xmlElement.getAttribute(attrName._str));
		},
		_getChildText___java_lang_String: function(childName) {
			//TODO: Adds checks and if needed return 'new java_lang_null'
			return this._getChild___java_lang_String(childName)._getText();
		},
		_setAttribute___java_lang_String_java_lang_String: function(name, value) {
			this.xmlElement.setAttribute(name._str, value._str);
		},
		_setText___java_lang_String: function(value) {
			if(value == undefined){
				return;
			}
			var textNode = org_jdom_Document.createTextNode(value._str);
			this.xmlElement.appendChild(textNode);
		},
		_addContent___org_jdom_Content: function(content) {
			if(content instanceof org_jdom_Element) {
				this.xmlElement.appendChild(content.getXmlElement());
			}else {
				console.log("WARNING: Element.addContent not supported for content other than Element!");
			}
		},
		_detach: function() {
			this.xmlElement.parentNode.removeChild(this.xmlElement);
		}
	}
});
