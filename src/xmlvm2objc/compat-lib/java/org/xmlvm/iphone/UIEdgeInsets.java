
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public class UIEdgeInsets {

    public float top, left, bottom, right;

    public UIEdgeInsets() {
        top = 0;
        left = 0;
        bottom = 0;
        right = 0;
    }

    public UIEdgeInsets(float top, float left, float bottom, float right) {
        this.top = top;
        this.left = left;
        this.bottom = bottom;
        this.right = right;
    }
}
