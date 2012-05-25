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

import org.xmlvm.acl.common.adapter.AlertDialogAdapter;
import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.common.adapter.ButtonAdapter;
import org.xmlvm.acl.common.adapter.CheckBoxAdapter;
import org.xmlvm.acl.common.adapter.EditTextAdapter;
import org.xmlvm.acl.common.adapter.ImageViewAdapter;
import org.xmlvm.acl.common.adapter.ListViewAdapter;
import org.xmlvm.acl.common.adapter.ProgressBarAdapter;
import org.xmlvm.acl.common.adapter.RadioGroupAdapter;
import org.xmlvm.acl.common.adapter.ScrollViewAdapter;
import org.xmlvm.acl.common.adapter.TextViewAdapter;
import org.xmlvm.acl.common.adapter.ToggleButtonAdapter;
import org.xmlvm.acl.common.adapter.WebViewAdapter;
import org.xmlvm.acl.common.objects.CommonContext;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.common.subsystems.CommonMediaPlayer;
import org.xmlvm.acl.common.subsystems.CommonWidgetFactory;
import org.xmlvm.acl.ios.adapter.IPhoneAlertDialogAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneBitmapDrawableAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneButtonAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneCheckBoxAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneEditTextAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneImageViewAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneListViewAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneProgressBarAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneRadioGroupAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneScrollViewAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneTextViewAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneToggleButtonAdapter;
import org.xmlvm.acl.ios.adapter.IPhoneWebViewAdapter;
import org.xmlvm.acl.ios.objects.IPhoneContext;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIImage;

import android.app.AlertDialog;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.internal.TopActivity;
import android.media.MediaPlayer;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.ToggleButton;

/**
 *
 */
public class IPhoneWidgetFactory implements CommonWidgetFactory {

    @Override
    public AlertDialogAdapter createAlertDialog(String title, String message, final AlertDialog alertDialog, String cancelButtonTitle) {
        return new IPhoneAlertDialogAdapter(title, message, alertDialog, cancelButtonTitle);
    }

    @Override
    public BitmapDrawableAdapter createBitmapDrawable(String path) {
        return new IPhoneBitmapDrawableAdapter(path);
    }
    
    @Override
    public BitmapDrawableAdapter createBitmapDrawable(int width, int height) {
        UIGraphics.beginImageContext(new CGSize(width, height));
        UIImage image = UIGraphics.getImageFromCurrentImageContext();
        UIGraphics.endImageContext();
        return new IPhoneBitmapDrawableAdapter(image);
    }

    @Override
    public ImageViewAdapter createImageView(ImageView imageView) {
        return new IPhoneImageViewAdapter(imageView);
    }

    @Override
    public CheckBoxAdapter createCheckBox(CheckBox checkBox) {
        return new IPhoneCheckBoxAdapter(checkBox);
    }

    @Override
    public TextViewAdapter createTextView(TextView textView) {
        return new IPhoneTextViewAdapter(textView);
    }

    @Override
    public ButtonAdapter createButton(Button button) {
        return new IPhoneButtonAdapter(button);
    }

    @Override
    public CommonView createView(View view) {
        return new IPhoneView(view);
    }

    @Override
    public CommonContext createCommonDeviceContext(Bitmap bitmap, float width, float height) {
        return new IPhoneContext(bitmap, width, height);
    }

    @Override
    public WebViewAdapter createWebView(WebView webView) {
        return new IPhoneWebViewAdapter(webView);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createToggleButton(android.widget.ToggleButton)
     */
    @Override
    public ToggleButtonAdapter createToggleButton(ToggleButton toggleButton) {
        return new IPhoneToggleButtonAdapter(toggleButton);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createScrollView(android.widget.ScrollView)
     */
    @Override
    public ScrollViewAdapter createScrollView(ScrollView scrollView) {
        return new IPhoneScrollViewAdapter(scrollView);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createRadioGroup(android.widget.RadioGroup)
     */
    @Override
    public RadioGroupAdapter createRadioGroup(RadioGroup radioGroup) {
        return new IPhoneRadioGroupAdapter(radioGroup);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createProgressBar(android.widget.ProgressBar)
     */
    @Override
    public ProgressBarAdapter createProgressBar(ProgressBar progressBar) {
        return new IPhoneProgressBarAdapter(progressBar);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createEditText(android.widget.EditText)
     */
    @Override
    public EditTextAdapter createEditText(EditText editText) {
        return new IPhoneEditTextAdapter(editText);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createListView(android.widget.ListView)
     */
    @Override
    public ListViewAdapter createListView(ListView listView) {
        return new IPhoneListViewAdapter(listView);
    }

}
