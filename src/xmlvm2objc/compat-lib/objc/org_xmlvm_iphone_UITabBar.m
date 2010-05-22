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

#import "org_xmlvm_iphone_UITabBar.h"
#import "org_xmlvm_iphone_UITabBarDelegate.h"

/** @author teras */

@implementation UITabBar (cat_org_xmlvm_iphone_UITabBar)

- (void) __init_org_xmlvm_iphone_UITabBar__ {
	[self init];
}

- (void) __init_org_xmlvm_iphone_UITabBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)fr {
	[self setFrame:[fr getCGRect]];
}

- (org_xmlvm_iphone_UITabBarDelegate*) getTabBarDelegate__ {
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UITabBarDelegate :(org_xmlvm_iphone_UITabBarDelegate*)newdelegate {
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (java_util_ArrayList*) getItems__ {
	return_XMLVM(items)
}

- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1 {
	self.items = n1;
}

- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)list :(int)anim {
	[self setItems:list animated:anim];
}

- (org_xmlvm_iphone_UITabBarItem*) getSelectedItem__ {
	return_XMLVM(selectedItem)
}

- (void) setSelectedItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)item {
	self.selectedItem = item;
}

- (void) beginCustomizingItems___java_util_ArrayList :(java_util_ArrayList*)list {
	[self beginCustomizingItems:list];
	
}

- (int) endCustomizingAnimated___boolean :(int)anim {
	return [self endCustomizingAnimated:anim];
}

- (int) isCustomizing__ {
	return [self isCustomizing];
}


@end

