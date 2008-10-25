checkClass("System.Windows.Forms.Control");

qx.Class.define("System_Windows_Forms_PictureBox", {
  extend: System_Windows_Forms_Control,
	members:
	{
		qxImage: 0,

  	 	__init_: function()
  	 	{
			this._component = new qx.ui.layout.CanvasLayout();
  		},
  		_set_Image___System_Drawing_Image: function(image)
  	 	{
			this.qxImage = new qx.ui.basic.Image(image.fileName._str);
			this._component.add(this.qxImage);
  	 	}
  }
});