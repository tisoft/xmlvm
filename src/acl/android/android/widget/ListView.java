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

package android.widget;

import android.content.Context;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashMap;

import org.xmlvm.acl.common.adapter.ListViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;

public class ListView extends AbsListView {

    private AdapterView.OnItemClickListener listener;

    public ListView(Context context) {
        super(context);
    }
    
    public AdapterView.OnItemClickListener getOnItemClickListener() {
        return this.listener;
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener listener) {
        this.listener = listener;
    }

    public void setAdapter(ListAdapter adapter) {
        ListViewAdapter tv = (ListViewAdapter) xmlvmGetViewHandler().getContentView();
        tv.setAdapter(adapter);
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createListView(this);
    }

}
