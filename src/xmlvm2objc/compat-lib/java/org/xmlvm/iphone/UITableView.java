
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.List;




public class UITableView
    extends UIView
{

    private UITableViewDataSource dataSource;
    private UITableViewDelegate   delegate;
    private List<CGRect>          sectionFrames;
    private List<CGRect>          horizontalDividers;
    final static int              INSET = 15;
    final static int              SECTION_VSPACE = 20;



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
        delegate = null;
        sectionFrames = new ArrayList<CGRect>();
        horizontalDividers = new ArrayList<CGRect>();
    }

    
    public void setDataSource(UITableViewDataSource dataSource)
    {
        this.dataSource = dataSource;
        reloadData();
    }



    public void setDelegate(UITableViewDelegate delegate)
    {
    	this.delegate = delegate;
    	reloadData();
    }



    public void reloadData()
    {
        subViews.clear();
        sectionFrames.clear();
        horizontalDividers.clear();
        float width = frame.size.width * 0.9f;
        float leftEdge = frame.origin.x + frame.size.width * 0.05f;
        int numOfSections = dataSource.numberOfSectionsInTableView(this);
        int y = 0;
        NSIndexPath idx = new NSIndexPath();
        for (int section = 0; section < numOfSections; section++) {
        	y += SECTION_VSPACE;
        	String header = dataSource.titleForHeaderInSection(this, section);
        	if (header != null) {
                Font font = new Font("Arial", Font.BOLD, 16);
                CGRect headerRect = new CGRect(leftEdge + INSET, y, width - INSET, 15);
        		UILabel headerLabel = new UILabel(headerRect);
        		headerLabel.setText(header);
        		headerLabel.setFont(font);
        		headerLabel.setFontColor(Color.DARK_GRAY);
        		addSubview(headerLabel);
        		y += 25;
        	}
        	idx.setSection(section);
        	int numOfRowsInSection = dataSource.numberOfRowsInSection(this, section);
            CGRect sectionRect = new CGRect(leftEdge, y, width, 0);
        	for (int row = 0; row < numOfRowsInSection; row++) {
        		idx.setRow(row);
        		UITableViewCell cell = dataSource.cellForRowAtIndexPath(this, idx);
        		float preferredHeight = delegate == null ? 50.0f : delegate.heightForRowAtIndexPath(this, idx);
        		CGRect rect = new CGRect(leftEdge, y, width, preferredHeight);
        		cell.setFrame(rect);
        		cell.layoutSubviews();
        		addSubview(cell);
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



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        g.setBackground(new Color(220, 220, 220));
        g.clearRect(x, y, w, h);
        g.setColor(new Color(230, 230, 230));
        for (int i = 0; i < frame.size.width; i += 10) {
            g.drawLine(x + i, y, x + i, y + h);
        }
        for (CGRect sectionRect : sectionFrames) {
            g.setColor(Color.WHITE);
            g.fillRoundRect(x + (int) sectionRect.origin.x,
                    y + (int) sectionRect.origin.y,
                    (int) sectionRect.size.width, (int) sectionRect.size.height,
                    INSET, INSET);
            g.setColor(Color.LIGHT_GRAY);
            g.drawRoundRect(x + (int) sectionRect.origin.x,
                    y + (int) sectionRect.origin.y,
                    (int) sectionRect.size.width, (int) sectionRect.size.height,
                    INSET, INSET);
        }
        for (CGRect div : horizontalDividers) {
        	g.drawLine((int) div.origin.x, (int) (y + div.origin.y),
        			(int) div.size.width, (int) (y + div.origin.y));
        }
        super.drawRect(rect);
    }
}
