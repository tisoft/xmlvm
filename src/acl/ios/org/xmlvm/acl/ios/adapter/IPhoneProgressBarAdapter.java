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

import java.util.List;
import java.util.Set;

import org.xmlvm.acl.common.adapter.ProgressBarAdapter;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIEvent;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ProgressBar;

/**
 *
 */
public class IPhoneProgressBarAdapter extends IPhoneView implements ProgressBarAdapter {

    public IPhoneProgressBarAdapter(ProgressBar progressBar) {
        super(progressBar, 0);
        this.setView(new UIActivityIndicatorView(
                UIActivityIndicatorViewStyle.WhiteLarge) {

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
        ((UIActivityIndicatorView)this.getView()).setHidesWhenStopped(false);
        ((UIActivityIndicatorView)this.getView()).startAnimating();
    }

}
