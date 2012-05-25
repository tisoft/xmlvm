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

package org.xmlvm.acl.common.adapter;

import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.objects.CommonView;

import android.view.View.OnClickListener;

/**
 *
 */
public interface ButtonAdapter extends CommonView {

    void setTitle(String text);
    void setTitleColor(int color);
    void setOnClickListener(OnClickListener listener);
    CommonFont getFont();
    void setFont(CommonFont font);
    void setImage(BitmapDrawableAdapter img, int controlState);
    float getTextSize();
    void setTextSize(float size);
    BitmapDrawableAdapter getCurrentBackgroundImage();
}
