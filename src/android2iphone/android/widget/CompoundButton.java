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

import java.util.Set;

import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;

import android.content.Context;
import android.internal.Assert;
import android.util.AttributeSet;
import android.view.MotionEvent;

/**
 * @author wkorn
 * 
 */
public abstract class CompoundButton extends Button {

    private boolean              checked           = false;
    protected static final int[] CHECKED_STATE_SET = { 0x010100a0 };

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
        Assert.NOT_IMPLEMENTED();
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
        this.checked = !this.checked;
        xmlvmSetDrawableState(this.checked ? CHECKED_STATE_SET : EMPTY_STATE_SET);
        xmlvmUpdateUIView(this.checked);
    }

    protected abstract void xmlvmUpdateUIView(boolean checked);

    @Override
    protected boolean processTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (action == MotionEvent.ACTION_UP) {
            this.checked = !this.checked;
            xmlvmSetDrawableState(this.checked ? CHECKED_STATE_SET : EMPTY_STATE_SET);
        }

        return super.processTouchesEvent(action, touches, event);
    }

}
