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




#include "org_xmlvm_iphone_UISlider.h"

// UISlider
//----------------------------------------------------------------------------

@implementation UISlider(cat_org_xmlvm_iphone_UISlider)

- (void) __init_org_xmlvm_iphone_UISlider__ {
}

-(void) __init_org_xmlvm_iphone_UISlider___org_xmlvm_iphone_CGRect : (org_xmlvm_iphone_CGRect*) r {
    [self setFrame:[r getCGRect]];
}

-(float) getValue__ {
    return [self value];
}

-(float) getMinimumValue__ {
    return [self minimumValue];
}

-(float) getMaximumValue__ {
    return [self maximumValue];
}

-(void) setMinimumValue___float : (float) value {
    [self setMinimumValue : value];
}

-(void) setMaximumValue___float : (float) value {
    [self setMaximumValue : value];
}

-(void) setValue___float : (float) value {
    [self setValue : value];
}

- (void) setValue___float_boolean:(float) value :(int) animated
{
	[self setValue:value animated:animated];
}

- (org_xmlvm_iphone_UIImage*) getMaximumValueImage__
{
    return_XMLVM(maximumValueImage)
}

- (void) setMaximumValueImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1
{
    [self setMaximumValueImage:XMLVM_NULL2NIL(n1)];
}

- (org_xmlvm_iphone_UIImage*) getMinimumValueImage__
{
    return_XMLVM(minimumValueImage)
}

- (void) setMinimumValueImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1
{
    [self setMinimumValueImage:XMLVM_NULL2NIL(n1)];
}

- (org_xmlvm_iphone_UIImage*) getCurrentMinimumTrackImage__
{
    return_XMLVM(currentMinimumValueImage)
}

- (org_xmlvm_iphone_UIImage*) minimumTrackImageForState___int :(int)n1
{
    return_XMLVM(minimumTrackImageForState:n1)
}

- (void) setMinimumTrackImage___org_xmlvm_iphone_UIImage_int :(org_xmlvm_iphone_UIImage*)n1 :(int)n2
{
    [self setMinimumTrackImage:XMLVM_NULL2NIL(n1) forState:n2];
}

- (org_xmlvm_iphone_UIImage*) getCurrentMaximumTrackImage__
{
    return_XMLVM(currentMaximumTrackImage)
}

- (org_xmlvm_iphone_UIImage*) maximumTrackImageForState___int :(int)n1
{
    return_XMLVM(maximumTrackImageForState:n1)
}

- (void) setMaximumTrackImage___org_xmlvm_iphone_UIImage_int :(org_xmlvm_iphone_UIImage*)n1 :(int)n2
{
    [self setMaximumTrackImage:XMLVM_NULL2NIL(n1) forState:n2];
}

- (org_xmlvm_iphone_UIImage*) getCurrentThumbImage__
{
    return_XMLVM(currentThumbImage)
}

- (org_xmlvm_iphone_UIImage*) thumbImageForState___int :(int)n1
{
    return_XMLVM(thumbImageForState:n1)
}

- (void) setThumbImage___org_xmlvm_iphone_UIImage_int :(org_xmlvm_iphone_UIImage*)n1 :(int)n2
{
    [self setThumbImage:XMLVM_NULL2NIL(n1) forState:n2];
}

@end
