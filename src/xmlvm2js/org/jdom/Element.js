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
		$$init____java_lang_String: function(name) {
			//This is a helper function we are using to create XML DOM Elements
			this.xmlElement = org_jdom_Document.createElement(name.$str);
			console.log(this.xmlElement);
		},
		$getChildren: function() {
			var jsArray = new Array();
			for(i=0; i<this.xmlElement.childNodes.length; ++i) {
				//1 -> document.ELEMENT_NODE or Node.ELEMENT_NODE  (doesn't exist in IE)
				if(this.xmlElement.childNodes[i].nodeType == 1) {
					var e = new org_jdom_Element();
					e.setXmlElement(this.xmlElement.childNodes[i]);
					jsArray.push(e);
				}
			}
			var result = new java_util_ArrayList();
			result.setJsArray(jsArray);
			return result;
		},
		$getChild___java_lang_String: function(tagName) {
			if(this.xmlElement.getElementsByTagName(tagName.$str)[0] == undefined) {
				return new java_lang_null;
			}
			var result = new org_jdom_Element();
			result.setXmlElement(this.xmlElement.getElementsByTagName(tagName.$str)[0]);
			return result;
		},
		$getText: function() {
			return new java_lang_String(qx.xml.Element.getText(this.xmlElement));
		},
		$getAttributeValue___java_lang_String: function(attrName) {
			return new java_lang_String(this.xmlElement.getAttribute(attrName.$str));
		},
		$getChildText___java_lang_String: function(childName) {
			//TODO: Adds checks and if needed return 'new java_lang_null'
			return this.$getChild___java_lang_String(childName).$getText();
		},
		$setAttribute___java_lang_String_java_lang_String: function(name, value) {
			this.xmlElement.setAttribute(name.$str, value.$str);
		},
		$setText___java_lang_String: function(value) {
			if(value == undefined){
				return;
			}
			var textNode = org_jdom_Document.createTextNode(value.$str);
			this.xmlElement.appendChild(textNode);
		},
		$addContent___org_jdom_Content: function(content) {
			if(content instanceof org_jdom_Element) {
				this.xmlElement.appendChild(content.getXmlElement());
			}else {
				console.log("WARNING: Element.addContent not supported for content other than Element!");
			}
		},
		$detach: function() {
			this.xmlElement.parentNode.removeChild(this.xmlElement);
		}
	}
});
