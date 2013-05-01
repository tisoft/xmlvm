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

package org.xmlvm.acl.sdl.adapters;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.acl.common.adapter.AlertDialogAdapter;
import org.xmlvm.acl.sdl.SDLAPI;
import org.xmlvm.acl.sdl.objects.AbstractSDLLayer;
import org.xmlvm.acl.sdl.objects.SDLFont;
import org.xmlvm.acl.sdl.objects.SDLUtil;
import org.xmlvm.acl.sdl.subsystems.SDLWindow;

import sdljava.SDLException;
import sdljava.video.SDLColor;
import sdljava.video.SDLRect;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;
import android.app.AlertDialog;
import android.graphics.RectF;
import android.view.MotionEvent;

/**
 *
 */
public class SDLAlertDialogAdapter extends AbstractSDLLayer implements AlertDialogAdapter {
    private static final int BUTTON_SPACING = 20; // TODO: Percentage of window width?
    private static final int PADDING        = 20;
    
    private SDLAPI api;
    private String title = "";
    private String message = "";
    private AlertDialog alertDialog;
    private List<String> buttons = new ArrayList<String>();
    private List<SDLRect>  buttonBounds = new ArrayList<SDLRect>();
    private int clickedIndex = -1;

    /**
     * @param title2
     * @param message2
     * @param alertDialog
     * @param cancelButtonTitle
     */
    public SDLAlertDialogAdapter(String title, String message, AlertDialog alertDialog,
            String cancelButtonTitle, SDLAPI api) {
        this.title = title;
        this.message = message;
        this.alertDialog = alertDialog;
        this.api = api;
        buttons.add(cancelButtonTitle);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.AlertDialogAdapter#addButtonWithTitle(java.lang.String)
     */
    @Override
    public void addButtonWithTitle(String string) {
        buttons.add(string);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.AlertDialogAdapter#setMessage(java.lang.String)
     */
    @Override
    public void setMessage(String message) {
        this.message = message;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.AlertDialogAdapter#setTitle(java.lang.String)
     */
    @Override
    public void setTitle(String title) {
        this.title = title;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.AlertDialogAdapter#show()
     */
    @Override
    public void show() {
        SDLWindow window = api.getKeyWindow();

        if (window != null) {
            try {
                RectF frame = window.getFrame();
                SDLSurface canvas = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, 
                        (int) frame.width(), (int) frame.height(), 32, 
                        0xFF0000000l, 0x00FF0000, 0x0000FF00, 0x000000FF);
                
                canvas.fillRect(0x80808080L);
                
                SDLFont font = new SDLFont(16.0f);
                SDLColor textColor = new SDLColor(0xFF,0xFF,0xFF);
                List<SDLSurface> buttonTexts = new ArrayList<SDLSurface>();
                int buttonWidth = 0;
                int buttonHeight = 0;
                for (String b : buttons) {
                    if (b != null) {
                        SDLSurface sdlButton = font.renderText(b.isEmpty() ? " " : b, textColor);
                        buttonTexts.add(sdlButton);
                        buttonWidth += sdlButton.getWidth();
                        buttonHeight = Math.max(buttonHeight, sdlButton.getHeight());
                    }
                }
                if (buttonTexts.size() > 0) buttonWidth += BUTTON_SPACING * (buttonTexts.size() - 1);
                
                // TODO! Split message into lines
                SDLSurface messageText = font.renderText(message.isEmpty() ? " " : message, textColor);              
                SDLSurface titleText   = font.renderText(title.isEmpty() ? " " : title, textColor);
                
                int width = Math.max(Math.max(buttonWidth, messageText.getWidth()), 
                        titleText.getWidth()) + PADDING * 2;
                int height = (message.isEmpty() ? 0 : messageText.getHeight() + PADDING) + 
                    (title.isEmpty() ? 0 : titleText.getHeight() + PADDING) + 
                    buttonHeight + PADDING * 2;
                               
                canvas.fillRect(SDLUtil.getDrawingRect(canvas.getWidth() / 2 - width / 2, 
                        canvas.getHeight() / 2 - height / 2, 
                        width, height), 0x202020F0L);
                
                int y = canvas.getHeight() / 2 - height / 2 + PADDING;
                
                if (! title.isEmpty()) {
                    titleText.blitSurface(canvas, SDLUtil.getDrawingRect(canvas.getWidth() / 2 - titleText.getWidth() / 2, 
                            y, 
                            titleText.getWidth(), titleText.getHeight()));
                    y += titleText.getHeight() + PADDING;
                }

                if (!message.isEmpty()) {
                    messageText.blitSurface(canvas, SDLUtil.getDrawingRect(canvas.getWidth() / 2 - messageText.getWidth() / 2, 
                            y,
                            messageText.getWidth(), messageText.getHeight()));
                    y += messageText.getHeight() + PADDING;
                }
                
                int x = canvas.getWidth() / 2 - buttonWidth / 2;
                for (SDLSurface buttonText : buttonTexts) {
                    SDLRect bounds = new SDLRect(x - BUTTON_SPACING / 4,y - BUTTON_SPACING / 4, 
                            buttonText.getWidth() + BUTTON_SPACING / 2, 
                            buttonText.getHeight() + BUTTON_SPACING / 2);
                    buttonBounds.add(bounds); // TODO: Link bounds to button more cleanly than by simple index
                    canvas.fillRect(bounds, 0x000000E0L);
                    buttonText.blitSurface(canvas,  SDLUtil.getDrawingRect(x,y, buttonText.getWidth(), buttonText.getHeight()));
                    x += buttonText.getWidth() + BUTTON_SPACING;
                }
                
                this.setSurface(canvas);
                window.addLayer(this);
                window.setNeedsDisplay();
            } catch (SDLException sdle) {
                // TODO: Log
            }
        }
//        alertDialog.clickedButtonAtIndex(2);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.sdl.objects.AbstractSDLLayer#getFrame()
     */
    @Override
    public RectF getFrame() {
        return api.getKeyWindow().getFrame();
    }
    
    public int getXOffset() {
        RectF frame = api.getKeyWindow().getFrame();
        return frame != null ? (int) frame.left : 0;
    }

    public int getYOffset() {
        RectF frame = api.getKeyWindow().getFrame();
        return frame != null ? (int) frame.top : 0;
    }
    
    /* (non-Javadoc)
     * @see org.xmlvm.acl.sdl.objects.AbstractSDLLayer#handleTouchEvent(android.view.MotionEvent)
     */
    @Override
    public boolean handleTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        for (int i = 0; i < buttonBounds.size(); i++) {
            SDLRect bounds = buttonBounds.get(i);
            if (x > bounds.x && x < bounds.x + bounds.width &&
                y > bounds.y && y < bounds.y + bounds.height) {
                
                switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    clickedIndex = i;
                    break;
                case MotionEvent.ACTION_UP:
                    if (clickedIndex == i) {
                        alertDialog.clickedButtonAtIndex(i);
                        api.getKeyWindow().removeLayer(this);
                        return true;                    
                    }                
                    clickedIndex = -1;
                    break;
                }
                
                return true;
            }
        }
        
        // If mouse leaves button area, etc, clear clicked index
        clickedIndex = -1;

        return false;
    }

    
    
}
