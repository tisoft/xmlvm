package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.*;

public class SettingTableCell extends UITableViewCell {

	private static final float kCellLeftOffset = 8.0f;
	private static final float kCellTopOffset = 12.0f;
	private static final float kCellHeight = 25.0f;

	private UILabel label;
	private UIView view;

	public SettingTableCell() {
		view = null;
		label = new UILabel();
		this.getContentView().addSubview(label);
	}

	public void setLabelText(String text) {
		label.setText(text);
	}

	public void setView(UIView view) {
		this.view = view;
		this.getContentView().addSubview(view);
		//this.layoutSubviews();
	}

	public void layoutSubviews() {
		super.layoutSubviews();
		CGRect contentRect = this.getContentView().getBounds();
		CGRect frame = new CGRect(kCellLeftOffset, kCellTopOffset,
				contentRect.size.width - kCellLeftOffset, kCellHeight);
		label.setFrame(frame);
		if (view != null) {
			float width = this.view.getBounds().size.width;
			float height = this.view.getBounds().size.height;
			CGRect viewFrame = new CGRect(contentRect.size.width - width
					- kCellLeftOffset,
					((contentRect.size.height - height) / 2), width, height);
			view.setFrame(viewFrame);
		}
	}
}
