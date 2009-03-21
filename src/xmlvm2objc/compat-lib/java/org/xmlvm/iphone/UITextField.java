package org.xmlvm.iphone;

import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.internal.Simulator;

public class UITextField extends UIView {

	private String text;
	private UIColor textColor;

	public UITextField(CGRect rect) {
		super(rect);
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

	public void keyTyped(char key) {
		if (key == '\b' && !text.equals(""))
			text = text.substring(0, text.length() - 1);
		else
			text += key;
		Simulator.redrawDisplay();
	}

	public void drawRect(CGRect r) {
		Graphics2D g = CGContext.theContext.graphicsContext;
		CGRect displayRect = getDisplayRect();
		// g.setBackground(Color.WHITE);
		// g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
		// (int) displayRect.size.width, (int) displayRect.size.height);
		g.setColor(textColor.color);
		FontMetrics fm = g.getFontMetrics();
		int width = fm.stringWidth(text);
		int height = fm.getHeight();
		int x = (int) displayRect.origin.x;
		int y = (int) displayRect.origin.y + (int) viewRect.size.height;
		// y += ((int) viewRect.size.height - height) / 2;
		g.drawString(text, x, y);
	}

}
