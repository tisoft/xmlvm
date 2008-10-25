
package org.xmlvm.iphone;

/**
 * Acts as an interface to a data source for a UITable. Note that Apple's UIKit
 * does not define this class. We define it for Java to allow compile-time
 * type checks.
 */
abstract public class UITableDataSource
{

    abstract public int numberOfRowsInTable(UITable table);



    abstract public UITableCell rowForCell(UITable table, int row,
            UITableColumn col);
}
