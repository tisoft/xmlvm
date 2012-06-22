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

import org.xmlvm.acl.common.adapter.TextViewAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.wp7.objects.WP7Font;
import org.xmlvm.acl.wp7.objects.WP7View;

import Compatlib.System.Windows.Controls.TextBlock;
import Compatlib.System.Windows.Media.FontFamily;
import Compatlib.System.Windows.Media.SolidColorBrush;
import android.graphics.Color;
import android.util.Log;
import android.view.View;

/**
 *
 */
public class WP7TextViewAdapter extends WP7View implements TextViewAdapter {

    public WP7TextViewAdapter(View view) {
        super(view, 0);
        this.setElement(new TextBlock());
    }

    @Override
    public CommonFont getFont() {
        return new WP7Font(((TextBlock) this.getElement()).getFontFamily().getSource().value,
                (float) ((TextBlock) this.getElement()).getFontSize());
    }

    @Override
    public void setFont(CommonFont font) {
        FontFamily fontFamily = new FontFamily();
        fontFamily.setSource(new Compatlib.System.String(((WP7Font) font).familyName()));
        ((TextBlock) this.getElement()).setFontFamily(fontFamily);
        ((TextBlock) this.getElement()).setFontSize(((WP7Font) font).pointSize());
    }

    @Override
    public void setText(String string) {
        ((TextBlock) this.getElement()).setText(new Compatlib.System.String(string));
    }

    @Override
    public String getText() {
        return ((TextBlock) this.getElement()).getText().value;
    }

    @Override
    public void setTextColor(int color) {
        ((TextBlock) this.getElement()).setForeground(new SolidColorBrush(
                Compatlib.System.Windows.Media.Color.FromArgb(Color.alpha(color), Color.red(color),
                        Color.green(color), Color.blue(color))));
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.TextViewAdapter#setGravity(int)
     */
    @Override
    public void setGravity(int gravity) {
        Log.w("ACL", "setGravity is not implemented");
    }

}
