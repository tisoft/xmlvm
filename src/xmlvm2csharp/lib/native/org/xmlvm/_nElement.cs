using global::System.Runtime.InteropServices;
namespace org.xmlvm {
    [StructLayout(LayoutKind.Explicit)]
    public struct _nElement {
	[FieldOffset(0)]
	public int i;	
        [FieldOffset(0)]
	public float f;
	[FieldOffset(0)]
	public double d;
	[FieldOffset(0)]
	public long l;
    }
}