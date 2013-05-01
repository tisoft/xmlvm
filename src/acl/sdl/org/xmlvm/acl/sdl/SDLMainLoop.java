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

package org.xmlvm.acl.sdl;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;
import org.xmlvm.acl.sdl.subsystems.SDLDispatcher;
import org.xmlvm.acl.sdl.subsystems.SDLWindow;
import org.xmlvm.runtime.emscripten.EmscriptenUtil;

import sdljava.SDLException;
import sdljava.SDLTimer;
import sdljava.event.SDLEvent;

/**
 *
 */
public class SDLMainLoop implements Runnable {
    private static final long RENDER_TIME = 20; // 20 ms per rendering cycle
    private SDLAPI api;
    private boolean active;    
    private long next;
    
    // Render-throttling will only invoke render() when sufficient 
    // time has passed since the last render call (since rendering 
    // is potentially expensive). This is not needed under Emscripten, 
    // where the main loop is run on a timer anyway.
    private boolean throttle = !EmscriptenUtil.isEmscripten();
    
    public SDLMainLoop (SDLAPI api) {
        this.api = api;
    }
    
    public void execute() {
        active = true;
        next = SDLTimer.getTicks() + RENDER_TIME;
        if (EmscriptenUtil.isEmscripten()) {
            EmscriptenUtil.setMainLoop(this);
        } else {
            while (active) {
                run();   
            }
        }
    }
    
    public void run() {        
        pollEvents();
        pollDispatcher();
        if (throttle) {
            long now = SDLTimer.getTicks();
            if (now > next) {         
                long late = (now - next) / RENDER_TIME;
                next = now - now % RENDER_TIME + RENDER_TIME + 2 * RENDER_TIME * late;
                render();
            }        
        } else {
            render();
        }
    }
    
    private void pollEvents() {
        SDLEvent event;
        
        try {
            while ((event = SDLEvent.pollEvent()) != null) {
                if (event.getType() == SDLEvent.SDL_QUIT) {
                    active = false; // TODO: Fire appropriate lifecycle events
                } else {
                    SDLWindow window = api.getKeyWindow();
                    if (window != null) {
                        window.handleEvent(event);
                    }
                }
            }
        } catch (SDLException e) {

        }
    }
    
    private void pollDispatcher() {
        CommonDispatcher d = api.getDispatcher();
        if (d instanceof SDLDispatcher) { // Should always be true
            ((SDLDispatcher) d).runDispatchCycle();
        }
    }
    
    private void render() {
        SDLWindow window = api.getKeyWindow();
        if (window != null) {
            window.setNeedsDisplay();
        }
    }


}
