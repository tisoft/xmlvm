qx.Class.define("java_io_InputStream", {
  extend: java_lang_Object,
  members:
  {
  	//TODO: Although InputStream should be byte-oriented, we handle ASCII here.
  	textContent: 0,
  	xmlContent: 0,
  	setTextContent: function(text) {
  		this.textContent = text;
  	},
  	setXmlContent: function(xml) {
  		this.xmlContent = xml;
  	},
  	getTextContent: function() {
  		return this.textContent;
  	},
  	getXmlContent: function() {
  		return this.xmlContent;
  	}
  }
});