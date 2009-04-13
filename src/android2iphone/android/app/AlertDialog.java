package android.app;

import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIAlertViewDelegate;

import android.content.Context;
import android.content.DialogInterface;

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
    }

    private UIAlertView alertView;
    private Builder     builder;

    protected AlertDialog(Builder builder) {
        this.builder = builder;
        this.alertView = new UIAlertView("", builder.title, new UIAlertViewDelegate() {
            public void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
                AlertDialog.this.builder.clickListener.onClick(AlertDialog.this, buttonIndex);
            }
        }, builder.positiveButtonTitle);
    }

    @Override
    public void show() {
        this.alertView.show();
    }
}
