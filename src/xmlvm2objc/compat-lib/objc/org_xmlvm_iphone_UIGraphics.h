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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "org_xmlvm_iphone_UIImage.h"

@interface org_xmlvm_iphone_UIGraphics : java_lang_Object
+ (org_xmlvm_iphone_CGContext*) getCurrentContext__;
+ (void) pushContext___org_xmlvm_iphone_CGContext :(org_xmlvm_iphone_CGContext*)n1;
+ (void) popContext__;
+ (void) beginImageContext___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)n1;
+ (void) beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float :(org_xmlvm_iphone_CGSize*)n1 :(int)n2 :(float)n3;
+ (org_xmlvm_iphone_UIImage*) getImageFromCurrentImageContext__;
+ (void) endImageContext__;
@end

