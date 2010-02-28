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

package android.app;

import android.internal.Assert;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ListActivity extends Activity {

    protected void onListItemClick(final ListView l, final View v, final int position, final long id) {
        Assert.NOT_IMPLEMENTED();
    }

    protected void onRestoreInstanceState(Bundle inState) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setListAdapter(ListAdapter adapter) {
        Assert.NOT_IMPLEMENTED();
    }

    public ListView getListView() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
