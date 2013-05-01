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
public class SDLVideo {
    /*
     * Video surface creation flags
     */
    public static final int  SDL_ALPHA_OPAQUE      = 255;
    public static final int  SDL_ALPHA_TRANSPARENT = 0;
    public static final long SDL_ANYFORMAT         = 268435456L;
    public static final long SDL_ASYNCBLIT         = 4L;
    public static final int  SDL_DISABLE           = 0;
    public static final long SDL_DOUBLEBUF         = 1073741824L;
    public static final int  SDL_ENABLE            = 1;
    public static final long SDL_FULLSCREEN        = -2147483648L;
    public static final long SDL_HWACCEL           = 256L;
    public static final long SDL_HWPALETTE         = 536870912L;
    public static final long SDL_HWSURFACE         = 1L;
    public static final long SDL_NOFRAME           = 32L;
    public static final long SDL_OPENGL            = 2L;
    public static final long SDL_OPENGLBLIT        = 10L;
    public static final long SDL_PREALLOC          = 16777216L;
    public static final int  SDL_QUERY             = -1;
    public static final long SDL_RESIZABLE         = 16L;
    public static final long SDL_RLEACCEL          = 16384L;
    public static final long SDL_SRCALPHA          = 65536L;
    public static final long SDL_SRCCOLORKEY       = 4096L;
    public static final long SDL_SWSURFACE         = 0L;
    
    public static SDLSurface setVideoMode(int width, int height, int bpp, long flags) 
            throws SDLException {
        throw new RuntimeException("Stub");
    }
    
    public static SDLSurface createRGBSurface(long flags,
            int width,
            int height,
            int depth,
            long rMask,
            long gMask,
            long bMask,
            long aMask)
     throws SDLException {
        throw new RuntimeException("Stub");
    }
}
