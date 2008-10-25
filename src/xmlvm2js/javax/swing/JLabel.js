checkClass("java.awt.Component");
qx.Class.define("javax_swing_JLabel", {
	extend: java_awt_Component,
	construct: function() {
		this.qxCanvasLayout = new qx.ui.layout.CanvasLayout();
		this.qxLabel = new qx.ui.basic.Label("");
		this.qxCanvasLayout.add(this.qxLabel);
	},
	members:
	{
		qxCanvasLayout: 0,
		qxLabel: 0,
		qxImage: 0,
		__init____javax_swing_Icon: function(icon) {
			this.qxImage = new qx.ui.basic.Image(icon.getFileName());
			this.qxImage.setZIndex(0);
			this.qxCanvasLayout.add(this.qxImage);
		},
		_setBounds___int_int_int_int: function(x, y, width, height) {
			//TODO
			//console.log("TODO: JLabel._setBounds___int_int_int_int");
			this.qxCanvasLayout.setDimension(width, height);
			this.qxCanvasLayout.setLocation(x, y);
			//TODO: Maybe also resize dimension of enclosing label?
		},
		getQx: function() {
			//alert("HERE WE GO QX");
			return this.qxCanvasLayout;
		}
		
	}
});