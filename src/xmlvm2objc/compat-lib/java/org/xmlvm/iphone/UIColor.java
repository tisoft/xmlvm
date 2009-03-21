package org.xmlvm.iphone;

import java.awt.Color;

public class UIColor {

	public Color color;

	private UIColor(Color c) {
		this.color = c;
	}

	public static UIColor whiteColor() {
		return new UIColor(Color.WHITE);
	}

	public static UIColor blackColor() {
		return new UIColor(Color.BLACK);
	}
}
