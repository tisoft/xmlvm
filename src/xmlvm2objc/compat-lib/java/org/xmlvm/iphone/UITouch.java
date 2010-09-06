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

package org.xmlvm.iphone;

import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UITouch extends NSObject {

    private int    phase;
    private UIView view;
    private int    x;
    private int    y;

    public UITouch(int phase, UIView view, int x, int y) {
        this.phase = phase;
        this.view = view;
        this.x = x;
        this.y = y;
    }

    public int phase() {
        return phase;
    }

    public UIView getView() {
        return view;
    }

    public CGPoint locationInView(UIView view) {
        Point2D.Float srcPoint = new Point2D.Float(x, y);
        Point2D.Float dstPoint = null;
        try {
            dstPoint = (Point2D.Float) getTransformation(view).inverseTransform(srcPoint, null);
        } catch (NoninvertibleTransformException ex) {
            ex.printStackTrace();
        }
        return new CGPoint(dstPoint.x, dstPoint.y);
    }

    private AffineTransform getTransformation(UIView v) {
        AffineTransform res = new AffineTransform();
        while (v != null) {
            AffineTransform tr = AffineTransform.getTranslateInstance(v.getFrame().origin.x
                    - v.xmlvmGetOffsetLeft(), v.getFrame().origin.y - v.xmlvmGetOffsetTop());
            AffineTransform ta = v.xmlvmGetRenderer().getJavaAffineTransformation();
            if (ta != null)
                ta.concatenate(tr);
            else
                ta = tr;
            ta.concatenate(res);
            res = ta;
            v = v.getSuperview();
        }
        return res;
    }
}
