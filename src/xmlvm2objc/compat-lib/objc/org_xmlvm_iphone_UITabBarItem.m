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

#import "org_xmlvm_iphone_UITabBarItem.h"



@implementation UITabBarItem (cat_org_xmlvm_iphone_UITabBarItem)

- (void) __init_org_xmlvm_iphone_UITabBarItem__ {
}

- (int) isEnabled__ {
	return self.enabled;
}

- (void) setEnabled___boolean :(int)en {
	self.enabled = en;
}

- (org_xmlvm_iphone_UIImage*) getImage__ {
	return_XMLVM(image)
}

- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)img {
	self.image = img;
}

- (org_xmlvm_iphone_UIEdgeInsets*) getImageInsets__ {
    return [[org_xmlvm_iphone_UIEdgeInsets alloc] initWithUIEdgeInsets:[self imageInsets]];
}

- (void) setImageInsets___org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_UIEdgeInsets*)ins {
    [self setImageInsets:[XMLVM_NULL2NIL(ins) getUIEdgeInsets]];
}

- (java_lang_String*) getTitle__ {
	return_XMLVM(title)
}

- (void) setTitle___java_lang_String :(java_lang_String*)tit {
	self.title = tit;
}

@end

