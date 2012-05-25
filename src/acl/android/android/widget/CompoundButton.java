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

import java.util.Set;

import org.xmlvm.acl.common.objects.CommonFont;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;

public abstract class CompoundButton extends Button {

    private boolean                   checked                 = false;
    public static final int[]      CHECKED_STATE_SET       = { 0x010100a0 };
    protected OnCheckedChangeListener onCheckedChangeListener = null;


    public interface OnCheckedChangeListener {
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked);
    }


    public CompoundButton(Context c) {
        super(c);
        initCompoundButton(c, null);
    }

    public CompoundButton(Context c, AttributeSet attrs) {
        super(c, attrs);
        initCompoundButton(c, attrs);
    }

    private void initCompoundButton(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseCompoundButtonAttributes(attrs);
        }
    }

    private void parseCompoundButtonAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener listener) {
        onCheckedChangeListener = listener;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
        xmlvmSetDrawableState(this.checked ? CHECKED_STATE_SET : EMPTY_STATE_SET);
        xmlvmUpdateUIView(this.checked);
    }

    public boolean isChecked() {
        return this.checked;
    }

    public void toggle() {
        setChecked(!checked);
    }

    @Override
    public void setText(String text) {
        // NOTE: setText should be overriden in child classes or else this
        // method will break,
        // if child is not derived from UIButton
    }

    @Override
    public void setTextColor(int color) {
        // NOTE: setTextColor should be overriden in child classes or else this
        // method will break,
        // if child is not derived from UIButton
    }

    @Override
    protected CommonFont xmlvmGetCommonDeviceFont() {
        // NOTE: xmlvmGetUIFont should be overriden in child classes or else
        // this method will break,
        // if child is not derived from UIButton
        return null;
    }

    protected abstract void xmlvmUpdateUIView(boolean checked);

}
