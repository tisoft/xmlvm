package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.*;

public class SettingsTableDataSource extends UITableViewDataSource {

	private static final float kTextFieldWidth = 150.0f;
	private static final float kTextFieldHeight = 30.0f;
	private static final float kSwitchButtonWidth = 94.0f;
	private static final float kSwitchButtonHeight = 27.0f;

	public UITextField ipAddress;
	public UISwitch accelerometer;

	@Override
	public UITableViewCell cellForRowAtIndexPath(UITableView table,
			NSIndexPath idx) {
		SettingTableCell cell = new SettingTableCell();
		if (idx.getRow() == 0) {
			cell.setLabelText("IP Address");
			ipAddress = new UITextField(new CGRect(0, 0, kTextFieldWidth,
					kTextFieldHeight));
			ipAddress.setBorderStyle(UITextBorderStyle.UITextBorderStyleBezel);
			cell.setView(ipAddress);
		} else {
			cell.setLabelText("Accelerometer");
			accelerometer = new UISwitch(new CGRect(0, 0, kSwitchButtonWidth,
					kSwitchButtonHeight));
			cell.setView(accelerometer);
		}
		return cell;
	}

	@Override
	public int numberOfSectionsInTableView(UITableView table) {
		return 1;
	}

	@Override
	public int numberOfRowsInSection(UITableView table, int section) {
		return 2;
	}

	@Override
	public String titleForHeaderInSection(UITableView table, int section) {
		return "iRemote";
	}
}
