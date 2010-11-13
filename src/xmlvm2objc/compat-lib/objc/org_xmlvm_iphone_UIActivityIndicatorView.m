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

#import "org_xmlvm_iphone_UIActivityIndicatorView.h"

// UIActivityIndicatorView
//----------------------------------------------------------------------------
@implementation UIActivityIndicatorView (cat_org_xmlvm_iphone_UIActivityIndicatorView)

- (id) init
{
	return [self initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
}

- (void) __init_org_xmlvm_iphone_UIActivityIndicatorView__
{
	// Either this, or set activityIndicatorViewStyle and size accordingly
	self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
}

- (void) __init_org_xmlvm_iphone_UIActivityIndicatorView___int :(int)style
{
	// Either this, or set activityIndicatorViewStyle and size accordingly
	[self setActivityIndicatorViewStyle___int:style];
}

- (void) setActivityIndicatorViewStyle___int :(int) style
{
	switch (style) {
	case 0:
		self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
		break;
	case 1:
		self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
		break;
	case 2:
		self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
		break;
	}
}

- (int) getActivityIndicatorViewStyle__
{
	switch (self.activityIndicatorViewStyle) {
	case UIActivityIndicatorViewStyleWhiteLarge:
		return 0;
		break;
	case UIActivityIndicatorViewStyleWhite:
		return 1;
		break;
	case UIActivityIndicatorViewStyleGray:
		return 2;
		break;
	}
}

- (void) setHidesWhenStopped___boolean: (BOOL) flag
{
	self.hidesWhenStopped = flag;
}

- (BOOL) getHidesWhenStopped__
{
	return self.hidesWhenStopped;
}

- (void) startAnimating__
{
	[self startAnimating];
}

- (void) stopAnimating__
{
	[self stopAnimating];
}

@end
