
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIPickerViewRenderer;

/**
 * 
 * @author teras
 */
public abstract class UIPickerViewDelegate {

    private final static float ROWHEIGHT = 10;
    private final static float ROWWIDTH  = 320 - 2 * UIPickerViewRenderer.INSET - 2;

    public float rowHeightForComponent(UIPickerView view, int component) {
        return ROWHEIGHT;
    }

    public float widthForComponent(UIPickerView view, int component) {
        return ROWWIDTH / view.getNumberOfComponents();
    }

    public UIView viewForRow(UIPickerView view, int row, int component, UIView reusedView) {
        return null;
    }

    public void didSelectRow(UIPickerView view, int row, int component) {
    }

    public abstract String titleForRow(UIPickerView view, int row, int component);
}
