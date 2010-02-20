
qx.Class.define("java_awt_FlowLayout", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $$$LEFT: 0,
    $$$CENTER: 0,
    $$$RIGHT: 0,
    $$$LEADING: 0,
    $$$TRAILING: 0,
    $$$serialVersionUID: 0,
    $$$currentSerialVersion: 0
  }, //statics

  members:
  {
    $$$align: 0,
    $$$newAlign: 0,
    $$$hgap: 0,
    $$$vgap: 0,
    $$$alignOnBaseline: 0,
    $$$serialVersionOnStream: 0,
    $$init_ : function()
    {
        this.layout = new qx.ui.layout.HBox();
        this.layout.setAlignX('left');
        this.layout.setAlignY('top');
        this.hgap = 0;
        this.vgap = 0;
    },
    $$init____int : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $$init____int_int_int : function( __arg1,  __arg2,  __arg3)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getQXLayoutManager : function()
    {
        return this.layout;
    },
    $getQXLayoutProperties___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
        var constraints = {allowGrowX: false, allowGrowY: false,
                           paddingTop: this.vgap, paddingBottom: this.vgap};
        if (this.layout.getAlignX() == 'right')
          constraints.paddingRight = this.hgap;
        else
          constraints.paddingLeft = this.hgap;
        __arg1.getQX().set(constraints);
        return {};
    },
    $getAlignment : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setAlignment___int : function( __arg1)
    {
        var align = __arg1;
        if (align == 2)
          this.layout.setAlignX('right');
        else
          console.log("FlowLayout.setAlignment: unknown align: " + align);
    },
    $getHgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setHgap___int : function( __arg1)
    {
        this.hgap = __arg1;
    },
    $getVgap : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $setVgap___int : function( __arg1)
    {
        this.vgap = __arg1;
    },
    $setAlignOnBaseline___boolean : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getAlignOnBaseline : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $addLayoutComponent___java_lang_String_java_awt_Component : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $removeLayoutComponent___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $preferredLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $minimumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $moveComponents___java_awt_Container_int_int_int_int_int_int_boolean_boolean_int_ARRAYTYPE_int_ARRAYTYPE : function( __arg1,  __arg2,  __arg3,  __arg4,  __arg5,  __arg6,  __arg7,  __arg8,  __arg9,  __arg10,  __arg11)
    {
    	throw "NOT IMPLEMENTED";
    },
    $layoutContainer___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $readObject___java_io_ObjectInputStream : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
