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

import java.util.Set;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class ADBannerView extends UIView {

    private ADBannerViewDelegate delegate;
    private String               advertisingSection;
    private Set<String>          requiredContentSizeIdentifiers;
    private String               currentContentSizeIdentifier;
    private boolean              bannerLoaded;
    private boolean              bannerViewActionInProgress;


    public static CGSize sizeFromBannerContentSizeIdentifier(String contentSizeIdentifier) {
        if (contentSizeIdentifier.equals(ADBannerContentSizeIdentifier.Portrait)) {
            if (UIDevice.currentDevice().getUserInterfaceIdiom() == UIUserInterfaceIdiom.Phone) {
                return new CGSize(320, 50);
            } else {
                return new CGSize(768, 66);
            }
        } else {
            if (UIDevice.currentDevice().getUserInterfaceIdiom() == UIUserInterfaceIdiom.Phone) {
                return new CGSize(480, 32);
            } else {
                return new CGSize(1024, 66);
            }
        }
    }

    public ADBannerView() {
    }

    public ADBannerViewDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(ADBannerViewDelegate delegate) {
        this.delegate = delegate;
    }

    public String getAdvertisingSection() {
        return advertisingSection;
    }

    public void setAdvertisingSection(String advertisingSection) {
        this.advertisingSection = advertisingSection;
    }

    public String getCurrentContentSizeIdentifier() {
        return currentContentSizeIdentifier;
    }

    public void setCurrentContentSizeIdentifier(String currentContentSizeIdentifier) {
        this.currentContentSizeIdentifier = currentContentSizeIdentifier;
    }

    public Set<String> getRequiredContentSizeIdentifiers() {
        return requiredContentSizeIdentifiers;
    }

    public void setRequiredContentSizeIdentifiers(Set<String> requiredContentSizeIdentifiers) {
        this.requiredContentSizeIdentifiers = requiredContentSizeIdentifiers;
    }

    public boolean isBannerLoaded() {
        return bannerLoaded;
    }

    public boolean isBannerViewActionInProgress() {
        return bannerViewActionInProgress;
    }

    public void cancelBannerViewAction() {
    }
}
