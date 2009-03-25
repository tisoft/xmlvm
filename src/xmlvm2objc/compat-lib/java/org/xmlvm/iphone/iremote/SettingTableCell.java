package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITableViewCell;

public class SettingTableCell extends UITableViewCell {

	private static final float kCellLeftOffset = 8.0f;
	private static final float kCellTopOffset = 12.0f;
	private static final float kCellHeight = 25.0f;

	private UILabel label;

	public SettingTableCell() {
		label = new UILabel();
		this.getContentView().addSubview(label);
	}

	public void setLabelText(String text) {
		label.setText(text);
	}

	public void layoutSubviews() {
		super.layoutSubviews();
		CGRect contentRect = this.getContentView().getBounds();
		CGRect frame = new CGRect(contentRect.origin.x + kCellLeftOffset,
				kCellTopOffset, contentRect.size.width - kCellLeftOffset,
				kCellHeight);
		label.setFrame(frame);
	}
}
