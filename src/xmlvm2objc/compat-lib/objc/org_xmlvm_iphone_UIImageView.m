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

#import "org_xmlvm_iphone_UIImageView.h"



// UIImageView
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIImageView : UIImageView

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

- (void) drawRect:(CGRect)rect
{
	org_xmlvm_iphone_CGRect * r = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:rect];
	[self drawRect___org_xmlvm_iphone_CGRect:r];
	[r release];
}

- (void) drawRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect
{
	[super drawRect:[rect getCGRect]];
}

@end

@implementation UIImageView (cat_org_xmlvm_iphone_UIImageView)

- (id) init
{
	return [self initWithImage:nil];
}

- (void) __init_org_xmlvm_iphone_UIImageView__
{
}

- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame: [n1 getCGRect]];
	[self setContentMode:UIViewContentModeCenter];
}

- (void) setFrame___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect
{
	[self setFrame: [rect getCGRect]];
}

- (void) setBackgroundImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
	self.image = image == JAVA_NULL ? nil : image;
}

- (org_xmlvm_iphone_UIImage*) getBackgroundImage__
{
	return_XMLVM(image)
}

- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
	self.image = image == JAVA_NULL ? nil : image;
}

- (org_xmlvm_iphone_UIImage*) getImage__
{
	return_XMLVM(image)
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self setNeedsDisplayInRect: [rect getCGRect]];
}

@end
