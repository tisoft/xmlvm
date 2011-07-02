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

#import "org_xmlvm_iphone_UINavigationBar.h"
#import "org_xmlvm_iphone_UINavigationBarDelegate.h"
#import "org_xmlvm_iphone_UINavigationItem.h"


@implementation UINavigationBar (cat_org_xmlvm_iphone_UINavigationBar)

- (void) __init_org_xmlvm_iphone_UINavigationBar__ { 
}

- (void) __init_org_xmlvm_iphone_UINavigationBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1 { 
	[self setFrame:[n1 getCGRect]];
}

- (int) getBarStyle__ {
	return [self barStyle];
}

- (void) setBarStyle___int :(int)n1 {
	[self setBarStyle:n1];
}

- (org_xmlvm_iphone_UIColor*) getTintColor__ {
	return_XMLVM(tintColor)
}

- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1 {
	self.tintColor = n1;
}

- (int) isTranslucent__ {
	return self.translucent;
}

- (void) setTranslucent___boolean :(int)n1 {
	self.translucent = n1;
}

- (void) pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean :(org_xmlvm_iphone_UINavigationItem*)item :(int)anim { 
	[self pushNavigationItem:item animated:anim];
}

- (org_xmlvm_iphone_UINavigationItem*) popNavigationItemAnimated___boolean :(int)anim { 
	return_XMLVM(popNavigationItemAnimated:anim)
}

- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1 { 
	[self setItems:n1];
}

- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)items :(int)anim { 
	[self setItems:items animated:anim];
}

- (org_xmlvm_iphone_UINavigationBarDelegate*) getNavigationBarDelegate__ { 
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UINavigationBarDelegate :(org_xmlvm_iphone_UINavigationBarDelegate*)newdelegate { 
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (org_xmlvm_iphone_UINavigationItem*) getTopItem__ { 
	return_XMLVM(topItem)
}

- (org_xmlvm_iphone_UINavigationItem*) getBackitem__ { 
	return_XMLVM(backItem)
}

- (java_util_ArrayList*) getItems__ { 
	return_XMLVM(items)
}


@end

