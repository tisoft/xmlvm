package android.app;

import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIAlertViewDelegate;

import android.content.Context;
import android.content.DialogInterface;
import android.internal.Assert;

public class AlertDialog extends Dialog implements DialogInterface {

    public static class Builder {

        private String                          title;
        private String                          positiveButtonTitle;
        private DialogInterface.OnClickListener clickListener;

        public Builder(Context context) {

        }

        public Builder setTitle(String title) {
            this.title = title;
            return this;
        }

        public Builder setPositiveButton(String title, DialogInterface.OnClickListener clickListener) {
            this.positiveButtonTitle = title;
            this.clickListener = clickListener;
            return this;
        }

        public AlertDialog create() {
            return new AlertDialog(this);
        }

        public Builder setMessage(CharSequence message) {
            Assert.NOT_IMPLEMENTED();
            return this;
        }

        public Builder setNegativeButton(CharSequence text, DialogInterface.OnClickListener listener) {
            Assert.NOT_IMPLEMENTED();
            return this;
        }
        
        public AlertDialog show() {
            Assert.NOT_IMPLEMENTED();
            return null;
        }
    }

    private UIAlertView       alertView;
    private Builder           builder;
    private String[]          buttonTitles = new String[3];
    private OnClickListener[] listeners    = new OnClickListener[3];

    protected AlertDialog(Context context) {
        Assert.NOT_IMPLEMENTED();
    }

    protected AlertDialog(Builder builder) {
        // TODO: We shouldn't need to do this. XMLVM doesn't not initialize the
        // array with null values yet.
        for (int i = 0; i < buttonTitles.length; ++i) {
            buttonTitles[i] = null;
            listeners[i] = null;
        }
        this.builder = builder;
        this.alertView = new UIAlertView(builder.title, "", new UIAlertViewDelegate() {
            public void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
                AlertDialog.this.clickedButtonAtIndex(alertView, buttonIndex);
            }
        }, builder.positiveButtonTitle);
    }

    @Override
    public void show() {
        for (int i = 0; i < buttonTitles.length; ++i) {
            if (buttonTitles[i] != null) {
                this.alertView.addButtonWithTitle(buttonTitles[i]);
            }
        }
        this.alertView.show();
    }

    public void setTitle(String string) {
        this.alertView.setTitle(string);
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

    /**
     * XMLVM internal.
     */
    protected void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
        OnClickListener listener = listeners[buttonIndex];
        if (listener == null) {
            listener = AlertDialog.this.builder.clickListener;
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
}
