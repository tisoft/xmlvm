package org.xmlvm.iphone;

abstract public class UITableViewDataSource {
    abstract public UITableViewCell cellForRowAtIndexPath(UITableView table, NSIndexPath idx);

    public int numberOfSectionsInTableView(UITableView table) {
        return 1;
    }

    abstract public int numberOfRowsInSection(UITableView table, int section);

    public String titleForHeaderInSection(UITableView table, int section) {
        return null;
    }
}
