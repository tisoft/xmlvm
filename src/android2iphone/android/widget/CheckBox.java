package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UISwitch;

import android.content.Context;
import android.view.ViewGroup;

public class CheckBox extends CompoundButton {

    protected UISwitch uiSwitch;

    public CheckBox(Context c) {
        super(c);
        this.setOpaque(false);
        uiSwitch = new UISwitch();
        this.addSubview(uiSwitch);
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        super.setLayoutParams(l);
        AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
        this.setFrame(new CGRect(a.x, a.y, UISwitch.kSwitchButtonWidth,
                UISwitch.kSwitchButtonHeight));
        uiSwitch.setFrame(new CGRect(0, 0, UISwitch.kSwitchButtonWidth,
                UISwitch.kSwitchButtonHeight));
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

    public void setSelected(boolean b) {
        // TODO Auto-generated method stub
        
    }
}
