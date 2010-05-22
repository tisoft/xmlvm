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

#import "org_xmlvm_iphone_UIBarItem.h"

/** @author teras */

@implementation UIBarItem (cat_org_xmlvm_iphone_UIBarItem)


- (void) __init_org_xmlvm_iphone_UIBarItem__
{
	[self init];
}




- (int) isEnabled__
{
	return self.enabled;
}


- (void) setEnabled___boolean :(int)n1
{
	self.enabled = n1;
}


- (org_xmlvm_iphone_UIImage*) getImage__
{
	return_XMLVM(image)
}


- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1
{
	self.image = n1;
}


- (org_xmlvm_iphone_UIEdgeInsets*) getImageInsets__
{
	org_xmlvm_iphone_UIEdgeInsets * ins = [[org_xmlvm_iphone_UIEdgeInsets alloc] init];
	UIEdgeInsets data = self.imageInsets;
	ins->top = data.top;
	ins->left = data.left;
	ins->bottom = data.bottom;
	ins->right = data.right;
	return ins;
}


- (void) setImageInsets___org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_UIEdgeInsets*)ins
{
	self.imageInsets = UIEdgeInsetsMake(ins->top, ins->left, ins->bottom, ins->right);
}


- (java_lang_String*) getTitle__
{
	return_XMLVM(title)
}


- (void) setTitle___java_lang_String :(java_lang_String*)n1
{
	self.title = n1;
}


- (int) getTag__
{
	return self.tag;
}


- (void) setTag___int :(int)n1
{
	self.tag = n1;
}



@end

