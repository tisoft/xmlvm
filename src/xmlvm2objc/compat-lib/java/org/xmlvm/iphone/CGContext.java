package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.util.Stack;

public class CGContext {
	public static final int kCGTextInvisible = 1;
	public static final int kCGTextFill = 2;

	private static Stack<CGContext> contextStack;

	private Graphics2D graphicsContext;
	private UIImage image;

	private float tx;
	private float ty;
	private int textMode;
	private Rectangle clip;
	private AffineTransform transform;

	static {
		contextStack = new Stack<CGContext>();
		BufferedImage image = new BufferedImage(320, 480,
				BufferedImage.TYPE_USHORT_565_RGB);
		xmlvmPushGraphicsContext((Graphics2D) image.getGraphics());
	}

	CGContext(Graphics2D g) {
		graphicsContext = g;
		image = null;
	}

	CGContext(UIImage image) {
		graphicsContext = (Graphics2D) image.xmlvmGetImage().getGraphics();
		this.image = image;
	}

	public static void xmlvmPushGraphicsContext(Graphics2D g) {
		contextStack.push(new CGContext(g));
	}

	public static void xmlvmPushGraphicsContext(UIImage image) {
		contextStack.push(new CGContext(image));
	}

	public static void xmlvmPopGraphicsContext() {
		contextStack.pop();
	}

	public Graphics2D xmlvmGetGraphics2D() {
		return graphicsContext;
	}

	public static CGContext UICurrentContext() {
		return contextStack.peek();
	}

	public void setFillColor(float[] color) {
		graphicsContext.setColor(new Color(color[0], color[1], color[2]));
	}

	public void fillRect(CGRect rect) {
		graphicsContext.fillRect((int) rect.origin.x, (int) rect.origin.y,
				(int) rect.size.width, (int) rect.size.height);
	}

	public void clipToRect(CGRect rect) {
		graphicsContext.setClip((int) rect.origin.x, (int) rect.origin.y,
				(int) rect.size.width, (int) rect.size.height);
	}

	public void setStrokeColor(float[] color) {
		graphicsContext.setColor(new Color(color[0], color[1], color[2]));
	}

	public void translate(float x, float y) {
		graphicsContext.translate(x, y);
	}

	public void rotate(float ang) {
		graphicsContext.rotate(ang);
	}

	public void scale(float sx, float sy) {
		graphicsContext.scale(sx, sy);
	}

	public void strokeRect(CGRect rect) {
		graphicsContext.drawRect((int) rect.origin.x, (int) rect.origin.y,
				(int) rect.size.width, (int) rect.size.height);
	}

	public void fillEllipseInRect(CGRect rect) {
		graphicsContext.fillOval((int) rect.origin.x, (int) rect.origin.y,
				(int) rect.size.width, (int) rect.size.height);
	}

	public void setAlpha(float alpha) {
		Color c = graphicsContext.getColor();

		Color n = new Color(c.getRed(), c.getGreen(), c.getBlue(),
				(int) (alpha * 255));
		graphicsContext.setColor(n);
	}

	public void setFont(CGFont font) {
		graphicsContext.setFont(font.font);
	}

	public void setFontSize(float size) {
		if (graphicsContext.getFont().getSize() != size) {
			graphicsContext.setFont(graphicsContext.getFont().deriveFont(
					(float) size));
		}
	}

	public void showTextAtPoint(float x, float y, String str) {
		tx = x;
		ty = y;
		graphicsContext.drawString(str, x, y);
	}

	public void showText(String str) {
		if (textMode == kCGTextFill) {
			showTextAtPoint(tx, ty, str);
		} else {
			tx += graphicsContext.getFontMetrics().stringWidth(str);
		}
	}

	public void storeState() {
		clip = graphicsContext.getClipBounds();
		transform = graphicsContext.getTransform();
	}

	public void restoreState() {
		graphicsContext.setTransform(transform);
		graphicsContext.setClip(clip);
	}

	public CGRect getClip() {
		Rectangle clip = graphicsContext.getClipBounds();

		return new CGRect(clip.x, clip.y, clip.width, clip.height);
	}

	public CGPoint getTextPosition() {
		return new CGPoint(tx, ty);
	}

	public void setTextDrawingMode(int mode) {
		textMode = mode;
	}

	public void drawImage(CGRect rect, CGImage image) {
		AffineTransform savedTransform = graphicsContext.getTransform();
		graphicsContext.scale(1, -1);
		graphicsContext.translate(0, -(rect.size.height + 2 * rect.origin.y));

		graphicsContext.drawImage(image.image, (int) rect.origin.x,
				(int) rect.origin.y, (int) rect.size.width,
				(int) rect.size.height, null);
		graphicsContext.setTransform(savedTransform);
	}

	public void drawLayer(CGRect rect, CGLayer layer) {
		graphicsContext.drawImage(layer.image, (int) rect.origin.x,
				(int) rect.origin.y, (int) rect.size.width,
				(int) rect.size.height, null);
	}

	public static void UIGraphicsBeginImageContext(CGSize size) {
		BufferedImage image = new BufferedImage((int) size.width,
				(int) size.height, BufferedImage.TYPE_USHORT_565_RGB);
		xmlvmPushGraphicsContext(UIImage.xmlvmCreateFromBufferedImage(image));
	}

	public static UIImage UIGraphicsGetImageFromCurrentImageContext() {
		CGContext context = UICurrentContext();
		return context.image;
	}

	public static void UIGraphicsEndImageContext() {
		xmlvmPopGraphicsContext();
	}
}
