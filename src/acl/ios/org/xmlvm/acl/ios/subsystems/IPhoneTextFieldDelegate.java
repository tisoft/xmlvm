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

package org.xmlvm.acl.ios.subsystems;

import org.xmlvm.acl.common.adapter.ScrollViewAdapter;
import org.xmlvm.acl.common.subsystems.CommonTextFieldDelegate;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIScrollView;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UITextFieldDelegate;

import android.view.Window;

/**
 *
 */
public class IPhoneTextFieldDelegate implements CommonTextFieldDelegate {

    private UITextFieldDelegate iTextFieldDelegate;
    
    /**
     * @param window
     */
    public IPhoneTextFieldDelegate(final Window window) {
        iTextFieldDelegate = new UITextFieldDelegate() {
            @Override
            public void textFieldDidBeginEditing(UITextField textField) {
                CGRect rect = textField.getSuperview()
                        .convertRectToView(textField.getFrame(), null);
                int height = (int) UIScreen.mainScreen().getBounds().size.height;
                // TODO don't hardcode keyboard height
                if (rect.origin.y > height - 216 - 60) {
                    CGPoint offset = new CGPoint(0, rect.origin.y - 150);
                    ScrollViewAdapter adapter = window.getScrollView();
                    ((UIScrollView) ((IPhoneView) adapter).getView()).setContentOffset(offset, true);
                }
            }

            @Override
            public void textFieldDidEndEditing(UITextField textField) {
                textField.resignFirstResponder();
                CGPoint offset = new CGPoint(0, 0);
                ScrollViewAdapter adapter = window.getScrollView();
                ((UIScrollView) ((IPhoneView) adapter).getView()).setContentOffset(offset, true);
            }

            @Override
            public boolean textFieldShouldReturn(UITextField textField) {
                textField.resignFirstResponder();
                return false;
            }
        };
    }
    
    /**
     * @return the iTextFieldDelegate
     */
    public UITextFieldDelegate getUITextFieldDelegate() {
        return iTextFieldDelegate;
    }

}
