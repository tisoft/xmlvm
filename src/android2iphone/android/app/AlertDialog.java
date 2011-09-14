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

package android.app;

import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIAlertViewDelegate;

import android.content.Context;
import android.content.DialogInterface;
import android.internal.Assert;
import android.util.Log;

public class AlertDialog extends Dialog implements DialogInterface {

    public static class Builder {

        private String                          title;
        private String                          message;
        private String                          positiveButtonTitle;
        private DialogInterface.OnClickListener positiveButtonClickListener;
        private String                          negativeButtonTitle;
        private DialogInterface.OnClickListener negativeButtonClickListener;
        private String                          neutralButtonTitle;
        private DialogInterface.OnClickListener neutralButtonClickListener;
        private Context                         context;


        public Builder(Context context) {
            this.context = context;
        }

        public Builder setTitle(String title) {
            this.title = title;
            return this;
        }

        public Builder setPositiveButton(String title, DialogInterface.OnClickListener clickListener) {
            this.positiveButtonTitle = title;
            this.positiveButtonClickListener = clickListener;
            return this;
        }

        public AlertDialog create() {
            return new AlertDialog(this);
        }

        public Builder setMessage(CharSequence message) {
            this.message = message.toString();
            return this;
        }

        public Builder setNegativeButton(String title, DialogInterface.OnClickListener clickListener) {
            this.negativeButtonTitle = title;
            this.negativeButtonClickListener = clickListener;
            return this;
        }

        public Builder setNeutralButton(String title, DialogInterface.OnClickListener clickListener) {
            this.neutralButtonTitle = title;
            this.neutralButtonClickListener = clickListener;
            return this;
        }

        public AlertDialog show() {
            Assert.NOT_IMPLEMENTED();
            return null;
        }

    }


    private Builder           builder;
    private String[]          buttonTitles = new String[3];
    private OnClickListener[] listeners    = new OnClickListener[3];
    private String            title;
    private String            message;
    private Context           context;


    protected AlertDialog(Context context) {
        Assert.NOT_IMPLEMENTED();
    }

    protected AlertDialog(Builder builder) {
        this.builder = builder;
        this.context = builder.context;
        this.title = builder.title;
        this.message = builder.message;
        setButton(BUTTON_NEGATIVE, builder.negativeButtonTitle, builder.negativeButtonClickListener);
        setButton(BUTTON_NEUTRAL, builder.neutralButtonTitle, builder.neutralButtonClickListener);
    }

    @Override
    public void show() {
        UIAlertView alertView = new UIAlertView(title, "", new UIAlertViewDelegate() {
            @Override
            public void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
                AlertDialog.this.clickedButtonAtIndex(alertView, buttonIndex);
            }
        }, builder.positiveButtonTitle);

        alertView.setTitle(title);
        alertView.setMessage(message);

        for (int i = 0; i < buttonTitles.length; ++i) {
            if (buttonTitles[i] != null) {
                alertView.addButtonWithTitle(buttonTitles[i]);
            }
        }
        alertView.show();
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setButton(String string, OnClickListener listener) {
        buttonTitles[0] = string;
        listeners[0] = listener;
    }

    public void setButton2(String string, OnClickListener listener) {
        buttonTitles[2] = string;
        listeners[2] = listener;
    }

    public void setButton3(String string, OnClickListener listener) {
        buttonTitles[1] = string;
        listeners[1] = listener;
    }

    public void setButton(int whichButton, String string, OnClickListener listener) {
        switch (whichButton) {
        case BUTTON_POSITIVE:
            setButton(string, listener);
            break;

        case BUTTON_NEGATIVE:
            setButton2(string, listener);
            break;

        case BUTTON_NEUTRAL:
            setButton3(string, listener);
            break;
        }
    }

    public void setIcon(int id) {
        // Do nothing: UIAlertView does not support icons
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setTitle(int id) {
        String str = context.getString(id);
        if (str != null) {
            setTitle(str);
        }
    }

    /**
     * XMLVM internal.
     */
    protected void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
        OnClickListener listener = listeners[buttonIndex];
        if (listener == null) {
            listener = AlertDialog.this.builder.positiveButtonClickListener;
        }
        if (listener != null) {
            int index = 0;
            switch (buttonIndex) {
            case 0:
                index = DialogInterface.BUTTON1;
                break;
            case 1:
                index = DialogInterface.BUTTON3;
                break;
            case 2:
                index = DialogInterface.BUTTON2;
                break;
            }
            listener.onClick(AlertDialog.this, index);
        }
    }

    @Override
    public void cancel() {
        Assert.NOT_IMPLEMENTED();
    }
}
