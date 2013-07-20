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

#import <iAD/ADBannerView.h>

#import "xmlvm.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "java_util_Set.h"

@class org_xmlvm_iphone_ADBannerViewDelegate;


#define org_xmlvm_iphone_ADBannerView ADBannerView

@interface ADBannerView (cat_org_xmlvm_iphone_ADBannerView)
	
- (void) __init_org_xmlvm_iphone_ADBannerView__;
- (org_xmlvm_iphone_ADBannerViewDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_ADBannerViewDelegate :(org_xmlvm_iphone_ADBannerViewDelegate*)n1;
- (java_lang_String*) getAdvertisingSection__;
- (void) setAdvertisingSection___java_lang_String :(java_lang_String*)n1;
- (java_lang_String*) getCurrentContentSizeIdentifier__;
- (void) setCurrentContentSizeIdentifier___java_lang_String :(java_lang_String*)n1;
- (java_util_Set*) getRequiredContentSizeIdentifiers__;
- (void) setRequiredContentSizeIdentifiers___java_util_Set :(java_util_Set*)n1;
- (int) isBannerLoaded__;
- (int) isBannerViewActionInProgress__;
- (void) cancelBannerViewAction__;

@end

