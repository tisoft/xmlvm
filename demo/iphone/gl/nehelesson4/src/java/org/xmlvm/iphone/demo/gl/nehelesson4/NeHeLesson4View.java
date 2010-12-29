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

import java.nio.FloatBuffer;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.gl.BufferUtils;
import org.xmlvm.iphone.gl.GL;

public class NeHeLesson4View extends GLView {
	private static final float TO_RADIANS = (3.14159f / 180.0f);
	
	private boolean viewSetup = false;
	private float zFar;
	private float fieldOfView;
	
	private float rtri = 0;
	private float rquad = 0;
	
	private FloatBuffer triVertices;
	private FloatBuffer triVertexColors;
	private FloatBuffer quadVertices;
	
	private float viewWidth;
	private float viewHeight;
	
	public NeHeLesson4View(CGRect rect) {
		super(rect);
	
		viewWidth = rect.size.width;
		viewHeight = rect.size.height;
		System.out.println("View: "+viewWidth+","+viewHeight);
		
        setOpaque(true);
        setClearsContextBeforeDrawing(false);
	}

	private void initViewGL() {
		System.out.println("Init view");
		triVertices = BufferUtils.createFloatBuffer(9);
		triVertexColors = BufferUtils.createFloatBuffer(12);
		quadVertices = BufferUtils.createFloatBuffer(12);
		
		triVertices.put(-1).put(-1).put(0.0f)
		.put(1).put(-1.0f).put(0.0f)
		.put(-1.0f).put(1.0f).put(0.0f);
		
		triVertexColors.put(1).put(0).put(0).put(1)
		.put(0).put(1).put(0).put(1)
		.put(0).put(0).put(1).put(1);
		
		quadVertices.put(-1).put(1).put(0)
		.put(1).put(1).put(0)
		.put(1).put(-1).put(0)
		.put(-1).put(-1).put(0);
		
		float zNear = 0.1f, 
		zFar = 1000.0f, 
		fieldOfView = 60.0f; 
		float size; 
		
		GL.glMatrixMode(GL.GL_PROJECTION); 
		size = zNear * (float) Math.tan((TO_RADIANS * fieldOfView) / 2.0); 
		GL.glLoadIdentity();
		GL.glFrustumf(-size, size, -size / (viewWidth / viewHeight), size / 
				   (viewWidth / viewHeight), zNear, zFar); 
		
		GL.glViewport(0, 0, (int) viewWidth, (int) viewHeight); 
		GL.glMatrixMode(GL.GL_MODELVIEW); 
		GL.glLoadIdentity(); 
		GL.glClearColor(0.0f, 0.0f, 0.0f, 1.0f); 
	}
	
	@Override
	public void renderView() {
		if (!viewSetup) {
			viewSetup = true;
			initViewGL();
		}

		GL.glClear(GL.GL_COLOR_BUFFER_BIT);

		GL.glLoadIdentity(); 
		// Triangle
		GL.glTranslatef(-2.0f,1.0f,-6.0f);
		GL.glRotatef(rtri,0.0f,1.0f,0.0f);	
		GL.glEnableClientState(GL.GL_VERTEX_ARRAY);
		GL.glEnableClientState(GL.GL_COLOR_ARRAY);
		GL.glColorPointer (4, GL.GL_FLOAT, 0, triVertexColors);
		GL.glVertexPointer(3, GL.GL_FLOAT, 0, triVertices); 
		GL.glDrawArrays(GL.GL_TRIANGLE_STRIP, 0, 3);
		GL.glDisableClientState (GL.GL_COLOR_ARRAY);
		
		// Square
		GL.glLoadIdentity();
		GL.glColor4f(0.0f, 0.0f, 1.0f, 1.0f);
		GL.glTranslatef(2.0f,1.0f,-6.0f);
		GL.glRotatef(rquad,1.0f,0.0f,0.0f);
		GL.glVertexPointer(3, GL.GL_FLOAT, 0, quadVertices);
		GL.glDrawArrays(GL.GL_TRIANGLE_FAN, 0, 4); 
		GL.glDisableClientState(GL.GL_VERTEX_ARRAY);
		
		rtri += 1.5f;
		rquad -= 2.5f;
	}

}
