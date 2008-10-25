
package org.xmlvm.test.iphone.todo;

import org.xmlvm.iphone.UISimpleTableCell;
import org.xmlvm.iphone.UITable;
import org.xmlvm.iphone.UITableCell;
import org.xmlvm.iphone.UITableColumn;
import org.xmlvm.iphone.UITableDataSource;



public class ListDataSource
    extends UITableDataSource
{

    public int numberOfRowsInTable(UITable table)
    {
        return 40;
    }



    public UITableCell rowForCell(UITable table, int row, UITableColumn col)
    {
        return new UISimpleTableCell(String.valueOf(row));
    }
}
