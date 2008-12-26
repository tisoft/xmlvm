qx.Class.define("System_Windows_Forms_ListBox$ObjectCollection", {
  extend: System_Object,
  construct: function(listView)
  {
  	this.listView = listView;
  },
  members:
  {
  	 listView: 0,
  	 _Add___System_Object: function(newItem)
  	 {
  	 	 if (newItem instanceof System_String) {
  	 	 	this.listView.listData.push({name : { text : newItem._str }});
	  	 }
	  	 // TODO return proper ID
	  	 return 0;
	 }
  }
});