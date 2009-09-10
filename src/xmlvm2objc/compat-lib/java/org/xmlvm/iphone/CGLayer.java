package org.xmlvm.iphone;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;

public class CGLayer {
	BufferedImage image;
	
	public static CGLayer createWithContext(CGContext context, CGSize size) {
		CGLayer layer = new CGLayer();
		layer.image = new BufferedImage((int) size.width, (int) size.height, BufferedImage.TYPE_INT_ARGB);
		
		return layer;
	}
	
	public CGContext getContext() {
		return new CGContext((Graphics2D) image.getGraphics());
	}
	
	public CGSize getSize() {
		return new CGSize(image.getWidth(), image.getHeight());
	}
}
