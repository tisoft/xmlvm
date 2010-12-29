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

package org.xmlvm.iphone;

import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UITouch extends NSObject {

    private UIView   view;
    private UIWindow window;
    private int      phase;
    private int      tapCount;
    private double   timestamp;
    private int      x;
    private int      y;


    public UITouch(int phase, UIView view, int x, int y) {
        this.phase = phase;
        this.view = view;
        this.x = x;
        this.y = y;
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

    public UIView getView() {
        return view;
    }

    public UIWindow getWindow() {
        return window;
    }

    public int getTapCount() {
        return tapCount;
    }

    public double getTimestamp() {
        return timestamp;
    }

    public int getPhase() {
        return phase;
    }
}
