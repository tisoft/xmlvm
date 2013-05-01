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

package org.xmlvm.acl.sdl.adapters;

import org.xmlvm.acl.common.adapter.ScrollViewAdapter;
import org.xmlvm.acl.sdl.objects.AbstractSDLView;

import android.graphics.RectF;
import android.widget.ScrollView;

/**
 *
 */
public class SDLScrollViewAdapter extends AbstractSDLView<ScrollView> implements ScrollViewAdapter {

    public SDLScrollViewAdapter(ScrollView view) {
        super(view);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ScrollViewAdapter#setContentOffset(android.graphics.RectF, boolean)
     */
    @Override
    public void setContentOffset(RectF rect, boolean b) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ScrollViewAdapter#setScrollEnabled(boolean)
     */
    @Override
    public void setScrollEnabled(boolean b) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#setContentMode(int)
     */
    @Override
    public void setContentMode(int mode) {
        // TODO Auto-generated method stub
        
    }


}
