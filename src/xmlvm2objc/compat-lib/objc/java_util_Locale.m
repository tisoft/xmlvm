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

- (id) init :(java_lang_String*)prefLang
{
	if (self = [super init]) {
  	self->prefLang=[prefLang retain];
	}
	return self;
}

- (void) dealloc;
{
	[prefLang release];
	[super dealloc];
}

+ (java_util_Locale*) getDefault__
{
	NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
	NSArray* languages = [defs objectForKey:@"AppleLanguages"];
	NSString* preferredLang = [languages objectAtIndex:0];

	java_util_Locale *l = [[java_util_Locale alloc] init:preferredLang];
	return l;
}

- (java_lang_String*) toString__
{
  return [prefLang retain];
}

@end
