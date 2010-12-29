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

- (void) __init_org_xmlvm_iphone_UISlider {
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

@end
