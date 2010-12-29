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

import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kMaximum;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kMinimum;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kProgressViewHeight;
import static org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer.kProgressViewWidth;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UIProgressViewRenderer;

@XMLVMSkeletonOnly
public class UIProgressView extends UIControl {

    private float progress          = 0f;
    private int   progressViewStyle = 1;


    public UIProgressView(int uiProgressViewStyle) {
        super(new CGRect(0, 0, kProgressViewWidth, kProgressViewHeight));
        xmlvmSetRenderer(new UIProgressViewRenderer(this));
        progressViewStyle = uiProgressViewStyle;
    }

    public void setProgress(float val) {
        if (val < kMinimum)
            val = kMinimum;
        if (val > kMaximum)
            val = kMaximum;
        progress = val;
        this.setNeedsDisplay();
    }

    public float getProgress() {
        return progress;
    }

    public int getProgressViewStyle() {
        return progressViewStyle;
    }

    public void setProgressViewStyle(int style) {
        progressViewStyle = style;
        setNeedsDisplay();
    }
}
