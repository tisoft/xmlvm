qx.Class.define("org_xmlvm_clr_WinFormsLayoutManager", {
  extend: qx.core.Object,
  construct: function(form)
  {
  	this.form = form;
  },
  members:
  {
  	window: 0,
  	
  	changeWidth: function(e)
  	{
  		if (e.getOldValue() == 'auto')
  			return;
  		var dx = e.getValue() - e.getOldValue();
  		if (dx != 0)
	  		this.doLayout(dx, 0);
  	},
  	changeHeight: function(e)
  	{
  		if (e.getOldValue() == 'auto')
  			return;
  		var dy = e.getValue() - e.getOldValue();
  		if (dy != 0)
	  		this.doLayout(0, dy);
  	},
  	doLayout: function(dx, dy)
  	{
  		if(this.form._controlCollection._children == undefined)
	  	{
	  	//TODO: ??? why do i need to do this? suspendlayout?
	  	return;
	  	}
  		var children = this.form._controlCollection._children;
  		for (var i = 0; childern != null &&  i < children.length; i++) {
  			var child = children[i];
			var styles = child._styles._value__;
			var x      = child._x;
			var y      = child._y;
			var width  = child._width;
			var height = child._height;
            if ((styles & System_Windows_Forms_AnchorStyles.Right) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Left) == 0) {
                    // Align control with right border, but don't resize
                    x += dx;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Right) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Left) != 0) {
                    // Resize control to match new width
                    width += dx;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Bottom) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Top) == 0) {
                    // Align control with bottom border, but don't resize
                    y += dy;
            }
            if ((styles & System_Windows_Forms_AnchorStyles.Bottom) != 0 &&
                (styles & System_Windows_Forms_AnchorStyles.Top) != 0) {
                    // Resize control to match new height
                    height += dy;
            }
            child.setLocation(x, y);
            child.setSize(width, height);
  		}
  	}
  }
});