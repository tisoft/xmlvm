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

package sdljava;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class SDLMain {
    /*
     * Bit flags for subsystem initialization
     */
    public static final int SDL_INIT_AUDIO       = 16;
    public static final int SDL_INIT_CDROM       = 256;
    public static final int SDL_INIT_EVENTTHREAD = 16777216;
    public static final int SDL_INIT_EVERYTHING  = 65535;
    public static final int SDL_INIT_JOYSTICK    = 512;
    public static final int SDL_INIT_NOPARACHUTE = 1048576;
    public static final int SDL_INIT_TIMER       = 1;
    public static final int SDL_INIT_VIDEO       = 32;

    
    public static void init(long flags) throws SDLException {
        throw new RuntimeException("Stub");
    }
    
    public static long wasInit(long flags) throws SDLException  {
        throw new RuntimeException("Stub");
    }
    
    public static void quit() {
        throw new RuntimeException("Stub");
    }
}
