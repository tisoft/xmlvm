
checkClass("java.lang.Object");

qx.Class.define("org_xmlvm_demo_Calculator", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    initClass: function() {
      this.classInitialized = true;
      //__clinit_();
    },

    _main___java_lang_String_ARRAYTYPE : function( __arg1)
    {
      var __locals = new Array(1);
      var __stack = new Array(2);
      var __sp = 0;
      var __op1;
      var __op2;
     	__locals[0] = __arg1;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 0:
             checkClass("org.xmlvm.demo.Calculator");

            __stack[__sp++] = new org_xmlvm_demo_Calculator();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("org.xmlvm.demo.Calculator");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._init();
            case 1:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    }
  }, //statics

  members:
  {
    _display: 0,
    _keys: 0,
    _maxLength: 0,
    _output: 0,
    _decimal: 0,
    _result: 0,
    _operation: 0,
    _newNumber: 0,
    _finished: 0,
    _memory: 0,
    _memoryValue: 0,
    __init_ : function()
    {
      var __locals = new Array(1);
      var __stack = new Array(2);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 0:
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.Object");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 20;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._maxLength = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._decimal = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0.0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._finished = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memory = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0.0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memoryValue = __op2;
            case 1:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _init : function()
    {
      var __locals = new Array(3);
      var __stack = new Array(6);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 0:
             checkClass("java.awt.Frame");

            __stack[__sp++] = new java_awt_Frame();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.awt.Frame");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
            __locals[1] = __stack[--__sp];
            case 2:
            __stack[__sp++] = __locals[1];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("XML11 Calculator");
             checkClass("java.awt.Frame");

            __sp -= 2;
            __stack[__sp]._setTitle___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.FlowLayout");

            __stack[__sp++] = new java_awt_FlowLayout();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.awt.FlowLayout");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
             checkClass("java.awt.Frame");

            __sp -= 2;
            __stack[__sp]._setLayout___java_awt_LayoutManager(__stack[__sp + 1]);
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.Font");

            __stack[__sp++] = new java_awt_Font();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("Helvetica");
            __stack[__sp++] = 0;
            __stack[__sp++] = 12;
             checkClass("java.awt.Font");

            __sp -= 4;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String_int_int.call(__stack[__sp], __stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String_int_int(__stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
            }
             checkClass("java.awt.Frame");

            __sp -= 2;
            __stack[__sp]._setFont___java_awt_Font(__stack[__sp + 1]);
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.Color");

            __stack[__sp++] = java_awt_Color._white;
             checkClass("java.awt.Frame");

            __sp -= 2;
            __stack[__sp]._setBackground___java_awt_Color(__stack[__sp + 1]);
             checkClass("java.awt.Panel");

            __stack[__sp++] = new java_awt_Panel();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
            __locals[2] = __stack[--__sp];
            case 4:
            __stack[__sp++] = __locals[2];
             checkClass("java.awt.BorderLayout");

            __stack[__sp++] = new java_awt_BorderLayout();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.awt.BorderLayout");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setLayout___java_awt_LayoutManager(__stack[__sp + 1]);
            __stack[__sp++] = __locals[2];
             checkClass("java.awt.Font");

            __stack[__sp++] = new java_awt_Font();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("Helvetica");
            __stack[__sp++] = 0;
            __stack[__sp++] = 12;
             checkClass("java.awt.Font");

            __sp -= 4;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String_int_int.call(__stack[__sp], __stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String_int_int(__stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
            }
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setFont___java_awt_Font(__stack[__sp + 1]);
            __stack[__sp++] = __locals[2];
             checkClass("java.awt.Color");

            __stack[__sp++] = java_awt_Color._lightGray;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setBackground___java_awt_Color(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
             checkClass("java.awt.TextField");

            __stack[__sp++] = new java_awt_TextField();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._maxLength;
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 + __op2;
             checkClass("java.awt.TextField");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____int.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____int(__stack[__sp + 1]);
            }
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._display = __op2;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._display;
            __stack[__sp++] = 0;
             checkClass("java.awt.TextField");

            __sp -= 2;
            __stack[__sp]._setEditable___boolean(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._display;
             checkClass("java.awt.Font");

            __stack[__sp++] = new java_awt_Font();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("Helvetica");
            __stack[__sp++] = 0;
            __stack[__sp++] = 12;
             checkClass("java.awt.Font");

            __sp -= 4;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String_int_int.call(__stack[__sp], __stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String_int_int(__stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
            }
             checkClass("java.awt.TextField");

            __sp -= 2;
            __stack[__sp]._setFont___java_awt_Font(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._display;
             checkClass("java.awt.Color");

            __stack[__sp++] = java_awt_Color._white;
             checkClass("java.awt.TextField");

            __sp -= 2;
            __stack[__sp]._setBackground___java_awt_Color(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
             checkClass("java.awt.Panel");

            __stack[__sp++] = new java_awt_Panel();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 1;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init_.call(__stack[__sp]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init_();
            }
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._keys = __op2;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
             checkClass("java.awt.GridLayout");

            __stack[__sp++] = new java_awt_GridLayout();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = 5;
            __stack[__sp++] = 5;
             checkClass("java.awt.GridLayout");

            __sp -= 3;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____int_int.call(__stack[__sp], __stack[__sp + 1], __stack[__sp + 2]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____int_int(__stack[__sp + 1], __stack[__sp + 2]);
            }
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setLayout___java_awt_LayoutManager(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
             checkClass("java.awt.Font");

            __stack[__sp++] = new java_awt_Font();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("Helvetica");
            __stack[__sp++] = 0;
            __stack[__sp++] = 12;
             checkClass("java.awt.Font");

            __sp -= 4;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String_int_int.call(__stack[__sp], __stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String_int_int(__stack[__sp + 1], __stack[__sp + 2], __stack[__sp + 3]);
            }
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setFont___java_awt_Font(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
             checkClass("java.awt.Color");

            __stack[__sp++] = java_awt_Color._lightGray;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __stack[__sp]._setBackground___java_awt_Color(__stack[__sp + 1]);
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("+/-");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("AC");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("M+");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("7");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("8");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("9");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("/");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("M-");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("4");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("5");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("6");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("x");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("MR");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("1");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("2");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("3");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("-");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("MC");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String(".");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("=");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("+");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype._addButton___java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp]._addButton___java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __op1;
             checkClass("java.awt.Panel");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("North");
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._display;
             checkClass("java.awt.Panel");

            __sp -= 3;
            __op1 = __stack[__sp]._add___java_lang_String_java_awt_Component(__stack[__sp + 1], __stack[__sp + 2]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("Center");
             checkClass("java.awt.Label");

            __stack[__sp++] = new java_awt_Label();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
             checkClass("java.awt.Label");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
             checkClass("java.awt.Panel");

            __sp -= 3;
            __op1 = __stack[__sp]._add___java_lang_String_java_awt_Component(__stack[__sp + 1], __stack[__sp + 2]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("South");
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._keys;
             checkClass("java.awt.Panel");

            __sp -= 3;
            __op1 = __stack[__sp]._add___java_lang_String_java_awt_Component(__stack[__sp + 1], __stack[__sp + 2]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            __stack[__sp++] = __locals[1];
            __stack[__sp++] = __locals[2];
             checkClass("java.awt.Frame");

            __sp -= 2;
            __op1 = __stack[__sp]._add___java_awt_Component(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __sp--;
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.Frame");

            __sp -= 1;
            __stack[__sp]._pack();
            __stack[__sp++] = __locals[1];
            __stack[__sp++] = 1;
             checkClass("java.awt.Frame");

            __sp -= 2;
            __stack[__sp]._setVisible___boolean(__stack[__sp + 1]);
            case 1:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _addButton___java_lang_String : function( __arg1)
    {
      var __locals = new Array(3);
      var __stack = new Array(3);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
     	__locals[1] = __arg1;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 0:
             checkClass("java.awt.Button");

            __stack[__sp++] = new java_awt_Button();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.Button");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
            __locals[2] = __stack[--__sp];
            case 4:
            __stack[__sp++] = __locals[2];
            __stack[__sp++] = __locals[0];
             checkClass("java.awt.Button");

            __sp -= 2;
            __stack[__sp]._addActionListener___java_awt_event_ActionListener(__stack[__sp + 1]);
            __stack[__sp++] = __locals[2];
            case 1:
            return __stack[--__sp];
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _updateDisplay : function()
    {
      var __locals = new Array(3);
      var __stack = new Array(3);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 5:
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __locals[1] = __stack[--__sp];
            case 7:
            __stack[__sp++] = 1;
            __locals[2] = __stack[--__sp];
            case 9:
            __next_label = 0; break;
            case 4:
            __stack[__sp++] = __locals[2];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 != __op2) { __next_label = 1; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._memory;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 1; break }
             checkClass("java.lang.StringBuilder");

            __stack[__sp++] = new java_lang_StringBuilder();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[1];
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = java_lang_String._valueOf___java_lang_Object(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("M");
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            __op1 = __stack[__sp]._append___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 1;
            __op1 = __stack[__sp]._toString();
            __stack[__sp++] = __op1;
            __locals[1] = __stack[--__sp];
            __next_label = 3; break;
            case 1:
             checkClass("java.lang.StringBuilder");

            __stack[__sp++] = new java_lang_StringBuilder();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[1];
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = java_lang_String._valueOf___java_lang_Object(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("_");
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            __op1 = __stack[__sp]._append___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 1;
            __op1 = __stack[__sp]._toString();
            __stack[__sp++] = __op1;
            __locals[1] = __stack[--__sp];
            case 3:
            __locals[2] += 1;
            case 0:
            __stack[__sp++] = __locals[2];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._maxLength;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = __stack[__sp]._length();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 - __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 <= __op2) { __next_label = 4; break }
            case 10:
             checkClass("java.lang.StringBuilder");

            __stack[__sp++] = new java_lang_StringBuilder();
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[1];
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = java_lang_String._valueOf___java_lang_Object(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            __op1 = __stack[__sp]._append___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 1;
            __op1 = __stack[__sp]._toString();
            __stack[__sp++] = __op1;
            __locals[1] = __stack[--__sp];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._display;
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.TextField");

            __sp -= 2;
            __stack[__sp]._setText___java_lang_String(__stack[__sp + 1]);
            case 6:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _appendDigit___java_lang_String : function( __arg1)
    {
      var __locals = new Array(2);
      var __stack = new Array(4);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
     	__locals[1] = __arg1;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 6:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if((__op2._str != undefined) && (__op2._str != undefined))
            {
	            if (__op1._str != __op2._str) { __next_label = 0; break }}else ERROR("No support of object != object comparison yet");
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            case 0:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = __stack[__sp]._length();
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._maxLength;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 >= __op2) { __next_label = 1; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._newNumber;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 2; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[1];
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __next_label = 3; break;
            case 2:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.StringBuilder");

            __stack[__sp++] = new java_lang_StringBuilder();
            __op1 = __stack[--__sp];
            __op2 = __stack[--__sp];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = java_lang_String._valueOf___java_lang_Object(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
            __stack[__sp++] = __locals[1];
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            __op1 = __stack[__sp]._append___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 1;
            __op1 = __stack[__sp]._toString();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            case 3:
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 1:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._finished;
            if (__stack[--__sp] != 0) { __next_label = 4; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._operation;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if((__op2._str != undefined) && (__op2._str != undefined))
            {
	            if (__op1._str != __op2._str) { __next_label = 5; break }}else ERROR("No support of object != object comparison yet");
            case 4:
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._finished = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            case 5:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _key_equals : function()
    {
      var __locals = new Array(1);
      var __stack = new Array(2);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 0:
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._evaluate();
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._decimal = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._finished = __op2;
            case 1:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _evaluate : function()
    {
      var __locals = new Array(1);
      var __stack = new Array(3);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 9:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._operation;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("plus");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 0; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 + __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __next_label = 1; break;
            case 0:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._operation;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("minus");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 2; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 - __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __next_label = 1; break;
            case 2:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._operation;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("times");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 4; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 * __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __next_label = 1; break;
            case 4:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._operation;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("div");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 6; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 / __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __next_label = 1; break;
            case 6:
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            case 1:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._finished;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 8; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._finished = __op2;
            case 8:
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._toString___float(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._decimal = __op2;
            case 10:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    },
    _actionPerformed___java_awt_event_ActionEvent : function( __arg1)
    {
      var __locals = new Array(4);
      var __stack = new Array(4);
      var __sp = 0;
      var __op1;
      var __op2;
        __locals[0] = this;
     	__locals[1] = __arg1;
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:
            case 30:
            __stack[__sp++] = __locals[1];
             checkClass("java.awt.event.ActionEvent");

            __sp -= 1;
            __op1 = __stack[__sp]._getActionCommand();
            __stack[__sp++] = __op1;
            __locals[2] = __stack[--__sp];
            case 34:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("AC");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 0; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0.0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._result = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._result;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._toString___float(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._decimal = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._finished = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 0:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("+/-");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 1; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __locals[3] = __stack[--__sp];
            case 36:
            __stack[__sp++] = __locals[3];
        __stack[__sp++] = -1.0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 * __op2;
            __locals[3] = __stack[--__sp];
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[3];
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._toString___float(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 1:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("1");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 2; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("1");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 2:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("2");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 3; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("2");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 3:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("3");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 4; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("3");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 4:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("4");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 5; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("4");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 5:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("5");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 6; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("5");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 6:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("6");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 7; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("6");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 7:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("7");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 8; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("7");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 8:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("8");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 9; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("8");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 9:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("9");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 10; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("9");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 10:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 11; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = __stack[__sp]._length();
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 11; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 2;
            __stack[__sp]._appendDigit___java_lang_String(__stack[__sp + 1]);
            case 11:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String(".");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 13; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = __stack[__sp]._length();
            __stack[__sp++] = __op1;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._maxLength;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 >= __op2) { __next_label = 13; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._decimal;
            if (__stack[--__sp] != 0) { __next_label = 13; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._decimal = __op2;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = __stack[__sp]._length();
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 16; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._newNumber;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 17; break }
            case 16:
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0.");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._newNumber = __op2;
            __next_label = 18; break;
            case 17:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.StringBuilder");

            __stack[__sp++] = new java_lang_StringBuilder();
            __op1 = __stack[--__sp];
            __op2 = __stack[--__sp];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;
             checkClass("java.lang.String");

            __sp -= 1;
            __op1 = java_lang_String._valueOf___java_lang_Object(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.__init____java_lang_String.call(__stack[__sp], __stack[__sp + 1]);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].__init____java_lang_String(__stack[__sp + 1]);
            }
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String(".");
             checkClass("java.lang.StringBuilder");

            __sp -= 2;
            __op1 = __stack[__sp]._append___java_lang_String(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.StringBuilder");

            __sp -= 1;
            __op1 = __stack[__sp]._toString();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            case 18:
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 13:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("=");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 19; break }
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._key_equals();
            case 19:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("+");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 20; break }
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._evaluate();
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("plus");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            case 20:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("-");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 21; break }
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._evaluate();
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("minus");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            case 21:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("x");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 22; break }
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._evaluate();
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("times");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            case 22:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("/");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 23; break }
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._evaluate();
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("div");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._operation = __op2;
            case 23:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("M+");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 24; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memory = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._key_equals();
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._memoryValue;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 + __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memoryValue = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 24:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("M-");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 25; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memory = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._key_equals();
            __stack[__sp++] = __locals[0];
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._memoryValue;
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._valueOf___java_lang_String(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = __stack[__sp]._floatValue();
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 - __op2;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memoryValue = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 25:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("MR");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 26; break }
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._memory;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 26; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._memoryValue;
             checkClass("java.lang.Float");

            __sp -= 1;
            __op1 = java_lang_Float._toString___float(__stack[__sp + 0]);
            __stack[__sp++] = __op1;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 26:
            __stack[__sp++] = __locals[2];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("MC");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 28; break }
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memory = __op2;
            __stack[__sp++] = __locals[0];
            __stack[__sp++] = 0.0;
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._memoryValue = __op2;
            __stack[__sp++] = __locals[0];
             checkClass("org.xml11.demo.widget.Calculator");

            __sp -= 1;
            __stack[__sp]._updateDisplay();
            case 28:
            __stack[__sp++] = __locals[0];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1._output;
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("");
             checkClass("java.lang.String");

            __sp -= 2;
            __op1 = __stack[__sp]._equals___java_lang_Object(__stack[__sp + 1]);
            __stack[__sp++] = __op1;
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = 29; break }
            __stack[__sp++] = __locals[0];
             checkClass("java.lang.String");

            __stack[__sp++] = new java_lang_String("0");
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1._output = __op2;
            case 29:
            return;
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }
    }
  } //members
}); //qx.Class.define
