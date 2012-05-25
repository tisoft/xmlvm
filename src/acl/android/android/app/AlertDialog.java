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

import org.xmlvm.acl.common.adapter.AlertDialogAdapter;
import org.xmlvm.acl.common.subsystems.CommonWidgetFactory;

import android.content.Context;
import android.content.DialogInterface;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;
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

        public Builder setTitle(int titleId) {
            setTitle(context.getResources().getText(titleId));
            return this;
        }

        public Builder setPositiveButton(String title, DialogInterface.OnClickListener clickListener) {
            this.positiveButtonTitle = title;
            this.positiveButtonClickListener = clickListener;
            return this;
        }

        public Builder setPositiveButton(int titleId, DialogInterface.OnClickListener clickListener) {
            setPositiveButton(context.getResources().getText(titleId), clickListener);
            return this;
        }

        public AlertDialog create() {
            return new AlertDialog(this);
        }

        public Builder setMessage(CharSequence message) {
            this.message = message.toString();
            return this;
        }

        public Builder setMessage(int messageId) {
            setTitle(context.getResources().getText(messageId));
            return this;
        }

        public Builder setNegativeButton(String title, DialogInterface.OnClickListener clickListener) {
            this.negativeButtonTitle = title;
            this.negativeButtonClickListener = clickListener;
            return this;
        }

        public Builder setNegativeButton(int titleId, DialogInterface.OnClickListener clickListener) {
            setNegativeButton(context.getResources().getText(titleId), clickListener);
            return this;
        }

        public Builder setNeutralButton(String title, DialogInterface.OnClickListener clickListener) {
            this.neutralButtonTitle = title;
            this.neutralButtonClickListener = clickListener;
            return this;
        }

        public Builder setNeutralButton(int titleId, DialogInterface.OnClickListener clickListener) {
            setNeutralButton(context.getResources().getText(titleId), clickListener);
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
        CommonWidgetFactory widgetFactory = CommonDeviceAPIFinder.instance().getWidgetFactory();
        String message = "";
        CharSequence cancelButtonTitle = builder.positiveButtonTitle;
        AlertDialogAdapter adapter = widgetFactory.createAlertDialog((String)title, message, this, (String) cancelButtonTitle);

        adapter.setTitle(title);
        adapter.setMessage(message);

        for (int i = 0; i < buttonTitles.length; ++i) {
            if (buttonTitles[i] != null) {
                adapter.addButtonWithTitle(buttonTitles[i]);
            }
        }
        adapter.show();
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
    public void clickedButtonAtIndex(int buttonIndex) {
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
