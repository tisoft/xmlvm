package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGRectNull;
import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewCell;
import org.xmlvm.iphone.UITableViewDataSource;

public class SettingsTableDataSource extends UITableViewDataSource {

	@Override
	public UITableViewCell cellForRowAtIndexPath(UITableView table,
			NSIndexPath idx) {
		SettingTableCell cell = new SettingTableCell();
		cell.setLabelText("Hello World");
		return cell;
	}

	@Override
	public int numberOfSectionsInTableView(UITableView table) {
		return 1;
	}


	@Override
	public int numberOfRowsInSection(UITableView table, int section) {
		return 1;
	}

}
