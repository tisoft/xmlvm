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


import java.util.Set;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.common.adapter.ButtonAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.ios.objects.IPhoneFont;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITouch;

import android.view.MotionEvent;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;

/**
 *
 */
public class IPhoneButtonAdapter extends IPhoneTextViewAdapter implements ButtonAdapter {

    private BitmapDrawableAdapter backgroundImage;

    public IPhoneButtonAdapter(final Button button) {
        super(button);
        this.setView(UIButton.buttonWithType(UIButtonType.RoundedRect));
        
        if (!(button instanceof CompoundButton)) {
            ((UIButton)this.getView()).addTarget(new UIControlDelegate() {

                @Override
                public void raiseEvent(UIControl sender, int eventType) {
                    if (button.getOnClickListener() != null) {
                        button.getOnClickListener().onClick(button);
                    }
                }

            }, UIControlEvent.TouchUpInside);
        }
    }
    
    @Override
    public void setTitle(String text) {
        ((UIButton)this.getView()).setTitle(text, UIControlState.Normal);
    }
    
    @Override
    public CommonFont getFont() {
        return new IPhoneFont(((UIButton)this.getView()).getFont());
    }

    @Override
    public void setFont(CommonFont font) {
        ((UIButton)this.getView()).setFont(((IPhoneFont)font).getFont());
    }

    @Override
    public void setOnClickListener(final OnClickListener listener) {
        ((UIButton) this.getView()).addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                listener.onClick(getAndroidView());
            }

        }, UIControlEvent.TouchUpInside);
    }

    @Override
    public void setTitleColor(int color) {
        ((UIButton)this.getView()).setTitleColor(IPhoneView.toUIColor(color), UIControlState.Normal);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#setImage(org.xmlvm.common.adapter.BitmapDrawableAdapter, int)
     */
    @Override
    public void setImage(BitmapDrawableAdapter img, int controlState) {
        ((UIButton)this.getView()).setImage(((IPhoneBitmapDrawableAdapter)img).getImage(), controlState);
        this.backgroundImage = img;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#getTextSize()
     */
    @Override
    public float getTextSize() {
        UIFont font = ((UIButton) this.getView()).getFont();
        if (font == null) {
            return UIFont.labelFontSize();
        } else {
            return font.pointSize();
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#setTextSize(float)
     */
    @Override
    public void setTextSize(float size) {
        UIButton content = ((UIButton)this.getView());
        UIFont font = content.getFont();
        if (font == null) {
            content.setFont(UIFont.systemFontOfSize(size));
        } else {
            content.setFont(font.fontWithSize(size));
        }        
    }
    
    public boolean xmlvmTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if(this.getAndroidView() instanceof CompoundButton) {
            if (action == MotionEvent.ACTION_UP) {
                ((CompoundButton) this.getAndroidView()).setChecked(!((CompoundButton) this
                        .getAndroidView()).isChecked());
                ((CompoundButton) this.getAndroidView())
                        .xmlvmSetDrawableState(((CompoundButton) this.getAndroidView()).isChecked() ? CompoundButton.CHECKED_STATE_SET
                                : ((CompoundButton) this.getAndroidView()).EMPTY_STATE_SET);
            }
        }

        return super.xmlvmTouchesEvent(action, touches, event);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#getCurrentBackgroundImage()
     */
    @Override
    public BitmapDrawableAdapter getCurrentBackgroundImage() {
        return this.backgroundImage;
    }

}
