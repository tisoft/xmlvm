qx.Class.define("java_lang_Enum", {
  extend: java_lang_Object,
  members: {
	name: "",
	ordinal: 0,
	$$init____java_lang_String_int: function(name, ordinal) {
	  this.name = name;
	  this.ordinal = ordinal;
    },
    $name: function() {
      return this.name;
    },
    $ordinal: function() {
      return this.ordinal;
    },
    $toString: function() {
      return this.$name();
    }
  }
});
