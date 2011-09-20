/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone.demo.gl.nehelesson4;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;
import org.xmlvm.iphone.UIViewGL;
import org.xmlvm.iphone.gl.CAEAGLLayer;
import org.xmlvm.iphone.gl.EAGLContext;
import org.xmlvm.iphone.gl.EAGLDrawable;
import org.xmlvm.iphone.gl.GL;

public abstract class GLView extends UIViewGL {
    private int         backingWidth;
    private int         backingHeight;
    private EAGLContext context;
    private int         viewRenderbuffer, viewFramebuffer;
    private int         depthRenderbuffer;
    private NSTimer     animationTimer;
    private double      animationInterval;
    private boolean     isViewSetup;

    public GLView(CGRect rect) {
        super(rect);

        backingWidth = (int) rect.size.width;
        backingHeight = (int) rect.size.height;

        // Get the layer
        CAEAGLLayer eaglLayer = getEAGLLayer();

        context = new EAGLContext(EAGLContext.kEAGLRenderingAPIOpenGLES1);
        EAGLContext.setCurrentContext(context);
        if (!createFrameBuffer()) {
            throw new RuntimeException("Failed to create frame buffer");
        }

        animationInterval = 1.0 / 45.0;

        isViewSetup = false;
        startAnimation();
    }

    @Override
    public void layoutSubviews() {
        EAGLContext.setCurrentContext(context);
        destroyFrameBuffer();
        createFrameBuffer();
        drawView();
    }

    public boolean createFrameBuffer() {
        viewRenderbuffer = GL.glGenRenderbuffersOES(1);
        GL.glBindRenderbufferOES(GL.GL_RENDERBUFFER_OES, viewRenderbuffer);
        context.renderBufferStorage(GL.GL_RENDERBUFFER_OES, (EAGLDrawable) getEAGLLayer()
                .getDrawable());

        viewFramebuffer = GL.glGenFramebuffersOES(1);
        GL.glBindFramebufferOES(GL.GL_FRAMEBUFFER_OES, viewFramebuffer);
        GL.glFramebufferRenderbufferOES(GL.GL_FRAMEBUFFER_OES, GL.GL_COLOR_ATTACHMENT0_OES,
                GL.GL_RENDERBUFFER_OES, viewRenderbuffer);

        // glGetRenderbufferParameterivOES(GL_RENDERBUFFER_OES,
        // GL_RENDERBUFFER_WIDTH_OES, &backingWidth);
        // glGetRenderbufferParameterivOES(GL_RENDERBUFFER_OES,
        // GL_RENDERBUFFER_HEIGHT_OES, &backingHeight);

        if (GL.glCheckFramebufferStatusOES(GL.GL_FRAMEBUFFER_OES) != GL.GL_FRAMEBUFFER_COMPLETE_OES) {
            System.out.println("failed to make complete framebuffer object "
                    + GL.glCheckFramebufferStatusOES(GL.GL_FRAMEBUFFER_OES));
            return false;
        }

        return true;
    }

    public void destroyFrameBuffer() {
        GL.glDeleteFramebuffersOES(1, viewFramebuffer);
        viewFramebuffer = 0;
        GL.glDeleteRenderbuffersOES(1, viewRenderbuffer);
        viewRenderbuffer = 0;

        if (depthRenderbuffer != 0) {
            GL.glDeleteRenderbuffersOES(1, depthRenderbuffer);
            depthRenderbuffer = 0;
        }
    }

    public void startAnimation() {
        animationTimer = NSTimer.scheduledTimerWithTimeInterval((float) animationInterval, new NSTimerDelegate() {

            public void timerEvent(NSTimer nst) {
                drawView();
            }
        }, null, true);
    }

    public void stopAnimation() {
        animationTimer.invalidate();
        animationTimer = null;
    }

    public void setAnimationInterval(double interval) {
        animationInterval = interval;

        if (animationTimer != null) {
            stopAnimation();
            startAnimation();
        }
    }

    public void setupView() {
        // Sets up matrices and transforms for OpenGL ES
        GL.glViewport(0, 0, backingWidth, backingHeight);
        GL.glMatrixMode(GL.GL_PROJECTION);
        GL.glLoadIdentity();
        GL.glOrthof(0.0f, 320.0f, 480.0f, 0.0f, -1.0f, 1.0f);
        GL.glMatrixMode(GL.GL_MODELVIEW);

        // Clears the view with black
        GL.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);

        // Set a blending function to use
        GL.glBlendFunc(GL.GL_ONE, GL.GL_ONE_MINUS_SRC_ALPHA);
        // Enable blending
        GL.glEnable(GL.GL_BLEND);
        GL.glEnable(GL.GL_TEXTURE_2D);
    }

    // Updates the OpenGL view when the timer fires
    public void drawView() {
        // Make sure that you are drawing to the current context
        EAGLContext.setCurrentContext(context);

        if (isViewSetup) {
            setupView();
            isViewSetup = true;
        }

        GL.glBindFramebufferOES(GL.GL_FRAMEBUFFER_OES, viewFramebuffer);

        GL.glClear(GL.GL_COLOR_BUFFER_BIT);
        renderView();

        GL.glBindRenderbufferOES(GL.GL_RENDERBUFFER_OES, viewRenderbuffer);
        context.presentRenderBuffer(GL.GL_RENDERBUFFER_OES);
    }

    // Stop animating and release resources when they are no longer needed.
    public void end() {
        stopAnimation();
        context.release();
    }

    public abstract void renderView();
}
