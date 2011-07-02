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

#import "org_xmlvm_iphone_UIScreen.h"



@implementation org_xmlvm_iphone_UIScreen;

+ (org_xmlvm_iphone_UIScreen*) mainScreen__
{
	org_xmlvm_iphone_UIScreen* xmlvmScreen = [[org_xmlvm_iphone_UIScreen alloc] init];
	xmlvmScreen->screen = [UIScreen mainScreen];
	return xmlvmScreen;
}

- (org_xmlvm_iphone_CGRect*) getBounds__
{
	CGRect rect = [screen bounds];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[org_xmlvm_iphone_CGRect alloc] init];
    xmlvmCGRect->origin_org_xmlvm_iphone_CGPoint->x_float = rect.origin.x;
    xmlvmCGRect->origin_org_xmlvm_iphone_CGPoint->y_float = rect.origin.y;
    xmlvmCGRect->size_org_xmlvm_iphone_CGSize->width_float = rect.size.width;
    xmlvmCGRect->size_org_xmlvm_iphone_CGSize->height_float = rect.size.height;
    return xmlvmCGRect;
}

- (org_xmlvm_iphone_CGRect*) getApplicationFrame__
{
	CGRect rect = [screen applicationFrame];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[org_xmlvm_iphone_CGRect alloc] init];
    xmlvmCGRect->origin_org_xmlvm_iphone_CGPoint->x_float = rect.origin.x;
    xmlvmCGRect->origin_org_xmlvm_iphone_CGPoint->y_float = rect.origin.y;
    xmlvmCGRect->size_org_xmlvm_iphone_CGSize->width_float = rect.size.width;
    xmlvmCGRect->size_org_xmlvm_iphone_CGSize->height_float = rect.size.height;
    return xmlvmCGRect;
}

- (float) getScale__
{
    return [screen scale];
}
@end
