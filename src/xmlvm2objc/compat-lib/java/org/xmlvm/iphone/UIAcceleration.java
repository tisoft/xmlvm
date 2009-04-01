package org.xmlvm.iphone;

public class UIAcceleration {

	private double x;
	private double y;
	private double z;

	public UIAcceleration(double x, double y, double z) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	public double x() {
		return x;
	}

	public double y() {
		return y;
	}

	public double z() {
		return z;
	}
}
