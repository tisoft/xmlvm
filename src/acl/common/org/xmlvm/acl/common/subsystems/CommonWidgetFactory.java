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

package org.xmlvm.acl.common.subsystems;

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

import android.app.AlertDialog;
import android.graphics.Bitmap;
import android.graphics.RectF;
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
public interface CommonWidgetFactory {

    AlertDialogAdapter createAlertDialog(String title, String message, AlertDialog alertDialog, String cancelButtonTitle);

    ImageViewAdapter createImageView(ImageView imageView);

    CheckBoxAdapter createCheckBox(CheckBox checkBox);

    TextViewAdapter createTextView(TextView textView);

    ButtonAdapter createButton(Button button);

    WebViewAdapter createWebView(WebView webView);
    
    ToggleButtonAdapter createToggleButton(ToggleButton toggleButton);
    
    ScrollViewAdapter createScrollView(ScrollView scrollView);

    RadioGroupAdapter createRadioGroup(RadioGroup radioGroup);

    CommonView createView(View view);

    CommonContext createCommonDeviceContext(Bitmap bitmap, float width, float height);

    BitmapDrawableAdapter createBitmapDrawable(String path);
    
    BitmapDrawableAdapter createBitmapDrawable(int width, int height);

    ProgressBarAdapter createProgressBar(ProgressBar progressBar);

    EditTextAdapter createEditText(EditText editText);

    ListViewAdapter createListView(ListView listView);

}
