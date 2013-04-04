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


#define INTERFACE_VIEW(NAME) @interface org_xmlvm_iphone_##NAME : NAME \
- (void) drawRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect; \
- (void) layoutSubviews__;\
@end \
\
@interface NAME (cat_org_xmlvm_iphone_##NAME)

#define IMPLEMENTATION_VIEW(NAME) @implementation org_xmlvm_iphone_##NAME : NAME \
- (void) drawRect:(CGRect)rect { \
	org_xmlvm_iphone_CGRect * r = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:rect]; \
	[self drawRect___org_xmlvm_iphone_CGRect:r]; \
	[r release]; \
} \
- (void) drawRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect { \
	[super drawRect:[rect getCGRect]]; \
} \
- (void) layoutSubviews { \
    [self layoutSubviews__]; \
} \
- (void) layoutSubviews__ { \
    [super layoutSubviews]; \
} \
@end \
@implementation NAME (cat_org_xmlvm_iphone_NAME)
