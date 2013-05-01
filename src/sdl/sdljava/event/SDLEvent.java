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

package sdljava.event;

import org.xmlvm.XMLVMSkeletonOnly;

import sdljava.SDLException;

/**
 *
 */
@XMLVMSkeletonOnly
public class SDLEvent {
    public static final int SDL_ACTIVEEVENT             = 1;
    public static final int SDL_ACTIVEEVENTMASK         = 2;
    public static final int SDL_ADDEVENT                = 0;
    public static final int SDL_APPACTIVE               = 4;
    public static final int SDL_APPINPUTFOCUS           = 2;
    public static final int SDL_APPMOUSEFOCUS           = 1;
    public static final int SDL_BUTTON_LEFT             = 1;
    public static final int SDL_BUTTON_MIDDLE           = 2;
    public static final int SDL_BUTTON_RIGHT            = 3;
    public static final int SDL_BUTTON_WHEELDOWN        = 5;
    public static final int SDL_BUTTON_WHEELUP          = 4;
    public static final int SDL_DEFAULT_REPEAT_DELAY    = 500;
    public static final int SDL_DEFAULT_REPEAT_INTERVAL = 30;
    public static final int SDL_DISABLE                 = 0;
    public static final int SDL_ENABLE                  = 1;
    public static final int SDL_GETEVENT                = 2;
    public static final int SDL_IGNORE                  = 0;
    public static final int SDL_JOYAXISMOTION           = 7;
    public static final int SDL_JOYAXISMOTIONMASK       = 128;
    public static final int SDL_JOYBALLMOTION           = 8;
    public static final int SDL_JOYBALLMOTIONMASK       = 256;
    public static final int SDL_JOYBUTTONDOWN           = 10;
    public static final int SDL_JOYBUTTONDOWNMASK       = 1024;
    public static final int SDL_JOYBUTTONUP             = 11;
    public static final int SDL_JOYBUTTONUPMASK         = 2048;
    public static final int SDL_JOYEVENTMASK            = 3968;
    public static final int SDL_JOYHATMOTION            = 9;
    public static final int SDL_JOYHATMOTIONMASK        = 512;
    public static final int SDL_KEYDOWN                 = 2;
    public static final int SDL_KEYDOWNMASK             = 4;
    public static final int SDL_KEYUP                   = 3;
    public static final int SDL_KEYUPMASK               = 8;
    public static final int SDL_MOUSEBUTTONDOWN         = 5;
    public static final int SDL_MOUSEBUTTONDOWNMASK     = 32;
    public static final int SDL_MOUSEBUTTONUP           = 6;
    public static final int SDL_MOUSEBUTTONUPMASK       = 64;
    public static final int SDL_MOUSEEVENTMASK          = 112;
    public static final int SDL_MOUSEMOTION             = 4;
    public static final int SDL_MOUSEMOTIONMASK         = 16;
    public static final int SDL_NOEVENT                 = 0;
    public static final int SDL_PEEKEVENT               = 1;
    public static final int SDL_PRESSED                 = 1;
    public static final int SDL_QUERY                   = -1;
    public static final int SDL_QUIT                    = 12;
    public static final int SDL_QUITMASK                = 4096;
    public static final int SDL_RELEASED                = 0;
    public static final int SDL_SYSWMEVENT              = 13;
    public static final int SDL_SYSWMEVENTMASK          = 8192;
    public static final int SDL_USEREVENT               = 24;
    public static final int SDL_VIDEOEXPOSE             = 17;
    public static final int SDL_VIDEOEXPOSEMASK         = 131072;
    public static final int SDL_VIDEORESIZE             = 16;
    public static final int SDL_VIDEORESIZEMASK         = 65536;
    
    public int getType() {
        throw new RuntimeException("Stub.");
    }
    
    public static SDLEvent pollEvent() throws SDLException {
        throw new RuntimeException("Stub.");
    }
}
