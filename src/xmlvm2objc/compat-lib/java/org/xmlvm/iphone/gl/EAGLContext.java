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

package org.xmlvm.iphone.gl;

import org.lwjgl.opengl.Display;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
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
