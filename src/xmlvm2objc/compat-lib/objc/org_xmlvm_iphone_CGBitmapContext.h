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
#include "org_xmlvm_iphone_CGContext.h"
#include "java_lang_Object.h"
#include "java_nio_ByteBuffer.h"

// org_xmlvm_iphone_CGBitmapContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGBitmapContext : org_xmlvm_iphone_CGContext {
	@public unsigned char *data;
}

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int_org_xmlvm_iphone_CGImage :(int) width :(int) height :(org_xmlvm_iphone_CGImage*) image;
+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int :(int) width :(int) height;
- (java_nio_ByteBuffer*) getData;
- (void) release;

@end
