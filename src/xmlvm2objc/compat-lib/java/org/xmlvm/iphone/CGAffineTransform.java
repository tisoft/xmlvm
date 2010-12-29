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

/**
 * 
 * @author teras
 */

package org.xmlvm.iphone;

import java.awt.geom.AffineTransform;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CGAffineTransform extends NSObject {

    private AffineTransform transform;


    private CGAffineTransform(AffineTransform transform) {
        this.transform = transform;
    }

    public static CGAffineTransform make(float a, float b, float c, float d, float tx, float ty) {
        return new CGAffineTransform(new AffineTransform(a, b, c, d, tx, ty));
    }

    public static CGAffineTransform makeRotation(float alpha) {
        return new CGAffineTransform(AffineTransform.getRotateInstance(alpha));
    }

    public static CGAffineTransform makeScale(float sx, float sy) {
        return new CGAffineTransform(AffineTransform.getScaleInstance(sx, sy));
    }

    public static CGAffineTransform makeTranslation(float tx, float ty) {
        return new CGAffineTransform(AffineTransform.getTranslateInstance(tx, ty));
    }

    public static CGAffineTransform rotate(CGAffineTransform transf, float alpha) {
        AffineTransform old = (AffineTransform) transf.transform.clone();
        old.rotate(alpha);
        return new CGAffineTransform(old);
    }

    public static CGAffineTransform scale(CGAffineTransform transf, float sx, float sy) {
        AffineTransform old = (AffineTransform) transf.transform.clone();
        old.scale(sx, sy);
        return new CGAffineTransform(old);
    }

    public static CGAffineTransform translate(CGAffineTransform transf, float tx, float ty) {
        AffineTransform old = (AffineTransform) transf.transform.clone();
        old.translate(tx, ty);
        return new CGAffineTransform(old);
    }

    public static CGAffineTransform concat(CGAffineTransform transf1, CGAffineTransform transf2) {
        AffineTransform old = (AffineTransform) transf1.transform.clone();
        old.concatenate(transf2.transform);
        return new CGAffineTransform(old);
    }

    public static CGAffineTransform identity() {
        return new CGAffineTransform(new AffineTransform());
    }

    @XMLVMIgnore
    public AffineTransform xmlvmGetAffine() {
        return transform;
    }

}
