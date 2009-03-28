package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.internal.Simulator;

public class UITextField extends UIView {

	private String text;
	private Font font;
	private UIColor textColor;
	private int borderStyle;

	private static final int TEXT_LEFT_INSET = 5;

	public UITextField(CGRect rect) {
		super(rect);
		init();
	}

	private void init() {
		// Set a default font
		font = new Font("Arial", Font.PLAIN, 16);
		this.setText("");
		this.setTextColor(UIColor.blackColor());
		Simulator.addKeyListener(this);
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getText() {
		return this.text;
	}

	public void setTextColor(UIColor color) {
		this.textColor = color;
	}

	public void setBorderStyle(int style) {
		this.borderStyle = style;
	}

	public void keyTyped(char key) {
		if (key == '\b' && !text.equals(""))
			text = text.substring(0, text.length() - 1);
		else
			text += key;
		Simulator.redrawDisplay();
	}

	public void drawRect(CGRect r) {
		Graphics2D g = CGContext.theContext.graphicsContext;
		g.setFont(font);
		CGRect displayRect = getDisplayRect();
		g.setBackground(Color.WHITE);
		int rectX = (int) displayRect.origin.x;
		int rectY = (int) displayRect.origin.y;
		int rectWidth = (int) displayRect.size.width;
		int rectHeight = (int) displayRect.size.height;
		g.clearRect(rectX, rectY, rectWidth, rectHeight);
		switch (borderStyle) {
		case UITextBorderStyle.UITextBorderStyleBezel:
			g.setColor(Color.GRAY);
			g.draw3DRect(rectX, rectY, rectWidth, rectHeight, false);
			break;
		}
		g.setColor(textColor.color);
		FontMetrics fm = g.getFontMetrics();
		int width = fm.stringWidth(text);
		int height = fm.getHeight();
		int descent = fm.getDescent();
		int x = (int) displayRect.origin.x + TEXT_LEFT_INSET;
		int y = (int) displayRect.origin.y;
		y += ((int) frame.size.height - height) / 2 + height - descent;
		g.drawString(text, x, y);
	}

}
