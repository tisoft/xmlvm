
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIPreferencesTable;
import org.xmlvm.iphone.UIPreferencesTableCell;
import org.xmlvm.iphone.UIPreferencesTableDataSource;

public class UIPreferencesTableRenderer extends UIViewRenderer<UIPreferencesTable> {

    private List<CGRect> groupFrames;
    final static int     INSET = 15;

    public UIPreferencesTableRenderer(UIPreferencesTable view) {
        super(view);
        groupFrames = new ArrayList<CGRect>();
    }

    public void reloadData() {
        UIPreferencesTableDataSource datasource = view.getDataSource();
        view.getSubviews().clear();
        groupFrames.clear();
        float width = view.getFrame().size.width * 0.9f;
        float x = view.getFrame().origin.x + view.getFrame().size.width * 0.05f;
        int numOfGroups = datasource.numberOfGroupsInPreferencesTable(view);
        int y = 0;
        for (int g = 0; g < numOfGroups; g++) {
            UIPreferencesTableCell group = datasource.cellForGroup(view, g);
            float proposedHeight = datasource.heightForRow(view, -1, g, 40);
            CGRect rect = new CGRect(x, y, width, proposedHeight);
            y += proposedHeight;
            group.setFrame(rect);
            group.setGroupCell(true);
            view.addSubview(group);
            if (datasource.isLabelGroup(view, g))
                continue;
            int numRows = datasource.numberOfRowsInGroup(view, g);
            CGRect groupRect = new CGRect(x, y, width, 0);
            for (int r = 0; r < numRows; r++) {
                y += 5;
                UIPreferencesTableCell cell = datasource.cellForRow(view, r, g);
                proposedHeight = datasource.heightForRow(view, r, g, 40);
                rect = new CGRect(x, y, width, proposedHeight);
                y += proposedHeight;
                cell.setFrame(rect);
                view.addSubview(cell);
            }
            groupRect.size.height = y - groupRect.origin.y;
            groupFrames.add(groupRect);
        }
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        g.setBackground(new Color(220, 220, 220));
        g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < view.getFrame().size.width; i += 10)
            g.drawLine((int) displayRect.origin.x + i, (int) displayRect.origin.y,
                    (int) displayRect.origin.x + i,
                    (int) (displayRect.origin.y + displayRect.size.height));
        for (CGRect groupRect : groupFrames) {
            g.setColor(Color.WHITE);
            g.fillRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y), (int) groupRect.size.width,
                    (int) groupRect.size.height, INSET, INSET);
            g.setColor(Color.LIGHT_GRAY);
            g.drawRoundRect((int) (displayRect.origin.x + groupRect.origin.x),
                    (int) (displayRect.origin.y + groupRect.origin.y), (int) groupRect.size.width,
                    (int) groupRect.size.height, INSET, INSET);
        }
        g.setColor(Color.BLACK);
    }
}
