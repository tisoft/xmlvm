/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashMap;
import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewCell;
import org.xmlvm.iphone.UITableViewDataSource;
import org.xmlvm.iphone.UITableViewDelegate;
import org.xmlvm.iphone.UIView;

public class ListView extends AbsListView {

    private ListAdapter adapter;
    private AdapterView.OnItemClickListener listener;
    private HashMap<Integer, View> indexviews;

    public ListView(Context context) {
        super(context);
        indexviews = new HashMap<Integer, View>();
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener listener) {
        this.listener = listener;
    }

    public void setAdapter(ListAdapter adapter) {
        UITableView tv = (UITableView) xmlvmGetViewHandler().getContentView();
        this.adapter = adapter;
        tv.reloadData();
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UITableView tv = new UITableView();
        tv.setDataSource(new UITableViewDataSource() {

            @Override
            public UITableViewCell cellForRowAtIndexPath(UITableView table, NSIndexPath idx) {
                AndroidTableViewCell cell = (AndroidTableViewCell) table.dequeueReusableCellWithIdentifier("android.widget.ListView.AndroidTableViewCell");
                if (cell == null) {
                    cell = new AndroidTableViewCell();
                }
                cell.update(idx.getRow());
                return cell;
            }

            @Override
            public int numberOfRowsInSection(UITableView table, int section) {
                if (adapter == null)
                    return 0;
                return adapter.getCount();
            }
        });
        tv.setDelegate(new UITableViewDelegate() {

            @Override
            public float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath) {
                return 50;
            }

            @Override
            public void didSelectRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
                int row = indexPath.getRow();
                listener.onItemClick(ListView.this, indexviews.get(row), row, row);
            }
        });
        tv.setBackgroundColor(UIColor.clearColor);
        return tv;
    }

    private class AndroidTableViewCell extends UITableViewCell {
        private View aview = null;
        private int lastindex = -1;
        
        public AndroidTableViewCell() {
            getContentView().setBackgroundColor(UIColor.clearColor);
        }

        private void update(int row) {
            if (aview != null) {
                aview.xmlvmGetViewHandler().getMetricsView().removeFromSuperview();
                indexviews.remove(lastindex);
            }
            aview = adapter.getView(row, aview, ListView.this);
            lastindex = row;
            indexviews.put(lastindex, aview);

            UIView content = getContentView();
            for (UIView child : content.getSubviews())
                child.removeFromSuperview();
            
            content.addSubview(aview.xmlvmGetViewHandler().getMetricsView());
        }
    }
}
