checkClass("System.Enum");


qx.Class.define("System_Windows_Forms_DialogResult", {
extend: System_Enum,
construct: function(in_val)
{
 this._value__ = in_val;
},
statics:
{
None : 0,
OK : 1,
Cancel : 2,
Abort : 3,
Retry : 4,
Ignore : 5,
Yes : 6,
No : 7,
___BOX___int: function(in_val)
{
return new System_Windows_Forms_DialogResult(in_val);
}
},
members:
{
_value__: 0
}
});


















