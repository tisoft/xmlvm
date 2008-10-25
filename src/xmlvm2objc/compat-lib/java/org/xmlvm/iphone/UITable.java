
package org.xmlvm.iphone;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.internal.GestureListener;
import org.xmlvm.iphone.internal.Simulator;



public class UITable
    extends UIView
    implements GestureListener
{

    private int                 topEdge;
    private UITableDataSource   dataSource;
    private List<UITableColumn> columns;
    public int                  rowHeight;
    private int                 selectedRow;
    private int                 separatorStyle;



    public UITable(CGRect rect)
    {
        super(rect);
        topEdge = 0;
        rowHeight = 44;
        selectedRow = -1;
        separatorStyle = 3;
        dataSource = null;
        columns = new ArrayList<UITableColumn>();
        Simulator.addGestureListener(this);
    }



    public void setDataSource(UITableDataSource dataSource)
    {
        this.dataSource = dataSource;
    }



    public void setSeparatorStyle(int style)
    {
        separatorStyle = style;
    }



    public int getSeparatorStyle()
    {
        return separatorStyle;
    }



    public void addTableColumn(UITableColumn col)
    {
        columns.add(col);
    }



    public CGRect getDisplayRect()
    {
        CGRect rect = super.getDisplayRect();
        rect.origin.y += topEdge;
        return rect;
    }



    public void gestureDragged(int dx, int dy)
    {
        int newTopEdge = topEdge + dy;
        if (newTopEdge > 0
                || newTopEdge < -(this.rowHeight
                        * dataSource.numberOfRowsInTable(this) - viewRect.size.height))
            return;
        topEdge = newTopEdge;
        Simulator.redrawDisplay();
    }



    public void mouseClicked(int x, int y)
    {
        if (selectedRow != -1)
            ((UITableCell) subViews.get(selectedRow)).setSelected(false);
        CGRect rect = getDisplayRect();
        selectedRow = (y - (int) rect.origin.y) / this.rowHeight;
        ((UITableCell) subViews.get(selectedRow)).setSelected(true);
        Simulator.redrawDisplay();
    }



    public void reloadData()
    {
        subViews.clear();
        for (int row = 0; row < dataSource.numberOfRowsInTable(this); row++) {
            // TODO hard-coded just one column
            UITableCell cell = dataSource.rowForCell(this, row, null);
            CGRect rect = new CGRect(0, row * rowHeight, viewRect.size.width,
                                     rowHeight);
            cell.initWithFrame(rect);
            addSubview(cell);
        }
    }
}
