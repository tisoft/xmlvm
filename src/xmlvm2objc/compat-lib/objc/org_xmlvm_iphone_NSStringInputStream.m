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

#import "org_xmlvm_iphone_NSStringInputStream.h"

// org.xmlvm.iphone.NSStringInputStream
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSStringInputStream;

- (void) __init_org_xmlvm_iphone_NSStringInputStream___java_lang_String: (java_lang_String *) ref {
	NSString *filePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:ref];

	str = [[NSString alloc] initWithContentsOfFile:filePath];
	total = [str length];
	data = [str UTF8String];
	pos = 0;
}

- (int) read__ {
	data = [str UTF8String];
	return (int) data[pos++];
}

- (bool) ready__ {
	return (pos < total);	
}

- (java_lang_String *) readLine__ {
	if ([self ready] == 0) {
		return JAVA_NULL;
	}

	java_lang_String *ret = [[java_lang_String alloc] init];
	char c;

	while ([self ready]) {
		c = (char) [self read];
		if (c < 0) {
			break;
		}	
		if ((c == 13) || (c == 10)) {
			if ([ret length] == 0) {
				continue;
			}
			break;
		}
		ret = [ret append___char: c];
	}

	return ret;
}

@end

