package org.xmlvm.iphone.gl;

import org.xmlvm.iphone.CALayer;

public class CAEAGLLayer extends CALayer implements EAGLDrawable {

	public EAGLDrawable getDrawable() {
		return this;
	}
}
