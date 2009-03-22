
package org.xmlvm.test.iphone.todo;

import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewCell;
import org.xmlvm.iphone.UITableViewDataSource;



public class ListDataSource
    extends UITableViewDataSource
{

    public int numberOfRowsInTable(UITableView table)
    {
        return 40;
    }



	@Override
	public UITableViewCell cellForRowAtIndexPath(UITableView table,
			NSIndexPath idx) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int numberOfRowsInSection(UITableView table) {
		// TODO Auto-generated method stub
		return 0;
	}
}
