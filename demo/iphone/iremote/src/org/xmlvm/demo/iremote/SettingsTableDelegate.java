package org.xmlvm.demo.iremote;

import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewDelegate;

public class SettingsTableDelegate extends UITableViewDelegate {

	@Override
	public float heightForRowAtIndexPath(UITableView tableView,
			NSIndexPath indexPath) {
		return 50;
	}

}
