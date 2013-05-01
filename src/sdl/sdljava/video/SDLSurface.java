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

package sdljava.video;

import org.xmlvm.XMLVMSkeletonOnly;

import sdljava.SDLException;

/**
 *
 */
@XMLVMSkeletonOnly
public class SDLSurface {
    
    public void updateRect() throws SDLException  {
        updateRect(0,0,0,0);
    }
    
    public void updateRect(int x, int y, int w, int h) throws SDLException {
        throw new RuntimeException("Stub");
    }
    
    public int getWidth() {
        throw new RuntimeException("Stub");
    }
    
    public int getHeight() {
        throw new RuntimeException("Stub");
    }
    
    public int blitSurface(SDLSurface dstSurface,
            SDLRect dst) throws SDLException {
        throw new RuntimeException("Stub");
    }
    
    protected void finalize() {
        throw new RuntimeException("Stub");
    }

    /**
     * @param sdlRect
     * @param l
     */
    public void fillRect(SDLRect sdlRect, long l) {
        throw new RuntimeException("Stub");
    }

    /**
     * @param l
     */
    public void fillRect(long l) {
        throw new RuntimeException("Stub");  
    }

    /**
     * @param i
     * @param j
     */
    public void setAlpha(long flags, int alpha) {
        throw new RuntimeException("Stub");        
    }
}
