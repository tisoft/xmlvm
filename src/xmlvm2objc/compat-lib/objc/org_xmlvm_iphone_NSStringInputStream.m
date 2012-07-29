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
	if ([self ready__] == 0) {
		return JAVA_NULL;
	}

	java_lang_String *ret = [[java_lang_String alloc] init];
	char c;

	while ([self ready__]) {
		c = (char) [self read__];
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

