qx.Class.define("java_awt_Color", {
	extend: java_lang_Object,
	construct: function() {
		this.r = 0;
		this.g = 0;
		this.b = 0;
	},
	statics:
	{
		$$$BLACK: 0,
		$$$WHITE: 0
	},
	members:
	{
		r:0,
		g:0,
		b:0,
		$$init____float_float_float: function(newR, newG, newB) {
			this.r = newR;
			this.g = newG;
			this.b = newB;
		}
	}
});

java_awt_Color.$BLACK = new java_awt_Color();
java_awt_Color.$BLACK.$$init____float_float_float(0,0,0);
java_awt_Color.$WHITE = new java_awt_Color();
java_awt_Color.$WHITE.$$init____float_float_float(255,255,255);