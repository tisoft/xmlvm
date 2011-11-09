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

import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UITextFieldDelegate;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
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
        ((UITextField) xmlvmGetViewHandler().getContentView()).setText("");

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseEditTextAttributes(attrs);
        }
        setBackgroundColor(Color.WHITE);
        setTextColor(Color.BLACK);
        xmlvmGetViewHandler().setUserInteractionEnabled(true);
    }

    public void setRawInputType(int inputType) {
        if ((inputType & InputType.TYPE_TEXT_VARIATION_PASSWORD) > 0) {
            ((UITextField) xmlvmGetViewHandler().getContentView()).setSecureTextEntry(true);
        }
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UITextField field = new UITextField();
        field.setBorderStyle(UITextBorderStyle.Bezel);
        field.setUserInteractionEnabled(true);
        return field;
    }

    private void parseEditTextAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    @Override
    public void setText(String string) {
        this.text = string;
        ((UITextField) xmlvmGetViewHandler().getContentView()).setText(string);
        requestLayout();
    }

    @Override
    public String getText() {
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getText();
    }

    @Override
    public void setTextColor(int color) {
        ((UITextField) xmlvmGetViewHandler().getContentView())
                .setTextColor(xmlvmConvertIntToUIColor(color));
    }

    @Override
    public void setTextSize(float size) {
        UITextField content = (UITextField) xmlvmGetViewHandler().getContentView();
        UIFont font = content.getFont();
        if (font == null) {
            content.setFont(UIFont.systemFontOfSize(size));
        } else {
            content.setFont(font.fontWithSize(size));
        }
    }

    @Override
    public float getTextSize() {
        UIFont font = ((UITextField) xmlvmGetViewHandler().getContentView()).getFont();
        if (font == null) {
            return UIFont.labelFontSize();
        } else {
            return font.pointSize();
        }
    }

    @Override
    public void setTypeface(Typeface tf) {
        if (tf != null) {
            UITextField content = (UITextField) xmlvmGetViewHandler().getContentView();
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
        ((UITextField) xmlvmGetViewHandler().getContentView()).setPlaceholder(hint.toString());
    }

    @Override
    protected UIFont xmlvmGetUIFont() {
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getFont();
    }

    @Override
    protected int xmlvmGetInsetsX() {
        return INSETS_X;
    }

    @Override
    protected int xmlvmGetInsetsY() {
        return INSETS_Y;
    }

    public void xmlvmSetKeyboardDelegate(UITextFieldDelegate iTextFieldDelegate) {
        ((UITextField) xmlvmGetViewHandler().getContentView()).setDelegate(iTextFieldDelegate);
    }

}
