/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.acl.ios.adapter;

import java.util.HashMap;

import org.xmlvm.acl.common.adapter.ListViewAdapter;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.NSIndexPath;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UITableView;
import org.xmlvm.iphone.UITableViewCell;
import org.xmlvm.iphone.UITableViewDataSource;
import org.xmlvm.iphone.UITableViewDelegate;
import org.xmlvm.iphone.UIView;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;

/**
 *
 */
public class IPhoneListViewAdapter extends IPhoneView implements ListViewAdapter {
    
    private HashMap<Integer, View> indexviews;
    private ListAdapter adapter;

    public IPhoneListViewAdapter(final ListView listView) {
        super(listView);
        indexviews = new HashMap<Integer, View>();
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
                listView.getOnItemClickListener().onItemClick(listView, indexviews.get(row), row, row);
            }
        });
        tv.setBackgroundColor(UIColor.clearColor);
        this.setView(tv);
    }
    
    private class AndroidTableViewCell extends UITableViewCell {
        private View aview = null;
        private int lastindex = -1;
        
        public AndroidTableViewCell() {
            ((UITableView)IPhoneListViewAdapter.this.getView()).setBackgroundColor(UIColor.clearColor);
        }

        private void update(int row) {
            if (aview != null) {
                aview.xmlvmGetViewHandler().getMetricsView().removeFromSuperview();
                indexviews.remove(lastindex);
            }
            aview = adapter.getView(row, aview, (ViewGroup) IPhoneListViewAdapter.this.getAndroidView());
            lastindex = row;
            indexviews.put(lastindex, aview);

            UIView content = getContentView();
            for (UIView child : content.getSubviews())
                child.removeFromSuperview();
            
            content.addSubview(((IPhoneView)aview.xmlvmGetViewHandler().getMetricsView()).getView());
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ListViewAdapter#setAdapter(android.widget.ListAdapter)
     */
    @Override
    public void setAdapter(ListAdapter adapter) {
        this.adapter = adapter;
        ((UITableView)IPhoneListViewAdapter.this.getView()).reloadData();        
    }

}
