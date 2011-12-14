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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly(references = { CAAnimationDelegate.Wrapper.class })
public interface CAAnimationDelegate {

    @XMLVMSkeletonOnly
    public static class Wrapper extends NSObject {
        protected CAAnimationDelegate delegate;

        public Wrapper(CAAnimationDelegate delegate) {
            // natively implemented
        }
    }

    /**
     * Called when the animation begins its active duration.
     * 
     * @param theAnimation
     *            The CAAnimation instance that started animating.
     */
    public void animationDidStart(CAAnimation theAnimation);

    /**
     * Called when the animation completes its active duration or is removed
     * from the object it is attached to.
     * 
     * @param theAnimation
     *            The CAAnimation instance that stopped animating.
     * @param finished
     *            If true, the animation reached the end of its active duration
     *            without being removed.
     */
    public void animationDidStop(CAAnimation theAnimation, boolean finished);
}
