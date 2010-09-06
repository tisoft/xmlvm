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
#import "java_lang_String.h"

class java_lang_Integer : public java_lang_Object {
public:

int number;

void __init_java_lang_Integer___int(int n) {
  number = n;
}

java_lang_String* toString__() {
    java_lang_String* s = new java_lang_String();
    s->str = new char[20];
    sprintf((char*) s->str, "%d", number);
    return s;
}

/*
+ (void) initialize;
- (id) init;
- (id) copyWithZone:(NSZone *)zone;
- (NSUInteger) hash;
+ (java_lang_Class*) _GET_TYPE;
- (void) __init_java_lang_Integer___int :(int) i;
- (BOOL)isEqual:(id)anObject;
- (int) intValue__;
+ (int) parseInt___java_lang_String: (java_lang_String *) str;
- (java_lang_String*) toString__;
+ (java_lang_String*) toString___int: (int) i;
+ (java_lang_Integer*) valueOf___int: (int) i;
- (int) compareTo___java_lang_Object: (java_lang_Object*) obj;
- (int) compareTo___java_lang_Integer: (java_lang_Integer*) i;

@end
*/

};

