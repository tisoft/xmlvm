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

#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"


// UIActivityIndicatorView
//----------------------------------------------------------------------------
#define org_xmlvm_iphone_UIActivityIndicatorView UIActivityIndicatorView
@interface UIActivityIndicatorView (cat_org_xmlvm_iphone_UIActivityIndicatorView)

- (id) init;
- (void) __init_org_xmlvm_iphone_UIActivityIndicatorView__;
- (void) __init_org_xmlvm_iphone_UIActivityIndicatorView___int :(int)style;
- (void) setActivityIndicatorViewStyle___int :(int) style;
- (int) getActivityIndicatorViewStyle__;
- (void) setHidesWhenStopped___boolean: (BOOL) flag;
- (BOOL) getHidesWhenStopped__;
- (void) startAnimating__;
- (void) stopAnimating__;

@end
