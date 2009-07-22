qx.Class.define("java_lang_Math", {
  extend: java_lang_Object,
  statics:
  {
  	$random: function() {
  		return Math.random();
  	},
  	$abs___float: function(f) {
  		return f < 0 ? f * -1.0 : f;
  	},
  	$abs___int: function(i) {
  		return i < 0 ? i * -1 : i;
  	}
  }
});
