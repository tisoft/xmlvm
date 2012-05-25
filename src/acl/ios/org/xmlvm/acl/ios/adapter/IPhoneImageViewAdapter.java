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
import org.xmlvm.acl.common.adapter.ImageViewAdapter;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UITouch;

import android.view.MotionEvent;
import android.widget.ImageButton;
import android.widget.ImageView;

/**
 *
 */
public class IPhoneImageViewAdapter extends IPhoneView implements ImageViewAdapter {

    private BitmapDrawableAdapter drawable;


    public IPhoneImageViewAdapter(ImageView imageView) {
        super(imageView);
        this.setView(new UIImageView() {

            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
            }

            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
            }

            @Override
            public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
            }

            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_UP, touches, event);
            }
        });
    }

    @Override
    public void setImage(BitmapDrawableAdapter drawable) {
        this.drawable = drawable;
        if (drawable != null) {
            ((UIImageView) this.getView()).setImage(((IPhoneBitmapDrawableAdapter) drawable)
                    .getImage());
        }
        else {
            ((UIImageView) this.getView()).setImage(null);
        }
    }

    @Override
    public BitmapDrawableAdapter getImage() {
        if (drawable == null && ((UIImageView) this.getView()).getImage() != null) {
            throw new RuntimeException("Image not set in native adapter");
        } else {
            return drawable;
        }
    }

    public boolean xmlvmTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (this.getAndroidView() instanceof ImageButton) {
            if (action == MotionEvent.ACTION_DOWN) {
                ((ImageButton) this.getAndroidView()).xmlvmSetDrawableState(((ImageButton) this
                        .getAndroidView()).PRESSED_STATE_SET);
            } else if (action == MotionEvent.ACTION_UP) {
                ((ImageButton) this.getAndroidView()).xmlvmSetDrawableState(((ImageButton) this
                        .getAndroidView()).EMPTY_STATE_SET);
            }
        }

        return super.xmlvmTouchesEvent(action, touches, event);
    };

}
