package org.xmlvm.iphone;

import static org.xmlvm.iphone.UIButtonType.Custom;
import static org.xmlvm.iphone.UIButtonType.RoundedRect;
import static org.xmlvm.iphone.UIControlEvent.TouchUpInside;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.iphone.internal.renderer.UIAlertButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UICustomButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIRoundRectButtonRenderer;

public class UIButton extends UIControl {

    private int     buttonType;
    private UIFont  font;
    private String  title;
    private UIColor titleColor;
    private UIColor titleShadowColor;
    private CGSize  titleShadowOffset;

    protected UIButton(int UIButtonType) {
        super();
        this.buttonType = UIButtonType;
        switch (buttonType) {
        case UIAlertButtonRenderer.AlertViewType:
            xmlvmSetRenderer(new UIAlertButtonRenderer(this));
            break;
        case Custom:
            xmlvmSetRenderer(new UICustomButtonRenderer(this));
            break;
        case RoundedRect:
        default:
            xmlvmSetRenderer(new UIRoundRectButtonRenderer(this));
        }
    }

    public static UIButton buttonWithType(int UIButtonType) {
        return new UIButton(UIButtonType);
    }

    public void setFont(UIFont font) {
        this.font = font;
        setNeedsDisplay();
    }

    public UIFont getFont() {
        return font;
    }

    public int getButtonType() {
        return buttonType;
    }

    public void setTitle(String title, int state) {
        this.title = title;
        setNeedsDisplay();
    }

    public String getTitleForState(int state) {
        return title;
    }

    public void setTitleColor(UIColor titleColor, int state) {
        this.titleColor = titleColor;
        setNeedsDisplay();
    }

    public UIColor getTitleColorForState(int state) {
        return titleColor;
    }

    public void setTitleShadowColor(UIColor titleShadowColor, int state) {
        this.titleShadowColor = titleShadowColor;
        setNeedsDisplay();
    }

    public UIColor getTitleShadowColorForState(int state) {
        return titleShadowColor;
    }

    public void setTitleShadowOffset(CGSize titleShadowOffset, int state) {
        this.titleShadowOffset = titleShadowOffset;
        setNeedsDisplay();
    }

    public CGSize getTitleShadowOffset() {
        return titleShadowOffset;
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        if (touchedInsideView(touches)) {
            ((UIButtonRenderer) xmlvmGetRenderer()).setButtonPressed(true);
            setNeedsDisplay();
        }
    }

    //TODO UIButton should make use of UIControl and not the raw interface of UIResponder
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UIButtonRenderer gui = (UIButtonRenderer) xmlvmGetRenderer();
        if (gui.isButtonPressed() && touchedInsideView(touches))
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0)
                    e.getValue().raiseEvent(e.getValue(), UIControlEvent.TouchUpInside);
            }
        gui.setButtonPressed(false);
        setNeedsDisplay();
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        ((UIButtonRenderer) xmlvmGetRenderer()).updateButtonElements();
    }
}
