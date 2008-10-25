checkClass("java.awt.Window");
qx.Class.define("java_awt_Frame", {
	extend: java_awt_Window,
	construct: function () {
		this.anchor = document.getElementById("XML11_ROOT");
		if(this.anchor != undefined){
			console.log("Embedding Window into XML11_ROOT");
			this.xml11Embeded = true;
			this.qxWindow = new qx.ui.layout.CanvasLayout();
			this.anchor.id = "XML11_ROOT_OCCUPIED";
		}else{
			this.xml11Embeded = false;
			this.qxWindow = new qx.ui.window.Window();
			this.qxCanvasLayout = new qx.ui.layout.CanvasLayout();
			this.qxCanvasLayout.setLocation(0,-10);
			//Right now we don't support minimizing, as windows would
			//go to nowhere
			this.qxWindow.setAllowMinimize(false);
		}
	},
	members:
	{
		qxWindow: 0,
		xml11Embeded: 0,
		xml11Anchor: 0,
		//This Canvas layout is used to correct a difference in layouting
		//between AWT and qooxdoo. In AWT coordinate (0,0) is in the upper
		//left corner of the window, which also includes the title bar. In
		//order to place a widget into the visible area, you have to push it
		//down a little. In qooxdoo (0,0) is beneath this title bar. So we use
		//a CanvasLayout to push AWT elements up a little again.
		//TODO
		qxCanvasLayout: 0,
		__init_: function() {
			this.qxWindow.addEventListener("appear", function(e) {
				document.getElementsByTagName("body")[0].style.backgroundColor = "#FFFFFF";
			});
		},
		__init____java_lang_String: function(title) {
			this.__init_();
			if(!this.xml11Embeded)
				this.qxWindow.setCaption(title._str);
		},
		_add___java_awt_Component: function(component) {
			this.qxWindow.add(component.getQx());
		},
		_add___java_awt_Component_java_lang_Object: function(component, constraints) {
			this.qxWindow.add(component.getQx());
		},
		// Not part of official API
		getQx: function() {
			return this.qxWindow;
		},
		_pack: function() {
		},
		_setVisible___boolean: function(visible) {
			var frame = this;
			if(visible) {
				//If XML11_ROOT is defined, the main window is expected to be embedded
				if(this.xml11Embeded){
					this.qxWindow.addToDocument();
				}else {
					this.qxWindow.addToDocument();
					this.qxWindow.open();
				}
			}else{
				this.qxWindow.close();
			}
		},
		_setResizable___boolean: function(resizable) {
			if(this.xml11Embeded)
				return;
			if(resizable == 0) resizable = false;
			else resizable = true;
			this.qxWindow.setResizable(resizable, resizable, resizable, resizable);
		},
		_setSize___java_awt_Dimension: function(size) {
			this.qxWindow.setWidth(size._getWidth());
			this.qxWindow.setHeight(size._getHeight());
		},
		_setSize___int_int: function(width, height) {
			this.qxWindow.setWidth(width);
			this.qxWindow.setHeight(height);
		},
		_setTitle___java_lang_String: function(title) {
			if(this.xml11Embeded)
				return;
		
			this.qxWindow.setCaption(title._str);
		},
		_setBackground___java_awt_Color: function(color) {
			if(color == undefined){
				this.qxWindow.setBackgroundColor("white");
				return;
			}
			this.qxWindow.setBackgroundColor("rgb(" + color.r + "," + color.g + "," + color.b + ")");
		},
		_setLayout___java_awt_LayoutManager: function(manager) {
			//TODO
			console.log("TODO: Frame._setLayout___java_awt_LayoutManager");
		},
		_getWidth: function() {
			return this.qxWindow.getWidth();
		},
		_getHeight: function() {
			return this.qxWindow.getHeight();
		},
		_setLocation___int_int: function(x, y) {
			this.qxWindow.setLocation(x, y);
		},
		_validate: function() {
			//Is there a need to implement this?
		}
	}
});