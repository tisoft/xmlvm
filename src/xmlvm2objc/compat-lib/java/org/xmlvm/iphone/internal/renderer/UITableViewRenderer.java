
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewCell;
import org.xmlvm.iphone.UITableViewDataSource;
import org.xmlvm.iphone.UITableViewDelegate;

public class UITableViewRenderer extends UIViewRenderer<UITableView> {

    final static int     INSET          = 15;
    final static int     SECTION_VSPACE = 20;
    private List<CGRect> sectionFrames;
    private List<CGRect> horizontalDividers;

    public UITableViewRenderer(UITableView view) {
        super(view);
        sectionFrames = new ArrayList<CGRect>();
        horizontalDividers = new ArrayList<CGRect>();
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        g.setBackground(new Color(220, 220, 220));
        g.clearRect(x, y, w, h);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < view.getFrame().size.width; i += 10)
            g.drawLine(x + i, y, x + i, y + h);
        for (CGRect sectionRect : sectionFrames) {
            g.setColor(Color.WHITE);
            g.fillRoundRect(x + (int) sectionRect.origin.x, y + (int) sectionRect.origin.y,
                    (int) sectionRect.size.width, (int) sectionRect.size.height, INSET, INSET);
            g.setColor(Color.LIGHT_GRAY);
            g.drawRoundRect(x + (int) sectionRect.origin.x, y + (int) sectionRect.origin.y,
                    (int) sectionRect.size.width, (int) sectionRect.size.height, INSET, INSET);
        }
        for (CGRect div : horizontalDividers)
            g.drawLine((int) div.origin.x, (int) (y + div.origin.y), (int) div.size.width,
                    (int) (y + div.origin.y));
    }

    public void reloadData() {
        UITableViewDelegate delegate = view.getTableViewDelegate();
        UITableViewDataSource datasource = view.getTableViewDataSource();

        view.getSubviews().clear();
        sectionFrames.clear();
        horizontalDividers.clear();
        float width = view.getFrame().size.width * 0.9f;
        float leftEdge = view.getFrame().origin.x + view.getFrame().size.width * 0.05f;
        int numOfSections = datasource.numberOfSectionsInTableView(view);
        int y = 0;
        NSIndexPath idx = new NSIndexPath();
        for (int section = 0; section < numOfSections; section++) {
            y += SECTION_VSPACE;
            String header = datasource.titleForHeaderInSection(view, section);
            if (header != null) {
                UIFont font = UIFont.fontWithNameSize("Arial Bold", 16);
                CGRect headerRect = new CGRect(leftEdge + INSET, y, width - INSET, 15);
                UILabel headerLabel = new UILabel(headerRect);
                headerLabel.setText(header);
                headerLabel.setFont(font);
                headerLabel.setTextColor(UIColor.darkGrayColor);
                headerLabel.setBackgroundColor(null);
                view.addSubview(headerLabel);
                y += 25;
            }
            idx.setSection(section);
            int numOfRowsInSection = datasource.numberOfRowsInSection(view, section);
            CGRect sectionRect = new CGRect(leftEdge, y, width, 0);
            for (int row = 0; row < numOfRowsInSection; row++) {
                idx.setRow(row);
                UITableViewCell cell = datasource.cellForRowAtIndexPath(view, idx);
                float preferredHeight = delegate == null ? 50.0f : delegate
                        .heightForRowAtIndexPath(view, idx);
                CGRect rect = new CGRect(leftEdge, y, width, preferredHeight);
                cell.setFrame(rect);
                cell.layoutSubviews();
                view.addSubview(cell);
                y += preferredHeight;
                if (row != numOfRowsInSection - 1) {
                    horizontalDividers.add(new CGRect(leftEdge, y, width + INSET, y));
                    y++;
                }
            }
            sectionRect.size.height = y - sectionRect.origin.y;
            sectionFrames.add(sectionRect);
        }
    }
}
