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

/**
 * 
 *
 */
 
#import "java_net_URI.h"

// java.net.URI
//----------------------------------------------------------------------------

@implementation NSURLRef : NSProxy
	
- (id) init
{
	url = nil;
	return self;
}

- (void) __init_java_net_URI___java_lang_String: (java_lang_String*) urlString
{
	NSURL *url = [NSURL URLWithString: urlString];
	NSURLRef *r = (NSURLRef*) self;
	[r setRef: url];
}

- (id) copyWithZone: (NSZone *) zone
{
	if (url != nil)
	{
		return [self retain];
	} else {
		return [[NSURLRef allocWithZone: zone] init];
	}
}

- (void) dealloc
{
	if (url != nil) {
		[url release];
	}
	[super dealloc];
}

- (void) setRef: (NSURL *) url
{
	if (self->url == nil) {
		self->url = [url retain];
	} else {
		@throw [[NSException alloc] init];
	}
}

- (NSMethodSignature *) methodSignatureForSelector:(SEL)aSelector
{
	NSMethodSignature * s = nil;
	if (self->url != nil) {
		s = [self->url methodSignatureForSelector: aSelector];
	}
	if (s == nil) {
		s = [super methodSignatureForSelector: aSelector];
	}
	return s;
}

- (void) forwardInvocation:(NSInvocation *)anInvocation
{
	if (self->url != nil) {
		SEL selector = [anInvocation selector];
		if ([self->url respondsToSelector: selector]) {
			[anInvocation invokeWithTarget: self->url];
			return;
		}
	}
	[super forwardInvocation: anInvocation];
}

@end


@implementation NSURL (cat_java_net_URI)

- (id) init
{
	self = [[NSURLRef alloc] init];
	return self;
}

+ (java_net_URI*) create___java_lang_String: (java_lang_String*) str 
{
	java_net_URI* uri = [[java_net_URI alloc] initWithString: [str stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding]];
	return uri;
}

- (java_lang_String*) getRawPath__
{
	// TODO: Return encoded string
	return_XMLVM(path)
}

- (java_lang_String*) getPath__
{
	
	return_XMLVM(path)
}

- (java_lang_String*) toString__
{
	return_XMLVM(absoluteString)
}

@end
