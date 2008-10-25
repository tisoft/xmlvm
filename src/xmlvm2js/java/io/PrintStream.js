checkClass("java.lang.String");

qx.Class.define("java_io_PrintStream",  {
	extend: java_lang_Object,
	construct: function() {
	},
	members: 
	{
		_println___java_lang_String: function(s) {
			if (s._str == undefined){
    			this._print___java_lang_String(s + "\n");
			}else{
				this._print___java_lang_String(s._str + "\n");
			}
		},
		_println___char: function(c){
			this._println___java_lang_String(String.fromCharCode(c));
		},
		_println___int: function(i){
			this._println___java_lang_String(i);
		},
		_println___double: function(d){
			this._println___java_lang_String(d);
		},
		_println___float: function(f){
			this._println___java_lang_String(f);
		},
		_println___long: function(l){
			this._println___java_lang_String(l);
		},
		_println___boolean: function(b){
			if(b  == true)
				this._println___java_lang_String("true");
			else
				this._println___java_lang_String("false");
		},
		_println___java_lang_Object: function(obj) {
			this._println___java_lang_String(obj + "\n");
		},
		
		_print___java_lang_String: function(s) {
			  // To be able to use this class unchanged for testing
		      // If there is an element with id "sysout", we use it for output
		    	var sysoutTextarea = document.getElementById("sysout");
		    	if (s._str == undefined){
		        	if(sysoutTextarea != null){
		            	  sysoutTextarea.value +=  s;
		        	}else{
		            	  alert("println(): " + s);
		            }
		    	}else{
			        if(sysoutTextarea != null){
			              document.getElementById("sysout").value += s._str;
			        }else{
			              alert("println(): " + s._str);
			        }
		        }
		},
		_print___char: function(c){
			this._print___java_lang_String(String.fromCharCode(c));
		},
		_print___int: function(i){
			this._print___java_lang_String(i);
		},
		_print___double: function(d){
			this._print___java_lang_String(d);
		},
		_print___float: function(f){
			this._print___java_lang_String(f);
		},
		_print___long: function(l){
			this._print___java_lang_String(l);
		},
		_print___boolean: function(b){
			if(b  == true)
				this._print___java_lang_String("true");
			else
				this._print___java_lang_String("false");
		}
	}
});
