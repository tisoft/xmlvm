checkClass("java.awt.LayoutManager");
qx.Class.define("java_awt_GridLayout", {
	extend: java_awt_LayoutManager,
	construct: function() {
		this.qxGridLayout = new qx.ui.layout.GridLayout();
	},
	members:
	{
		qxGridLayout: 0,
		elementCount: 0,
		_rows: 0,
		_cols: 0,
		__init____int_int: function(rows, cols) {
			this.qxGridLayout.setColumnCount(cols);
			this.qxGridLayout.setRowCount(cols);
			//Workaround
			for(i=0; i<cols; ++i) {
			  this.qxGridLayout.setColumnWidth(i, 150);
			}
			for(i=0; i<rows; ++i) {
			  this.qxGridLayout.setRowHeight(i, 20);
			}
			this._rows = rows;
			this._cols = cols;
			this.qxGridLayout.setWidth("100%");
			this.qxGridLayout.setHeight("100%");
			
		},
		getQx: function(){
			return this.qxGridLayout;
		},
		addComponent: function(component) {
			c = this.elementCount % this._cols;
			r = parseInt(this.elementCount / this._cols);
			this.qxGridLayout.add(component.getQx(), c, r);
			this.elementCount++;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxGridLayout.setLocation(x, y);
			this.qxGridLayout.setDimension(width, height);
		}
	}
});
