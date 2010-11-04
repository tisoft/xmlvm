package org.xmlvm.iphone.gl;

import org.lwjgl.opengl.Display;

public class EAGLContext {
    public static final int kEAGLRenderingAPIOpenGLES1 = 1;


    public static void setCurrentContext(EAGLContext context) {
    }

    public EAGLContext(int api) {

    }

    public void presentRenderBuffer(int buffer) {
        try {
            Display.sync(60);
            Display.update();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void release() {
    }

    public void renderBufferStorage(int buffer, EAGLDrawable drawable) {

    }
}
