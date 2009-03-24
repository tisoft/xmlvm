
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.internal.GestureListener;
import org.xmlvm.iphone.internal.Simulator;



public class UITableView
    extends UIView
{

    private UITableViewDataSource dataSource;
    private List<CGRect>                 groupFrames;
    final static int                     INSET = 15;



    public UITableView(CGRect rect)
    {
        super(rect);
        init(UITableViewStyle.UITableViewStylePlain);
    }


    public UITableView(CGRect rect, int style)
    {
    	super(rect);
    	init(style);
    }

    
    private void init(int style)
    {
        dataSource = null;
        groupFrames = new ArrayList<CGRect>();
    }

    
    public void setDataSource(UITableViewDataSource dataSource)
    {
        this.dataSource = dataSource;
    }



    public void reloadData()
    {
    	/*
        subViews.clear();
        groupFrames.clear();
        float width = viewRect.size.width * 0.9f;
        float x = viewRect.origin.x + viewRect.size.width * 0.05f;
        int numOfGroups = dataSource.numberOfSectionsInTableView(this);
        int y = 0;
        NSIndexPath idx = new NSIndexPath();
        for (int g = 0; g < numOfGroups; g++) {
        	idx.section = g;
            UITableViewCell group = dataSource.cellForGroup(this, g);
            float proposedHeight = dataSource.heightForRow(this, -1, g, 40);
            CGRect rect = new CGRect(x, y, width, proposedHeight);
            y += proposedHeight;
            group.setFrame(rect);
            group.isGroupCell(true);
            addSubview(group);
            if (dataSource.isLabelGroup(this, g))
                continue;
            int numRows = dataSource.numberOfRowsInGroup(this, g);
            CGRect groupRect = new CGRect(x, y, width, 0);
            for (int r = 0; r < numRows; r++) {
                y += 5;
                UIPreferencesTableCell cell = dataSource.cellForRow(this, r, g);
                proposedHeight = dataSource.heightForRow(this, r, g, 40);
                rect = new CGRect(x, y, width, proposedHeight);
                y += proposedHeight;
                cell.setFrame(rect);
                addSubview(cell);
            }
            groupRect.size.height = y - groupRect.origin.y;
            groupFrames.add(groupRect);
        }
*/
    }



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        g.setBackground(new Color(220, 220, 220));
        g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < viewRect.size.width; i += 10) {
            g.drawLine((int) displayRect.origin.x + i,
                    (int) displayRect.origin.y, (int) displayRect.origin.x + i,
                    (int) (displayRect.origin.y + displayRect.size.height));
        }
        for (CGRect groupRect : groupFrames) {
            g.setColor(Color.WHITE);
            g.fillRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y),
                    (int) groupRect.size.width, (int) groupRect.size.height,
                    INSET, INSET);
            g.setColor(Color.LIGHT_GRAY);
            g.drawRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y),
                    (int) groupRect.size.width, (int) groupRect.size.height,
                    INSET, INSET);
        }
        g.setColor(Color.BLACK);
        Font f = new Font("sansserif", Font.BOLD, 16);
        super.drawRect(rect);
    }
}
