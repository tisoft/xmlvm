qx.Class.define("android_widget_AbsoluteLayout$LayoutParams", {
  extend: java_lang_Object,
  construct: function() {
    this.base(arguments);
  },
  members: {
    width: 0,
    height: 0,
    x: 0,
    y: 0,
    $$init____int_int_int_int: function(width, height, x, y) {
      this.width = width;
      this.height = height;
      this.x = x;
      this.y = y;
    }
  }
});