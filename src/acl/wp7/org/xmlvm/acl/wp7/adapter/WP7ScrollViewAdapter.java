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

package org.xmlvm.acl.wp7.adapter;

import java.util.List;

import org.xmlvm.acl.common.adapter.ScrollViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.wp7.objects.WP7View;

import android.graphics.RectF;
import android.util.Log;
import android.view.View;

/**
 *
 */
public class WP7ScrollViewAdapter extends WP7View implements ScrollViewAdapter {

    public WP7ScrollViewAdapter(View view) {
        super(view);
    }

    @Override
    public void setScrollEnabled(boolean b) {
        Log.w("ACL", "setScrollEnabled is not implemented");
    }

    @Override
    public void setContentOffset(RectF rect, boolean b) {
        Log.w("ACL", "setContentOffset is not implemented");
    }


}
