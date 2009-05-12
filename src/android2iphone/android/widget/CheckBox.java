package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UISwitch;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

public class CheckBox extends View {

    protected UISwitch uiSwitch;

    public CheckBox(Context c) {
        super(c);
        this.setOpaque(false);
        uiSwitch = new UISwitch();
        this.addSubview(uiSwitch);
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        super.setLayoutParams(l);
        // TODO Fix hard coded sizing
        AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
        this.setFrame(new CGRect(a.x - 20, a.y + 8, 80, 28));
        uiSwitch.setFrame(new CGRect(0, 0, 80, 28));
    }

    public AbsoluteLayout.LayoutParams getLayoutParams() {
        return (AbsoluteLayout.LayoutParams) getCurLayout();
    }

    public boolean isChecked() {
        return uiSwitch.isOn();
    }

    public void setChecked(boolean checked) {
        uiSwitch.setOn(checked);
    }
}
