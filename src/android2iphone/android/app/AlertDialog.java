package android.app;

import org.xmlvm.iphone.UIAlertView;

import android.content.Context;

public class AlertDialog extends Dialog {

	public static class Builder {

		private String title;
		private String positiveButtonTitle;

		public Builder(Context context) {

		}

		public Builder setTitle(String title) {
			this.title = title;
			return this;
		}

		// TODO Second parameter should be OnClickListener
		public Builder setPositiveButton(String title, Object clickListener) {
			this.positiveButtonTitle = title;
			return this;
		}

		public AlertDialog create() {
			return new AlertDialog(this);
		}
	}

	private UIAlertView alertView;

	protected AlertDialog(Builder builder) {
		this.alertView = new UIAlertView("", builder.title, null,
				builder.positiveButtonTitle);
	}

	@Override
	public void show() {
		this.alertView.show();
	}
}
