/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 *
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone.internal;

import java.awt.Composite;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.AffineTransform;
import java.util.Stack;

/**
 * 
 * @author teras
 */
public class CGContextState {

    private static final Stack<CGContextState> stack = new Stack<CGContextState>();
    //
    private final Composite                    composite;
    private final RenderingHints               hints;
    private final Stroke                       stroke;
    private final Shape                        clip;
    private final AffineTransform              transform;
    private final Paint                        paint;
    private final Font                         font;
    private final Graphics2D                   g;


    public static void push(Graphics2D g) {
        stack.push(new CGContextState(g));
    }

    public static void pop() {
        CGContextState state = stack.pop();
        state.resetValues();
    }

    public CGContextState(Graphics2D g) {
        composite = g.getComposite();
        hints = g.getRenderingHints();
        paint = g.getPaint();
        stroke = g.getStroke();
        transform = g.getTransform();
        clip = g.getClip();
        font = g.getFont();
        this.g = g;
    }

    public void resetValues() {
        resetValues(g);
    }

    public void resetValues(Graphics2D gr) {
        gr.setComposite(composite);
        gr.setRenderingHints(hints);
        gr.setPaint(paint);
        gr.setStroke(stroke);
        gr.setTransform(transform);
        gr.setClip(clip);
        gr.setFont(font);
    }
}
