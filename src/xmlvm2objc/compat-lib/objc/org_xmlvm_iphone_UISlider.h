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




#include "xmlvm.h"
#include "org_xmlvm_iphone_CGRect.h"


/// UISlider
//----------------------------------------------------------------------------
typedef UISlider org_xmlvm_iphone_UISlider;
@interface UISlider (cat_org_xmlvm_iphone_UISlider)
- (void) __init_org_xmlvm_iphone_UISlider;
- (void) __init_org_xmlvm_iphone_UISlider___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (float) getValue__;
- (float) getMinimumValue__;
- (float) getMaximumValue__;
- (void) setMinimumValue___float:(float) value;
- (void) setMaximumValue___float:(float) value;
- (void) setValue___float:(float) value;

@end
