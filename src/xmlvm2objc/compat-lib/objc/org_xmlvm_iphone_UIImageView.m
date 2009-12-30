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

#import "org_xmlvm_iphone_UIImageView.h"



// UIImageView
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIImageView

- (void) dealloc
{
	[backgroundImage release];
	[foregroundImage release];
	[super dealloc];
}

- (void) drawRect:(CGRect) rect
{	
	if (backgroundImage != [NSNull null]) {
		float x = (self.frame.size.width - backgroundImage.size.width) / 2.0;
		float y = (self.frame.size.height - backgroundImage.size.height) / 2.0;
		[backgroundImage drawAtPoint:CGPointMake(x, y)];
	}
	if (foregroundImage != [NSNull null]) {
		float x = (self.frame.size.width - foregroundImage.size.width) / 2.0;
		float y = (self.frame.size.height - foregroundImage.size.height) / 2.0;
		[foregroundImage drawAtPoint:CGPointMake(x, y)];
	}
}

- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
	self.backgroundColor = [UIColor clearColor];
	self.contentMode = UIViewContentModeCenter;
}

- (void) setFrame___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect
{
	[self setFrame: [rect getCGRect]];
}

- (void) setBackgroundImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
	[image retain];
	[backgroundImage release];
	backgroundImage = image;
	[self setNeedsDisplay];
}

- (org_xmlvm_iphone_UIImage*) getBackgroundImage__
{
	return [backgroundImage retain];
}

- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
	[image retain];
	[foregroundImage release];
	foregroundImage = image;
	[self setNeedsDisplay];
}

- (org_xmlvm_iphone_UIImage*) getImage__
{
    return [foregroundImage retain];
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self setNeedsDisplayInRect: [rect getCGRect]];
}

@end
