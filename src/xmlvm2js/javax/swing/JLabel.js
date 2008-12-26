qx.Class.define("javax_swing_JLabel", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.container.Composite(new qx.ui.layout.Basic());
		this.qxLabel = new qx.ui.basic.Label("");
		this.qxComponent.add(this.qxLabel);
	},
	members:
	{
		qxLabel: 0,
		qxImage: 0,
		$$init____javax_swing_Icon: function(icon) {
		//TODO
			this.qxImage = new qx.ui.basic.Image(icon.getFileName());
			this.qxImage.setZIndex(0);
			this.qxComponent.add(this.qxImage);
		}
	}
});