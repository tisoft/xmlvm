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


#include "org_xmlvm_iphone_UISwitch.h"

// UISwitch
//----------------------------------------------------------------------------
@implementation UISwitch (cat_org_xmlvm_iphone_UISwitch)

- (void) __init_org_xmlvm_iphone_UISwitch__
{
}

- (void) __init_org_xmlvm_iphone_UISwitch___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r
{
	[self setFrame:[r getCGRect]];
}

- (void) setOn___boolean: (int) on
{
	[self setOn: on];
}

- (BOOL) isOn__
{
	return [self isOn];
}

- (org_xmlvm_iphone_UIColor*) getOnTintColor__
{
    return_XMLVM(onTintColor)
}

- (void) setOnTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*) tint
{
    [self setOnTintColor:XMLVM_NULL2NIL(tint)];
}

- (org_xmlvm_iphone_UIColor*) getThumbTintColor__
{
    return_XMLVM(thumbTintColor)
}

- (void) setThumbTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*) tint
{
    [self setThumbTintColor:XMLVM_NULL2NIL(tint)];
}

@end
