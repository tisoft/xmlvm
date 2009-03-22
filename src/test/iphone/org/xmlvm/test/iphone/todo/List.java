
package org.xmlvm.test.iphone.todo;

import org.xmlvm.iphone.*;



public class List
    extends UITableView
{

    private ListDataSource source;



    public List(CGRect rect)
    {
        super(rect);
        /*
         * TODO fix
         *
        UITableColumn col = new UITableColumn("Column 1", "column1",
                                              rect.size.width);
        this.addTableColumn(col);
        source = new ListDataSource();
        this.setDataSource(source);
        this.setSeparatorStyle(1);
        this.reloadData();
        */
    }
}
