package org.xmlvm.iphone;

import org.xmlvm.iphone.gl.CAEAGLLayer;

/**
 * @author teras
 */
public class UIViewGL extends UIView {

    public UIViewGL() {
        super();
    }

    public UIViewGL(CGRect rect) {
        super(rect);
    }

    public CAEAGLLayer getEAGLLayer() {
        return new CAEAGLLayer();
    }
}
