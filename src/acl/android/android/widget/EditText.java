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

import org.xmlvm.acl.common.adapter.EditTextAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.common.subsystems.CommonTextFieldDelegate;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.internal.CommonDeviceAPIFinder;
import android.text.InputType;
import android.util.AttributeSet;

public class EditText extends TextView {

    private static final int INSETS_X = 3;
    private static final int INSETS_Y = 3;


    public EditText(Context c) {
        this(c, null);
    }

    public EditText(Context c, AttributeSet attrs) {
        super(c, attrs);
        ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).setText("");

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseEditTextAttributes(attrs);
        }
        setBackgroundColor(Color.WHITE);
        setTextColor(Color.BLACK);
        xmlvmGetViewHandler().setUserInteractionEnabled(true);
    }

    public void setRawInputType(int inputType) {
        if ((inputType & InputType.TYPE_TEXT_VARIATION_PASSWORD) > 0) {
            ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).setSecureTextEntry(true);
        }
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createEditText(this);
    }

    private void parseEditTextAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    @Override
    public void setText(String string) {
        this.text = string;
        ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).setText(string);
        requestLayout();
    }

    @Override
    public String getText() {
        return ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).getText();
    }

    @Override
    public void setTextColor(int color) {
        ((EditTextAdapter) xmlvmGetViewHandler().getContentView())
                .setTextColor(color);
    }

    @Override
    public void setTextSize(float size) {
        EditTextAdapter content = (EditTextAdapter) xmlvmGetViewHandler().getContentView();
        CommonFont font = content.getFont();
        if (font == null) {
            content.setFont(CommonDeviceAPIFinder.instance().getFontFactory().systemFontOfSize(size));
        } else {
            content.setFont(font.fontWithSize(size));
        }
    }

    @Override
    public float getTextSize() {
        CommonFont font = ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).getFont();
        if (font == null) {
            return CommonDeviceAPIFinder.instance().getFontFactory().labelFontSize();
        } else {
            return font.pointSize();
        }
    }

    @Override
    public void setTypeface(Typeface tf) {
        if (tf != null) {
            EditTextAdapter content = (EditTextAdapter) xmlvmGetViewHandler().getContentView();
            content.setFont(tf.xmlvmGetUIFont(content.getFont().pointSize()));
        }
    }

    @Override
    public void setGravity(int gravity) {
        this.gravity = gravity;
        // gravity not supported under iOS UIButton
    }

    @Override
    public void setHint(CharSequence hint) {
        ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).setPlaceholder(hint.toString());
    }

    @Override
    protected CommonFont xmlvmGetCommonDeviceFont() {
        return ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).getFont();
    }

    @Override
    protected int xmlvmGetInsetsX() {
        return INSETS_X;
    }

    @Override
    protected int xmlvmGetInsetsY() {
        return INSETS_Y;
    }

    public void xmlvmSetKeyboardDelegate(CommonTextFieldDelegate iTextFieldDelegate) {
        ((EditTextAdapter) xmlvmGetViewHandler().getContentView()).setDelegate(iTextFieldDelegate);
    }

}
