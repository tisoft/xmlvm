
package org.xmlvm.iphone;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.remote.Settings;



public class UIPreferencesTable
    extends UIView
{

    private UIPreferencesTableDataSource dataSource;
    private List<CGRect>                 groupFrames;
    final static int                     INSET = 15;



    public UIPreferencesTable(CGRect rect)
    {
        super(rect);
        dataSource = null;
        groupFrames = new ArrayList<CGRect>();
    }



    public void setDataSource(UIPreferencesTableDataSource dataSource)
    {
        this.dataSource = dataSource;
    }



    public void reloadData()
    {
        subViews.clear();
        groupFrames.clear();
        float width = frame.size.width * 0.9f;
        float x = frame.origin.x + frame.size.width * 0.05f;
        int numOfGroups = dataSource.numberOfGroupsInPreferencesTable(this);
        int y = 0;
        for (int g = 0; g < numOfGroups; g++) {
            UIPreferencesTableCell group = dataSource.cellForGroup(this, g);
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

    }



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        g.setBackground(new Color(220, 220, 220));
        g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < frame.size.width; i += 10) {
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
