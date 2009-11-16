package org.xmlvm.iphone;

import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kMaximum;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kMinimum;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kProgressViewHeight;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kProgressViewWidth;

import org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer;

/**
 * @author teras
 */
public class UIProgressView extends UIControl {

    private float progress          = 0f;
    private int   progressViewStyle = 1;

    public UIProgressView(int UIProgressViewStyle) {
        super(new CGRect(0, 0, kProgressViewWidth, kProgressViewHeight));
        xmlvmSetRenderer(new UIProgressViewRenderer(this));
        progressViewStyle = UIProgressViewStyle;
    }

    public void setProgress(float val) {
        if (val < kMinimum)
            val = kMinimum;
        if (val > kMaximum)
            val = kMaximum;
        progress = val;
        this.setNeedsDisplay();
    }

    public float getProgress() {
        return progress;
    }

    public int getProgressViewStyle() {
        return progressViewStyle;
    }

    public void setProgressViewStyle(int style) {
        progressViewStyle = style;
        setNeedsDisplay();
    }
}
