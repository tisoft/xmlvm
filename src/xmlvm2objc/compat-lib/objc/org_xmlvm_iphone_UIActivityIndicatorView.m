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
