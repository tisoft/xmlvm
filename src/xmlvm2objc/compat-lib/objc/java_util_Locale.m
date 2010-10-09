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

#import "java_util_Locale.h"


// java.util.Locale
//----------------------------------------------------------------------------
@implementation java_util_Locale

static Class localeClass;

+ (void) initialize
{
	localeClass = [java_util_Locale class];
}	

- (id) init
{
	if (self = [super init]) {
		self->language = JAVA_NULL;
		self->languageHash = 0;
		self->country = JAVA_NULL;
		self->countryHash = 0;
	}
	return self;
}

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) theLanguage
{
	language = [theLanguage retain];
	languageHash = [theLanguage hash];
}

- (void) __init_java_lang_String___java_lang_String_java_lang_String:(java_lang_String*) theLanguage
                                                                    :(java_lang_String*) theCountry
{
	language = [theLanguage retain];
	languageHash = [theLanguage hash];
	country = [theCountry retain];
	countryHash = [theCountry hash];
}

- (void) dealloc
{
	[language release];
	[country release];
	[super dealloc];
}

+ (java_util_Locale*) getDefault__
{
	NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
	NSArray* languages = [defs objectForKey:@"AppleLanguages"];
	NSString* preferredLang = [languages objectAtIndex:0];

	java_util_Locale *l = [[java_util_Locale alloc] init];
	[l __init_java_lang_String___java_lang_String:preferredLang];
	return l;
}

- (int) equals___java_lang_Object:(java_lang_Object*) obj
{
	if (![obj isKindOfClass:localeClass]) {
		return 0;
	}
	java_util_Locale* other = (java_util_Locale*) obj;
	if ((countryHash != other->countryHash) || (languageHash != other->languageHash)) {
		return 0;
	}
	// Hash values match. Now make sure that the strings are actually equal
	if ([language isEqual:other->language] && [country isEqual:other->country]) {
		return 1;
	}
	return 0;
}

- (java_lang_String*) toString__
{
  return [language retain];
}

- (java_lang_String*) getLanguage__
{
	return [language retain];
}

- (java_lang_String*) getCountry__
{
	return [country retain];
}

@end
