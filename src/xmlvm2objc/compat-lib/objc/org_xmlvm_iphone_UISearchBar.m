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




#include "org_xmlvm_iphone_UISearchBar.h"
#include "org_xmlvm_iphone_UISearchBarDelegate.h"

// UISearchBar
//----------------------------------------------------------------------------
@implementation UISearchBar (cat_org_xmlvm_iphone_UISearchBar)


- (void) __init_org_xmlvm_iphone_UISearchBar__
{
}

- (void) __init_org_xmlvm_iphone_UISearchBar___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self setFrame:[rect getCGRect]];
}

- (int) getAutocapitalizationType__
{
	return [self autocapitalizationType];
}


- (void) setAutocapitalizationType___int :(int)n1
{
	[self setAutocapitalizationType:n1];
}


- (int) getAutocorrectionType__
{
	return [self autocorrectionType];
}


- (void) setAutocorrectionType___int :(int)n1
{
	[self setAutocorrectionType:n1];
}


- (int) getBarStyle__
{
	return [self barStyle];
}


- (void) setBarStyle___int :(int)n1
{
	[self setBarStyle:n1];
}


- (org_xmlvm_iphone_UISearchBarDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}


- (void) setDelegate___org_xmlvm_iphone_UISearchBarDelegate :(org_xmlvm_iphone_UISearchBarDelegate*)newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}


- (int) getKeyboardType__
{
	return [self keyboardType];
}


- (void) setKeyboardType___int :(int)n1
{
	[self setKeyboardType:n1];
}


- (NSString*) getPlaceholder__
{
	return_XMLVM(placeholder)
}


- (void) setPlaceholder___java_lang_String :(NSString*)n1
{
	[self setPlaceholder:n1];
}


- (NSString*) getPrompt__
{
	return_XMLVM(prompt)
}


- (void) setPrompt___java_lang_String :(NSString*)n1
{
	[self setPrompt:n1];
}


- (int) isShowsBookmarkButton__
{
	return [self showsBookmarkButton];
}


- (void) setShowsBookmarkButton___boolean :(int)n1
{
	[self setShowsBookmarkButton:n1];
}


- (int) isShowsCancelButton__
{
	return [self showsCancelButton]; 
}


- (void) setShowsCancelButton___boolean :(int)n1
{
	[self setShowsCancelButton:n1];
}


- (NSString*) getText__
{
	return_XMLVM(text)
}


- (void) setText___java_lang_String :(NSString*)n1
{
	[self setText:n1];
}

- (org_xmlvm_iphone_UIColor*) getBarTintColor__
{
    if (kCFCoreFoundationVersionNumber > 793.00) {  // > iOS 6.1
        return_XMLVM(barTintColor)
    } else {
        return_XMLVM(tintColor)
    }
}

- (void) setBarTintColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) tintColor
{
    if (kCFCoreFoundationVersionNumber > 793.00) {  // > iOS 6.1
        [self setBarTintColor:tintColor];
    } else {
        [self setTintColor:tintColor];
    }
}

- (int) isTranslucent__
{
	return [self isTranslucent];
}


- (void) setTranslucent___boolean :(int)n1
{
	[self setTranslucent:n1];
}

- (java_util_List*) getScopeButtonTitles__
{
	return_XMLVM(scopeButtonTitles)
}

- (void) setScopeButtonTitles___java_util_List :(java_util_List*)n1
{
	[self setScopeButtonTitles:n1];
}

- (int) getSelectedScopeButtonIndex__
{
	return [self selectedScopeButtonIndex];
}

- (void) setSelectedScopeButtonIndex___int :(int)n1
{
	[self setSelectedScopeButtonIndex:n1];
}

- (int) isShowsScopeBar__
{
	return [self showsScopeBar];
}

- (void) setShowsScopeBar___boolean :(int)n1
{
	[self setShowsScopeBar:n1];
}



@end

