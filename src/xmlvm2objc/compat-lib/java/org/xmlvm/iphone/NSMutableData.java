package org.xmlvm.iphone;

public class NSMutableData extends NSData {
	private byte[] data = new byte[10000];
	private int count;
	
	public int byteCount() {
		return count;
	}
	
	public int getByte(int i) {
		return data[i];
	}
	
	public void appendByte(int v) {
		data[count++] = (byte) v;
	}
	
	
}
