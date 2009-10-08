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

#import "org_xmlvm_iphone_CGFont.h"

// CGFont
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGFont;

+ (org_xmlvm_iphone_CGFont*) createFromDataProider___org_xmlvm_iphone_CGDataProvider :(org_xmlvm_iphone_CGDataProvider*)provider;
{
	org_xmlvm_iphone_CGFont *toRet = [[org_xmlvm_iphone_CGFont alloc] init];
	toRet->font = CGFontCreateWithDataProvider(provider->provider);

	CFStringRef fullName = CGFontCopyFullName(toRet->font);
	char cstr[1000];
	CFStringGetCString(fullName, cstr, 1000, kCFStringEncodingUTF8);
	printf("Loaded font: %s %p from %p\n",cstr,toRet->font,provider->provider);
	CGDataProviderRelease(provider->provider);	
	printf("Done\n");
	return toRet;
}

- (int) getUnitsPerEm
{
	return CGFontGetUnitsPerEm(font);
}

- (int) getAscent
{
	return CGFontGetAscent(font);
}

- (int) getDescent
{
	return CGFontGetDescent(font);
}

@end
