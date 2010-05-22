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


/** @author teras */

#import "xmlvm.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_util_ArrayList.h"
@class org_xmlvm_iphone_UISearchBarDelegate;

// UISearchBar
//----------------------------------------------------------------------------
typedef UISearchBar org_xmlvm_iphone_UISearchBar;

@interface UISearchBar (cat_org_xmlvm_iphone_UISearchBar)
- (void) __init_org_xmlvm_iphone_UISearchBar___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) __init_org_xmlvm_iphone_UISearchBar__;
- (int) getAutocapitalizationType__;
- (void) setAutocapitalizationType___int :(int)n1;
- (int) getAutocorrectionType__;
- (void) setAutocorrectionType___int :(int)n1;
- (int) getBarStyle__;
- (void) setBarStyle___int :(int)n1;
- (org_xmlvm_iphone_UISearchBarDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UISearchBarDelegate :(org_xmlvm_iphone_UISearchBarDelegate*)n1;
- (int) getKeyboardType__;
- (void) setKeyboardType___int :(int)n1;
- (NSString*) getPlaceholder__;
- (void) setPlaceholder___java_lang_String :(NSString*)n1;
- (NSString*) getPrompt__;
- (void) setPrompt___java_lang_String :(NSString*)n1;
- (int) isShowsBookmarkButton__;
- (void) setShowsBookmarkButton___boolean :(int)n1;
- (int) isShowsCancelButton__;
- (void) setShowsCancelButton___boolean :(int)n1;
- (NSString*) getText__;
- (void) setText___java_lang_String :(NSString*)n1;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1;
- (int) isTranslucent__;
- (void) setTranslucent___boolean :(int)n1;
- (java_util_ArrayList*) getScopeButtonTitles__;
- (void) setScopeButtonTitles___java_util_ArrayList :(java_util_ArrayList*)n1;
- (int) getSelectedScopeButtonIndex__;
- (void) setSelectedScopeButtonIndex___int :(int)n1;
- (int) isShowsScopeBar__;
- (void) setShowsScopeBar___boolean :(int)n1;

@end

