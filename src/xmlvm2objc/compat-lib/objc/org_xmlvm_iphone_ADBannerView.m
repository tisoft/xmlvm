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

#import "org_xmlvm_iphone_ADBannerView.h"
#import "org_xmlvm_iphone_ADBannerViewDelegate.h"

@implementation ADBannerView (cat_org_xmlvm_iphone_ADBannerView)

- (void) __init_org_xmlvm_iphone_ADBannerView__
{
    [self setFrame:CGRectZero];
}

- (org_xmlvm_iphone_ADBannerViewDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_ADBannerViewDelegate :(org_xmlvm_iphone_ADBannerViewDelegate*)deleg
{
    XMLVM_PROPERTY(delegate,deleg)
}

- (java_lang_String*) getAdvertisingSection__
{
    return_XMLVM(advertisingSection)
}

- (void) setAdvertisingSection___java_lang_String :(java_lang_String*)n1
{
    [self setAdvertisingSection:n1];
}

- (java_lang_String*) getCurrentContentSizeIdentifier__
{
    return_XMLVM(currentContentSizeIdentifier)
}

- (void) setCurrentContentSizeIdentifier___java_lang_String :(java_lang_String*)n1
{
    [self setCurrentContentSizeIdentifier:n1];
}

- (java_util_Set*) getRequiredContentSizeIdentifiers__
{
    return_XMLVM(requiredContentSizeIdentifiers)
}

- (void) setRequiredContentSizeIdentifiers___java_util_Set :(java_util_Set*)n1
{
    [self setRequiredContentSizeIdentifiers:n1];
}

- (int) isBannerLoaded__
{
    return [self isBannerLoaded];
}

- (int) isBannerViewActionInProgress__
{
    return [self isBannerViewActionInProgress];
}

- (void) cancelBannerViewAction__
{
    [self cancelBannerViewAction];
}

@end

