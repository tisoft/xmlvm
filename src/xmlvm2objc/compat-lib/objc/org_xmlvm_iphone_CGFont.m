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

- (int) getUnitsPerEm__
{
	return CGFontGetUnitsPerEm(font);
}

- (int) getAscent__
{
	return CGFontGetAscent(font);
}

- (int) getDescent__
{
	return CGFontGetDescent(font);
}

@end
