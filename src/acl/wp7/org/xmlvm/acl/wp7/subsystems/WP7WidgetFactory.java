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

package org.xmlvm.acl.wp7.subsystems;

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
import org.xmlvm.acl.common.subsystems.CommonWidgetFactory;
import org.xmlvm.acl.wp7.adapter.WP7AlertDialogAdapter;
import org.xmlvm.acl.wp7.adapter.WP7BitmapDrawableAdapter;
import org.xmlvm.acl.wp7.adapter.WP7ButtonAdapter;
import org.xmlvm.acl.wp7.adapter.WP7CheckBoxAdapter;
import org.xmlvm.acl.wp7.adapter.WP7ImageViewAdapter;
import org.xmlvm.acl.wp7.adapter.WP7TextViewAdapter;
import org.xmlvm.acl.wp7.objects.WP7View;

import android.app.AlertDialog;
import android.graphics.Bitmap;
import android.internal.Assert;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.ToggleButton;

/**
 *
 */
public class WP7WidgetFactory implements CommonWidgetFactory {

    @Override
    public AlertDialogAdapter createAlertDialog(String title, String message,
            AlertDialog alertDialog, String cancelButtonTitle) {
        return new WP7AlertDialogAdapter(title, message, alertDialog, cancelButtonTitle);
    }

    @Override
    public BitmapDrawableAdapter createBitmapDrawable(String path) {
        return new WP7BitmapDrawableAdapter(path);
    }

    @Override
    public ImageViewAdapter createImageView(ImageView imageView) {
        return new WP7ImageViewAdapter(imageView);
    }

    @Override
    public CheckBoxAdapter createCheckBox(CheckBox checkBox) {
        return new WP7CheckBoxAdapter(checkBox);
    }

    @Override
    public TextViewAdapter createTextView(TextView textView) {
        return new WP7TextViewAdapter(textView);
    }

    @Override
    public ButtonAdapter createButton(Button button) {
        return new WP7ButtonAdapter(button);
    }

    @Override
    public CommonView createView(View view) {
        return new WP7View(view);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createWebView(android.webkit.WebView)
     */
    @Override
    public WebViewAdapter createWebView(WebView webView) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createToggleButton(android.widget.ToggleButton)
     */
    @Override
    public ToggleButtonAdapter createToggleButton(ToggleButton toggleButton) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createScrollView(android.widget.ScrollView)
     */
    @Override
    public ScrollViewAdapter createScrollView(ScrollView scrollView) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createRadioGroup(android.widget.RadioGroup)
     */
    @Override
    public RadioGroupAdapter createRadioGroup(RadioGroup radioGroup) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createCommonDeviceContext(android.graphics.Bitmap, float, float)
     */
    @Override
    public CommonContext createCommonDeviceContext(Bitmap bitmap, float width, float height) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createBitmapDrawable(int, int)
     */
    @Override
    public BitmapDrawableAdapter createBitmapDrawable(int width, int height) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createProgressBar(android.widget.ProgressBar)
     */
    @Override
    public ProgressBarAdapter createProgressBar(ProgressBar progressBar) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createEditText(android.widget.EditText)
     */
    @Override
    public EditTextAdapter createEditText(EditText editText) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWidgetFactory#createListView(android.widget.ListView)
     */
    @Override
    public ListViewAdapter createListView(ListView listView) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

}
